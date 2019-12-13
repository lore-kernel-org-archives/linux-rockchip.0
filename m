From: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 1/3] media: v4l2-ctrls: Add the
 [__]v4l2_ctrl_s_ctrl_compound() helpers
Date: Fri, 13 Dec 2019 14:31:55 +0100
Message-ID: <20191213133157.105554-2-boris.brezillon@collabora.com>
References: <20191213133157.105554-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191213133157.105554-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

VP9 codec drivers will need to set some of their frame context compound
controls. Let's provide the [__]v4l2_ctrl_s_ctrl_compound() helpers to
allow that.

Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/media/v4l2-core/v4l2-ctrls.c | 15 ++++++++++
 include/media/v4l2-ctrls.h           | 43 ++++++++++++++++++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 2928c5e0a73d..9d5c0242d3e0 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -4255,6 +4255,21 @@ int __v4l2_ctrl_s_ctrl_area(struct v4l2_ctrl *ctrl,
 }
 EXPORT_SYMBOL(__v4l2_ctrl_s_ctrl_area);
 
+int __v4l2_ctrl_s_ctrl_compound(struct v4l2_ctrl *ctrl, const void *data,
+				size_t len)
+{
+	lockdep_assert_held(ctrl->handler->lock);
+
+	/* It's a driver bug if this happens. */
+	WARN_ON(!ctrl->is_ptr || ctrl->type < V4L2_CTRL_COMPOUND_TYPES);
+	if (WARN_ON(len != (ctrl->elem_size * ctrl->elems)))
+		return -EINVAL;
+
+	memcpy(ctrl->p_new.p, data, len);
+	return set_ctrl(NULL, ctrl, 0);
+}
+EXPORT_SYMBOL(__v4l2_ctrl_s_ctrl_compound);
+
 void v4l2_ctrl_request_complete(struct media_request *req,
 				struct v4l2_ctrl_handler *main_hdl)
 {
diff --git a/include/media/v4l2-ctrls.h b/include/media/v4l2-ctrls.h
index 7db9e719a583..30c3be7f5efc 100644
--- a/include/media/v4l2-ctrls.h
+++ b/include/media/v4l2-ctrls.h
@@ -1152,6 +1152,49 @@ static inline int v4l2_ctrl_s_ctrl_area(struct v4l2_ctrl *ctrl,
 	return rval;
 }
 
+/**
+ * __v4l2_ctrl_s_ctrl_compound() - Unlocked variant of
+ *				   v4l2_ctrl_s_ctrl_compound().
+ *
+ * @ctrl:	The control.
+ * @data:	The object pointer.
+ * @len:	The object length.
+ *
+ * This sets the control's new compound safely by going through the control
+ * framework. This function assumes the control's handler is already locked,
+ * allowing it to be used from within the &v4l2_ctrl_ops functions.
+ *
+ * This function is for compound type controls only.
+ */
+int __v4l2_ctrl_s_ctrl_compound(struct v4l2_ctrl *ctrl, const void *data,
+				size_t len);
+
+/**
+ * v4l2_ctrl_s_ctrl_compound() - Helper function to set a control's compound
+ *				 value from within a driver.
+ *
+ * @ctrl:	The control.
+ * @data:	The object pointer.
+ * @len:	The object length.
+ *
+ * This sets the control's new compound safely by going through the control
+ * framework. This function will lock the control's handler, so it cannot be
+ * used from within the &v4l2_ctrl_ops functions.
+ *
+ * This function is for compound type controls only.
+ */
+static inline int v4l2_ctrl_s_ctrl_compound(struct v4l2_ctrl *ctrl,
+					    const void *data, size_t len)
+{
+	int rval;
+
+	v4l2_ctrl_lock(ctrl);
+	rval = __v4l2_ctrl_s_ctrl_compound(ctrl, data, len);
+	v4l2_ctrl_unlock(ctrl);
+
+	return rval;
+}
+
 /* Internal helper functions that deal with control events. */
 extern const struct v4l2_subscribed_event_ops v4l2_ctrl_sub_ev_ops;
 
-- 
2.23.0
