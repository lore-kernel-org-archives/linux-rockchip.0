From: Jung Zhao <jung.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v3 1/3] [NOT FOR REVIEW] v4l: Add private compound control
 type.
Date: Tue,  1 Mar 2016 10:23:23 +0800
Message-ID: <1456799003-8565-1-git-send-email-jung.zhao@rock-chips.com>
References: <1456798977-8514-1-git-send-email-jung.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1456798977-8514-1-git-send-email-jung.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Mauro Carvalho Chehab <mchehab-JPH+aEBZ4P+UEJcrhfAQsw@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Guennadi Liakhovetski <g.liakhovetski-Mmb7MZpHnFY@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Cc: Pawel Osciak <posciak-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, alpha.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, herman.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Pawel Osciak <posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

V4L2_CTRL_TYPE_PRIVATE is to be used for private driver compound
controls that use the "ptr" member of struct v4l2_ext_control.

Signed-off-by: Pawel Osciak <posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Jung Zhao <jung.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
Changes in v3: None
Changes in v2:
- add [NOT FOR REVIEW] tag for patches from Chromium OS Tree suggested by Tomasz
- update copyright message
- list all the related signed-off names
- add more description suggested by Enric
- fix format error of commit message suggested by Tomasz

 drivers/media/v4l2-core/v4l2-ctrls.c | 4 ++++
 include/uapi/linux/videodev2.h       | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-ctrls.c b/drivers/media/v4l2-core/v4l2-ctrls.c
index 890520d..527d65c 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls.c
@@ -1525,6 +1525,10 @@ static int std_validate(const struct v4l2_ctrl *ctrl, u32 idx,
 			return -ERANGE;
 		return 0;
 
+	/* FIXME:just return 0 for now */
+	case V4L2_CTRL_TYPE_PRIVATE:
+		return 0;
+
 	default:
 		return -EINVAL;
 	}
diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
index 29a6b78..53ac896 100644
--- a/include/uapi/linux/videodev2.h
+++ b/include/uapi/linux/videodev2.h
@@ -1517,6 +1517,8 @@ enum v4l2_ctrl_type {
 	V4L2_CTRL_TYPE_U8	     = 0x0100,
 	V4L2_CTRL_TYPE_U16	     = 0x0101,
 	V4L2_CTRL_TYPE_U32	     = 0x0102,
+
+	V4L2_CTRL_TYPE_PRIVATE       = 0xffff,
 };
 
 /*  Used in the VIDIOC_QUERYCTRL ioctl for querying controls */
-- 
1.9.1
