using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CommentManagement_app.Controllers
{
    public class CommentsDetailController : ApiController
    {

        public IHttpActionResult getcommetsDetail() {


            GridView_ExamEntities2 ex = new GridView_ExamEntities2();

            var results = ex.tableComments.ToList();
            return Ok(results);
        }
    }
}
