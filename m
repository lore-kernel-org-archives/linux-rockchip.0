Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D6F0C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Nov 2022 14:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXQTW71rj6WqpIFoWUnXIAmMw748Cnf+Nt8h+NojfiE=; b=tPMJIyKl2/AvyZ
	2vu5cU5G6Zn+NWp3x3G6S7YGfSUsUVvnMs9dcURUanNgoNdQangICMNJ0Vl+xstYnOsrOdsicxl41
	O9AfOnSjNXvO37Eh9PaW13Mbr73xDoKQka0UfxgcWWVQoE1p9miE+Mb2aekAzBmmK0JeumQPUBYaw
	9aMgQeZPilTN6upGtegkNAn5rB4fPKjhgTZ+KsP2bkhJWv93UH0jkfyXqRbzxXLXMu6whn6WylTP7
	UEVRe0YF8nwOBpSeSKrdHCw6e5k4uP2nRkq9kIVCagMkxo7XwPSzsQyMtVZ7ns0U4x2TFWAgIU+EE
	j+sNO2YQIKwfMMSHkFNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouEDl-00Brpp-0l; Sun, 13 Nov 2022 14:44:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouEDh-00Brnz-5D; Sun, 13 Nov 2022 14:44:28 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ouEDc-0002qr-6u; Sun, 13 Nov 2022 15:44:20 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Thierry Reding <thierry.reding@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Simon Glass <sjg@chromium.org>, Tom Rini <trini@konsulko.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: rockchip: Remove unknown regulator-init-microvolt property
Date: Sun, 13 Nov 2022 15:44:19 +0100
Message-ID: <6087432.MhkbZ0Pkbq@diego>
In-Reply-To: <fbb14294-59c4-da70-4865-6b6994f8e292@arm.com>
References: <20221104132046.1555932-1-thierry.reding@gmail.com> <fbb14294-59c4-da70-4865-6b6994f8e292@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_064425_519764_4D85F2A4 
X-CRM114-Status: GOOD (  21.66  )
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

Am Freitag, 4. November 2022, 15:41:09 CET schrieb Robin Murphy:
> On 2022-11-04 13:20, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> > 
> > The regulator-init-microvolt is not defined anywhere and not used by any
> > driver, so remove it from existing device trees.
> 
> <vague memory triggers...>
> 
> There *are* drivers that use it, just not in Linux[1][2][3]. Having a 
> single canonical bindings repo can't come soon enough :(
> 
> Robin.
> 
> [1] 
> https://source.denx.de/u-boot/u-boot/-/blob/master/doc/device-tree-bindings/regulator/regulator.txt#L40
> [2] 
> https://source.denx.de/u-boot/u-boot/-/blob/master/drivers/power/regulator/pwm_regulator.c#L108
> [3] 
> https://source.denx.de/u-boot/u-boot/-/blob/master/drivers/power/regulator/regulator-uclass.c#L455

U-Boot always tries to merge Linux devicetrees with minimal changes,
but I guess nobody ever tried to "upstream" that property?

In any case, in a lot of rockchip boards in the u-boot source,
I do see the regulator-init-microvolt in the *-u-boot.dtsi override file,
so it already seems to be agreed that this stuff is bootloader-specific.
[rk3399-pinebook-pro-u-boot.dtsi, and a number more]

So I guess, if nobody complains to loudly, I guess I'll merge this patch.


Heiko

> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >   arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts          | 1 -
> >   arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts       | 1 -
> >   arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi        | 1 -
> >   arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 3 ---
> >   arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 --
> >   arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 --
> >   arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 --
> >   arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 --
> >   arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 3 ---
> >   arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 3 ---
> >   arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 3 ---
> >   arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 3 ---
> >   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 3 ---
> >   13 files changed, 29 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> > index 7ea48167747c..9232357f4fec 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
> > @@ -106,7 +106,6 @@ vdd_core: vdd-core {
> >   		regulator-name = "vdd_core";
> >   		regulator-min-microvolt = <827000>;
> >   		regulator-max-microvolt = <1340000>;
> > -		regulator-init-microvolt = <1015000>;
> >   		regulator-settling-time-up-us = <250>;
> >   		regulator-always-on;
> >   		regulator-boot-on;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> > index a71f249ed384..e9810d2f0407 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
> > @@ -105,7 +105,6 @@ vdd_core: vdd-core {
> >   		regulator-name = "vdd_core";
> >   		regulator-min-microvolt = <827000>;
> >   		regulator-max-microvolt = <1340000>;
> > -		regulator-init-microvolt = <1015000>;
> >   		regulator-settling-time-up-us = <250>;
> >   		regulator-always-on;
> >   		regulator-boot-on;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> > index b6e082f1f6d9..7c5f441a2219 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> > @@ -375,7 +375,6 @@ regulator-state-mem {
> >   			vcc_sdio: LDO_REG4 {
> >   				regulator-always-on;
> >   				regulator-boot-on;
> > -				regulator-init-microvolt = <3000000>;
> >   				regulator-min-microvolt = <1800000>;
> >   				regulator-max-microvolt = <3300000>;
> >   				regulator-name = "vcc_sdio";
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > index 41262a69d33e..a71973b16075 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> > @@ -356,7 +356,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-name = "vdd_logic";
> > @@ -371,7 +370,6 @@ vdd_gpu: DCDC_REG2 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-name = "vdd_gpu";
> > @@ -533,7 +531,6 @@ vdd_cpu: regulator@40 {
> >   		regulator-boot-on;
> >   		regulator-min-microvolt = <712500>;
> >   		regulator-max-microvolt = <1390000>;
> > -		regulator-init-microvolt = <900000>;
> >   		regulator-name = "vdd_cpu";
> >   		regulator-ramp-delay = <2300>;
> >   		vin-supply = <&vcc_sys>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > index 8d61f824c12d..d899087bf0b5 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> > @@ -264,7 +264,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-always-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   
> > @@ -278,7 +277,6 @@ vdd_gpu_npu: DCDC_REG2 {
> >   				regulator-name = "vdd_gpu_npu";
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > index 25a8c781f4e7..854d02b46e6f 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> > @@ -366,7 +366,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-name = "vdd_logic";
> > @@ -381,7 +380,6 @@ vdd_gpu: DCDC_REG2 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-name = "vdd_gpu";
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > index 77b179cd20e7..fc38b30d3722 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > @@ -277,7 +277,6 @@ vdd_log: DCDC_REG1 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   
> >   				regulator-state-mem {
> > @@ -292,7 +291,6 @@ vdd_gpu: DCDC_REG2 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <900000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   
> >   				regulator-state-mem {
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> > index 61c7a3ad7387..45807d7e22eb 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> > @@ -250,7 +250,6 @@ vdd_log: DCDC_REG1 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   
> >   				regulator-state-mem {
> > @@ -263,7 +262,6 @@ vdd_gpu: DCDC_REG2 {
> >   				regulator-name = "vdd_gpu";
> >   				regulator-min-microvolt = <900000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   
> >   				regulator-state-mem {
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > index 5bcd4be32964..e23e2293d10a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> > @@ -192,7 +192,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-state-mem {
> > @@ -207,7 +206,6 @@ vdd_gpu: DCDC_REG2 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-ramp-delay = <6001>;
> >   				regulator-initial-mode = <0x2>;
> >   					regulator-state-mem {
> > @@ -230,7 +228,6 @@ vdd_npu: DCDC_REG4 {
> >   				regulator-boot-on;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-name = "vdd_npu";
> >   				regulator-state-mem {
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > index 26d7fda275ed..a70b89e39dd6 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> > @@ -301,7 +301,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-name = "vdd_logic";
> >   				regulator-always-on;
> >   				regulator-boot-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -315,7 +314,6 @@ regulator-state-mem {
> >   			vdd_gpu: DCDC_REG2 {
> >   				regulator-name = "vdd_gpu";
> >   				regulator-always-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -339,7 +337,6 @@ regulator-state-mem {
> >   
> >   			vdd_npu: DCDC_REG4 {
> >   				regulator-name = "vdd_npu";
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > index 674792567fa6..19f8fc369b13 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> > @@ -293,7 +293,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-name = "vdd_logic";
> >   				regulator-always-on;
> >   				regulator-boot-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -307,7 +306,6 @@ regulator-state-mem {
> >   			vdd_gpu: DCDC_REG2 {
> >   				regulator-name = "vdd_gpu";
> >   				regulator-always-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -331,7 +329,6 @@ regulator-state-mem {
> >   
> >   			vdd_npu: DCDC_REG4 {
> >   				regulator-name = "vdd_npu";
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> > index 59ecf868dbd0..a337f547caf5 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> > @@ -291,7 +291,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-name = "vdd_logic";
> >   				regulator-always-on;
> >   				regulator-boot-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -305,7 +304,6 @@ regulator-state-mem {
> >   			vdd_gpu: DCDC_REG2 {
> >   				regulator-name = "vdd_gpu";
> >   				regulator-always-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -329,7 +327,6 @@ regulator-state-mem {
> >   
> >   			vdd_npu: DCDC_REG4 {
> >   				regulator-name = "vdd_npu";
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > index ea74ba32fbbd..482c892567de 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -340,7 +340,6 @@ vdd_logic: DCDC_REG1 {
> >   				regulator-name = "vdd_logic";
> >   				regulator-always-on;
> >   				regulator-boot-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -354,7 +353,6 @@ regulator-state-mem {
> >   			vdd_gpu: DCDC_REG2 {
> >   				regulator-name = "vdd_gpu";
> >   				regulator-always-on;
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> > @@ -378,7 +376,6 @@ regulator-state-mem {
> >   
> >   			vdd_npu: DCDC_REG4 {
> >   				regulator-name = "vdd_npu";
> > -				regulator-init-microvolt = <900000>;
> >   				regulator-initial-mode = <0x2>;
> >   				regulator-min-microvolt = <500000>;
> >   				regulator-max-microvolt = <1350000>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
