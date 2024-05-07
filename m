Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A0FC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 16:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/x1NS4UDXgs5hnfydTCUAw7CDRewnltd6zT/lP//c5A=; b=PkKMwxf2urBsxc
	oPS9moHrqriPrATkEGS8096jbnxiBCnLtKd2dDOuW0H+IwT4R53eAjHQNUljkOcKVo28KJR4VzVmU
	eMCIXt7BRuFokgsV2duIRldltA+k1dsAWoP0y6H/Oq8YRwe+4JKit5FCMKkAaddffQC1SKtahODD5
	LApOedis9zpokyKm6jHbbCkfEx0hiVMoFJXfRwrCV8wDh0tN48c9EgSuub+WbsSEkyAvLcxkGoDra
	BmxWERiQA4WpMArMYKxdFuQerU0PJngSGZA6A1oMwJqi3t+uTJhcC2AojcmUhxj3dl9eKL0JZIPpi
	ZNqfy7RJpvedS2sGy1+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4NXQ-0000000Bvpo-2qR2;
	Tue, 07 May 2024 16:19:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4NXM-0000000Bvls-3P6l
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 16:19:30 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F2E623D5;
	Tue,  7 May 2024 18:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715098755;
	bh=+xzyc5cQoXDvc9UJEHw3ZxHjT8uRqvLdKFy9guAk8kU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=rbB24rF4AiGQ+IUjvg35aK+CZPJq6bJTTyALw+iPoNR1Y4S17UYeZWFjJflnjbUOv
	 Ar/U41NesRYSc5Ps47vCcgZjk8u5do53UaNeBk2XB6Y7bBq9ruNFSlz6ao5wivLY0i
	 t26Fk0PMpsb6MvkU0oIQLIcEmqctDLwmdViRiZ9g=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 1/2] media: v4l2-subdev: Provide const-aware subdev state accessors
Date: Tue,  7 May 2024 19:19:06 +0300
Message-ID: <20240507161907.27747-2-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507161907.27747-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20240507161907.27747-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_091929_012433_31BB0593 
X-CRM114-Status: GOOD (  15.91  )
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
Changes since v2:

- Specify types explicitly in _Generic() expression
- Fix cast of value to const pointer

Changes since v1:

- Wrap the accessors with _Generic() using a single macro instead of
  adding a _Generic() statement in each of them.
---
 include/media/v4l2-subdev.h | 40 +++++++++++++++++++++++++------------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
index e30c463d90e5..cd3e9e2ebe4d 100644
--- a/include/media/v4l2-subdev.h
+++ b/include/media/v4l2-subdev.h
@@ -1326,6 +1326,16 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
 #define __v4l2_subdev_state_gen_call(NAME, _1, ARG, ...)	\
 	__v4l2_subdev_state_get_ ## NAME ## ARG
 
+/*
+ * A macro to constify the return value of the state accessors when the state
+ * parameter is const.
+ */
+#define __v4l2_subdev_state_constify_call(state, value)				\
+	_Generic(state,								\
+		const struct v4l2_subdev_state *: (const typeof(*(value)) *)(value), \
+		struct v4l2_subdev_state *: (value)				\
+	)
+
 /**
  * v4l2_subdev_state_get_format() - Get pointer to a stream format
  * @state: subdevice state
@@ -1340,16 +1350,17 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
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
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_format(state, pad, ...)				\
+	__v4l2_subdev_state_constify_call(state,				\
+		__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
+			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
 #define __v4l2_subdev_state_get_format_pad(state, pad)	\
 	__v4l2_subdev_state_get_format(state, pad, 0)
 struct v4l2_mbus_framefmt *
@@ -1368,9 +1379,10 @@ __v4l2_subdev_state_get_format(struct v4l2_subdev_state *state,
  * For stream-unaware drivers the crop rectangle for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_crop(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_crop(state, pad, ...)				\
+	__v4l2_subdev_state_constify_call(state,				\
+		__v4l2_subdev_state_gen_call(crop, ##__VA_ARGS__, , _pad)	\
+			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
 #define __v4l2_subdev_state_get_crop_pad(state, pad)	\
 	__v4l2_subdev_state_get_crop(state, pad, 0)
 struct v4l2_rect *
@@ -1389,9 +1401,10 @@ __v4l2_subdev_state_get_crop(struct v4l2_subdev_state *state, unsigned int pad,
  * For stream-unaware drivers the compose rectangle for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_compose(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_compose(state, pad, ...)				\
+	__v4l2_subdev_state_constify_call(state,				\
+		__v4l2_subdev_state_gen_call(compose, ##__VA_ARGS__, , _pad)	\
+			((struct v4l2_subdev_state *)state, pad, ##__VA_ARGS__))
 #define __v4l2_subdev_state_get_compose_pad(state, pad)	\
 	__v4l2_subdev_state_get_compose(state, pad, 0)
 struct v4l2_rect *
@@ -1410,9 +1423,10 @@ __v4l2_subdev_state_get_compose(struct v4l2_subdev_state *state,
  * For stream-unaware drivers the frame interval for the corresponding pad is
  * returned. If the pad does not exist, NULL is returned.
  */
-#define v4l2_subdev_state_get_interval(state, pad, ...)			\
-	__v4l2_subdev_state_gen_call(interval, ##__VA_ARGS__, , _pad)	\
-		(state, pad, ##__VA_ARGS__)
+#define v4l2_subdev_state_get_interval(state, pad, ...)				\
+	__v4l2_subdev_state_constify_call(state,				\
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
