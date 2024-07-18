Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77085C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 07:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zevrR4sfP2tvpKK0kLhhlNiO769oqIdEFVyN48Co8dA=; b=Sql6XX2elPGFlCG3ut7mZUzCMb
	AD1funIv3vv0k7GeSSQWqqPewUDsPGWTJCrBU3oqNx4GwyEBg+kkyUHKbVTJdWQOQ6QYl/ogggfo2
	cP9yQWAzB93Q05XuqvmtKPHzzi6pFQ14HcN6YdiB1fl9sAfBC345uBtEl5R4xqYoZNDH0q+kzFeY4
	Hkg1oGHxS1mVj7WPNThM9H0U9e8/MMW2wBschjdJMyZqpf+Du8y0L63LTc6waHYB5log1wJhOJAMf
	6yeM84L0tCSoQcHVx6gDSrLy8J5tTcey8bbc7QpkrKdPCsR/89vo6MDweTbEwegEpWyI/hcKli44N
	u0fDAIiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULdX-0000000GCqe-0xt6;
	Thu, 18 Jul 2024 07:33:11 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sULd6-0000000GCj7-0yf6;
	Thu, 18 Jul 2024 07:32:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721287960;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YINdvKD33YyTGfXnNe9yIHuIAJ1Y5P1g98Nd0MhEVhE=;
	b=vKdU09kP8ThxaRAAaUhbYImsfIb0nVxvGBahcIUzlA+IHpR3PJtZkglH71/3xCFf9kY3Fe
	2c6oX6bCCVHqMFJqKEbF8k6yeuTt1FLUzYX/cOad1/FNt20v5nS843N467FbJjKbhe+Kxz
	V4VBFn9rbhPk4KhuVZvqkppPGOafjeJ2DRR2M47aOQILjAngtj44v/c76kvEGUg0C+M+MS
	lmEKAGCCd4YNAHLkRsKK2reD2HETFHK8nikimMYPMNxTUaLDZqavuDaJdQCITelFNVyjUB
	WJVp/2UI3jHGXpP2OzegQpF47KIzwtpA7wHIyLfhAhqjYX00lUn1zLJ5fy9CcQ==
Date: Thu, 18 Jul 2024 09:32:40 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: fix the pcie refclock
 oscillator on Rock 5 ITX
In-Reply-To: <CANAwSgS_ZaEkt5-kKud9OwdN4za+xvW5SoBr34EmOdU2OQJWnw@mail.gmail.com>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-4-heiko@sntech.de>
 <CANAwSgS_ZaEkt5-kKud9OwdN4za+xvW5SoBr34EmOdU2OQJWnw@mail.gmail.com>
Message-ID: <8a16eb6a29a39719ba4e4c43bae3b6ec@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_003244_899001_AAB404C8 
X-CRM114-Status: GOOD (  18.92  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Anand,

On 2024-07-18 09:26, Anand Moon wrote:
> On Mon, 15 Jul 2024 at 16:35, Heiko Stuebner <heiko@sntech.de> wrote:
>> 
>> The Rock 5 ITX uses two PCIe controllers to drive both a M.2 slot and 
>> its
>> SATA controller with 2 lanes each. The supply for the refclk 
>> oscillator is
>> the same that supplies the M.2 slot, but the SATA controller port is
>> supplied by a different rail.
>> 
>> This leads to the effect that if the PCIe30x4 controller for the M.2
>> probes first, everything works normally. But if the PCIe30x2 
>> controller
>> that is connected to the SATA controller probes first, it will hang on
>> the first DBI read as nothing will have enabled the refclock before.
> 
> I just checked the rk3588-rock-5-itx.dts in the linux-next.
> You have not enabled sata0 and sata2, which might be the problem
> for the SATA controller not getting initialized.

Rock 5 ITX doesn't use RK5588's built-in SATA interfaces, so that's 
fine.
Please have a look at the board schematic, it uses a separate PCI 
Express
SATA controller for its four SATA ports.

>> Fix this by describing the clock generator with its supplies so that
>> both controllers can reference it as needed.
>> 
>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>> ---
>>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   | 38 
>> ++++++++++++++++++-
>>  1 file changed, 36 insertions(+), 2 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> index d0b922b8d67e8..37bc53f2796fc 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> @@ -72,6 +72,15 @@ hdd-led2 {
>>                 };
>>         };
>> 
>> +       /* Unnamed voltage oscillator: 100MHz,3.3V,3225 */
>> +       pcie30_port0_refclk: pcie30_port1_refclk: 
>> pcie-voltage-oscillator {
>> +               compatible = "voltage-oscillator";
>> +               #clock-cells = <0>;
>> +               clock-frequency = <100000000>;
>> +               clock-output-names = "pcie30_refclk";
>> +               vdd-supply = <&vcc3v3_pi6c_05>;
>> +       };
>> +
>>         fan0: pwm-fan {
>>                 compatible = "pwm-fan";
>>                 #cooling-cells = <2>;
>> @@ -146,13 +155,14 @@ vcc3v3_lan: vcc3v3_lan_phy2: 
>> regulator-vcc3v3-lan {
>>                 vin-supply = <&vcc_3v3_s3>;
>>         };
>> 
>> -       vcc3v3_mkey: regulator-vcc3v3-mkey {
>> +       /* The PCIE30x4_PWREN_H controls two regulators */
>> +       vcc3v3_mkey: vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
>>                 compatible = "regulator-fixed";
>>                 enable-active-high;
>>                 gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
>>                 pinctrl-names = "default";
>>                 pinctrl-0 = <&pcie30x4_pwren_h>;
>> -               regulator-name = "vcc3v3_mkey";
>> +               regulator-name = "vcc3v3_pi6c_05";
>>                 regulator-min-microvolt = <3300000>;
>>                 regulator-max-microvolt = <3300000>;
>>                 startup-delay-us = <5000>;
>> @@ -513,6 +523,18 @@ &pcie30phy {
>> 
>>  /* ASMedia ASM1164 Sata controller */
>>  &pcie3x2 {
>> +       /*
>> +        * The board has a "pcie_refclk" oscillator that needs 
>> enabling,
>> +        * so add it to the list of clocks.
>> +        */
>> +       clocks = <&cru ACLK_PCIE_2L_MSTR>, <&cru ACLK_PCIE_2L_SLV>,
>> +                <&cru ACLK_PCIE_2L_DBI>, <&cru PCLK_PCIE_2L>,
>> +                <&cru CLK_PCIE_AUX1>, <&cru CLK_PCIE2L_PIPE>,
>> +                <&pcie30_port1_refclk>;
>> +       clock-names = "aclk_mst", "aclk_slv",
>> +                     "aclk_dbi", "pclk",
>> +                     "aux", "pipe",
>> +                     "ref";
>>         pinctrl-names = "default";
>>         pinctrl-0 = <&pcie30x2_perstn_m1_l>;
>>         reset-gpios = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
>> @@ -522,6 +544,18 @@ &pcie3x2 {
>> 
>>  /* M.2 M.key */
>>  &pcie3x4 {
>> +       /*
>> +        * The board has a "pcie_refclk" oscillator that needs 
>> enabling,
>> +        * so add it to the list of clocks.
>> +        */
>> +       clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
>> +                <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
>> +                <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
>> +                <&pcie30_port0_refclk>;
>> +       clock-names = "aclk_mst", "aclk_slv",
>> +                     "aclk_dbi", "pclk",
>> +                     "aux", "pipe",
>> +                     "ref";
>>         num-lanes = <2>;
>>         pinctrl-names = "default";
>>         pinctrl-0 = <&pcie30x4_perstn_m1_l>;
>> --
>> 2.39.2

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
