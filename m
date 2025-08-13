Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 917CEC87FCF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Aug 2025 08:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/9uc38TN+YbG0SAN29tbEAbEsmv3nZwDQ4MCNII8dc=; b=hoH7b83ljCzp5P
	KlCt0+IMz2KVrzqhZaEXKvEIPCffz+RxyYQVFRIdssKZyQnELeIaiYxi79gw826hIXQkMn5ttpQ2j
	06/t8xPQH+bMp/sS5bHjeqGREGVCaszumZPybTD4NqEv65ny5/ZWqFMpXR7W/c3R71rn9yVua6P99
	BaIPhUF7Axiy4M5XsFUbqx+XTVnZIHdTcARkvKydLQvOchdOxsAY3wWluGNvFjUEExhj2YXSxQju1
	ZKPFwslnC5mvUrsoGaeCL3xvVyVo/amEBCfd0ICXpf7puj3RSLziFOEAdLfXzXFG/u9eQ4vPzGD5S
	9l6XwtDctxqVVpl3nMcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Wg-0000000D2ab-2NLI;
	Wed, 13 Aug 2025 08:08:02 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Li-0000000D0Up-0AN5;
	Wed, 13 Aug 2025 07:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=jECFwx4pIXRDwOe+aduX16A+fUFcM2/6HU7bohWUDGc=; b=o
	HQT/PaAi8pUOtZeKPMoV7Wot/s3ouebC+zCZPU2UR41IMCP3i+L5X75P8LgyASSz
	ZenaPO3rY86qVXiN6hzJEyPGoMC2drGTLvfLGh9HU+7nIhfxMokXV/Xtw46umWmA
	kX3JdYbIpVWHSyUv82eNg23SSkOP+gW4oNvcBEJcv4=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-102 (Coremail) ; Wed, 13 Aug 2025 15:56:12 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 13 Aug 2025 15:56:12 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Heiko Stuebner" <heiko@sntech.de>
Subject: Re:[PATCH 09/13] drm/rockchip: dsi2: add support rk3576
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20250519(9504565a)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250707164906.1445288-10-heiko@sntech.de>
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-10-heiko@sntech.de>
X-NTES-SC: AL_Qu2eB/ycvk8s5CedYukfmUkTh+o2Xca5uf0j3YBWOZh+jCzp0xowU31TOHjf/9CDICOtkAiHbAN808N6QrN4UbkoF22nqegBGsuYjTtBtlFcOQ==
MIME-Version: 1.0
Message-ID: <2cef60be.5f55.198a26df85a.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZigvCgD3H+AcRZxoWT8ZAA--.1718W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhqoXmicQps+AAABss
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_005642_439950_B745BAEE 
X-CRM114-Status: UNSURE (   7.43  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, Guochun Huang <hero.huang@rock-chips.com>, neil.armstrong@linaro.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hello Heiko,

At 2025-07-08 00:49:02, "Heiko Stuebner" <heiko@sntech.de> wrote:
>From: Guochun Huang <hero.huang@rock-chips.com>
>
>Add the necessary specific bits to support the rk3576-variant of the
>DW-DSI2 controller.
>
>Signed-off-by: Guochun Huang <hero.huang@rock-chips.com>
>[adapted from the vendor-kernel for mainline]
>Signed-off-by: Heiko Stuebner <heiko@sntech.de>


Reviewed-by: Andy Yan <andy.yan@rock-chips.com>


Thanks.

>---
> .../gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c  | 21 +++++++++++++++++++
> 1 file changed, 21 insertions(+)
>
>diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
>index cdd490778756..0aea764e29b2 100644
>--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
>+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c
>@@ -437,6 +437,15 @@ static void dw_mipi_dsi2_rockchip_remove(struct platform_device *pdev)
> 	dw_mipi_dsi2_remove(dsi2->dmd);
> }
> 
>+static const struct dsigrf_reg rk3576_dsi_grf_reg_fields[MAX_FIELDS] = {
>+	[TXREQCLKHS_EN]		= { 0x0028, 1,  1 },
>+	[GATING_EN]		= { 0x0028, 0,  0 },
>+	[IPI_SHUTDN]		= { 0x0028, 3,  3 },
>+	[IPI_COLORM]		= { 0x0028, 2,  2 },
>+	[IPI_COLOR_DEPTH]	= { 0x0028, 8, 11 },
>+	[IPI_FORMAT]		= { 0x0028, 4,  7 },
>+};
>+
> static const struct dsigrf_reg rk3588_dsi0_grf_reg_fields[MAX_FIELDS] = {
> 	[TXREQCLKHS_EN]		= { 0x0000, 11, 11 },
> 	[GATING_EN]		= { 0x0000, 10, 10 },
>@@ -455,6 +464,15 @@ static const struct dsigrf_reg rk3588_dsi1_grf_reg_fields[MAX_FIELDS] = {
> 	[IPI_FORMAT]		= { 0x0004,  0,  3 },
> };
> 
>+static const struct rockchip_dw_dsi2_chip_data rk3576_chip_data[] = {
>+	{
>+		.reg = 0x27d80000,
>+		.grf_regs = rk3576_dsi_grf_reg_fields,
>+		.max_bit_rate_per_lane = 2500000ULL,
>+	},
>+	{ /* sentinel */ }
>+};
>+
> static const struct rockchip_dw_dsi2_chip_data rk3588_chip_data[] = {
> 	{
> 		.reg = 0xfde20000,
>@@ -470,6 +488,9 @@ static const struct rockchip_dw_dsi2_chip_data rk3588_chip_data[] = {
> 
> static const struct of_device_id dw_mipi_dsi2_rockchip_dt_ids[] = {
> 	{
>+		.compatible = "rockchip,rk3576-mipi-dsi2",
>+		.data = &rk3576_chip_data,
>+	}, {
> 		.compatible = "rockchip,rk3588-mipi-dsi2",
> 		.data = &rk3588_chip_data,
> 	},
>-- 
>2.47.2
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
