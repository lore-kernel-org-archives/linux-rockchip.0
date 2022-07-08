Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E178CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 09:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RI1MtGz6ag0rlWfXkFBITUDsgOjifnS9EGVCe9uOCS8=; b=M7lnF6g22+GjJp
	Dq3ZsCouaqFCo+eaKGTNGfg/2Klq/Ml/NZFbeeSXhne0e7Fd4DyC1lsWJckSoM9Yu70SvCFWzEUE8
	rD5QI5mnGtc5taiCXkzL9c0v2+EMKc8dX9eim+PRl4Lk39/bHoO4Wtd14azdKzzFiHUp1traCyoML
	8ITk7Ds7VnmJH6SvQYNCUF2taDe+fEgEVLpcPDTtvAhm5LybDd8a+2vHABOvqgoBLim6cLpwUaui3
	/7/fiP4atev+0uZW3rxf/6DKGIG5qvQ7YG+4+0hnzgh5Ic+vdnjJQ4dy2+33wWsrKTXpClw/HwGuA
	grvLncOEJVqR5VcXBYPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9kQv-002xxD-1a; Fri, 08 Jul 2022 09:37:57 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9kQh-002xr1-IG; Fri, 08 Jul 2022 09:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657273045;
	bh=7DjN/u4lV28JQGeSo7v9VWllQNWiCVT/J6Yw1Y7f+08=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=K7jYehq7hFxHD1ijV4FP+4DLs+ERcehlEmVXuwgjDeMMzR3ms9bKrJuPKRKOg+de4
	 sPp56q65AEtO+1qlRQarUPsFgnDlTFWQmgraD76xF3Mp+b7bcRshGcJndGc7Dv9gSG
	 ha/owRF7z6CbMzCi3g7vWswStSU36lH6Uy8YFQo0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.225.69] ([157.180.225.69]) by web-mail.gmx.net
 (3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP); Fri, 8 Jul 2022
 11:37:25 +0200
MIME-Version: 1.0
Message-ID: <trinity-8311107f-8d47-4da9-8b30-012156e1ce68-1657273045706@3c-app-gmx-bs34>
From: Frank Wunderlich <frank-w@public-files.de>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, "open
 list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, arm-mail-list
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: Aw: Re: [BUG] USB broken on rk3568 based R2Pro
Date: Fri, 8 Jul 2022 11:37:25 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAMdYzYrs0oJXVcViOmJk4E7PSTeP5TYs0O_ePHmrcAiKtOAWXQ@mail.gmail.com>
References: <trinity-54ed588d-4b2c-4177-83b0-4eda8ff16a42-1657210235522@3c-app-gmx-bap68>
 <trinity-ec3b4258-cb12-42c2-9058-362260a275d2-1657216287085@3c-app-gmx-bap68>
 <CAMdYzYrs0oJXVcViOmJk4E7PSTeP5TYs0O_ePHmrcAiKtOAWXQ@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:4OJhdHFpq7YpX6xsUbZCX2nrOMgzlmYf82BMa6ciaZDE8xDzru1jsrfijDkjdym8cGddL
 t8cHv+WAuN/5qZ8W0/Ljxq206ngky8YIv1Ro6nQCJ3zOP/kp6hsytwtZIhsSV01khwuindPc0lCO
 iXBoDiZ93w+k7tl2GT8/8b7ws2eAD7M+iKW9W6JxhFrtNx7vgYluHLlP7CMMKdeva8JXZbnJXUz6
 BE5HJleqt/5vCL0rCQhY46dYdu1JNW/diQy5cr3Eg6gbHjx6A8RZ0RGypkaK2dLFHvmjb4NOMuRq
 X0=
X-UI-Out-Filterresults: notjunk:1;V03:K0:Muo9ZjD44g4=:51OLlILkc6InU8bvJlJVsp
 1+i1blCY6q/2wG5K+hJ8K1AjFJBmeqZ1gMWElBAs3GQqLT6TJwIAoTPkZUddVNZOMQZnfN9/p
 Eot5yUV8zbAQLZqt74VVnkdY7b6gpleCZsuyx/mjUUx4nz+SlND4+UBJkJCGvhu003dyU8DfW
 zytMXqC/S5tqhPBd9CrNqTO46hquSDttq0yJVZWjSR6yatqdmZhZ8NXcEkicGKGtcu3LHUQpY
 g+fXltGEw65/eV7+y/shwme8qzN704++mKsKZZy2XRwf4vaT4Os/zivvyZ0JzhTgiTmSwMnsX
 uNcPMlmxd3TCrxctvUMEOgjK/BELiEJEOoJIMT8tMx3wICjJAOpHsdqFr6N4pokycbOR+sDls
 AFIMA1G1/KUDQ1c7Ed8sONZEjwcp/PwJWHZYsLvi2kPr3Af3d5xuUE6wFuqBk7/OxxOWBFssn
 m9dw0H/49mQLce4FVp13f02YIQL4PCS3fveXdqkcbCYRHuRikGkoiE2UP90tK83HxULUYk50T
 Oj+HcwCaXWUzf7rONtgv2tcqzKxFYcfi+L/qG+wD6M/eCNPgP6jT4i6XI/eIWCLWSbc6fkSMW
 tofIhv6AAGZABxpy5bnYfgVBx/irueB8erMzRDYFJa2Gc72r1+0HVN/3EtA/bV05Y+tOUogqG
 8agarUPV+ejsTNfLVVXyBotQyuF1FSc8s3WAqlbMGwX20xgraFif1J5MMa9uiHlvy/bb1rV+a
 lB6tyew6UGYWgpkQHuNSgsFTOPn3pq2/e5rnGUbQuoQh6RwVEq5/MZBlRg3EWdsek8BhoRFq/
 IFb+Mfb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_023744_111593_820CA457 
X-CRM114-Status: GOOD (  23.05  )
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



regards Frank


> Gesendet: Donnerstag, 07. Juli 2022 um 21:41 Uhr
> Von: "Peter Geis" <pgwipeout@gmail.com>
> On Thu, Jul 7, 2022 at 1:51 PM Frank Wunderlich <frank-w@public-files.de> wrote:
> >
> > Hi,
> >
> > traced it down with manual reverts to this one:
> >
> > commit 6a98df08ccd55e87947d253b19925691763e755c
> >     phy: rockchip-inno-usb2: Fix muxed interrupt support
> >
> > luckily i can revert only this and now upper usb-port works again
> >
> > @samuel: have you an idea how to fix your problem without breaking my board? :)
> >
> > @greg/Vinod: maybe we can add a revert of this in mainline till issue is resolved?
> >
> > regards Frank
>
> I don't know what you're running, but with the standard arm64
> defconfig w/ all rockchip stuff built in, I have no issues here on
> 5.19.
> Note, the following changes are necessary to the 5.19 dts here:
> Remove the extcon from usb_host0_xhci, as the production model doesn't
> have automatic switching capabilities. The ID pin was removed in favor
> of the usb debug function which also doesn't work.
> Add dr_mode = "host" to the same node, for the same reason.

i already added the dr_mode=host to my xhci-node [1], but it is not pushed down to usb2-phy

it looks like the dr_mode property is ignored (or not yet set)...so the switch statement which is added by the patch choose the wrong initialization. in 5.18 init was done independ from phy-mode

# dmesg | grep -i debug
[    1.093370] phy phy-fe8a0000.usb2phy.0: DEBUG: Passed rockchip_usb2phy_irq 981 port_id:1(OTG:0,HOST:1)
[    1.094739] phy phy-fe8a0000.usb2phy.1: DEBUG: Passed rockchip_usb2phy_irq 981 port_id:0(OTG:0,HOST:1)
# cat /sys/firmware/devicetree/base/usb@fcc00000/dr_mode
host#
# cat /sys/firmware/devicetree/base/usb@fd000000/dr_mode
host#

usb_host0_xhci: usb@fcc00000 {
  phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>; <<<< usb2phy0_otg seems to be initialized to otg mode and dr_mode is not applied when rockchip_usb2phy_irq is run

second controller works
usb_host1_xhci: usb@fd000000 {
  phy-names = "usb2-phy", "usb3-phy";

in case that defconfig is the cause like peter guessed...i use same defconfig for 5.18 (working) and 5.19-rc (only lower port working)

$ grep -i 'usb\|hci\|otg' ../build/.config
# CONFIG_HISI_HIKEY_USB is not set
# CONFIG_MISC_RTSX_USB is not set
CONFIG_SATA_AHCI=y
CONFIG_SATA_AHCI_PLATFORM=y
# CONFIG_AHCI_CEVA is not set
# CONFIG_AHCI_QORIQ is not set
# CONFIG_SATA_ACARD_AHCI is not set
# CONFIG_MDIO_MVUSB is not set
CONFIG_USB_NET_DRIVERS=y
# CONFIG_USB_CATC is not set
# CONFIG_USB_KAWETH is not set
# CONFIG_USB_PEGASUS is not set
# CONFIG_USB_RTL8150 is not set
# CONFIG_USB_RTL8152 is not set
# CONFIG_USB_LAN78XX is not set
# CONFIG_USB_USBNET is not set
# CONFIG_USB_HSO is not set
# CONFIG_USB_IPHETH is not set
# CONFIG_USB_NET_RNDIS_WLAN is not set
# CONFIG_MOUSE_SYNAPTICS_USB is not set
# CONFIG_XILLYUSB is not set
# CONFIG_I2C_TINY_USB is not set
# USB GPIO expanders
# end of USB GPIO expanders
# USB-based Watchdog Cards
# CONFIG_USBPCWATCHDOG is not set
# CONFIG_REGULATOR_QCOM_USB_VBUS is not set
# CONFIG_USB_PULSE8_CEC is not set
# CONFIG_USB_RAINSHADOW_CEC is not set
CONFIG_SND_USB=y
# CONFIG_SND_USB_AUDIO is not set
# CONFIG_SND_USB_UA101 is not set
# CONFIG_SND_USB_CAIAQ is not set
# CONFIG_SND_USB_6FIRE is not set
# CONFIG_SND_USB_HIFACE is not set
# CONFIG_SND_USB_POD is not set
# CONFIG_SND_USB_PODHD is not set
# CONFIG_SND_USB_TONEPORT is not set
# CONFIG_SND_USB_VARIAX is not set
# USB HID support
CONFIG_USB_HID=y
# CONFIG_USB_HIDDEV is not set
# end of USB HID support
CONFIG_USB_OHCI_LITTLE_ENDIAN=y
CONFIG_USB_SUPPORT=y
CONFIG_USB_COMMON=y
# CONFIG_USB_LED_TRIG is not set
# CONFIG_USB_ULPI_BUS is not set
CONFIG_USB_CONN_GPIO=y
CONFIG_USB_ARCH_HAS_HCD=y
CONFIG_USB=y
CONFIG_USB_PCI=y
# CONFIG_USB_ANNOUNCE_NEW_DEVICES is not set
# Miscellaneous USB options
CONFIG_USB_DEFAULT_PERSIST=y
# CONFIG_USB_FEW_INIT_RETRIES is not set
# CONFIG_USB_DYNAMIC_MINORS is not set
CONFIG_USB_OTG=y
# CONFIG_USB_OTG_PRODUCTLIST is not set
# CONFIG_USB_OTG_DISABLE_EXTERNAL_HUB is not set
# CONFIG_USB_OTG_FSM is not set
# CONFIG_USB_LEDS_TRIGGER_USBPORT is not set
CONFIG_USB_AUTOSUSPEND_DELAY=2
# CONFIG_USB_MON is not set
# USB Host Controller Drivers
# CONFIG_USB_C67X00_HCD is not set
CONFIG_USB_XHCI_HCD=y
# CONFIG_USB_XHCI_DBGCAP is not set
CONFIG_USB_XHCI_PCI=y
# CONFIG_USB_XHCI_PCI_RENESAS is not set
CONFIG_USB_XHCI_PLATFORM=y
CONFIG_USB_EHCI_HCD=y
CONFIG_USB_EHCI_ROOT_HUB_TT=y
CONFIG_USB_EHCI_TT_NEWSCHED=y
CONFIG_USB_EHCI_PCI=y
# CONFIG_USB_EHCI_FSL is not set
CONFIG_USB_EHCI_HCD_PLATFORM=y
# CONFIG_USB_OXU210HP_HCD is not set
# CONFIG_USB_ISP116X_HCD is not set
# CONFIG_USB_FOTG210_HCD is not set
# CONFIG_USB_MAX3421_HCD is not set
CONFIG_USB_OHCI_HCD=y
CONFIG_USB_OHCI_HCD_PCI=y
CONFIG_USB_OHCI_HCD_PLATFORM=y
# CONFIG_USB_UHCI_HCD is not set
# CONFIG_USB_SL811_HCD is not set
# CONFIG_USB_R8A66597_HCD is not set
# CONFIG_USB_HCD_TEST_MODE is not set
# CONFIG_USB_XEN_HCD is not set
# USB Device Class drivers
# CONFIG_USB_ACM is not set
# CONFIG_USB_PRINTER is not set
# CONFIG_USB_WDM is not set
# CONFIG_USB_TMC is not set
# NOTE: USB_STORAGE depends on SCSI but BLK_DEV_SD may
# also be needed; see USB_STORAGE Help for more info
CONFIG_USB_STORAGE=y
# CONFIG_USB_STORAGE_DEBUG is not set
# CONFIG_USB_STORAGE_REALTEK is not set
# CONFIG_USB_STORAGE_DATAFAB is not set
# CONFIG_USB_STORAGE_FREECOM is not set
# CONFIG_USB_STORAGE_ISD200 is not set
# CONFIG_USB_STORAGE_USBAT is not set
# CONFIG_USB_STORAGE_SDDR09 is not set
# CONFIG_USB_STORAGE_SDDR55 is not set
# CONFIG_USB_STORAGE_JUMPSHOT is not set
# CONFIG_USB_STORAGE_ALAUDA is not set
# CONFIG_USB_STORAGE_ONETOUCH is not set
# CONFIG_USB_STORAGE_KARMA is not set
# CONFIG_USB_STORAGE_CYPRESS_ATACB is not set
# CONFIG_USB_STORAGE_ENE_UB6250 is not set
# CONFIG_USB_UAS is not set
# USB Imaging devices
# CONFIG_USB_MDC800 is not set
# CONFIG_USB_MICROTEK is not set
# CONFIG_USBIP_CORE is not set
# CONFIG_USB_CDNS_SUPPORT is not set
# CONFIG_USB_MUSB_HDRC is not set
CONFIG_USB_DWC3=y
CONFIG_USB_DWC3_HOST=y
CONFIG_USB_DWC3_PCI=y
CONFIG_USB_DWC3_HAPS=y
CONFIG_USB_DWC3_OF_SIMPLE=y
CONFIG_USB_DWC2=y
CONFIG_USB_DWC2_HOST=y
# Gadget/Dual-role mode requires USB Gadget support to be enabled
# CONFIG_USB_DWC2_PCI is not set
# CONFIG_USB_DWC2_DEBUG is not set
# CONFIG_USB_DWC2_TRACK_MISSED_SOFS is not set
# CONFIG_USB_CHIPIDEA is not set
# CONFIG_USB_ISP1760 is not set
# USB port drivers
# CONFIG_USB_SERIAL is not set
# USB Miscellaneous drivers
# CONFIG_USB_EMI62 is not set
# CONFIG_USB_EMI26 is not set
# CONFIG_USB_ADUTUX is not set
# CONFIG_USB_SEVSEG is not set
# CONFIG_USB_LEGOTOWER is not set
# CONFIG_USB_LCD is not set
# CONFIG_USB_CYPRESS_CY7C63 is not set
# CONFIG_USB_CYTHERM is not set
# CONFIG_USB_IDMOUSE is not set
# CONFIG_USB_FTDI_ELAN is not set
# CONFIG_USB_APPLEDISPLAY is not set
# CONFIG_USB_SISUSBVGA is not set
# CONFIG_USB_LD is not set
# CONFIG_USB_TRANCEVIBRATOR is not set
# CONFIG_USB_IOWARRIOR is not set
# CONFIG_USB_TEST is not set
# CONFIG_USB_EHSET_TEST_FIXTURE is not set
# CONFIG_USB_ISIGHTFW is not set
# CONFIG_USB_YUREX is not set
# CONFIG_USB_EZUSB_FX2 is not set
# CONFIG_USB_HUB_USB251XB is not set
# CONFIG_USB_HSIC_USB3503 is not set
# CONFIG_USB_HSIC_USB4604 is not set
# CONFIG_USB_LINK_LAYER_TEST is not set
# CONFIG_USB_CHAOSKEY is not set
# USB Physical Layer drivers
CONFIG_USB_PHY=y
CONFIG_NOP_USB_XCEIV=y
# CONFIG_USB_GPIO_VBUS is not set
# CONFIG_USB_ISP1301 is not set
# CONFIG_USB_ULPI is not set
# end of USB Physical Layer drivers
# CONFIG_USB_GADGET is not set
CONFIG_USB_ROLE_SWITCH=y
CONFIG_MMC_SDHCI=y
# CONFIG_MMC_SDHCI_PCI is not set
CONFIG_MMC_SDHCI_ACPI=y
CONFIG_MMC_SDHCI_PLTFM=y
# CONFIG_MMC_SDHCI_OF_ARASAN is not set
# CONFIG_MMC_SDHCI_OF_ASPEED is not set
# CONFIG_MMC_SDHCI_OF_AT91 is not set
CONFIG_MMC_SDHCI_OF_DWCMSHC=y
# CONFIG_MMC_SDHCI_CADENCE is not set
CONFIG_MMC_SDHCI_F_SDH30=y
# CONFIG_MMC_SDHCI_MILBEAUT is not set
CONFIG_MMC_CQHCI=y
# CONFIG_MMC_SDHCI_XENON is not set
# CONFIG_MMC_SDHCI_OMAP is not set
# CONFIG_MMC_SDHCI_AM654 is not set
# LED driver for blink(1) USB RGB LED is under Special HID drivers (HID_THINGM)
CONFIG_EXTCON_USB_GPIO=y
# CONFIG_EXTCON_USBC_TUSB320 is not set
# CONFIG_BCM_KONA_USB2_PHY is not set
# CONFIG_PHY_PXA_28NM_USB2 is not set
# CONFIG_PHY_CPCAP_USB is not set
CONFIG_PHY_ROCKCHIP_INNO_USB2=y
CONFIG_PHY_ROCKCHIP_USB=y
# CONFIG_PHY_SAMSUNG_USB2 is not set
# CONFIG_USB4 is not set

as you see i have

CONFIG_USB_OTG=y
and
CONFIG_USB_ROLE_SWITCH=y

enabled which should push down the dr_mode property to phy

my full defconfig/source is here [2]

regards Frank

[1] https://github.com/frank-w/BPI-R2-4.14/commit/0530fbbf7785a9709354c3de1e5a3cd01a3a859a
[2] https://github.com/frank-w/BPI-R2-4.14/blob/5.19-rc/arch/arm64/configs/quartz64_defconfig


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
