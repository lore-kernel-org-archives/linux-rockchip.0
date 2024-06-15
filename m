Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3747C27C7B
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckuadN0EAjcOSaE5lcUJWvusytwMmkZ7i2hZ9Sq6T+M=; b=aDicig2zmwDzsv
	9whM3s+BjJQIYrt5MVlqwccIm5NHvPUqtYrEnxJSxgU+w76b75BEsgHr205iOCB1XcnFn+j39TECn
	A+sDu8xuHZH8JU0rguZUA3g0oFC/8A1In6ZkzNsid6qKsbSh0Rs7ke3KcTB44NDf2sCnR1hzEIJGh
	g1zGosicoahj/oCsZXdW80JPo6a7ngFHOHw33YaMhjy3O1LTF+Sq/06lEVHjO0nxGbM1Yyr9Wsuv6
	1KqevqBeKEFOKVxQcgwZZjMfQdQhzmQ/J9fLqXLzaP5QocqmKGNFjE+d18RiI7GT79v+u46MlRAmk
	Ocub60OMRB1RhxUeC7PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWrc-00000005nL3-0YlO;
	Sat, 15 Jun 2024 17:06:52 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqq-00000005mkd-2VMB
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:06:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471125; bh=oBgtjth5/yflr6ntPsYuZ+MVQpYpZchrByL3dEYZAxA=;
 b=KSzzbqLZDYXyMEIMCHItVvD8iJWM/iEpDjZdWDhMvr4saTi0blstbTcM8liBum4xVw5aQyxWB
 hiAfooaqmiOBMjewaaKfz5ehZGBkFeZTMXYsv4jIIs5ymW55CT8XS/no7CfgxdRzUTg3KJ49RaE
 dbVYnBQq6ZQBDR83iTgHRu9slIEWu1RpvbXzyEh26Ep4ArEUfibDZzJLbDY0m8mJOmiZcqMG+XB
 bH/NuXxAfGlHyNCRbUJM2b7n+kW8LayieeUoKjb0RCNBwgRyVUbuMYl6Y1mplLIfjda9JmpBcpN
 /xehR3UYnY1z4Ig0MneUK3y7CNAHmAAwcjpvCh8lj85w==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?q?Heiko=20St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 12/13] drm/rockchip: dw_hdmi: Enable 4K@60Hz mode on RK3399 and RK356x
Date: Sat, 15 Jun 2024 17:04:03 +0000
Message-ID: <20240615170417.3134517-13-jonas@kwiboo.se>
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
X-ForwardEmail-ID: 666dc9cf24e0254b398040ab
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100605_123334_878469DE 
X-CRM114-Status: GOOD (  10.08  )
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

Use a maximum TMDS clock rate limit of 594MHz to enable use of HDMI2.0
modes, e.g. 4K@60Hz, on RK3399 and RK3568.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index d9886b1c299c..b255b8ceedb7 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -493,7 +493,7 @@ static struct rockchip_hdmi_chip_data rk3399_chip_data = {
 	.lcdsel_grf_reg = RK3399_GRF_SOC_CON20,
 	.lcdsel_big = HIWORD_UPDATE(0, RK3399_HDMI_LCDC_SEL),
 	.lcdsel_lit = HIWORD_UPDATE(RK3399_HDMI_LCDC_SEL, RK3399_HDMI_LCDC_SEL),
-	.max_tmds_clock = 340000,
+	.max_tmds_clock = 594000,
 };
 
 static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
@@ -507,7 +507,7 @@ static const struct dw_hdmi_plat_data rk3399_hdmi_drv_data = {
 
 static struct rockchip_hdmi_chip_data rk3568_chip_data = {
 	.lcdsel_grf_reg = -1,
-	.max_tmds_clock = 340000,
+	.max_tmds_clock = 594000,
 };
 
 static const struct dw_hdmi_plat_data rk3568_hdmi_drv_data = {
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
