Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53269C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 11:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/xTgNuQFWh3/95HcRqXyr7B1zhz6CS+oQlnpUi32ZUw=; b=yKUe3Ylqi7cN5t
	1HgndrrRBlSjsBz1E37y/hQcIKrMAH2BNB4ayRcW/d6uqPcaYQz7+Rhg0aowIWbXaZiQu5IZwqyWG
	nO074yqRLpFeIVXJs18gIt8CfYclGcnYAYrcgfW6w4CHAgDpT35C40KJu25RFSmVB9m9YP2isCTKp
	VviQBwRXL87lyweZH7RiCp3YlmdtLeUZGRndimBHflY9yRZyIOJuImJ3TNjv8K+y6tDwxW8Nrs1W6
	+IdpchJa1XMOOAjGP2EbQki5sabNbCuOg7R8zuVMR9ak9HoDy7SxI5hAZmsWVjfPc9h9lRvqoiQE7
	bVELuDeP0rzQOlPOPruw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYOBX-0000000AzYO-1WDj;
	Mon, 29 Jul 2024 11:04:59 +0000
Received: from smtp-190d.mail.infomaniak.ch ([185.125.25.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYOBT-0000000AzWT-10uF
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 11:04:57 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (smtp-4-0000.mail.infomaniak.ch [10.7.10.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4WXb9F1YDJzbLD;
	Mon, 29 Jul 2024 13:04:49 +0200 (CEST)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4WXb9D0kQGzDqR;
	Mon, 29 Jul 2024 13:04:48 +0200 (CEST)
From: Quentin Schulz <foss+uboot@0leil.net>
Date: Mon, 29 Jul 2024 13:04:23 +0200
Subject: [PATCH] rockchip: configs: puma-rk3399: disable VIDEO support that
 breaks Linux
MIME-Version: 1.0
Message-Id: <20240729-puma-no-video-v1-1-3b92072642a4@cherry.de>
X-B4-Tracking: v=1; b=H4sIADZ3p2YC/x3MQQqAIBBA0avIrBtwTIq6SrSQnGoWaShJEN09a
 fkW/z+QOQlnGNUDiYtkiaGCGgXL7sLGKL4ajDZW92bA8zochohFPEds/cBEbulIW6jNmXiV+/9
 N8/t+lSZipl8AAAA=
To: Klaus Goger <klaus.goger@cherry.de>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>, Tom Rini <trini@konsulko.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>, 
 linux-rockchip@lists.infradead.org, u-boot@lists.denx.de, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_040455_709129_FC6F4985 
X-CRM114-Status: GOOD (  23.53  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

RK3399 Puma has support for driving multiple displays at the same time,
the most notable scenario being HDMI+DSI since there exists a devkit
with both DSI display and HDMI output.

While HDMI seems to work fine in U-Boot, as the U-Boot logo is shown
whenever the EFI bootmeth is used, it messes up DSI in HDMI+DSI setup in
the Linux kernel. There are some ways to work around this bug but no
known appropriate fix for now, so let's rather not trigger this bug.

Since there isn't any client of ours that seems to be using this
feature, let's disable it for now. Users can re-enable this feature in
the event they have HDMI-only products.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
@linux-rockchip: you've been added to this as it's an issue in the Linux
kernel but that gets triggered from U-Boot. This is a patch for U-Boot
but I wanted it to be available in linux-rockchip archives :)

We recently ported Puma from 2022.10 to 2024.07 in our vendor tree but
discovered that this broke the DSI display on our devkit whenever an
HDMI display would be connected at boot.

While VIDEO has been enabled for a few years already on Puma, something
actually started to make use of it in the "normal" boot process (it
seems to be the EFI bootmeth?). While it seems to work okay-ish as the
U-Boot logo is shown properly, it is followed by artefacts whenever the
kernel is taking over in the boot flow. Additionally, whenever one boots
with HDMI connected and has a secondary DSI display, DSI is now broken
in the Linux kernel until I unplug HDMI.

A bit of debugging later, it seems we have a different clock for the
DCLK of the VOP used for DSI. GPLL is used whenever no HDMI is plugged
in, otherwise VPLL is used. The rate of the frac clock is also
different, with 59756KHz when it doesn't work and 59400KHz when it does.

I discovered that the frac clock doesn't try to set the rate of its
parent, the div clock, so tried the following:

"""
 diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
 index 4f1a5782c2308..fd5d11b9e12ed 100644
 --- a/drivers/clk/rockchip/clk-rk3399.c
 +++ b/drivers/clk/rockchip/clk-rk3399.c
 @@ -1166,7 +1166,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
  			RK3399_CLKSEL_CON(49), 8, 2, MFLAGS, 0, 8, DFLAGS,
  			RK3399_CLKGATE_CON(10), 12, GFLAGS),
  
 -	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP0_FRAC, "dclk_vop0_frac", "dclk_vop0_div", 0,
 +	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP0_FRAC, "dclk_vop0_frac", "dclk_vop0_div", CLK_SET_RATE_PARENT,
  			RK3399_CLKSEL_CON(106), 0,
  			&rk3399_dclk_vop0_fracmux),
  
 @@ -1196,7 +1196,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
  			RK3399_CLKSEL_CON(50), 8, 2, MFLAGS, 0, 8, DFLAGS,
  			RK3399_CLKGATE_CON(10), 13, GFLAGS),
  
 -	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP1_FRAC, "dclk_vop1_frac", "dclk_vop1_div", 0,
 +	COMPOSITE_FRACMUX_NOGATE(DCLK_VOP1_FRAC, "dclk_vop1_frac", "dclk_vop1_div", CLK_SET_RATE_PARENT,
  			RK3399_CLKSEL_CON(107), 0,
  			&rk3399_dclk_vop1_fracmux),
"""

which made it work! But... the rate of the frac (but not the div!) is
the same as well as the parent of div clock (still VPLL), so this
smelled fishy, something like a timing issue.

I therefore tried to reorder the probing of HDMI and DSI with:

"""
 diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
 index 6492f3caf0174..482b9a169653e 100644
 --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
 +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
 @@ -524,10 +524,10 @@ static int __init rockchip_drm_init(void)
  	ADD_ROCKCHIP_SUB_DRIVER(rockchip_dp_driver,
  				CONFIG_ROCKCHIP_ANALOGIX_DP);
  	ADD_ROCKCHIP_SUB_DRIVER(cdn_dp_driver, CONFIG_ROCKCHIP_CDN_DP);
 -	ADD_ROCKCHIP_SUB_DRIVER(dw_hdmi_rockchip_pltfm_driver,
 -				CONFIG_ROCKCHIP_DW_HDMI);
  	ADD_ROCKCHIP_SUB_DRIVER(dw_mipi_dsi_rockchip_driver,
  				CONFIG_ROCKCHIP_DW_MIPI_DSI);
 +	ADD_ROCKCHIP_SUB_DRIVER(dw_hdmi_rockchip_pltfm_driver,
 +				CONFIG_ROCKCHIP_DW_HDMI);
  	ADD_ROCKCHIP_SUB_DRIVER(inno_hdmi_driver, CONFIG_ROCKCHIP_INNO_HDMI);
  	ADD_ROCKCHIP_SUB_DRIVER(rk3066_hdmi_driver,
  				CONFIG_ROCKCHIP_RK3066_HDMI);
"""

this worked too!

Then, I tried something else, applying
https://lore.kernel.org/all/20240615170417.3134517-14-jonas@kwiboo.se/

... which also made it work! But re-ordering the probe order like above,
broke it again. So not perfect...

It does seem that HDMI may need to be on VOPB in multidisplay scenarios?
I honestly do not have any idea of what's going on here and I am not
aware of any of our users using video in U-Boot, so we'll just be
disabling it for now until some of our users request it in a
multi-display context. Basically sweeping the dirt under the rug until
someone lifts it.
---
 configs/puma-rk3399_defconfig | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index 9e5499a1fec..ccc7f355dbd 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -19,6 +19,7 @@ CONFIG_SPL_SPI=y
 CONFIG_SYS_LOAD_ADDR=0x800800
 CONFIG_DEBUG_UART=y
 CONFIG_DEFAULT_FDT_FILE="rockchip/rk3399-puma-haikou.dtb"
+CONFIG_CONSOLE_MUX=y
 CONFIG_DISPLAY_BOARDINFO_LATE=y
 CONFIG_SPL_MAX_SIZE=0x2e000
 CONFIG_SPL_PAD_TO=0x38000
@@ -40,7 +41,6 @@ CONFIG_CMD_MMC=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_USB=y
 # CONFIG_CMD_SETEXPR is not set
-CONFIG_CMD_BMP=y
 CONFIG_CMD_CACHE=y
 CONFIG_CMD_TIME=y
 CONFIG_CMD_PMIC=y
@@ -102,12 +102,4 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
-CONFIG_VIDEO=y
-# CONFIG_VIDEO_BPP8 is not set
-CONFIG_DISPLAY=y
-CONFIG_VIDEO_ROCKCHIP=y
-CONFIG_DISPLAY_ROCKCHIP_HDMI=y
-CONFIG_BMP_16BPP=y
-CONFIG_BMP_24BPP=y
-CONFIG_BMP_32BPP=y
 CONFIG_ERRNO_STR=y

---
base-commit: 9366640449ac3ef702b624e2f6f7604754a9082b
change-id: 20240729-puma-no-video-3d9e11ac6104

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
