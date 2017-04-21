 /**
 *主页面相关事件绑定
 */
$(function() {
    /*
     * 绑定图书上架事件
     */
    $("#shangxiajia").bind('click', function() {
        addTab($(this).text(), '/library/jsp/bookPutaway01.jsp');
    });
    /*
     * 图书检索事件绑定
     */
    $("#bookSeach").bind('click', function() {
        addTab($(this).text(), '/library/jsp/bookPutaway01.jsp');
    });
    /*
     * 还书事件绑定
     */
    $("#bookReturn").bind('click', function() {
        addTab($(this).text(), '/library/html/returnBook.html');
    });
    /*
     * 借书事件绑定
     */
    $("#bookLend").bind('click', function() {
        addTab($(this).text(), '/library/html/loanBook.html');
    });
    /*
     * 添加学生事件绑定
     */
    $("#addStudentInfo").bind('click', function() {
        addTab($(this).text(), '/library/html/addStudentInfo.html');
    });
    /*
     * 修改学生信息事件绑定
     */
    $("#queryStudentInfo").bind('click', function() {
        addTab($(this).text(), '/library/html/queryStudentInfo.html');
    });
    /*
     * 最热图书事件绑定
     */
    $("#hotBook").bind('click', function() {
        addTab($(this).text(), '/library/jsp/bookPutaway01.jsp');
    });
    /*
     * 学霸事件绑定
     */
    $("#studentOfRanking").bind('click', function() {
        addTab($(this).text(), '/library/jsp/bookPutaway01.jsp');
    });
    
});
function addTab(title, url) {
    if ($('#center').tabs('exists', title)) {
        $('#center').tabs('select', title);
    } else {
        var content = '<iframe scrolling="no" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
        $('#center').tabs('add', {
            title : title,
            content : content,
            closable : true,
            tools:[{
                iconCls:'icon-down',
                handler:function () {
                  $("#mm").menu('show',
                  {
                      left:300,
                      top:100
                  }
                  );
                }
            }]
        });
    }
}

