Return-Path: <SRS0=BmYq=CW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26D59C433E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2020 02:32:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 79D8F20731
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2020 02:32:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FklO4SdC";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD/tNThe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 79D8F20731
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5a2AypduMDkhwaarM9H9It4qhGUfzgL9BymAALGGGoc=; b=FklO4SdCPgVdr8N1zJsdJPepi
	C19/IA4GQmgat9/3xvPnc0maEDEtExOxHDxNwW+DCyY72w8/wiiY3qBK2QZfgPelsKT+Zacq5FHxX
	aUZLRQd6IAMgF9RTz4zG2+bYGE/iXWsPd0Tiyc2L2Yk5BkKNTAZXabNZtoMgZ+k2SWKqpObPT09wP
	e32IP2YaxqXCVnLl9FOcmj+lKxShGuIp9B4Lpsp20Bx5pXAYbC0AetDrvt+XuU1H7NdWBwTxlKfID
	Ild6UwP40t4TOlGa+MDw8OFvR//IGhewnCT0oBhcWxwtMAMBEGb7Wm/hXWym1EglWm3IvfX+eNKpz
	55NucFzjQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHHoG-0003wK-So; Sun, 13 Sep 2020 02:32:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHHoB-0003vg-7t; Sun, 13 Sep 2020 02:32:04 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A8C720731;
 Sun, 13 Sep 2020 02:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599964321;
 bh=6QjRX2df8XaG6kRVKUKdd183lBDC+CGc81pBPbkOMQk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QD/tNThepmuXKvQkvCRrBMfL8tXd39C2aw4PoHK0s9I6VJEOCSxOeqN0hITpgfh8C
 vVae/kU7BXjMlz1p7mltgd+RZQWhhtKbM62mK+UA3O83DT/J5LX82BviKgw75IUli3
 PFqipygVt2ahoOYy0m6PWLbJH91M6Uc9/NGVvGco=
Date: Sun, 13 Sep 2020 10:31:53 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Tim Harvey <tharvey@gateworks.com>
Subject: Re: [PATCH 1/8] ARM: dts: imx6qdl: Correct interrupt flags in examples
Message-ID: <20200913023152.GH25109@dragon>
References: <20200908150241.5771-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908150241.5771-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200912_223203_739595_EF30D0CD 
X-CRM114-Status: GOOD (  21.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Kever Yang <kever.yang@rock-chips.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Robin Gong <yibin.gong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Adam Ford <aford173@gmail.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Alifer Moraes <alifer.wsdm@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Vitor Massaru Iha <vitor@massaru.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add Tim who is the board owner.

On Tue, Sep 08, 2020 at 05:02:34PM +0200, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> 
> Correct the interrupt flags, assuming the author of the code wanted some
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

The subject prefix could be a bit more specific, like 'ARM: dts:
imx6qdl-gw5xxx'.  Also, I do not quite understand meaning of 'in
examples' in subject.

Shawn

> 
> ---
> 
> Not tested on HW.
> ---
>  arch/arm/boot/dts/imx6qdl-gw51xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw551x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw552x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5903.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5912.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5913.dtsi | 3 ++-
>  14 files changed, 28 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> index 4d01c3300b97..3c04b5a4f3cb 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -152,7 +153,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> index f6182a9d201c..736074f1c3ef 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -217,7 +218,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> index a28e79463d0c..8072ed47c6bb 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -210,7 +211,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> index 55f368e192c0..8c9bcdd39830 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/sound/fsl-imx-audmux.h>
>  
>  / {
> @@ -247,7 +248,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#address-cells = <1>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> index 1516e2b0bcde..e5d803d023c8 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> @@ -48,6 +48,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/media/tda1997x.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/sound/fsl-imx-audmux.h>
>  
>  / {
> @@ -219,7 +220,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> index 0da6e6f7482b..290a607fede9 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -144,7 +145,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> index faf9a3ba61b2..c15b9cc63bf8 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> @@ -47,6 +47,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -180,7 +181,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> index f68f9dada5b0..093a219a77ae 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> @@ -47,6 +47,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -294,7 +295,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> index fbe6c32bd756..e1c8dd233cab 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> @@ -47,6 +47,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	chosen {
> @@ -235,7 +236,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> index 23c6e4047621..3cd2e717c1da 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> @@ -47,6 +47,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -257,7 +258,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> index b1ff7c859c4d..21c68a55bcb9 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -154,7 +155,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> index 6c943a517ad7..ed4e22259959 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -163,7 +164,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> index 441d8ce97aa4..797f160249f7 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -158,7 +159,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#address-cells = <1>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> index d62a8da49367..4cd7d290f5b2 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> @@ -5,6 +5,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  
>  / {
>  	/* these are used by bootloader for disabling nodes */
> @@ -139,7 +140,7 @@
>  		compatible = "gw,gsc";
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <4 GPIO_ACTIVE_LOW>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>  		interrupt-controller;
>  		#interrupt-cells = <1>;
>  		#size-cells = <0>;
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
