--- Commands Variable / CommandType
LuiScript = {}
Console = {}
inject = {}
Document = {}
File = {}
System = {}
Web = {}
WebSite = {}



--- Functions / Commands

function Console.Say(ConsolePrintValue)
  print(ConsolePrintValue)
  ConsolePrintValue = nil
end



function Execute(ExecuteFileName)
  os.execute(ExecuteFileName)
end

--- Web Development (HTML) JS Will Be added Later

function System.CreateFileHtmlScript(HtmlFileName)
  HtmlFileContents = io.output(HtmlFileName, "w")
end

function WebSite.Add_MainHeader()
  HtmlFileContents:write("<!DOCTYPE html>\n")
end

function WebSite.Add_Head(HeadValue)
  if HeadValue == "Starting" then
    HtmlFileContents:write("\n<Head>")
    HeadValue = nil
  elseif HeadValue == "Ending" then
    HtmlFileContents:write("\n</head>")
    HeadValue = nil
end end

function WebSite.Add_Title(PageTitle)
  HtmlFileContents:write("\n<title>"..PageTitle.."</title>")
  PageTitle = nil
end

function WebSite.Add_Meta(MetaType)
  if MetaType == "Responsive" then
    HtmlFileContents:write("\n<meta name='viewport' content='width=device-width, initial-scale=1.0'>")
    MetaType = nil
  else
    print("Unknown Type Of MetaType: WebSite.Add_Meta(MetaType <-)")
    MetaType = nil
end end


function WebSite.Add_Text(WebsiteTextElement)
  HtmlFileContents:write("\n<text>"..WebsiteTextElement.."</text>")
  WebsiteTextElement = nil
end


function WebSite.Add_Heading(HeadingType, HeadingText)
  if HeadingType == "Header1" then
    HtmlFileContents:write("\n<h1>"..HeadingText.."</h1>")
  elseif HeadingType == nil then
    HtmlFileContents:write("\n")
end end

function WebSite.Add_Paragraph(ParagraphText)
  HtmlFileContents:write("\n<p>"..ParagraphText.."</p>")
end

function WebSite.Add_Center(CenterProperty)
  if CenterProperty == "Starting" then
    HtmlFileContents:write("\n<center>")
  elseif CenterProperty == "Ending" then
    HtmlFileContents:write("\n</center>")
  else
    print("Error: Unknown Value Of WebSite.Add_Center("..CenterProperty.."<-)")
end end


function WebSite.Add_Script(ScriptType, ScriptValue)
  if ScriptType == "Embed_Script" then
    HtmlFileContents:write("<script src='"..ScriptValue.."'></script>")
  elseif ScriptType == nil then
    HtmlFileContents:write("\n<script>"..ScriptValue.."\n</script>")
end end


function WebSite.Add_HTML(HTMLType)
  if HTMLType == "Starting" then
    HtmlFileContents:write("\n<html>")
  elseif HTMLType == "Ending" then
    HtmlFileContents:write("\n</html>")
end end


--- Extra Functions / Commands

function Console.Date(PrintDateValue)
  if PrintDateValue == "System.Day" then
    PrintDate = os.date("%d")
    print(PrintDate)
    PrintDate = nil
  elseif PrintDateValue == "System.Month" then
    PrintDate = os.date("%m")
    print(PrintDate)
    PrintDate = nil
  elseif PrintDateValue == "System.Year" then
    PrintDate = os.date("%Y")
    print(PrintDate)
    PrintDate = nil
  elseif PrintDateValue == nil then
    PrintDate = os.date("%d.%m.%Y")
    print(PrintDate)
    PrintDate = nil
  else
    print("Error: Unknown Value of Console.Date("..PrintDateValue.."<-)")
    PrintDateValue = nil
end end


--- File Operating Functions
function System.Create_File(FileName)
  CreatedFile = io.output(FileName, "w")
  CreatedFile = nil
end

function System.Delete_File(FileName)
  os.remove(FileName)
end

function System.Rename_File(OldFileName, NewFileName)
  os.rename(OldFileName, NewFileName)
end









--- Test

System.CreateFileWithHtmlScript("TestLuaWeb.html")

WebSite.Add_MainHeader()
WebSite.Add_HTML("Starting")
WebSite.Add_Head("Starting")
WebSite.Add_Title("Hello! This Website is Scripted/Generated By Lua!")
WebSite.Add_Head("Ending")
WebSite.Add_Center("Starting")
WebSite.Add_Text("Hello World!")
WebSite.Add_Center("Ending")
WebSite.Add_Text("Hello! This is Website Created/Generated By Luka/LuiScript and This Website is Scripted/Generated By Lua and LuiScript(LS)")
WebSite.Add_HTML("Ending")