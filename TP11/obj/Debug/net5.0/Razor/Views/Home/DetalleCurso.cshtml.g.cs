#pragma checksum "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "3f13d691d6bfbdfd378711affe1093dac0277f4b"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_DetalleCurso), @"mvc.1.0.view", @"/Views/Home/DetalleCurso.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\_ViewImports.cshtml"
using TP11;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\_ViewImports.cshtml"
using TP11.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"3f13d691d6bfbdfd378711affe1093dac0277f4b", @"/Views/Home/DetalleCurso.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b5d5cfd852d18895bf2cf5d35380edb1c85a2c70", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_DetalleCurso : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"<div class=""row"">
    <div class=""col-md-12"">
    <center>
        <div class=""card levantar card text-white mb-3"" style=""background-color:#1e304c; width: 100%; margin-top:2rem;"">
            <div class=""row no-gutters"">
                <div class=""col-md-4"">
                <img style=""height:100%;""");
            BeginWriteAttribute("src", " src=\"", 307, "\"", 334, 1);
#nullable restore
#line 7 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
WriteAttributeValue("", 313, ViewBag.Curso.Imagen, 313, 21, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" class=\"card-img\" alt=\"...\">\r\n                </div>\r\n                <div class=\"col-md-8\">\r\n                    <div class=\"card-body\" style=\"font-size:3rem;\">\r\n                        <h1 class=\"card-title\">");
#nullable restore
#line 11 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
                                          Write(ViewBag.Curso.Nombre);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\r\n                        <h2  class=\"card-text\">");
#nullable restore
#line 12 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
                                          Write(ViewBag.Curso.Descripcion);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h2>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        ");
#nullable restore
#line 17 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
   Write(Html.Raw(ViewBag.Curso.UrlCurso));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n\r\n\r\n    <div class=\"row\" style=\"justify-content: center;\">\r\n        <a class=\"btn btn-warning botino1\"");
            BeginWriteAttribute("href", " href=\'", 886, "\'", 973, 1);
#nullable restore
#line 21 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
WriteAttributeValue("", 893, Url.Action("Calificar","Home",new {IdCurso=@ViewBag.Curso.IdCurso, Gusta=true}), 893, 80, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n            <img src=\"/img/megustaSI.png\" style=\"width: 7rem;\">\r\n            <h3>");
#nullable restore
#line 23 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
           Write(ViewBag.Curso.MeGusta);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h3>\r\n        </a>\r\n        <a style=\"margin-left: 2rem;\" class=\"btn btn-warning botino2\"");
            BeginWriteAttribute("href", " href=\'", 1170, "\'", 1258, 1);
#nullable restore
#line 25 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
WriteAttributeValue("", 1177, Url.Action("Calificar","Home",new {IdCurso=@ViewBag.Curso.IdCurso, Gusta=false}), 1177, 81, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n            <img src=\"/img/megustaNO.png\" style=\"width: 7rem;\">\r\n            <h3>");
#nullable restore
#line 27 "C:\Users\46291220\Downloads\TP11-20211123T122837Z-001\TP11\Views\Home\DetalleCurso.cshtml"
           Write(ViewBag.Curso.NoMeGusta);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h3>\r\n        </a>\r\n    </div>\r\n\r\n\r\n\r\n    </div>\r\n    </center>\r\n</div>\r\n\r\n<BR><BR><BR><BR><BR><BR>");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591