package com.entity.vo;

import com.entity.WeixiuyuanEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 维修人员
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("weixiuyuan")
public class WeixiuyuanVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 账号
     */

    @TableField(value = "username")
    private String username;


    /**
     * 密码
     */

    @TableField(value = "password")
    private String password;


    /**
     * 维修员姓名
     */

    @TableField(value = "weixiuyuan_name")
    private String weixiuyuanName;


    /**
     * 性别
     */

    @TableField(value = "sex_types")
    private Integer sexTypes;


    /**
     * 工作年限
     */

    @TableField(value = "weixiuyuan_nianxian")
    private String weixiuyuanNianxian;


    /**
     * 联系方式
     */

    @TableField(value = "weixiuyuan_phone")
    private String weixiuyuanPhone;


    /**
     * 照片
     */

    @TableField(value = "weixiuyuan_photo")
    private String weixiuyuanPhoto;


    /**
     * 维修人员介绍
     */

    @TableField(value = "weixiuyuan_content")
    private String weixiuyuanContent;


    /**
     * 假删
     */

    @TableField(value = "weixiuyuan_delete")
    private Integer weixiuyuanDelete;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：账号
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账号
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：维修员姓名
	 */
    public String getWeixiuyuanName() {
        return weixiuyuanName;
    }


    /**
	 * 获取：维修员姓名
	 */

    public void setWeixiuyuanName(String weixiuyuanName) {
        this.weixiuyuanName = weixiuyuanName;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：工作年限
	 */
    public String getWeixiuyuanNianxian() {
        return weixiuyuanNianxian;
    }


    /**
	 * 获取：工作年限
	 */

    public void setWeixiuyuanNianxian(String weixiuyuanNianxian) {
        this.weixiuyuanNianxian = weixiuyuanNianxian;
    }
    /**
	 * 设置：联系方式
	 */
    public String getWeixiuyuanPhone() {
        return weixiuyuanPhone;
    }


    /**
	 * 获取：联系方式
	 */

    public void setWeixiuyuanPhone(String weixiuyuanPhone) {
        this.weixiuyuanPhone = weixiuyuanPhone;
    }
    /**
	 * 设置：照片
	 */
    public String getWeixiuyuanPhoto() {
        return weixiuyuanPhoto;
    }


    /**
	 * 获取：照片
	 */

    public void setWeixiuyuanPhoto(String weixiuyuanPhoto) {
        this.weixiuyuanPhoto = weixiuyuanPhoto;
    }
    /**
	 * 设置：维修人员介绍
	 */
    public String getWeixiuyuanContent() {
        return weixiuyuanContent;
    }


    /**
	 * 获取：维修人员介绍
	 */

    public void setWeixiuyuanContent(String weixiuyuanContent) {
        this.weixiuyuanContent = weixiuyuanContent;
    }
    /**
	 * 设置：假删
	 */
    public Integer getWeixiuyuanDelete() {
        return weixiuyuanDelete;
    }


    /**
	 * 获取：假删
	 */

    public void setWeixiuyuanDelete(Integer weixiuyuanDelete) {
        this.weixiuyuanDelete = weixiuyuanDelete;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
