From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v5 05/15] rockchip/vpu: Open-code media controller register
Date: Fri,  3 May 2019 13:47:09 +0200
Message-ID: <20190503114719.28784-6-boris.brezillon@collabora.com>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190503114719.28784-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>

In preparation to support decoders, using a single memory-to-memory
device, we need to roll our own media controller entities registration.

To do that, we define a rockchip_vpu_func object that embeds the
video_device object plus all the elements that are needed to attach this
vdev to the media device.

Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
--
Changes from v3:
* Rework the media controller registration logic (Boris)
* Fix media controller deregistration (Jonas)

Changes from v2:
* Use kvasprintf instead of kmalloc and snprintf.
* Fix missing kfree in error paths.
* Remove unneeded media_remove_intf_links on error paths.
---
 .../staging/media/rockchip/vpu/rockchip_vpu.h |  39 +++-
 .../media/rockchip/vpu/rockchip_vpu_drv.c     | 209 +++++++++++++++---
 2 files changed, 216 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
index b15c02333a70..aba257c663a7 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
@@ -71,12 +71,47 @@ enum rockchip_vpu_codec_mode {
 	RK_VPU_MODE_JPEG_ENC,
 };
 
+/*
+ * struct rockchip_vpu_func - rockchip VPU functionality
+ *
+ * @id:			processing functionality ID (can be
+ *			%MEDIA_ENT_F_PROC_VIDEO_ENCODER or
+ *			%MEDIA_ENT_F_PROC_VIDEO_DECODER)
+ * @vdev:		&struct video_device that exposes the encoder or
+ *			decoder functionality
+ * @source_pad:		&struct media_pad with the source pad.
+ * @sink:		&struct media_entity pointer with the sink entity
+ * @sink_pad:		&struct media_pad with the sink pad.
+ * @proc:		&struct media_entity pointer with the M2M device itself.
+ * @proc_pads:		&struct media_pad with the @proc pads.
+ * @intf_devnode:	&struct media_intf devnode pointer with the interface
+ *			with controls the M2M device.
+ *
+ * Contains everything needed to attach the video device to the media device.
+ */
+struct rockchip_vpu_func {
+	unsigned int id;
+	struct video_device vdev;
+	struct media_pad source_pad;
+	struct media_entity sink;
+	struct media_pad sink_pad;
+	struct media_entity proc;
+	struct media_pad proc_pads[2];
+	struct media_intf_devnode *intf_devnode;
+};
+
+static inline struct rockchip_vpu_func *
+rockchip_vpu_vdev_to_func(struct video_device *vdev)
+{
+	return container_of(vdev, struct rockchip_vpu_func, vdev);
+}
+
 /**
  * struct rockchip_vpu_dev - driver data
  * @v4l2_dev:		V4L2 device to register video devices for.
  * @m2m_dev:		mem2mem device associated to this device.
  * @mdev:		media device associated to this device.
- * @vfd_enc:		Video device for encoder.
+ * @encoder:		encoder functionality.
  * @pdev:		Pointer to VPU platform device.
  * @dev:		Pointer to device for convenient logging using
  *			dev_ macros.
@@ -93,7 +128,7 @@ struct rockchip_vpu_dev {
 	struct v4l2_device v4l2_dev;
 	struct v4l2_m2m_dev *m2m_dev;
 	struct media_device mdev;
-	struct video_device *vfd_enc;
+	struct rockchip_vpu_func *encoder;
 	struct platform_device *pdev;
 	struct device *dev;
 	struct clk_bulk_data clocks[ROCKCHIP_VPU_MAX_CLOCKS];
diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
index 3c3ce3baeb6d..fa02354a0f8a 100644
--- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
+++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
@@ -239,6 +239,7 @@ static int rockchip_vpu_open(struct file *filp)
 {
 	struct rockchip_vpu_dev *vpu = video_drvdata(filp);
 	struct video_device *vdev = video_devdata(filp);
+	struct rockchip_vpu_func *func = rockchip_vpu_vdev_to_func(vdev);
 	struct rockchip_vpu_ctx *ctx;
 	int ret;
 
@@ -256,7 +257,7 @@ static int rockchip_vpu_open(struct file *filp)
 		return -ENOMEM;
 
 	ctx->dev = vpu;
-	if (vdev == vpu->vfd_enc)
+	if (func->id == MEDIA_ENT_F_PROC_VIDEO_ENCODER)
 		ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(vpu->m2m_dev, ctx,
 						    &enc_queue_init);
 	else
@@ -324,52 +325,206 @@ static const struct of_device_id of_rockchip_vpu_match[] = {
 };
 MODULE_DEVICE_TABLE(of, of_rockchip_vpu_match);
 
-static int rockchip_vpu_video_device_register(struct rockchip_vpu_dev *vpu)
+static int rockchip_vpu_register_entity(struct media_device *mdev,
+					struct media_entity *entity,
+					const char *entity_name,
+					struct media_pad *pads, int num_pads,
+					int function,
+					struct video_device *vdev)
+{
+	char *name;
+	int ret;
+
+	entity->obj_type = MEDIA_ENTITY_TYPE_BASE;
+	if (function == MEDIA_ENT_F_IO_V4L) {
+		entity->info.dev.major = VIDEO_MAJOR;
+		entity->info.dev.minor = vdev->minor;
+	}
+
+	name = devm_kasprintf(mdev->dev, GFP_KERNEL, "%s-%s", vdev->name,
+			      entity_name);
+	if (!name)
+		return -ENOMEM;
+
+	entity->name = name;
+	entity->function = function;
+
+	ret = media_entity_pads_init(entity, num_pads, pads);
+	if (ret)
+		return ret;
+
+	ret = media_device_register_entity(mdev, entity);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int rockchip_attach_func(struct rockchip_vpu_dev *vpu,
+				struct rockchip_vpu_func *func)
+{
+	struct media_device *mdev = &vpu->mdev;
+	struct media_link *link;
+	int ret;
+
+	/* Create the three encoder entities with their pads */
+	func->source_pad.flags = MEDIA_PAD_FL_SOURCE;
+	ret = rockchip_vpu_register_entity(mdev, &func->vdev.entity,
+					   "source", &func->source_pad, 1,
+					   MEDIA_ENT_F_IO_V4L, &func->vdev);
+	if (ret)
+		return ret;
+
+	func->proc_pads[0].flags = MEDIA_PAD_FL_SINK;
+	func->proc_pads[1].flags = MEDIA_PAD_FL_SOURCE;
+	ret = rockchip_vpu_register_entity(mdev, &func->proc, "proc",
+					   func->proc_pads, 2, func->id,
+					   &func->vdev);
+	if (ret)
+		goto err_rel_entity0;
+
+	func->sink_pad.flags = MEDIA_PAD_FL_SINK;
+	ret = rockchip_vpu_register_entity(mdev, &func->sink, "sink",
+					   &func->sink_pad, 1,
+					   MEDIA_ENT_F_IO_V4L, &func->vdev);
+	if (ret)
+		goto err_rel_entity1;
+
+	/* Connect the three entities */
+	ret = media_create_pad_link(&func->vdev.entity, 0, &func->proc, 1,
+				    MEDIA_LNK_FL_IMMUTABLE |
+				    MEDIA_LNK_FL_ENABLED);
+	if (ret)
+		goto err_rel_entity2;
+
+	ret = media_create_pad_link(&func->proc, 0, &func->sink, 0,
+				    MEDIA_LNK_FL_IMMUTABLE |
+				    MEDIA_LNK_FL_ENABLED);
+	if (ret)
+		goto err_rm_links0;
+
+	/* Create video interface */
+	func->intf_devnode = media_devnode_create(mdev, MEDIA_INTF_T_V4L_VIDEO,
+						  0, VIDEO_MAJOR,
+						  func->vdev.minor);
+	if (!func->intf_devnode) {
+		ret = -ENOMEM;
+		goto err_rm_links1;
+	}
+
+	/* Connect the two DMA engines to the interface */
+	link = media_create_intf_link(&func->vdev.entity,
+				      &func->intf_devnode->intf,
+				      MEDIA_LNK_FL_IMMUTABLE |
+				      MEDIA_LNK_FL_ENABLED);
+	if (!link) {
+		ret = -ENOMEM;
+		goto err_rm_devnode;
+	}
+
+	link = media_create_intf_link(&func->sink, &func->intf_devnode->intf,
+				      MEDIA_LNK_FL_IMMUTABLE |
+				      MEDIA_LNK_FL_ENABLED);
+	if (!link) {
+		ret = -ENOMEM;
+		goto err_rm_devnode;
+	}
+	return 0;
+
+err_rm_devnode:
+	media_devnode_remove(func->intf_devnode);
+
+err_rm_links1:
+	media_entity_remove_links(&func->sink);
+
+err_rm_links0:
+	media_entity_remove_links(&func->proc);
+	media_entity_remove_links(&func->vdev.entity);
+
+err_rel_entity2:
+	media_device_unregister_entity(&func->sink);
+
+err_rel_entity1:
+	media_device_unregister_entity(&func->proc);
+
+err_rel_entity0:
+	media_device_unregister_entity(&func->vdev.entity);
+	return ret;
+}
+
+static void rockchip_detach_func(struct rockchip_vpu_func *func)
+{
+	media_devnode_remove(func->intf_devnode);
+	media_entity_remove_links(&func->sink);
+	media_entity_remove_links(&func->proc);
+	media_entity_remove_links(&func->vdev.entity);
+	media_device_unregister_entity(&func->sink);
+	media_device_unregister_entity(&func->proc);
+	media_device_unregister_entity(&func->vdev.entity);
+}
+
+static int rockchip_vpu_add_enc_func(struct rockchip_vpu_dev *vpu)
 {
 	const struct of_device_id *match;
+	struct rockchip_vpu_func *func;
 	struct video_device *vfd;
-	int function, ret;
+	int ret;
 
 	match = of_match_node(of_rockchip_vpu_match, vpu->dev->of_node);
-	vfd = video_device_alloc();
-	if (!vfd) {
+	func = devm_kzalloc(vpu->dev, sizeof(*func), GFP_KERNEL);
+	if (!func) {
 		v4l2_err(&vpu->v4l2_dev, "Failed to allocate video device\n");
 		return -ENOMEM;
 	}
 
+	func->id = MEDIA_ENT_F_PROC_VIDEO_ENCODER;
+
+	vfd = &func->vdev;
 	vfd->fops = &rockchip_vpu_fops;
-	vfd->release = video_device_release;
+	vfd->release = video_device_release_empty;
 	vfd->lock = &vpu->vpu_mutex;
 	vfd->v4l2_dev = &vpu->v4l2_dev;
 	vfd->vfl_dir = VFL_DIR_M2M;
 	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
 	vfd->ioctl_ops = &rockchip_vpu_enc_ioctl_ops;
 	snprintf(vfd->name, sizeof(vfd->name), "%s-enc", match->compatible);
-	vpu->vfd_enc = vfd;
+
+	vpu->encoder = func;
 	video_set_drvdata(vfd, vpu);
 
 	ret = video_register_device(vfd, VFL_TYPE_GRABBER, -1);
 	if (ret) {
 		v4l2_err(&vpu->v4l2_dev, "Failed to register video device\n");
-		goto err_free_dev;
+		return ret;
 	}
+
+	ret = rockchip_attach_func(vpu, func);
+	if (ret) {
+		v4l2_err(&vpu->v4l2_dev,
+			 "Failed to attach functionality to the media device\n");
+		goto err_unreg_dev;
+	}
+
 	v4l2_info(&vpu->v4l2_dev, "registered as /dev/video%d\n", vfd->num);
 
-	function = MEDIA_ENT_F_PROC_VIDEO_ENCODER;
-	ret = v4l2_m2m_register_media_controller(vpu->m2m_dev, vfd, function);
-	if (ret) {
-		v4l2_err(&vpu->v4l2_dev, "Failed to init mem2mem media controller\n");
-		goto err_unreg_video;
-	}
 	return 0;
 
-err_unreg_video:
+err_unreg_dev:
 	video_unregister_device(vfd);
-err_free_dev:
-	video_device_release(vfd);
 	return ret;
 }
 
+static void rockchip_vpu_remove_enc_func(struct rockchip_vpu_dev *vpu)
+{
+	struct rockchip_vpu_func *func = vpu->encoder;
+
+	if (!func)
+		return;
+
+	rockchip_detach_func(func);
+	video_unregister_device(&func->vdev);
+}
+
 static int rockchip_vpu_probe(struct platform_device *pdev)
 {
 	const struct of_device_id *match;
@@ -464,7 +619,7 @@ static int rockchip_vpu_probe(struct platform_device *pdev)
 	media_device_init(&vpu->mdev);
 	vpu->v4l2_dev.mdev = &vpu->mdev;
 
-	ret = rockchip_vpu_video_device_register(vpu);
+	ret = rockchip_vpu_add_enc_func(vpu);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to register encoder\n");
 		goto err_m2m_rel;
@@ -473,15 +628,13 @@ static int rockchip_vpu_probe(struct platform_device *pdev)
 	ret = media_device_register(&vpu->mdev);
 	if (ret) {
 		v4l2_err(&vpu->v4l2_dev, "Failed to register mem2mem media device\n");
-		goto err_video_dev_unreg;
+		goto err_rm_enc_func;
 	}
+
 	return 0;
-err_video_dev_unreg:
-	if (vpu->vfd_enc) {
-		v4l2_m2m_unregister_media_controller(vpu->m2m_dev);
-		video_unregister_device(vpu->vfd_enc);
-		video_device_release(vpu->vfd_enc);
-	}
+
+err_rm_enc_func:
+	rockchip_vpu_remove_enc_func(vpu);
 err_m2m_rel:
 	media_device_cleanup(&vpu->mdev);
 	v4l2_m2m_release(vpu->m2m_dev);
@@ -501,11 +654,7 @@ static int rockchip_vpu_remove(struct platform_device *pdev)
 	v4l2_info(&vpu->v4l2_dev, "Removing %s\n", pdev->name);
 
 	media_device_unregister(&vpu->mdev);
-	if (vpu->vfd_enc) {
-		v4l2_m2m_unregister_media_controller(vpu->m2m_dev);
-		video_unregister_device(vpu->vfd_enc);
-		video_device_release(vpu->vfd_enc);
-	}
+	rockchip_vpu_remove_enc_func(vpu);
 	media_device_cleanup(&vpu->mdev);
 	v4l2_m2m_release(vpu->m2m_dev);
 	v4l2_device_unregister(&vpu->v4l2_dev);
-- 
2.20.1
