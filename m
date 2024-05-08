Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 937C1C25B74
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 21:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0Os0aaTHpe2Q5ZuCPuMUFHcEfPuJ5smmy61ypLW880=; b=0hkzk6gzFPMQKc
	WcdNrc9TStjTExi1o2W8RkeMkzzpIpdYafocOhRVMne/XHP7JmF8e0nBg4eXZsP3Zvwtf9n/yf8B7
	HVdql7IJNLXodZWJGF3WDpXNAgox203aKy1NSoOsVmE79BVZBgS4FtuyoVIvHIuddicjJVQRUxfwJ
	B4YK1V6QlqLIb51s71VzS+X8E1qdGa3HTa5yM+PHebf7IHbj5BnLwpXnCV60AHx3bS9Tw0jfepNc0
	WQjB5kxW0nDN55sKgX+AODT/J9fUZciTxlZ91XxZA2xPGvIoakTTB57NvmggYgEvVLbvY8vI5oWhI
	fjON+m9qHNmhNLw/C/9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p27-0000000H3Jc-20OY;
	Wed, 08 May 2024 21:41:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p22-0000000H3Hf-1Wdm
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 21:40:59 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0BA2A2CC7;
	Wed,  8 May 2024 23:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715204454;
	bh=kRYOBfB3Skh5PpdSwvI6oBAoy/LqssM5t1B1xt8dPlA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YeZD99iAM6EifyVruYgs8/eR+mXchCMIkmHhAe6cN7e7v1EJ7ruUxstqW7Cx2RMbN
	 aPJhidVPo1FiKkmmCk6nBiIHiV4pLHTyRnLSWarFJOLw6S2LL1ibcVCakEUNC+XCPY
	 o+906xzTgMjJKh0Fdb1hkSRXDFU+/otUh8eaHGKY=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 2/3] media: v4l2-subdev: Provide const-aware subdev state accessors
Date: Thu,  9 May 2024 00:40:44 +0300
Message-ID: <20240508214045.24716-3-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_144058_573832_4AB31B1E 
X-CRM114-Status: GOOD (  16.31  )
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
Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Changes since v3:

- Rename __v4l2_subdev_state_constify_call() to
  __v4l2_subdev_state_constify_ret()
- Update documentation

Changes since v2:

- Specify types explicitly in _Generic() expression
- Fix cast of value to const pointer

Changes since v1:

- Wrap the accessors with _Generic() using a single macro instead of
  adding a _Generic() statement in each of them.
---
 include/media/v4l2-subdev.h | 48 +++++++++++++++++++++++++------------
 1 file changed, 33 insertions(+), 15 deletions(-)

diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
index b25b6e97ecbd..e1a6c49a966d 100644
--- a/include/media/v4l2-subdev.h
+++ b/include/media/v4l2-subdev.h
@@ -1326,6 +1326,16 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
 #define __v4l2_subdev_state_gen_call(NAME, _1, ARG, ...)	\
 	__v4l2_subdev_state_get_ ## NAME ## ARG
 
+/*
+ * A macro to constify the return value of the state accessors when the state
+ * parameter is const.
+ */
+#define __v4l2_subdev_state_constify_ret(state, value)				\
+	_Generic(state,								\
+		const struct v4l2_subdev_state *: (const typeof(*(value)) *)(value), \
+		struct v4l2_subdev_state *: (value)				\
+	)
+
 /**
  * v4l2_subdev_state_get_format() - Get pointer to a stream format
  * @state: subdevice state
@@ -1343,13 +1353,18 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
  * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
  * macro below is to come up with the name of the function or macro to call,
  * using the last two arguments (_stream and _pad). The selected function or
- * macro is then called using the arguments specified by the caller. A similar
- * arrangement is used for v4l2_subdev_state_crop(), v4l2_subdev_state_compose()
- * and v4l2_subdev_state_get_interval() below.
+ * macro is then called using the arguments specified by the caller. The
+ * __v4l2_subdev_state_constify_ret() macro constifies the returned pointer
+ * when the state is const, allowing the state accessors to guarantee
+ * const-correctness in all cases.
+ *
+ * A similar arrangement is used for v4l2_subdev_state_crop(),
+ * v4l2_subdev_state_compose() and v4l2_subdev_state_get_interval() below.
  */
-#define v4l2_subdev_state_get_format(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_format(state, pad, ...)				\
+	__v4l2_subdev_state_constify_ret(state,					\
+		__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
+			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
 #define __v4l2_subdev_state_get_format_pad(state, pad)	\
 	__v4l2_subdev_state_get_format(state, pad, 0)
 struct v4l2_mbus_framefmt *
@@ -1368,9 +1383,10 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
  * For stream-unaware drivers the crop rectangle for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_crop(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_crop(state, pad, ...)				\
+	__v4l2_subdev_state_constify_ret(state,					\
+		__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
+			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
 #define __v4l2_subdev_state_get_crop_pad(state, pad)	\
 	__v4l2_subdev_state_get_crop(state, pad, 0)
 struct v4l2_rect *
@@ -1389,9 +1405,10 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
  * For stream-unaware drivers the compose rectangle for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_compose(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_compose(state, pad, ...)				\
+	__v4l2_subdev_state_constify_ret(state,					\
+		__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
+			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
 #define __v4l2_subdev_state_get_compose_pad(state, pad)	\
 	__v4l2_subdev_state_get_compose(state, pad, 0)
 struct v4l2_rect *
@@ -1410,9 +1427,10 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
  * For stream-unaware drivers the frame interval for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_interval(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_interval(state, pad, ...)				\
+	__v4l2_subdev_state_constify_ret(state,					\
+		__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
+			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
 #define __v4l2_subdev_state_get_interval_pad(state, pad)	\
 	__v4l2_subdev_state_get_interval(state, pad, 0)
 struct v4l2_fract *
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
