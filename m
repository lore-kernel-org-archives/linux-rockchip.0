Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81DA8D3B7E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 12:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jHufgHimnoVsrR2YkUx8USp76IHDnYHQ7rcUnYEGtE8=; b=yd1SUVuyp1XMKq
	SlKCEfUChLvtxkOvkmWKcQw3SN53c7Z6xayfrPSLvaT1SDULE5ZL7WSYkrkYZn/cWMYpKNkSCXtzE
	jckLD1m9OrXSMtbF3Bvm3YfUhGvT9M46pJIAG7m9MyMGupbEqOIxCuEV8e5vp/jcyC6xa2xOE5d+2
	KJXMZFq3WGN+d+EnkzYMZ5BLJw4tnptRsPzM1eul0hSVdHPG32zBCvN4531VDyg7V0yMEATtO50um
	FX1OMK+RLWd7NM8VF3uGEnJysGsGwUUsDHjqxgMA0bbGP6HZ5UoVONIDRM8rv1fpJfbxnnInPJzGB
	xykMeycru1Sx6+aBldYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaCCZ-00000003eyE-2V7s;
	Mon, 29 Dec 2025 12:18:19 +0000
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaCCW-00000003exf-28t8
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 12:18:18 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id D66CD14000BC;
	Mon, 29 Dec 2025 07:18:12 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Mon, 29 Dec 2025 07:18:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1767010692; x=1767097092; bh=Y0Yh64gwja
	JdrPmmb7QhI3yP7/Gx3ZKWSjQKjpPaf3E=; b=DgG07hN3vYxSajb62fUPh/KiPC
	vkSqi99JXEsOC9LjpDqWf2pzMMLOFThaf70ihLJRQxraaN1aI+isKGGb2FtcbdVw
	eYEkcriDCsZj8gPXD1prsixRSIvXVPL69uXwwuDyFYQMt3UYZ2tG3XivxAislaw/
	CDxS+VV8FYtnhp18tF0XqTsJyL3nZFKrGqV6wRjWAdxnM/LxjLa9ggOGLOSR96Yc
	nCvEhvhFFq7d0L9ouGDH0jj0m3IwfkrscWUuEiHyJR654lzxovwyJpaA1ABA6xl+
	X+mQGyHzrwNYHq8P4Hzqpx9L3Ht6oZ5Yyajg8sAUXaA742PGVEIRaI7krN3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1767010692; x=1767097092; bh=Y0Yh64gwjaJdrPmmb7QhI3yP7/Gx3ZKWSjQ
	KjpPaf3E=; b=po9loQzQVOqEmKYgGRh32z5L7QOorcen6C2lCo6FJaLDTrc1msX
	9OPE/Xs2SDXpSaa9AxVnwJitGxM4dOb8bGAb/430sDXR0y/ZppcXQeGyABYSYCia
	9cOcKdDky6Ju7G1PiaUvredeP1p60Zn+ir/Qf8U1D1V8B+lqmZH1i2tCEbepQNx6
	dscZkCAXxGzxsbrD3Rh0DEnaCgnT50++SeDO2brDcRjL/zvN4lkOn+NI11OCPeAL
	cvjFcLmJpq9wnaTDj256XcnZn2dOMXmNyFVYxsOV81MqEdoAeGAY78Yb7cLh7P1a
	DT0LJmLr9iZgL0wyxFyI//qVl8JbusJ7wPA==
X-ME-Sender: <xms:hHFSaQDXMeXVsg2aaOWNZDgsK7rxVczsY8eftQoX0dYx_Pz1qFKGhw>
    <xme:hHFSaQWZgmqiaDs7nwkNgTtY-dhAc8gSS1Je_tyN2vMupGASEBqfoqxhGUzrGeBz6
    FCdaATqsmlaDD1RFAI5hHKOjxunnDjBEOfM5wgXmtBwhnP2SIyFLA>
X-ME-Received: <xmr:hHFSaeDa8sIuVCidzdgDsBjAYMyi0IXAbNWdvtFIETG6KztyVtq0L3xiSM4DV48RkmSvhlNa--aq1z-aB3GUd7Uz3MzuuuT70w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdejjeduvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvvefukfhfgggtuggjfgesthdtredttderjeenucfhrhhomheplfgrnhcurfgr
    lhhushcuoehjphgrlhhushesfhgrshhtmhgrihhlrdgtohhmqeenucggtffrrghtthgvrh
    hnpeekhfegleejffffjeefudetledtgfeltdehjeegtdekveetieeugfefgeeufeejffen
    ucffohhmrghinhepkhgvrhhnvghlrdhorhhgpdhgihhthhhusgdrtghomhenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjphgrlhhushesfhgr
    shhtmhgrihhlrdgtohhmpdhnsggprhgtphhtthhopeegpdhmohguvgepshhmthhpohhuth
    dprhgtphhtthhopehpsghrohgsihhnshhonhesghhmrghilhdrtghomhdprhgtphhtthho
    pehlihhnuhigqdhrohgtkhgthhhipheslhhishhtshdrihhnfhhrrgguvggrugdrohhrgh
    dprhgtphhtthhopehhvghikhhosehsnhhtvggthhdruggvpdhrtghpthhtoheprhgvghhr
    vghsshhiohhnsheslhhishhtshdrlhhinhhugidruggvvh
X-ME-Proxy: <xmx:hHFSaT-_IofjtbwXHhbw4QWZtcOgaMv6ajdlfdpUBgZAgcdmlpYelQ>
    <xmx:hHFSaVEbnTlbeYgcQDUqPvBnpXyNshoTLju4WVnHpUjGdywpfrbnlg>
    <xmx:hHFSaRNOSDb53j6oUlcgB8eUrEeLdHJuaRK_h5KbSQ3vA0gK0npXQg>
    <xmx:hHFSaffihCnrzbfzRUuEBVzOc7MCIOwQfmtZjE1QUrERwHiAdY4GkQ>
    <xmx:hHFSaWx8a15PCY_th6y2TX10VTKI1VZksq2AttXxAHNVCihA0F98bJlq>
Feedback-ID: i01894241:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Dec 2025 07:18:11 -0500 (EST)
Date: Mon, 29 Dec 2025 13:18:10 +0100
From: Jan Palus <jpalus@fastmail.com>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	regressions@lists.linux.dev
Subject: Re: [REGRESSION][BISECTED] wifi broken on pinebook pro
Message-ID: <aVJutYTmhA14rwPY@rock.grzadka>
References: <aUKOlj-RvTYlrpiS@rock.grzadka>
 <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
User-Agent: NeoMutt/20251211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_041817_016581_BEBBA7FE 
X-CRM114-Status: GOOD (  22.32  )
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

On 29.12.2025 06:23, Peter Robinson wrote:
> On Wed, 17 Dec 2025 at 11:26, Jan Palus <jpalus@fastmail.com> wrote:
> >
> > WiFi no longer works on Pinebook Pro after upgrade to kernel 6.18. It
> > appears firmware fails to load:
> >
> > ...
> > mmc_host mmc0: card is non-removable.
> > mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
> > Bluetooth: hci0: BCM: features 0x0f
> > Bluetooth: hci0: BCM4345C5 Ampak_CL1 UART 37.4 MHz BT 5.0 [Version: Version: 0039.0089]
> > Bluetooth: hci0: BCM4345C5 (003.006.006) build 0089
> > mmc_host mmc0: Bus speed (slot 0) = 148500000Hz (slot req 150000000Hz, actual 148500000HZ div = 0)
> > dwmmc_rockchip fe310000.mmc: Successfully tuned phase to 55
> > mmc0: new UHS-I speed SDR104 SDIO card at address 0001
> > brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43456-sdio for chip BCM4345/9
> > usbcore: registered new interface driver brcmfmac
> > brcmfmac mmc0:0001:1: Direct firmware load for brcm/brcmfmac43456-sdio.pine64,pinebook-pro.bin failed with error -2
> > brcmfmac: brcmf_sdio_bus_rxctl: resumed on timeout
> > ieee80211 phy0: brcmf_bus_started: failed: -110
> > ieee80211 phy0: brcmf_attach: dongle is not responding: err=-110
> > brcmfmac: brcmf_sdio_firmware_callback: brcmf_attach failed
> >
> > compared to 6.17 instead of last 4 lines with errors there's single one
> > with info about loaded firmware:
> >
> > brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4345/9 wl0: May 14 2020 17:26:08 version 7.84.17.1 (r871554) FWID 01-3d9e1d87
> >
> > Bisected to:
> >
> > 6d54d935062e2d4a7d3f779ceb9eeff108d0535d is the first new commit
> > commit 6d54d935062e2d4a7d3f779ceb9eeff108d0535d (HEAD)
> > Author: Peter Robinson <pbrobinson@gmail.com>
> > Date:   Wed Aug 27 16:30:37 2025
> >
> >     arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro
> >
> >     Update the wake-up pin and associated interupt details for the
> >     Pinebook Pro WiFi module.
> >
> >     Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> >     Link: https://lore.kernel.org/r/20250827143040.1644867-1-pbrobinson@gmail.com
> >     Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> >
> >  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> >
> > With this commit reverted on top of 6.18.1 wireless connection works
> > fine.
> >
> > Not sure what could be relevant but:
> > - it's an early model, I think second batch, delivered end of 2019
> 
> Is it the Synoptics or the Cypress/Infineon module? What firmware are you using?

Judging by the fact acquisition by Synaptics happened sometime late
2020/early 2021 I guess it must be Cypress? I'm not really familiar with
BCM43456 chip history. Firmware files used are
brcm/brcmfmac43456-sdio.{bin,clm_blob,txt} exactly those found at:

https://github.com/RPi-Distro/firmware-nonfree/tree/trixie/debian/config/brcm80211/brcm

> 
> > - mainline uboot 2025.10 is used
> >
> >
> > #regzbot introduced: 6d54d93506

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
