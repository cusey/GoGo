# ############ #
# Worker       #
# ############ #

Worker.create(name:"Tiger Nixon", position:"System Architect", office:"Edinburgh", age:61, gender:"M", startDate:2011/4/2, price:320800.00 )
Worker.create(name:"Garrett Winters", position:"Accountant", office:"Tokyo", age:63, gender:"M", startDate:2011/7/25, price:170750.00)
Worker.create(name:"Ashton Cox", position:"Junior Technical Author", office:"San Francisco", age:61, gender:"M", startDate:2011/1/12, price:86000.00)
Worker.create(name:"Cedric Kelly", position:"Senior Javascript Developer", office:"Edinburgh", age:22, gender:"F", startDate:2012/3/29, price:433060.00)
Worker.create(name:"Airi Satou", position:"Accountant", office:"Tokyo", age:33, gender:"M", startDate:2008/11/28, price:162700.00)
Worker.create(name:"Brielle Williamson", position:"Integration Specialis", office:"New York", age:61, gender:"F", startDate:2012/12/2, price:372000.00)
Worker.create(name:"Herrod Chandler", position:"Sales Assistant", office:"San Francisco", age:59, gender:"M", startDate:2012/8/6, price:320800.00)
Worker.create(name:"Cedric Kelly", position:"Senior Javascript Developer", office:"Edinburgh", age:34, gender:"M", startDate:2009/4/2, price:320800.00)
Worker.create(name:"Airi Satou", position:"System Architect", office:"San Francisco", age:34, gender:"M", startDate:2017/12/3, price:320800.00)
Worker.create(name:"Brielle Williamson", position:"Accountant", office:"Edinburgh", age:56, gender:"M", startDate:2010/12/10, price:320800.00)
Worker.create(name:"Herrod Chandle", position:"Accountant", office:"San Francisco", age:43, gender:"M", startDate:2015/10/9, price:320800.00)
Worker.create(name:"Rhona Davidson", position:"Accountant", office:"Edinburgh", age:34, gender:"F", startDate:2010/4/10, price:320800.00)
Worker.create(name:"Colleen Hurst", position:"System Architect", office:"New York", age:37, gender:"F", startDate:20112/4/12, price:320800.00)
Worker.create(name:"Sonya Frost", position:"System Architect", office:"San Francisco", age:48, gender:"F", startDate:2008/4/9, price:320800.00)
Worker.create(name:"Jena Gaines", position:"Junior Technical Author", office:"Edinburgh", age:54, gender:"F", startDate:2003/4/4, price:320800.00)
Worker.create(name:"Quinn Flynn", position:"Junior Technical Author", office:"New York", age:54, gender:"M", startDate:2000/4/2, price:320800.00)
Worker.create(name:"Charde Marshall", position:"Junior Technical Author", office:"Edinburgh", age:64, gender:"F", startDate:2001/4/8, price:320800.00)
Worker.create(name:"Haley Kennedy", position:"Junior Technical Author", office:"Edinburgh", age:60, gender:"F", startDate:2002/4/7, price:320800.00)

# ############ #
# Article      #
# ############ #

Article.create(author_last_name:"Rippetoe", author_first_name:"Mark", title:"Starting Strength", rating:0)
Article.create(author_last_name:"Lauren", author_first_name:"Jim", title:"You Are Your Own Gym", rating:0)
Article.create(author_last_name:"Venuto", author_first_name:"Tom", title:"Burn the Fat, Feed the Muscle", rating:0)
Article.create(author_last_name:"Clear", author_first_name:"James", title:"Atomic Habits", rating:0)

# ############ #
# Task         #
# ############ #

Task.create(title:"Yard Work", description:"raking falls and moaning the grass", completed:false)
Task.create(title:"Bed", description:"making up the bed", completed:false)
Task.create(title:"Kitchen", description:"doing the dishes", completed:false)
Task.create(title:"Living Room", description:"sweeping the floor" , completed:false)

# ############ #
# TodoList     #
# ############ #

TodoList.create(title:"Yard", description:"Fence and gates building and maintenance", profiles:1, category:1 )
TodoList.create(title:"Roof", description:"Roofing installation and gutter cleaning", profiles:2, category:1  )
TodoList.create(title:"Kitchen", description:"Fence and gates building and maintenance", profiles:0, category:2  )
TodoList.create(title:"Bedroom", description:"Painting services and drywall", profiles:1, category:2  )
TodoList.create(title:"Hallway", description:"Rail installations", profiles:2, category:0  )

# ############ #
# Upload       #
# ############ #

Upload.create(attachmentFileName:"Test1", attachmentFileSize:1, contactId:1, processedAt:"2019-10-04 20:13:00", status:"NEW", organizationId:1, uploaderContactId:1, uploadType:nil, attachmentContentType:"text/csv", attachmentUpdatedAt:"2019-10-04 20:13:00", totalRecords:1, autoProcess:true, created_at:"2019-10-04 20:13:58", updated_at:"2019-10-04 20:13:58")
Upload.create(attachmentFileName:"Test2", attachmentFileSize:1, contactId:1, processedAt:"2019-10-04 20:13:00", status:"NEW", organizationId:1, uploaderContactId:1, uploadType:nil, attachmentContentType:"text/csv", attachmentUpdatedAt:"2019-10-04 20:13:00", totalRecords:1, autoProcess:true, created_at:"2019-10-04 20:13:58", updated_at:"2019-10-04 20:13:58")
Upload.create(attachmentFileName:"Test3", attachmentFileSize:1, contactId:1, processedAt:"2019-10-04 20:13:00", status:"NEW", organizationId:1, uploaderContactId:1, uploadType:nil, attachmentContentType:"text/csv", attachmentUpdatedAt:"2019-10-04 20:13:00", totalRecords:1, autoProcess:true, created_at:"2019-10-04 20:13:58", updated_at:"2019-10-04 20:13:58")
Upload.create(attachmentFileName:"Test4", attachmentFileSize:1, contactId:1, processedAt:"2019-10-04 20:13:00", status:"NEW", organizationId:1, uploaderContactId:1, uploadType:nil, attachmentContentType:"text/csv", attachmentUpdatedAt:"2019-10-04 20:13:00", totalRecords:1, autoProcess:true, created_at:"2019-10-04 20:13:58", updated_at:"2019-10-04 20:13:58")
Upload.create(attachmentFileName:"Test5", attachmentFileSize:1, contactId:1, processedAt:"2019-10-04 20:13:00", status:"NEW", organizationId:1, uploaderContactId:1, uploadType:nil, attachmentContentType:"text/csv", attachmentUpdatedAt:"2019-10-04 20:13:00", totalRecords:1, autoProcess:true, created_at:"2019-10-04 20:13:58", updated_at:"2019-10-04 20:13:58")