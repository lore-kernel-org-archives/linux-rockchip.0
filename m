From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 1/7] v4l2-mem2mem: return CAPTURE buffer first
Date: Wed, 25 Mar 2020 18:34:32 -0300
Message-ID: <20200325213439.16509-2-ezequiel@collabora.com>
References: <20200325213439.16509-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200325213439.16509-1-ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Alexandre Courbot <acourbot-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Jeffrey Kardatzke <jkardatzke-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

When the request API is used, typically an OUTPUT (src) buffer
will be part of a request. A userspace process will be typically
blocked, waiting on the request file descriptor.

Returning the OUTPUT (src) buffer will wake-up such processes,
who will immediately attempt to dequeue the CAPTURE buffer,
only to find it's still unavailable.

Therefore, change v4l2_m2m_buf_done_and_job_finish returning
the CAPTURE (dst) buffer first, to avoid signalling the request
file descriptor prematurely, i.e. before the CAPTURE buffer is done.

When the request API is not used, this change should have
no impact.

Tested-by: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 8986c31176e9..62ac9424c92a 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -504,12 +504,21 @@ void v4l2_m2m_buf_done_and_job_finish(struct v4l2_m2m_dev *m2m_dev,
 
 	if (WARN_ON(!src_buf || !dst_buf))
 		goto unlock;
-	v4l2_m2m_buf_done(src_buf, state);
 	dst_buf->is_held = src_buf->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
 	if (!dst_buf->is_held) {
 		v4l2_m2m_dst_buf_remove(m2m_ctx);
 		v4l2_m2m_buf_done(dst_buf, state);
 	}
+	/*
+	 * If the request API is being used, returning the OUTPUT
+	 * (src) buffer will wake-up any process waiting on the
+	 * request file descriptor.
+	 *
+	 * Therefore, return the CAPTURE (dst) buffer first,
+	 * to avoid signalling the request file descriptor
+	 * before the CAPTURE buffer is done.
+	 */
+	v4l2_m2m_buf_done(src_buf, state);
 	schedule_next = _v4l2_m2m_job_finish(m2m_dev, m2m_ctx);
 unlock:
 	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
-- 
2.26.0.rc2
