#include "g13system.hpp"

#include <QDebug>
#include <QStandardPaths>

G13System::G13System()
{
    //try the systemd location first
    G13.setFileName("/run/g13d/g13-0");
    if(!G13.open(QFile::WriteOnly))
    {
        //try the standard one
        G13.setFileName("/tmp/g13-0");
        if(!G13.open(QFile::WriteOnly))
        {
            qDebug() << "Cannot open G13 device";
        }
    }
    QDir BindsFolder(QStandardPaths::writableLocation(QStandardPaths::ConfigLocation));
    if(!BindsFolder.cd("g13d"))
    {
        if(!BindsFolder.mkdir("g13d"))
        {
            qDebug() << "Cannot find nor create " << BindsFolder.absolutePath() + "/g13d";
        }
        else
        {
            BindsFolder.cd("g13d");
        }
    }


    filesModel.setRootPath("/");
    bindsFolderIndex = filesModel.index(BindsFolder.absolutePath());
}

void G13System::loadProfile(QModelIndex profile)
{
    if(!G13.isOpen())
    {
        return;
    }
    QFile file(filesModel.filePath(profile));
    file.open(QFile::ReadOnly);
    QByteArray line;
    do
    {
        line = file.readLine();
        if(G13.write(line) < 0)
        {
            qDebug() << "Error sending command to G13 device";
        }
        G13.flush();
    }
    while(!line.isEmpty());
}

void G13System::sendCommand(QString command)
{
    if(!G13.isOpen())
    {
        return;
    }
    else
    {
        G13.write(command.toLatin1());
    }
}

