/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import email.Email;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Account;
import model.Coach;
import model.CoachRole;
import model.Nationality;
import model.News;
import model.Player;
import model.PlayerRole;
import model.TypeNews;

/**
 *
 * @author ASUS
 */
public class DAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public static void main(String[] args) {
        DAO dao = new DAO();
        Email email = new Email();
        //email.sendConfirmAccount("895126", "davidandthiago43dat@gmail.com");
    }

    public int getTotalAccount() {
        String query = "select count(*) from Account_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<Account> getAllAccounts() {
        ArrayList<Account> listAccount = new ArrayList<>();
        String query = "select * from Account_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getBoolean(5));
                listAccount.add(a);
            }
        } catch (Exception e) {
        }
        return listAccount;
    }
    
    public void setRoleAccount(boolean isAdmin, int id) {
        String query = "update Account_HE153704_SE1606 set isAdmin = ? where userId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setBoolean(1, isAdmin);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteAccount(int id) {
        String query = "delete from Account_HE153704_SE1606 where userId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account loginAccount(String email, String pass) {
        String query = "select * from Account_HE153704_SE1606\n"
                + "where email = ? and password = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getBoolean(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void registerAccount(String user, String email, String pass) {
        String query = "insert into Account_HE153704_SE1606 values(?,?,?,0)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void updateProfile(int id, String email, String userName) {
        String query = "update Account_HE153704_SE1606 set email = ?, userName = ? where userId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, userName);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updatePassword(int id, String pass) {
        String query = "update Account_HE153704_SE1606 set password = ? where userId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pass);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAccountById(int id) {
        String query = "select * from Account_HE153704_SE1606 where userId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getBoolean(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account getAccountByEmail(String email) {
        String query = "select * from Account_HE153704_SE1606 where email = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getBoolean(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String email) {
        String query = "select * from Account_HE153704_SE1606 where email = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getBoolean(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account forgotPassword(String email, String user) {
        String query = "select * from Account_HE153704_SE1606 where email = ? and userName = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getBoolean(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void likeNews(int userId, String newsId) {
        String query = "insert into Favorite_HE153704_SE1606 values(?,?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setString(2, newsId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteNewsFavorite(int userId, String newsId) {
        String query = "delete from Favorite_HE153704_SE1606 where userId = ? and newsId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setString(2, newsId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int totalFavorit(int id) {
        String query = "select count(*) from Favorite_HE153704_SE1606 where userId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<News> getAllNewsFavorite(int id) {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select n.* from News_HE153704_SE1606 n left join\n"
                + "Favorite_HE153704_SE1606 f on n.newsId = f.newsId\n"
                + "left join Account_HE153704_SE1606 a on f.userId = a.userId\n"
                + "where a.userId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public int getTotalNews() {
        String query = "select count(*) from News_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<News> pagingNewsSortByDate(int index) {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select * from News_HE153704_SE1606\n"
                + "order by datePublished desc\n"
                + "offset ? rows fetch next 10 rows only;";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public ArrayList<News> pagingNews(int index) {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select * from News_HE153704_SE1606\n"
                + "order by newsId asc\n"
                + "offset ? rows fetch next 10 rows only;";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public ArrayList<News> getAllNews() {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select * from News_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public News getNewsById(int id) {
        String query = "select * from News_HE153704_SE1606 where newsId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void createNews(String title, String img, String datePublished, String shortDescription, String content,
            String detail, int typeId) {
        String query = "insert into News_HE153704_SE1606 values(?,?,?,?,?,?,?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, img);
            ps.setString(3, datePublished);
            ps.setString(4, shortDescription);
            ps.setString(5, content);
            ps.setString(6, detail);
            ps.setInt(7, typeId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateNews(int newsId, String title, String img, String datePublished, String shortDescription, String content,
            String detail, int typeId) {
        String query = "update News_HE153704_SE1606 set title = ?, img = ?, datePublished = ?, shortDescription = ?, \n"
                + "content = ?, detail = ?, typeId = ? where newsId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, img);
            ps.setString(3, datePublished);
            ps.setString(4, shortDescription);
            ps.setString(5, content);
            ps.setString(6, detail);
            ps.setInt(7, typeId);
            ps.setInt(8, newsId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteNews(int id) {
        String query = "delete from News_HE153704_SE1606 where newsId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<News> getLatestNews() {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select top 1 * from News_HE153704_SE1606\n"
                + "where typeId = 5\n"
                + "order by datePublished desc";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public ArrayList<News> getTop2NewsIsInterview() {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select top 2 * from News_HE153704_SE1606\n"
                + "where typeId = 4\n"
                + "order by datePublished desc";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public ArrayList<News> getTop2NewsIsPosMatch() {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select top 2 * from News_HE153704_SE1606\n"
                + "where typeId = 2\n"
                + "order by datePublished desc";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public ArrayList<TypeNews> getAllTypeNews() {
        ArrayList<TypeNews> listTypeNews = new ArrayList<>();
        String query = "select * from TypeNews_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                TypeNews tn = new TypeNews(rs.getInt(1), rs.getString(2));
                listTypeNews.add(tn);
            }
        } catch (Exception e) {
        }
        return listTypeNews;
    }

    public ArrayList<News> searchNews(String input) {
        ArrayList<News> listNews = new ArrayList<>();
        String query = "select n.* from News_HE153704_SE1606 n inner join TypeNews_HE153704_SE1606 tn\n"
                + "on n.typeId = tn.typeId\n"
                + "where n.title like ? or\n"
                + "      n.datePublished like ? or\n"
                + "	  n.shortDescription like ? or\n"
                + "	  tn.typeName like ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + input + "%");
            ps.setString(2, "%" + input + "%");
            ps.setString(3, "%" + input + "%");
            ps.setString(4, "%" + input + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8));
                listNews.add(n);
            }
        } catch (Exception e) {
        }
        return listNews;
    }

    public int getLastNewsId() {
        String query = "select top 1 newsId from News_HE153704_SE1606 order by newsId desc";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<Player> getAllPlayers() {
        ArrayList<Player> listPlayer = new ArrayList<>();
        String query = "select * from Player_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getInt(6), rs.getFloat(7),
                        rs.getFloat(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                listPlayer.add(p);
            }
        } catch (Exception e) {
        }
        return listPlayer;
    }

    public int getTotalPlayer() {
        String query = "select count(*) from Player_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<Player> getAllGoalkeepers() {
        ArrayList<Player> listPlayer = new ArrayList<>();
        String query = "select * from Player_HE153704_SE1606 where roleId = 1";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getInt(6), rs.getFloat(7),
                        rs.getFloat(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                listPlayer.add(p);
            }
        } catch (Exception e) {
        }
        return listPlayer;
    }

    public ArrayList<Player> getAllDefenders() {
        ArrayList<Player> listPlayer = new ArrayList<>();
        String query = "select * from Player_HE153704_SE1606 where roleId = 2";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getInt(6), rs.getFloat(7),
                        rs.getFloat(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                listPlayer.add(p);
            }
        } catch (Exception e) {
        }
        return listPlayer;
    }

    public ArrayList<Player> getAllMidfielders() {
        ArrayList<Player> listPlayer = new ArrayList<>();
        String query = "select * from Player_HE153704_SE1606 where roleId = 3";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getInt(6), rs.getFloat(7),
                        rs.getFloat(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                listPlayer.add(p);
            }
        } catch (Exception e) {
        }
        return listPlayer;
    }

    public ArrayList<Player> getAllForwards() {
        ArrayList<Player> listPlayer = new ArrayList<>();
        String query = "select * from Player_HE153704_SE1606 where roleId = 4";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getInt(6), rs.getFloat(7),
                        rs.getFloat(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                listPlayer.add(p);
            }
        } catch (Exception e) {
        }
        return listPlayer;
    }

    public Player getPlayerById(int id) {
        String query = "select * from Player_HE153704_SE1606 where playerId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Player(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getInt(6), rs.getFloat(7),
                        rs.getFloat(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void createPlayer(String playerName, String img, String dob, String birthPlace, int nationalityId,
            float height, float weight, int roleId, String imgBackground, int number,
            String shortDescription, String playerInfor, String detail) {
        String query = "insert into Player_HE153704_SE1606 values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, playerName);
            ps.setString(2, img);
            ps.setString(3, dob);
            ps.setString(4, birthPlace);
            ps.setInt(5, nationalityId);
            ps.setFloat(6, height);
            ps.setFloat(7, weight);
            ps.setInt(8, roleId);
            ps.setString(9, imgBackground);
            ps.setInt(10, number);
            ps.setString(11, shortDescription);
            ps.setString(12, playerInfor);
            ps.setString(13, detail);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updatePlayer(int playerId, String playerName, String img, String dob, String birthPlace, int nationalityId,
            float height, float weight, int roleId, String imgBackground, int number,
            String shortDescription, String playerInfor, String detail) {
        String query = "update Player_HE153704_SE1606 set playerName = ?, img = ?, dob = ?, birthPlace = ?, nationalityId = ?, \n"
                + "height = ?, [weight] = ?, roleId = ?, imgBackground = ?, number = ?, shortDescription = ?,\n"
                + "playerInfor = ?, detail = ? where playerId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, playerName);
            ps.setString(2, img);
            ps.setString(3, dob);
            ps.setString(4, birthPlace);
            ps.setInt(5, nationalityId);
            ps.setFloat(6, height);
            ps.setFloat(7, weight);
            ps.setInt(8, roleId);
            ps.setString(9, imgBackground);
            ps.setInt(10, number);
            ps.setString(11, shortDescription);
            ps.setString(12, playerInfor);
            ps.setString(13, detail);
            ps.setInt(14, playerId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deletePlayer(int id) {
        String query = "delete from Player_HE153704_SE1606 where playerId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<PlayerRole> getAllPlayerRole() {
        ArrayList<PlayerRole> listPlayerRole = new ArrayList<>();
        String query = "select * from PlayerRole_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                PlayerRole pr = new PlayerRole(rs.getInt(1), rs.getString(2));
                listPlayerRole.add(pr);
            }
        } catch (Exception e) {
        }
        return listPlayerRole;
    }

    public ArrayList<Player> searchPlayer(String input) {
        ArrayList<Player> listPlayer = new ArrayList<>();
        String query = "select p.* from Player_HE153704_SE1606 p join PlayerRole_HE153704_SE1606 pr\n"
                + "on p.roleId = pr.roleId join Nationality_HE153704_SE1606 n\n"
                + "on p.nationalityId = n.nationalityId\n"
                + "where p.playerName like ? or\n"
                + "	p.dob like ? or\n"
                + "	p.birthPlace like ? or\n"
                + "	p.height like ? or\n"
                + "	p.weight like ? or\n"
                + "	p.number like ? or\n"
                + "	p.shortDescription like ? or\n"
                + "	n.nationalityName like ? or\n"
                + "	pr.roleName like ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + input + "%");
            ps.setString(2, "%" + input + "%");
            ps.setString(3, "%" + input + "%");
            ps.setString(4, "%" + input + "%");
            ps.setString(5, "%" + input + "%");
            ps.setString(6, "%" + input + "%");
            ps.setString(7, "%" + input + "%");
            ps.setString(8, "%" + input + "%");
            ps.setString(9, "%" + input + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Player p = new Player(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDate(4), rs.getString(5), rs.getInt(6), rs.getFloat(7),
                        rs.getFloat(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
                        rs.getString(12), rs.getString(13), rs.getString(14));
                listPlayer.add(p);
            }
        } catch (Exception e) {
        }
        return listPlayer;
    }

    public ArrayList<Coach> getAllCoach() {
        ArrayList<Coach> listCoach = new ArrayList<>();
        String query = "select * from Coach_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Coach c = new Coach(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8));
                listCoach.add(c);
            }
        } catch (Exception e) {
        }
        return listCoach;
    }

    public int getTotalCoach() {
        String query = "select count(*) from Coach_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public Coach getCoachById(int id) {
        String query = "select * from Coach_HE153704_SE1606 where coachId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Coach(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void createCoach(String coachName, String img, int nationalityId, int roleId, String shortDescription,
            String coachInfor, String detail) {
        String query = "insert into Coach_HE153704_SE1606 values(?,?,?,?,?,?,?)";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, coachName);
            ps.setString(2, img);
            ps.setInt(3, nationalityId);
            ps.setInt(4, roleId);
            ps.setString(5, shortDescription);
            ps.setString(6, coachInfor);
            ps.setString(7, detail);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateCoach(int coachId, String coachName, String img, int nationalityId, int roleId,
            String shortDescription, String coachInfor, String detail) {
        String query = "update Coach_HE153704_SE1606 set coachName = ?, img = ?, nationalityId = ?, roleId = ?, shortDescription = ?, \n"
                + "coachInfor = ?, detail = ? where coachId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, coachName);
            ps.setString(2, img);
            ps.setInt(3, nationalityId);
            ps.setInt(4, roleId);
            ps.setString(5, shortDescription);
            ps.setString(6, coachInfor);
            ps.setString(7, detail);
            ps.setInt(8, coachId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCoach(int id) {
        String query = "delete from Coach_HE153704_SE1606 where coachId = ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public ArrayList<CoachRole> getAllCoachRole() {
        ArrayList<CoachRole> listCoachRole = new ArrayList<>();
        String query = "select * from CoachRole_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                CoachRole cr = new CoachRole(rs.getInt(1), rs.getString(2));
                listCoachRole.add(cr);
            }
        } catch (Exception e) {
        }
        return listCoachRole;
    }

    public ArrayList<Coach> searchCoach(String input) {
        ArrayList<Coach> listCoach = new ArrayList<>();
        String query = "select c.* from Coach_HE153704_SE1606 c join CoachRole_HE153704_SE1606 cr\n"
                + "on c.roleId = cr.roleId join Nationality_HE153704_SE1606 n\n"
                + "on c.nationalityId = n.nationalityId\n"
                + "where c.coachName like ? or\n"
                + "	c.shortDescription like ? or\n"
                + "	cr.roleName like ? or\n"
                + "	n.nationalityName like ?";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + input + "%");
            ps.setString(2, "%" + input + "%");
            ps.setString(3, "%" + input + "%");
            ps.setString(4, "%" + input + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                Coach c = new Coach(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getInt(5),
                        rs.getString(6), rs.getString(7), rs.getString(8));
                listCoach.add(c);
            }
        } catch (Exception e) {
        }
        return listCoach;
    }

    public ArrayList<Nationality> getAllNationality() {
        ArrayList<Nationality> listNationality = new ArrayList<>();
        String query = "select * from Nationality_HE153704_SE1606";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Nationality n = new Nationality(rs.getInt(1), rs.getString(2), rs.getString(3));
                listNationality.add(n);
            }
        } catch (Exception e) {
        }
        return listNationality;
    }
    
    //    public void insertTagPlayer(int newId, String playerId) {
//        String query = "insert into TagPlayer_HE153704_SE1606 values(?,?)";
//        try {
//            con = new DBContext().getConnection();
//            ps = con.prepareStatement(query);
//            ps.setInt(1, newId);
//            ps.setString(2, playerId);
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
//
//    public void deleteTagPlayerId(int newsId, String playerId) {
//        String query = "delete TagPlayer_HE153704_SE1606 where newsId = ? and playerId = ?";
//        try {
//            con = new DBContext().getConnection();
//            ps = con.prepareStatement(query);
//            ps.setInt(1, newsId);
//            ps.setString(2, playerId);
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
//
//    public void insertTagCoach(int newId, String coachId) {
//        String query = "insert into TagCoach_HE153704_SE1606 values(?,?)";
//        try {
//            con = new DBContext().getConnection();
//            ps = con.prepareStatement(query);
//            ps.setInt(1, newId);
//            ps.setString(2, coachId);
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }
//
//    public void deleteTagCoachId(int newsId, String coachId) {
//        String query = "delete TagCoach_HE153704_SE1606 where newsId = ? and coachId = ?";
//        try {
//            con = new DBContext().getConnection();
//            ps = con.prepareStatement(query);
//            ps.setInt(1, newsId);
//            ps.setString(2, coachId);
//            ps.executeUpdate();
//        } catch (Exception e) {
//        }
//    }

}
