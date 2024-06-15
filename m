Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2374C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8o/rkq3Dd0HEHERmlon71MT+KBIaX70mbqkQseKUErM=; b=LXwtJatDx/9iFu
	JOgLkDT34AHdBDZpHYqfmV71iQ3CJ6d8Ca2t6No5qzgnAtVgDfeXJZ8NM9Q4eV083h+qmJ2QrKq3f
	POo0rlIPjgeSsXJkh3L+cRv8DbfDuLA4+UirJ8LCn1bhIERnnXMxY1qk4t3U5GXyyIAJBe96Ow0ZV
	rXmTSlq/DzYBbShSushlejwClVBdq9i859T6GmVRAhVRgWdhoZw64r4RoKsMk07UFtHd0iI80ETQh
	G/ZsGsIMvkfUODp3bgNFMOS+b8xZ1AG2k98w5Hjz4K7qJCVTdchztTBhe3cPxQip2nEnMWtAsilo1
	Rg5tC6UQDBtzRb/5mhUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWrR-00000005nEL-3K86;
	Sat, 15 Jun 2024 17:06:43 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqn-00000005miY-3ywB
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:06:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471120; bh=Z5bcZuna/6T6AIQbROeIpQ8rnzmEdCJTM7frZTMAnTU=;
 b=xS0K+bSo9Vgh7Xeg3iAd/D84EhJtdOG1+/nOBTj8QqXl6V3jsPkUtCZIU3hO9EcR2eHQlPv6E
 wkj2U3I1nCw+tWCgAdqkBI558KFvEpotEKDst+GMvauhRzZXVYuUq88G2MFvFDTTMjzoLc9YGYV
 oPJ4WNcVBtIqKUp/DGwDxqGTjD9mjSMq8urJUDVGgtc3xcgfp/egnee9N91wCGZu+z1s1ANCtqf
 f8JTsM6UQt63RrbUz4f5ul57dN6e5kBCPm244MJ2baeyUfX1qnylCgduXXukH3y4EDOa19d5mWB
 WFTM1lpahoiW3zVaXLvixWE94O5bWBWgC0UPq06y5lWw==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, Douglas Anderson <dianders@chromium.org>, Yakir
 Yang <ykk@rock-chips.com>
Subject: [PATCH 11/13] drm/rockchip: dw_hdmi: Use auto-generated tables
Date: Sat, 15 Jun 2024 17:04:02 +0000
Message-ID: <20240615170417.3134517-12-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 666dc9ca24e0254b39804099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100602_400232_C0BD0E5B 
X-CRM114-Status: GOOD (  12.85  )
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
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 104 ++++++++++----------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index e532c6d294dc..d9886b1c299c 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -94,74 +94,70 @@ static struct rockchip_hdmi *to_rockchip_hdmi(struct drm_encoder *encoder)
 
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
 	}, {
-		36000000, {
-			{ 0x00b3, 0x0000},
-			{ 0x2153, 0x0000},
-			{ 0x40f3, 0x0000}
+		36800000, {
+			{ 0x00b3, 0x0000 },
+			{ 0x2153, 0x0000 },
+			{ 0x40a2, 0x0001 },
 		},
 	}, {
-		40000000, {
-			{ 0x00b3, 0x0000},
-			{ 0x2153, 0x0000},
-			{ 0x40f3, 0x0000}
+		46000000, {
+			{ 0x00b3, 0x0000 },
+			{ 0x2142, 0x0001 },
+			{ 0x40a2, 0x0001 },
 		},
 	}, {
-		54000000, {
-			{ 0x0072, 0x0001},
-			{ 0x2142, 0x0001},
-			{ 0x40a2, 0x0001},
+		61333000, {
+			{ 0x0072, 0x0001 },
+			{ 0x2142, 0x0001 },
+			{ 0x40a2, 0x0001 },
 		},
 	}, {
-		65000000, {
-			{ 0x0072, 0x0001},
-			{ 0x2142, 0x0001},
-			{ 0x40a2, 0x0001},
+		73600000, {
+			{ 0x0072, 0x0001 },
+			{ 0x2142, 0x0001 },
+			{ 0x4061, 0x0002 },
 		},
 	}, {
-		66000000, {
-			{ 0x013e, 0x0003},
-			{ 0x217e, 0x0002},
-			{ 0x4061, 0x0002}
+		92000000, {
+			{ 0x0072, 0x0001 },
+			{ 0x2145, 0x0002 },
+			{ 0x4061, 0x0002 },
 		},
 	}, {
-		74250000, {
-			{ 0x0072, 0x0001},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
+		122666000, {
+			{ 0x0051, 0x0002 },
+			{ 0x2145, 0x0002 },
+			{ 0x4061, 0x0002 },
 		},
 	}, {
-		83500000, {
-			{ 0x0072, 0x0001},
+		147200000, {
+			{ 0x0051, 0x0002 },
+			{ 0x2145, 0x0002 },
+			{ 0x4064, 0x0003 },
 		},
 	}, {
-		108000000, {
-			{ 0x0051, 0x0002},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
+		184000000, {
+			{ 0x0051, 0x0002 },
+			{ 0x214c, 0x0003 },
+			{ 0x4064, 0x0003 },
 		},
 	}, {
-		106500000, {
-			{ 0x0051, 0x0002},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
-		},
-	}, {
-		146250000, {
-			{ 0x0051, 0x0002},
-			{ 0x2145, 0x0002},
-			{ 0x4061, 0x0002}
+		226666000, {
+			{ 0x0040, 0x0003 },
+			{ 0x214c, 0x0003 },
+			{ 0x4064, 0x0003 },
 		},
 	}, {
-		148500000, {
-			{ 0x0051, 0x0003},
-			{ 0x214c, 0x0003},
-			{ 0x4064, 0x0003}
+		272000000, {
+			{ 0x0040, 0x0003 },
+			{ 0x214c, 0x0003 },
+			{ 0x5a64, 0x0003 },
 		},
 	}, {
 		340000000, {
@@ -169,11 +165,17 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
 			{ 0x3b4c, 0x0003 },
 			{ 0x5a64, 0x0003 },
 		},
+	}, {
+		600000000, {
+			{ 0x1a40, 0x0003 },
+			{ 0x3b4c, 0x0003 },
+			{ 0x5a64, 0x0003 },
+		},
 	}, {
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
