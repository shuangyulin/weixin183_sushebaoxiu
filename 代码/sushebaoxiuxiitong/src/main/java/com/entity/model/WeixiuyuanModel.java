package com.entity.model;

import com.entity.WeixiuyuanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 维修人员
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class WeixiuyuanModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 账号
     */
    private String username;


    /**
     * 密码
     */
    private String password;


    /**
     * 维修员姓名
     */
    private String weixiuyuanName;


    /**
     * 性别
     */
    private Integer sexTypes;


    /**
     * 工作年限
     */
    private String weixiuyuanNianxian;


    /**
     * 联系方式
     */
    private String weixiuyuanPhone;


    /**
     * 照片
     */
    private String weixiuyuanPhoto;


    /**
     * 维修人员介绍
     */
    private String weixiuyuanContent;


    /**
     * 假删
     */
    private Integer weixiuyuanDelete;


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
	 * 获取：账号
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 设置：账号
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
	 * 获取：维修员姓名
	 */
    public String getWeixiuyuanName() {
        return weixiuyuanName;
    }


    /**
	 * 设置：维修员姓名
	 */
    public void setWeixiuyuanName(String weixiuyuanName) {
        this.weixiuyuanName = weixiuyuanName;
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
	 * 获取：工作年限
	 */
    public String getWeixiuyuanNianxian() {
        return weixiuyuanNianxian;
    }


    /**
	 * 设置：工作年限
	 */
    public void setWeixiuyuanNianxian(String weixiuyuanNianxian) {
        this.weixiuyuanNianxian = weixiuyuanNianxian;
    }
    /**
	 * 获取：联系方式
	 */
    public String getWeixiuyuanPhone() {
        return weixiuyuanPhone;
    }


    /**
	 * 设置：联系方式
	 */
    public void setWeixiuyuanPhone(String weixiuyuanPhone) {
        this.weixiuyuanPhone = weixiuyuanPhone;
    }
    /**
	 * 获取：照片
	 */
    public String getWeixiuyuanPhoto() {
        return weixiuyuanPhoto;
    }


    /**
	 * 设置：照片
	 */
    public void setWeixiuyuanPhoto(String weixiuyuanPhoto) {
        this.weixiuyuanPhoto = weixiuyuanPhoto;
    }
    /**
	 * 获取：维修人员介绍
	 */
    public String getWeixiuyuanContent() {
        return weixiuyuanContent;
    }


    /**
	 * 设置：维修人员介绍
	 */
    public void setWeixiuyuanContent(String weixiuyuanContent) {
        this.weixiuyuanContent = weixiuyuanContent;
    }
    /**
	 * 获取：假删
	 */
    public Integer getWeixiuyuanDelete() {
        return weixiuyuanDelete;
    }


    /**
	 * 设置：假删
	 */
    public void setWeixiuyuanDelete(Integer weixiuyuanDelete) {
        this.weixiuyuanDelete = weixiuyuanDelete;
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
