/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Group;
import model.Lecturer;
import model.Room;
import model.Session;
import model.Subject;
import model.TimeSlot;

/**
 *
 * @author admin
 */
public class SessionDBContext extends DBContext<Session> {

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public ArrayList<Session> getSession(String lecid, Date from, Date to) {
        ArrayList<Session> list = new ArrayList<>();
        try {
            String sql = "select ses.sesid,ses.[date],ses.[index],ISNULL(ses.attended,0) attended,\n"
                    + "g.gid,g.gname,\n"
                    + "sub.subcode,sub.subname,\n"
                    + "l.lecid,l.[name],\n"
                    + "r.rid,r.rname,\n"
                    + "t.tid,t.slottime\n"
                    + "from [Session] ses\n"
                    + "inner join [Group] g on ses.gid = g.gid\n"
                    + "inner join [Subject] sub on g.subcode = sub.subcode\n"
                    + "inner join Lecturer l on l.lecid = ses.lecid\n"
                    + "inner join Room r on r.rid = ses.rid\n"
                    + "inner join TimeSlot t on t.tid = ses.tid\n"
                    + "where l.lecid =? and ses.[date] >=? and ses.[date] <=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, lecid);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session ses = new Session();
                ses.setId(rs.getInt(1));
                ses.setDate(rs.getDate(2));
                ses.setIndex(rs.getInt(3));
                ses.setAttanded(rs.getBoolean(4));
                
                Group g = new Group();
                ses.setGroup(g);
                g.setId(rs.getInt(5));
                g.setName(rs.getString(6));
                
                Subject sub =new Subject();
                g.setSubject(sub);
                sub.setId(rs.getString(7));
                sub.setName(rs.getString(8));
                
                Lecturer l = new Lecturer();
                ses.setLecturer(l);
                l.setLecid(rs.getString(9));
                l.setName(rs.getString(10));
                
                Room r = new Room();
                ses.setRoom(r);
                r.setId(rs.getInt(11));
                r.setName(rs.getString(12));
                
                TimeSlot t = new TimeSlot();
                ses.setSlot(t);
                t.setId(rs.getInt(13));
                t.setSlottime(rs.getString(14));
                
                list.add(ses);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;

    }

}
