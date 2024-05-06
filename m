Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6619C25B4F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 17:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuM5Z6L0Yk0LYQ4vFHonqfls3gTsgITSnUSxA7dScBE=; b=jG+SOFcwO6Cn68
	gergMPiJQntVDO3S5/CwVwzdmf3GxaiyXqrpXYcOjy1ppU91DJPKjaMD9fcdEFskO9e9Y9Y2zfKWE
	4O0r9QUs9Ur23L5Wbcyp7/7CnmuGMsP/Y2AGfGldNrDG6obGZpfaALpRn7kbosRZjYu7HLvLdy8ui
	zYhi2eBdKfxN/vNN8UAS/bqpSRWAFH+SJ6tprtPTQJR8AJZ8rupnMugxcxdKWiGM5yxlgKrD7yL2W
	Q81DyXgIslpxcuzNPW9CLz1Xs5OP2uP9VfOWNZE/xmXBCZvTney92u8HRmIfZR4lLfjpOZUBlenzF
	55zqBqW9AV0bHJj85lUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s42WV-00000008IhC-1YhX;
	Mon, 06 May 2024 17:53:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s42WR-00000008IeN-0rtl
	for linux-rockchip@lists.infradead.org;
	Mon, 06 May 2024 17:53:08 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BD5731211;
	Mon,  6 May 2024 19:53:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715017984;
	bh=TnNuQX2g0PtHRgzNjj1qruspQOLkETZhXtGC/kAGMIs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=py8S/sp6nYZTH20Bl4ddC+yS7WxqFIbyWpZb5SYybtwwagF8CuytwQotAY3haJkhl
	 c+e1K+cuxTry+ZyT0dtPfagfEuU0j5f96pJk6wPEQKqyKFnANWNHFJ3c8euEQ64aWC
	 1eBoafLonz2up1HjC21DFKdAUJP0CR3HW0GNrc+s=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] media: v4l2-subdev: Provide const-aware subdev state accessors
Date: Mon,  6 May 2024 20:52:54 +0300
Message-ID: <20240506175255.24394-2-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240506175255.24394-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20240506175255.24394-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_105307_756228_7F555B0A 
X-CRM114-Status: GOOD (  14.56  )
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

It would be useful to mark instances of v4l2_subdev_state structures as
const when code needs to access them read-only. This isn't currently
possible, as the v4l2_subdev_state_get_*() accessor functions take a
non-const pointer to the state.

Use _Generic() to provide two different versions of the accessors, for
const and non-const states respectively. The former returns a const
pointer to the requested format, rectangle or interval, implementing
const-correctness. The latter returns a non-const pointer, preserving
the current behaviour for drivers.

Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
Bike-shedding about names and the 4 leading underscores is allowed (and
expected).
---
 drivers/media/v4l2-core/v4l2-subdev.c | 24 +++++-----
 include/media/v4l2-subdev.h           | 66 ++++++++++++++++++---------
 2 files changed, 57 insertions(+), 33 deletions(-)

diff --git a/drivers/media/v4l2-core/v4l2-subdev.c b/drivers/media/v4l2-core/v4l2-subdev.c
index 83c6d1e36871..af1fbc28c8f0 100644
--- a/drivers/media/v4l2-core/v4l2-subdev.c
+++ b/drivers/media/v4l2-core/v4l2-subdev.c
@@ -1616,8 +1616,8 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd)
 EXPORT_SYMBOL_GPL(v4l2_subdev_cleanup);
 
 struct v4l2_mbus_framefmt *
-__v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
-			       unsigned int pad, u32 stream)
+____v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
+				 unsigned int pad, u32 stream)
 {
 	struct v4l2_subdev_stream_configs *stream_configs;
 	unsigned int i;
@@ -1647,11 +1647,11 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
 
 	return NULL;
 }
-EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_format);
+EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_format);
 
 struct v4l2_rect *
-__v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
-			     u32 stream)
+____v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
+			       u32 stream)
 {
 	struct v4l2_subdev_stream_configs *stream_configs;
 	unsigned int i;
@@ -1681,11 +1681,11 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
 
 	return NULL;
 }
-EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_crop);
+EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_crop);
 
 struct v4l2_rect *
-__v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
-				unsigned int pad, u32 stream)
+____v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
+				  unsigned int pad, u32 stream)
 {
 	struct v4l2_subdev_stream_configs *stream_configs;
 	unsigned int i;
@@ -1715,11 +1715,11 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
 
 	return NULL;
 }
-EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_compose);
+EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_compose);
 
 struct v4l2_fract *
-__v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
-				 unsigned int pad, u32 stream)
+____v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
+				   unsigned int pad, u32 stream)
 {
 	struct v4l2_subdev_stream_configs *stream_configs;
 	unsigned int i;
@@ -1751,7 +1751,7 @@ __v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
 
 	return NULL;
 }
-EXPORT_SYMBOL_GPL(__v4l2_subdev_state_get_interval);
+EXPORT_SYMBOL_GPL(____v4l2_subdev_state_get_interval);
 
 #if defined(CONFIG_VIDEO_V4L2_SUBDEV_API)
 
diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
index e30c463d90e5..ba722ab501c1 100644
--- a/include/media/v4l2-subdev.h
+++ b/include/media/v4l2-subdev.h
@@ -1340,21 +1340,27 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
  */
 /*
  * Wrap v4l2_subdev_state_get_format(), allowing the function to be called with
- * two or three arguments. The purpose of the __v4l2_subdev_state_get_format()
+ * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
  * macro below is to come up with the name of the function or macro to call,
  * using the last two arguments (_stream and _pad). The selected function or
  * macro is then called using the arguments specified by the caller. A similar
  * arrangement is used for v4l2_subdev_state_crop() and
  * v4l2_subdev_state_compose() below.
  */
-#define v4l2_subdev_state_get_format(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
+#define v4l2_subdev_state_get_format(state, pad, ...)				\
+	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)		\
 		(state, pad, ##__VA_ARGS__)
-#define __v4l2_subdev_state_get_format_pad(state, pad)	\
+#define __v4l2_subdev_state_get_format_pad(state, pad)				\
 	__v4l2_subdev_state_get_format(state, pad, 0)
+#define __v4l2_subdev_state_get_format(state, pad, stream)			\
+	_Generic(state,								\
+		const struct v4l2_subdev_state *: ((const struct v4l2_mbus_framefmt *)	\
+			____v4l2_subdev_state_get_format((struct v4l2_subdev_state *)state, pad, stream)), \
+		default: ____v4l2_subdev_state_get_format((struct v4l2_subdev_state *)state, pad, stream) \
+	)
 struct v4l2_mbus_framefmt *
-__v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
-			       unsigned int pad, u32 stream);
+____v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
+				 unsigned int pad, u32 stream);
 
 /**
  * v4l2_subdev_state_get_crop() - Get pointer to a stream crop rectangle
@@ -1368,14 +1374,20 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
  * For stream-unaware drivers the crop rectangle for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_crop(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
+#define v4l2_subdev_state_get_crop(state, pad, ...)				\
+	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)		\
 		(state, pad, ##__VA_ARGS__)
-#define __v4l2_subdev_state_get_crop_pad(state, pad)	\
+#define __v4l2_subdev_state_get_crop_pad(state, pad)				\
 	__v4l2_subdev_state_get_crop(state, pad, 0)
+#define __v4l2_subdev_state_get_crop(state, pad, stream)			\
+	_Generic(state,								\
+		const struct v4l2_subdev_state *: ((const struct v4l2_rect *)		\
+			____v4l2_subdev_state_get_crop((struct v4l2_subdev_state *)state, pad, stream)), \
+		default: ____v4l2_subdev_state_get_crop((struct v4l2_subdev_state *)state, pad, stream) \
+	)
 struct v4l2_rect *
-__v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
-			     u32 stream);
+____v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
+			       u32 stream);
 
 /**
  * v4l2_subdev_state_get_compose() - Get pointer to a stream compose rectangle
@@ -1389,14 +1401,20 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
  * For stream-unaware drivers the compose rectangle for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_compose(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
+#define v4l2_subdev_state_get_compose(state, pad, ...)				\
+	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)		\
 		(state, pad, ##__VA_ARGS__)
-#define __v4l2_subdev_state_get_compose_pad(state, pad)	\
+#define __v4l2_subdev_state_get_compose_pad(state, pad)				\
 	__v4l2_subdev_state_get_compose(state, pad, 0)
+#define __v4l2_subdev_state_get_compose(state, pad, stream)			\
+	_Generic(state,								\
+		const struct v4l2_subdev_state *: ((const struct v4l2_rect *)		\
+			____v4l2_subdev_state_get_compose((struct v4l2_subdev_state *)state, pad, stream)), \
+		default: ____v4l2_subdev_state_get_compose((struct v4l2_subdev_state *)state, pad, stream) \
+	)
 struct v4l2_rect *
-__v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
-				unsigned int pad, u32 stream);
+____v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
+				  unsigned int pad, u32 stream);
 
 /**
  * v4l2_subdev_state_get_interval() - Get pointer to a stream frame interval
@@ -1410,14 +1428,20 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
  * For stream-unaware drivers the frame interval for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_interval(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
+#define v4l2_subdev_state_get_interval(state, pad, ...)				\
+	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)		\
 		(state, pad, ##__VA_ARGS__)
-#define __v4l2_subdev_state_get_interval_pad(state, pad)	\
+#define __v4l2_subdev_state_get_interval_pad(state, pad)			\
 	__v4l2_subdev_state_get_interval(state, pad, 0)
+#define __v4l2_subdev_state_get_interval(state, pad, stream)			\
+	_Generic(state,								\
+		const struct v4l2_subdev_state *: ((const struct v4l2_frac *)		\
+			____v4l2_subdev_state_get_interval((struct v4l2_subdev_state *)state, pad, stream)), \
+		default: ____v4l2_subdev_state_get_interval((struct v4l2_subdev_state *)state, pad, stream) \
+	)
 struct v4l2_fract *
-__v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
-				 unsigned int pad, u32 stream);
+____v4l2_subdev_state_get_interval(struct v4l2_subdev_state *state,
+				   unsigned int pad, u32 stream);
 
 #if defined(CONFIG_VIDEO_V4L2_SUBDEV_API)
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
