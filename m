Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7619C25B4F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 21:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VM3gL6CpgoJSEBjdmOIXnpey6sIfdte3n71g0oHzYA=; b=cGtm9AZK1WTPy7
	/w6KVQkZ1x689O+fWTp1RB3NPt2pJ7DtZkaCMYhvg+TJ2YJ1aZLJIdtnxLm8OQVMuH6EfzNuGA1HB
	UF1kZwCp/wmVGiLPIGKOBNWuHP2fADGA8ORdmfu9lSS5y6qu5yWErX/82nDokExeUzSXDJGS6d5oM
	bH5eD+CiBTc0F9dUAEN9sd9+IeOUL9C6hWj/F8O5pQx+i3T+nXlcL0NoNyyPgL1hWEUZNSOXvL86h
	C8umw0q5Tt7bWCMwWXRfHZR4RaDUOMOezHMalPO9qkYMw4qtxPPfRfalrPYX77FZdw75vDRzmsvTl
	yi/MhUiGMnGxfzjuMdXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p26-0000000H3JT-3y2k;
	Wed, 08 May 2024 21:41:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4p21-0000000H3H3-0OCm
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 21:40:59 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9399819FA;
	Wed,  8 May 2024 23:40:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715204452;
	bh=ve9t/Y3usH4BO78+BB5FxHWk4otvPB0zxV74NSyc/OI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Au5roWwOF4OjBFBJ0p1QVPwBKx1W3hIqup0QAMedIUXqWGNLiqo2MknWv+KkC7cz6
	 czQNeqFi7mbelavOAfVgxf/LdlmmkpAV+QBVOF2/a1JZrQ8dY4w1a6dyqGEp0qysKw
	 +++IuLQ+gMcEdPDV1pCwhnU7Wp6se79erxX3dXXE=
From: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 1/3] media: v4l2-subdev: Fix v4l2_subdev_state_get_format() documentation
Date: Thu,  9 May 2024 00:40:43 +0300
Message-ID: <20240508214045.24716-2-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
References: <20240508214045.24716-1-laurent.pinchart+renesas@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_144057_324886_BBE73D4B 
X-CRM114-Status: GOOD (  11.86  )
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

The documentation of the v4l2_subdev_state_get_format() macro
incorrectly references __v4l2_subdev_state_get_format() instead of
__v4l2_subdev_state_gen_call(). Fix it, and also update the list of
similar macros to add the missing v4l2_subdev_state_get_interval().

Suggested-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
---
 include/media/v4l2-subdev.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/media/v4l2-subdev.h b/include/media/v4l2-subdev.h
index e30c463d90e5..b25b6e97ecbd 100644
--- a/include/media/v4l2-subdev.h
+++ b/include/media/v4l2-subdev.h
@@ -1340,12 +1340,12 @@ void v4l2_subdev_cleanup(struct v4l2_subdev *sd);
  */
 /*
  * Wrap v4l2_subdev_state_get_format(), allowing the function to be called with
- * two or three arguments. The purpose of the __v4l2_subdev_state_get_format()
+ * two or three arguments. The purpose of the __v4l2_subdev_state_gen_call()
  * macro below is to come up with the name of the function or macro to call,
  * using the last two arguments (_stream and _pad). The selected function or
  * macro is then called using the arguments specified by the caller. A similar
- * arrangement is used for v4l2_subdev_state_crop() and
- * v4l2_subdev_state_compose() below.
+ * arrangement is used for v4l2_subdev_state_crop(), v4l2_subdev_state_compose()
+ * and v4l2_subdev_state_get_interval() below.
  */
 #define v4l2_subdev_state_get_format(state, pad, ...)			\
 	__v4l2_subdev_state_gen_call(format, ##__VA_ARGS__, , _pad)	\
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
