Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D1DCCF9E5
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 08:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7JnUgXxKXpbUV5wMPqw+nvddow7DsCtTJMPCYZ+ZDE=; b=d9Z/7ZZP/4Vnd9
	k1h9rnZnxIoBbmPhj/0FC7JPkRtIVvVQBVK++uJe5QMwSvuHi/j189jLrPUtKdsjez4DSn8BLxSSc
	blV+3DRmn+x4V2LuCthgHiI5ayhmgmkzL4ZYwerwnrZI4BQgG5F21hp3f1ksncK2ME4Z0sHc5xHl7
	IV+9YkXcveISULeYlJC9ViSyRjgDOG9vnInaO5ElIJDa4e/13pYkLsGgSsOiFvyAIkXJwJpIlRcfU
	9e91MKUjpSsSPol/BMb5TJgRYsuCS8vnwpwrenvxEB57qV4PziT1NvDLDBBmuXqBGiUINBOvNGG/i
	5r7Lt+wq29T7qSZytMCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCwHO-0000000CB4s-2ds8;
	Sun, 26 Oct 2025 08:39:10 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCwHM-0000000CB3W-01L5;
	Sun, 26 Oct 2025 08:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=G0/fPh3/khSdVcZGrkcOAMGTDLBOWAUPFQxA3kxrAMI=; b=I
	FAl4Bhd+lOzRrVp+AxYyDzPYbG+LOe8xAHB5Ad7B6qjY8bUz5HfQo4SzfQmpcLSW
	efNg2NqV531MztOEeYs/FdYTpsTgcAQEn/AehVUsEL1d/nK7w172CjsAI8lOAIqH
	0K1MSjU6NSwdDJVQdzh+pvdydQp5YIG+b4JauYPWIw=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-143 (Coremail) ; Sun, 26 Oct 2025 16:38:35 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sun, 26 Oct 2025 16:38:35 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, quentin.schulz@cherry.de,
	andy.yan@rock-chips.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	cn.liweihao@gmail.com, "Heiko Stuebner" <heiko.stuebner@cherry.de>
Subject: Re:[PATCH v2 2/9] drm/rockchip: hdmi: add RK3368 controller variant
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20250723(a044bf12) Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20251021074254.87065-3-heiko@sntech.de>
References: <20251021074254.87065-1-heiko@sntech.de>
 <20251021074254.87065-3-heiko@sntech.de>
X-NTES-SC: AL_Qu2dA/iduEEq4ySZYOkfmUgWjuw/WsG1v/Ul1YBSP556jC/r9AQFYUF9G1/47+GNFiCiuyqKVwhE0uhmb5F8ZYQUZUyGOIUxNEyoJHiUMsrAYw==
MIME-Version: 1.0
Message-ID: <1a7115bc.1597.19a1fab5ca2.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: jygvCgDn2FYL3v1o4ZoTAA--.1233W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gbyXmj911N+rQABs7
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_013908_365834_04C1108F 
X-CRM114-Status: UNSURE (   5.63  )
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


Hello Heiko,

At 2025-10-21 15:42:47, "Heiko Stuebner" <heiko@sntech.de> wrote:
>From: Heiko Stuebner <heiko.stuebner@cherry.de>
>
>The RK3368 has only one VOP, so there is no source selection happening
>and the controller uses an internal PHY for the HDMI output.
>
>Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Reviewed-by: Andy Yan <andyshrk@163.com>

Thanks


>---
> drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++++++++++++++++
> 1 file changed, 16 insertions(+)
>
>diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>index 7b613997bb50..95ff3fce97a3 100644
>--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
>@@ -467,6 +467,19 @@ static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
> 	.use_drm_infoframe = true,
> };
> 
>+static struct rockchip_hdmi_chip_data rk3368_chip_data = {
>+	.lcdsel_grf_reg = -1,
>+};
>+
>+static const struct dw_hdmi_plat_data rk3368_hdmi_drv_data = {
>+	.mode_valid = dw_hdmi_rockchip_mode_valid,
>+	.mpll_cfg   = rockchip_mpll_cfg,
>+	.cur_ctr    = rockchip_cur_ctr,
>+	.phy_config = rockchip_phy_config,
>+	.phy_data = &rk3368_chip_data,
>+	.use_drm_infoframe = true,
>+};
>+
> static struct rockchip_hdmi_chip_data rk3399_chip_data = {
> 	.lcdsel_grf_reg = RK3399_GRF_SOC_CON20,
> 	.lcdsel_big = FIELD_PREP_WM16_CONST(RK3399_HDMI_LCDC_SEL, 0),
>@@ -507,6 +520,9 @@ static const struct of_device_id dw_hdmi_rockchip_dt_ids[] = {
> 	{ .compatible = "rockchip,rk3328-dw-hdmi",
> 	  .data = &rk3328_hdmi_drv_data
> 	},
>+	{ .compatible = "rockchip,rk3368-dw-hdmi",
>+	 .data = &rk3368_hdmi_drv_data
>+	},
> 	{ .compatible = "rockchip,rk3399-dw-hdmi",
> 	  .data = &rk3399_hdmi_drv_data
> 	},
>-- 
>2.47.2
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
