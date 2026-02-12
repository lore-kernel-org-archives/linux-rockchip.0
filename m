Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AAC9EE3695
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 16:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZnjHxY/8cEBhEtxx1TbxrzM6BPUebOrlj1JWQscoHKQ=; b=fPpEapCsBW0oGF
	E83y5XOuVwp2lNVfUdHNXcqpYtpu1amj5DSk1DLxBNJwBiJR2ZTWfmOWFoUbhMUuT+U9WQJ6UvqtV
	+DgKK/GpcnuRXpYPjWnDpLNspg1hMAkj9Derk378CoX3ZQFztu2KgrC1IapWqMKaf+VrWHW8mLh5s
	9HMpNtBUQb5o7iJHQUPNsrajDMpe44oAXipcuc+eraOJ1CvZrhl4EKPu32Y0kUFK3wJnywYbeiVnB
	e0BNfoEgLoIrQMXy3gRN1+JHN3Jx14XfI/+NwGmUpoGNl90r8AWqarAHcBD922qERSqeiqff96oRC
	8D4I6WCWJSbpARjLoY+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZU7-00000002LWY-0lrK;
	Thu, 12 Feb 2026 16:24:08 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqZU2-00000002LMe-0cM7;
	Thu, 12 Feb 2026 16:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1770913439;
	bh=D4Esu0PX9a6jwM8oltCOxAHVyCzKfA22p67UJYulAA4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HJ7OxUhEsl1jMv4aiowykMKh945jbIJwEj4X6VXYN5W/I6dFdblBgC5em9D6TdyMZ
	 OCPT6R0B8/CGITxBSdT7GN+exkwlM8siS5PQz8esTCFFZr7vFWJ4FYQxdrX9tfva/B
	 fpevt93xRF/qlCQkd5DAc5h0DWkByTu0GL+LXVM7ePRH1MlGLPffUmAsmgKtWEAqbO
	 5Ap+0yGYzaGB9dYIWlETIppxChyxs5fAUcbFFDeEMABmvUJW0yu1Pq2DBJ72rS8xJQ
	 bHIr4CkfmdSEsKysrXoEBskoHB1cpjqkMn9RwpwXNEf1X5bKL99xvK6FfcIl0Yn9pR
	 3QvoQFSAKRr2Q==
Received: from trenzalore (modemcable014.2-22-96.mc.videotron.ca [96.22.2.14])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A8A1E17E12E2;
	Thu, 12 Feb 2026 17:23:56 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Ricardo Ribalda <ribalda@chromium.org>,
	Yunke Cao <yunkec@google.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Pavan Bobba <opensource206@gmail.com>,
	James Cowgill <james.cowgill@blaize.com>,
	Ma Ke <make24@iscas.ac.cn>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Daniel Scally <dan.scally@ideasonboard.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-trace-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 07/11] media: Add stream on/off traces and run them in the ioctl
Date: Thu, 12 Feb 2026 11:23:24 -0500
Message-ID: <20260212162328.192217-8-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260212162328.192217-1-detlev.casanova@collabora.com>
References: <20260212162328.192217-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_082402_371916_CC7F2558 
X-CRM114-Status: GOOD (  11.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This will automatically add stream on/off tracing for all v4l2 drivers.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/media/v4l2-core/v4l2-ioctl.c | 20 ++++++++++++++++++--
 include/trace/events/v4l2.h          | 28 ++++++++++++++++++++++++++++
 2 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
index a3b6df0571d6..fd5193fc722e 100644
--- a/drivers/media/v4l2-core/v4l2-ioctl.c
+++ b/drivers/media/v4l2-core/v4l2-ioctl.c
@@ -1963,13 +1963,29 @@ static int v4l_try_fmt(const struct v4l2_ioctl_ops *ops, struct file *file,
 static int v4l_streamon(const struct v4l2_ioctl_ops *ops, struct file *file,
 			void *arg)
 {
-	return ops->vidioc_streamon(file, NULL, *(unsigned int *)arg);
+	struct v4l2_fh *fh = file_to_v4l2_fh(file);
+	int err;
+
+	err = ops->vidioc_streamon(file, NULL, *(unsigned int *)arg);
+
+	if (!err)
+		trace_v4l2_streamon(fh->tgid, fh->fd);
+
+	return err;
 }
 
 static int v4l_streamoff(const struct v4l2_ioctl_ops *ops, struct file *file,
 			 void *arg)
 {
-	return ops->vidioc_streamoff(file, NULL, *(unsigned int *)arg);
+	struct v4l2_fh *fh = file_to_v4l2_fh(file);
+	int err;
+
+	err = ops->vidioc_streamoff(file, NULL, *(unsigned int *)arg);
+
+	if (!err)
+		trace_v4l2_streamoff(fh->tgid, fh->fd);
+
+	return err;
 }
 
 static int v4l_g_tuner(const struct v4l2_ioctl_ops *ops, struct file *file,
diff --git a/include/trace/events/v4l2.h b/include/trace/events/v4l2.h
index 248bc09bfc99..bec310eaedc7 100644
--- a/include/trace/events/v4l2.h
+++ b/include/trace/events/v4l2.h
@@ -262,6 +262,34 @@ DEFINE_EVENT(vb2_v4l2_event_class, vb2_v4l2_qbuf,
 	TP_ARGS(q, vb)
 );
 
+DECLARE_EVENT_CLASS(v4l2_stream_class,
+	TP_PROTO(u32 tgid, u32 fd),
+	TP_ARGS(tgid, fd),
+
+	TP_STRUCT__entry(
+		__field(u32, tgid)
+		__field(u32, fd)
+	),
+
+	TP_fast_assign(
+		__entry->tgid = tgid;
+		__entry->fd = fd;
+	),
+
+	TP_printk("tgid = %u, fd = %u",
+		  __entry->tgid, __entry->fd)
+);
+
+DEFINE_EVENT(v4l2_stream_class, v4l2_streamon,
+	TP_PROTO(u32 tgid, u32 fd),
+	TP_ARGS(tgid, fd)
+);
+
+DEFINE_EVENT(v4l2_stream_class, v4l2_streamoff,
+	TP_PROTO(u32 tgid, u32 fd),
+	TP_ARGS(tgid, fd)
+);
+
 #endif /* if !defined(_TRACE_V4L2_H) || defined(TRACE_HEADER_MULTI_READ) */
 
 /* This part must be outside protection */
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
