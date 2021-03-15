function findObj(theObj, theDoc)
{
    var p, i, foundObj;
    if(!theDoc) theDoc = document;
    if( (p = theObj.indexOf("?")) > 0 && parent.frames.length)
    {
        theDoc = parent.frames[theObj.substring(p+1)].document;
        theObj = theObj.substring(0,p);
    }
    if(!(foundObj = theDoc[theObj]) && theDoc.all)
        foundObj = theDoc.all[theObj];
    for (i=0; !foundObj && i < theDoc.forms.length; i++)
        foundObj = theDoc.forms[i][theObj];
    for(i=0; !foundObj && theDoc.layers && i < theDoc.layers.length; i++)
        foundObj = findObj(theObj,theDoc.layers[i].document);
    if(!foundObj && document.getElementById)
        foundObj = document.getElementById(theObj);
    return foundObj;
}
//添加一行学习简历
function LearnAddSignRow(){ //读取最后一行的行号，存放在LearnTRLastIndex文本框中
    var LearnTRLastIndex = findObj("LearnTRLastIndex",document);
    var rowID = parseInt(LearnTRLastIndex.value);
    var signFrame = findObj("LearnInfoItem",document);
//添加行
    var newTR = signFrame.insertRow(signFrame.rows.length);
    newTR.id = "LearnItem" + rowID;
    var newNameTD=newTR.insertCell(0);
    newNameTD.innerHTML = "<input name='txtLearnStartDate" + rowID + "' id='txtLearnStartDate" + rowID + "' type='text' class='inputStyle' />";
    var newNameTD=newTR.insertCell(1);
    newNameTD.innerHTML = "<input name='txtLearnStartDate" + rowID + "' id='txtLearnStartDate" + rowID + "' type='text' class='inputStyle' />";
    var newNameTD=newTR.insertCell(2);
    newNameTD.innerHTML = "<input name='txtName" + rowID + "' id='txtName" + rowID + "' type='text' class='inputStyle' />";
    var newDeleteTD=newTR.insertCell(3);
    newDeleteTD.innerHTML = "<div align='center'><input id='txtDel" + rowID + "' type='button' value='删除' onclick=\"LearnDeleteRow('LearnItem" + rowID + "')\" class='inputStyle' /></div>";
    LearnTRLastIndex.value = (rowID + 1).toString() ;
}
//删除指定行
function LearnDeleteRow(rowid) {
    var signFrame = findObj("LearnInfoItem", document);
    var signItem = findObj(rowid, document);
//获取将要删除的行的Index
    var rowIndex = signItem.rowIndex;
//删除指定Index的行
    signFrame.deleteRow(rowIndex);
}
function deletet(i) {
    tr=i.parentNode;
    tr.parentNode.removeChild(tr);

}