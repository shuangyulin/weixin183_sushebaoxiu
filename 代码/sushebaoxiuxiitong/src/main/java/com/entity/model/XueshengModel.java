package com.entity.model;

import com.entity.XueshengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 学生
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class XueshengModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 学号
     */
    private String username;


    /**
     * 密码
     */
    private String password;


    /**
     * 学生姓名
     */
    private String xueshengName;


    /**
     * 性别
     */
    private Integer sexTypes;


    /**
     * 身份证号
     */
    private String xueshengIdNumber;


    /**
     * 手机号
     */
    private String xueshengPhone;


    /**
     * 照片
     */
    private String xueshengPhoto;


    /**
     * 假删
     */
    private Integer xueshengDelete;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：学号
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 设置：学号
	 */
    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 获取：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 设置：密码
	 */
    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 获取：学生姓名
	 */
    public String getXueshengName() {
        return xueshengName;
    }


    /**
	 * 设置：学生姓名
	 */
    public void setXueshengName(String xueshengName) {
        this.xueshengName = xueshengName;
    }
    /**
	 * 获取：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 设置：性别
	 */
    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 获取：身份证号
	 */
    public String getXueshengIdNumber() {
        return xueshengIdNumber;
    }


    /**
	 * 设置：身份证号
	 */
    public void setXueshengIdNumber(String xueshengIdNumber) {
        this.xueshengIdNumber = xueshengIdNumber;
    }
    /**
	 * 获取：手机号
	 */
    public String getXueshengPhone() {
        return xueshengPhone;
    }


    /**
	 * 设置：手机号
	 */
    public void setXueshengPhone(String xueshengPhone) {
        this.xueshengPhone = xueshengPhone;
    }
    /**
	 * 获取：照片
	 */
    public String getXueshengPhoto() {
        return xueshengPhoto;
    }


    /**
	 * 设置：照片
	 */
    public void setXueshengPhoto(String xueshengPhoto) {
        this.xueshengPhoto = xueshengPhoto;
    }
    /**
	 * 获取：假删
	 */
    public Integer getXueshengDelete() {
        return xueshengDelete;
    }


    /**
	 * 设置：假删
	 */
    public void setXueshengDelete(Integer xueshengDelete) {
        this.xueshengDelete = xueshengDelete;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
