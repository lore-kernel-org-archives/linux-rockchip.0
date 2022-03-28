Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3A59C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 15:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A19lQWjZCyciEm8ny2uO0kl1E7MrEavmQ4zd5TjEKYM=; b=epgYaxAOxYQ1x2
	Jc2N1ND7RalOHgs7u4L6/Ru7+Rkk3EtWFl2andwv+lzIcj5AiKjY3hDksxsd2xp0de4k2+v0Qpiq7
	lK7bQ3qyeBfzmVyS8ZP/6bt+kthDV07UUigdvgOSFWl3crNGBcXxgX+RXQ0y1r+5lrnR/Oof9VLiK
	G6HbhyPYXr+Hr55LuuosHeBNLQm/LlISCDaQHApTkVEe2btsni9nPf4/LzeW67Nieh9309EtDOVLt
	FwY43TlaeX79QhRDQe8STF7pTz893HvjZ+NSAsYoTRSX8pPPuxy6LLOuelqcubf50OuVMa0W/q1+e
	W05SbQaoCPF8hKwYDR/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYr6O-009GQW-Ty; Mon, 28 Mar 2022 15:16:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYr1v-009Dqe-0l
 for linux-rockchip@bombadil.infradead.org; Mon, 28 Mar 2022 15:11:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=JysSaahtGHi+24rKiUkeynt5EFh7+MEwmNpuYFkpxUk=; b=PnCorRwzRcu/K3USM26f47ljz4
 qrpK/epfOiNK7ppPAdLgV36S1nfUqlazunte1AVGS98SbMUWqD2hcvhz3GujGrfLjsQAK97ZGSnfz
 88A0xZ0904HfRs1PsVriHW9x286hU1qzKA/zudMaxOXrqiiQJX0e90oPdPb90XKZ8W4Afp0Lxx1Pd
 4OAidNXZL8ISrk5+Jzo8cMhKqTKGJqEcvSe5tVU7ztK2F/XDjoNIN9Yr/LJjhEa5gtEFsDht6q4CT
 5oYVfFR1+D2QdHZMIfZhb41G/UoJs9eLCWLluHMwd62x3NUKKlEqhERM7PSKCdKzD2ccbbSXq50Wb
 9gBm9lQw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYr1n-005TP7-BA
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 15:11:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYr1g-00009h-QE; Mon, 28 Mar 2022 17:11:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nYr1d-003cUG-48; Mon, 28 Mar 2022 17:11:23 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nYr1a-008XLR-FV; Mon, 28 Mar 2022 17:11:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Douglas Anderson <dianders@chromium.org>,
 Yakir Yang <ykk@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v9 11/23] drm/rockchip: dw_hdmi: Use auto-generated tables
Date: Mon, 28 Mar 2022 17:11:04 +0200
Message-Id: <20220328151116.2034635-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220328151116.2034635-1-s.hauer@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_161131_490543_4479AC5C 
X-CRM114-Status: GOOD (  14.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Douglas Anderson <dianders@chromium.org>

The previous tables for mpll_cfg and curr_ctrl were created using the
20-pages of example settings provided by the PHY vendor.  Those
example settings weren't particularly dense, so there were places
where we were guessing what the settings would be for 10-bit and
12-bit (not that we use those anyway).  It was also always a lot of
extra work every time we wanted to add a new clock rate since we had
to cross-reference several tables.

In <https://crrev.com/c/285855> I've gone through the work to figure
out how to generate this table automatically.  Let's now use the
automatically generated table and then we'll never need to look at it
again.

We only support 8-bit mode right now and only support a small number
of clock rates and I've verified that the only 8-bit rate that was
affected was 148.5.  That mode appears to have been wrong in the old
table.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Yakir Yang <ykk@rock-chips.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v5:
    - Add missing Signed-off-by me
    
    Changes since v3:
    - new patch

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 130 +++++++++++---------
 1 file changed, 69 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fe4f9556239ac..cb43e7b47157d 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -91,80 +91,88 @@ static struct rockchip_hdmi *to_rockchip_hdmi(struct drm_encoder *encoder)
 
 static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 	{
-		27000000, {
-			{ 0x00b3, 0x0000},
-			{ 0x2153, 0x0000},
-			{ 0x40f3, 0x0000}
+		30666000, {
+			{ 0x00b3, 0x0000 },
+			{ 0x2153, 0x0000 },
+			{ 0x40f3, 0x0000 },
 		},
-	}, {
-		36000000, {
-			{ 0x00b3, 0x0000},
-			{ 0x2153, 0x0000},
-			{ 0x40f3, 0x0000}
+	},  {
+		36800000, {
+			{ 0x00b3, 0x0000 },
+			{ 0x2153, 0x0000 },
+			{ 0x40a2, 0x0001 },
 		},
-	}, {
-		40000000, {
-			{ 0x00b3, 0x0000},
-			{ 0x2153, 0x0000},
-			{ 0x40f3, 0x0000}
+	},  {
+		46000000, {
+			{ 0x00b3, 0x0000 },
+			{ 0x2142, 0x0001 },
+			{ 0x40a2, 0x0001 },
 		},
-	}, {
-		54000000, {
-			{ 0x0072, 0x0001},
-			{ 0x2142, 0x0001},
-			{ 0x40a2, 0x0001},
+	},  {
+		61333000, {
+			{ 0x0072, 0x0001 },
+			{ 0x2142, 0x0001 },
+			{ 0x40a2, 0x0001 },
 		},
-	}, {
-		65000000, {
-			{ 0x0072, 0x0001},
-			{ 0x2142, 0x0001},
-			{ 0x40a2, 0x0001},
+	},  {
+		73600000, {
+			{ 0x0072, 0x0001 },
+			{ 0x2142, 0x0001 },
+			{ 0x4061, 0x0002 },
 		},
-	}, {
-		66000000, {
-			{ 0x013e, 0x0003},
-			{ 0x217e, 0x0002},
-			{ 0x4061, 0x0002}
+	},  {
+		92000000, {
+			{ 0x0072, 0x0001 },
+			{ 0x2145, 0x0002 },
+			{ 0x4061, 0x0002 },
 		},
-	}, {
-		74250000, {
-			{ 0x0072, 0x0001},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
+	},  {
+		122666000, {
+			{ 0x0051, 0x0002 },
+			{ 0x2145, 0x0002 },
+			{ 0x4061, 0x0002 },
 		},
-	}, {
-		83500000, {
-			{ 0x0072, 0x0001},
+	},  {
+		147200000, {
+			{ 0x0051, 0x0002 },
+			{ 0x2145, 0x0002 },
+			{ 0x4064, 0x0003 },
 		},
-	}, {
-		108000000, {
-			{ 0x0051, 0x0002},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
+	},  {
+		184000000, {
+			{ 0x0051, 0x0002 },
+			{ 0x214c, 0x0003 },
+			{ 0x4064, 0x0003 },
 		},
-	}, {
-		106500000, {
-			{ 0x0051, 0x0002},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
+	},  {
+		226666000, {
+			{ 0x0040, 0x0003 },
+			{ 0x214c, 0x0003 },
+			{ 0x4064, 0x0003 },
 		},
-	}, {
-		146250000, {
-			{ 0x0051, 0x0002},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
+	},  {
+		272000000, {
+			{ 0x0040, 0x0003 },
+			{ 0x214c, 0x0003 },
+			{ 0x5a64, 0x0003 },
 		},
-	}, {
-		148500000, {
-			{ 0x0051, 0x0003},
-			{ 0x214c, 0x0003},
-			{ 0x4064, 0x0003}
+	},  {
+		340000000, {
+			{ 0x0040, 0x0003 },
+			{ 0x3b4c, 0x0003 },
+			{ 0x5a64, 0x0003 },
 		},
-	}, {
+	},  {
+		600000000, {
+			{ 0x1a40, 0x0003 },
+			{ 0x3b4c, 0x0003 },
+			{ 0x5a64, 0x0003 },
+		},
+	},  {
 		~0UL, {
-			{ 0x00a0, 0x000a },
-			{ 0x2001, 0x000f },
-			{ 0x4002, 0x000f },
+			{ 0x0000, 0x0000 },
+			{ 0x0000, 0x0000 },
+			{ 0x0000, 0x0000 },
 		},
 	}
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
