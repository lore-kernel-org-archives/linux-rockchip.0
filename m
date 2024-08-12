Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0006C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 21:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdqO7o2G+jn4Gc3QZa3y3fyG4rxLEtVDnnz84XtPSj8=; b=k7nG/6kxbhIK4f
	QknpPUT/AqqLDgUg3I8hc8fijZSdVbda0zjNk+osTFAPF3lsjuCGRC4A9hzQmi5A6c/zg4CT6Z1BI
	0Qh4P53VqXsnOU7iP5AoE/v8vnbvTt7UkGo+Uw6vHh3MiFzux8rEkkR4yUboYjBZ9ze0Rkwe2IJgC
	wDUoMMMpDzoiVm0GmnsFq8ZSzaX7vs1KJmNj6eD8bKZoRJGeBYdi4mgwXBeEKO0UGwt4nrpBennS6
	xQ2zE+sFiGR3uJb41G6gS+vm0rWY6qyJBP1gslS6FyJekex7xfRLMkKQHOJe5C5xzFLnTmR0ZI6F5
	mNwu9oP8DFp7WXH2CIyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdcP7-00000001b41-1trh;
	Mon, 12 Aug 2024 21:16:37 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdcOf-00000001auz-493J;
	Mon, 12 Aug 2024 21:16:36 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723497358; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RSgqYHbpvJn5Wr+j9THLyR6jhT2q71jHY2G1g84dWgEuyksCfJSlmACTjFmzwjlg1NNlgnxDVPt91CWFWHwtNGyEgRodleNdY6i/mpoCwkPjiSAtkgQ5w8BwBbamYiM7MrEqvxzaaJpzkPbF5C8qlRels7EfnKowzrflTK4xWrs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723497358; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=0I1JLzxrV0gVyw2bF2C9h87qd8Pc9eWrEb9tvdjX5cI=; 
	b=n7TyYd8k3VJU4XZI9I0If5Rjgr09wPlshBiIAVtXAghizbtqMnRNrMHac/BZ+Q5bx/y1+3DuP3VxicdR4dii5je42dhTY2+m7AGyC+oan/psfKV2wI07gwruRtE7/QmBgBwBnm34pOfaYwoCwwZ9Fd2ii/zgHpgRsL6L02fyfe0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723497358;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=0I1JLzxrV0gVyw2bF2C9h87qd8Pc9eWrEb9tvdjX5cI=;
	b=YI7Wnarb7Jf1A/cQaxHzhlPU1WxIlqg30fl35glMaLRl/u91qwW2ZfePzP0yG8it
	j5uaqCgPP8hl1i++2+A1UgpMqAyCWoekovvJUwRfNfrDLmwFPCx959IO/qzsOIRyCyN
	LT6Gpt76B19LVEFGAWSyQEENs6DrXzCrAgNsE5Qs=
Received: by mx.zohomail.com with SMTPS id 1723497357461825.5740191228684;
	Mon, 12 Aug 2024 14:15:57 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 13 Aug 2024 00:15:11 +0300
Subject: [PATCH 4/4] drm/rockchip: dw_hdmi: Drop superfluous assignments of
 mpll_cfg, cur_ctr and phy_config
MIME-Version: 1.0
Message-Id: <20240813-dw-hdmi-rockchip-cleanup-v1-4-b3e73b5f4fd6@collabora.com>
References: <20240813-dw-hdmi-rockchip-cleanup-v1-0-b3e73b5f4fd6@collabora.com>
In-Reply-To: <20240813-dw-hdmi-rockchip-cleanup-v1-0-b3e73b5f4fd6@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_141610_109051_BE6060DD 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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

The mpll_cfg, cur_ctr and phy_config members in struct dw_hdmi_plat_data
are only used to configure the Synopsys PHYs supported internally by DW
HDMI transmitter driver (gpu/drm/bridge/synopsys/dw-hdmi.c), via
hdmi_phy_configure_dwc_hdmi_3d_tx(), which is further invoked from
dw_hdmi_phy_init().  This is part of the internal
dw_hdmi_synopsys_phy_ops struct, managed within dw_hdmi_detect_phy().

To handle vendor PHYs, DW HDMI driver doesn't make use of the internal
PHY ops and, instead, relies on the glue layer to provide the phy_ops
and phy_name members of struct dw_hdmi_plat_data.

Drop the unnecessary assignments of DW internal PHY related members from
structs rk3228_hdmi_drv_data and rk3328_hdmi_drv_data, since both set
the phy_force_vendor flag and correctly provide the expected vendor PHY
data.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index edfd877c98fc..ca6728a43159 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -444,9 +444,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
-	.mpll_cfg = rockchip_mpll_cfg,
-	.cur_ctr = rockchip_cur_ctr,
-	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3228_chip_data,
 	.phy_ops = &rk3228_hdmi_phy_ops,
 	.phy_name = "inno_dw_hdmi_phy2",
@@ -481,9 +478,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rockchip_mode_valid,
-	.mpll_cfg = rockchip_mpll_cfg,
-	.cur_ctr = rockchip_cur_ctr,
-	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3328_chip_data,
 	.phy_ops = &rk3328_hdmi_phy_ops,
 	.phy_name = "inno_dw_hdmi_phy2",

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
