#ifndef G13SYSTEM_HPP
#define G13SYSTEM_HPP

#include <QObject>
#include <QFile>
#include <QFileSystemModel>


class G13System : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QModelIndex folderIndex READ BindsFolderIndex WRITE setIndex NOTIFY fileIndexChanged)

public:
    G13System();

    Q_INVOKABLE QFileSystemModel& FilesModel() noexcept {return filesModel;}
    QModelIndex& BindsFolderIndex() noexcept {return bindsFolderIndex;}
    QIODevice& getDevice() noexcept {return G13;}

signals:

    void commandSent();
    void fileIndexChanged();

public slots:

    void loadProfile(QModelIndex profile);
    void sendCommand(QString command);
    void setIndex(QModelIndex& newIndex) noexcept {bindsFolderIndex = newIndex;}

private:

    QFile G13;
    QFileSystemModel filesModel;
    QModelIndex bindsFolderIndex;

};

#endif // G13SYSTEM_HPP
