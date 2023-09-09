package com.jobsence.dao;

import com.jobsence.beans.EnqurieBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import java.sql.SQLException;

public class EnqurieDao {

    public static int save(EnqurieBean bean) {
        int status = 0;
        try {
            Connection con = DB.getCon();
            PreparedStatement ps = con.prepareStatement("insert into contactform(name,email,subject,mobile,message) values(?,?,?,?,?)");
            ps.setString(1, bean.getName());
            ps.setString(2, bean.getEmail());
            ps.setString(3, bean.getSubject());
            ps.setString(4, bean.getMobile());
            ps.setString(5, bean.getMessage());
            status = ps.executeUpdate();
            con.close();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }

//    public static int update(EnqurieBean bean) {
//        int status = 0;
//        try {
//            Connection con = DB.getCon();
//            PreparedStatement ps = con.prepareStatement("update contactform set name=?,email=?,subject=?,mobile=? where email=?");
//            ps.setString(1, bean.getName());
//            ps.setString(2, bean.getEmail());
//            ps.setString(3, bean.getSubject());
//            ps.setString(4, bean.getMobile());
//            ps.setString(5, bean.getMessege());
//            status = ps.executeUpdate();
//            con.close();
//
//        } catch (Exception e) {
//            System.out.println(e);
//        }
//
//        return status;
//    }
    public static List<EnqurieBean> view() {
        List<EnqurieBean> list = new ArrayList<EnqurieBean>();
        try {
            Connection con = DB.getCon();
            PreparedStatement ps = con.prepareStatement("select * from contactform");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                EnqurieBean bean = new EnqurieBean();
                bean.setId(rs.getInt("id"));
                bean.setName(rs.getString("name"));
                bean.setEmail(rs.getString("email"));
                bean.setSubject(rs.getString("subject"));
                bean.setMobile(rs.getString("mobile"));
                bean.setMessage(rs.getString("message"));
                list.add(bean);
            }
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return list;
    }

    public static EnqurieBean viewById(int id) {
        EnqurieBean bean = new EnqurieBean();
        try {
            Connection con = DB.getCon();
            PreparedStatement ps = con.prepareStatement("select * contactform where id=?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                bean.setId(rs.getInt(1));
                bean.setName(rs.getString(2));
                bean.setEmail(rs.getString(3));
                bean.setSubject(rs.getString(4));
                bean.setMobile(rs.getString(5));
                bean.setMessage(rs.getString(6));
            }
            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }

        return bean;
    }

    public static int delete(int id) {
        int status = 0;
        try {
            Connection con = DB.getCon();
            PreparedStatement ps = con.prepareStatement("delete from contactform where id=?");
            ps.setInt(1, id);
            status = ps.executeUpdate();
            con.close();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return status;
    }

}
