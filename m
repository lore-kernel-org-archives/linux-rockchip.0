Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 160CBC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 17:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvjfgyRVy9yJ0Y8J+BPdBN8MS+37O5E6B8HFoorsdOY=; b=wBHjuJ9dKDanmM
	t+Ue0YXufIaBXMd2O0jgCkvoFh0R05J5iuxpChoB84dYlX9zYlH1jHllzKoAo2F8ExaWf8NDDxbj9
	MHW5YiSaizeHAEBtUSTtD6xhRLwI+ZIt9Q8hv/wGoTIsiMGe6Njwog2lA5aU6Km6K43Nl0GQqgVjc
	5pikDwJcx3dKo0PJe54pkQ6sjEfZ/QtWr9c7dJlCAOkRgpqVD8FM/H4Y237UzZxwoauOPPaH8CLJ4
	3au2t6fdi/I8WMdDZr+/940+mKbLjEaoUmadPoUOioaW2gQMvD4he77sOcn8VwiPnMdR/dWrh8KLh
	W0xPaW03XW13FCFdooCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7gTj-001NwW-3f; Tue, 20 Dec 2022 17:32:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7gTT-001Nja-Dn; Tue, 20 Dec 2022 17:32:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p7gTI-00085n-EU; Tue, 20 Dec 2022 18:32:08 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Yuteng Zhong <zonyitoo@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add RK3566 LubanCat 1
Date: Tue, 20 Dec 2022 18:32:06 +0100
Message-ID: <3325915.e9J7NaK4W3@diego>
In-Reply-To: <a113d20c-dc6c-2e44-009f-d4b17beb8820@linaro.org>
References: <Y6GMnq3AC7Kbnag8@VM-66-53-centos> <a113d20c-dc6c-2e44-009f-d4b17beb8820@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_093219_525607_5E5E0427 
X-CRM114-Status: GOOD (  14.81  )
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

Am Dienstag, 20. Dezember 2022, 17:14:51 CET schrieb Krzysztof Kozlowski:
> On 20/12/2022 11:21, Yuteng Zhong wrote:
> > LubanCat 1 is a Rockchip RK3566 SBC based
> > is developed by EmbedFire Electronics Co., Ltd.
> > Mini Linux Card Type Cheap Computer Development Board
> 
> Please wrap commit message according to Linux coding style / submission
> process:
> https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/process/submitting-patches.rst#L586
> 
> > +	rk809: pmic@20 {
> > +		compatible = "rockchip,rk809";
> > +		reg = <0x20>;
> > +		interrupt-parent = <&gpio0>;
> > +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> > +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> > +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> > +		#clock-cells = <1>;
> > +		clock-names = "mclk";
> > +		clocks = <&cru I2S1_MCLKOUT_TX>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pmic_int>;
> > +		rockchip,system-power-controller;
> > +		#sound-dai-cells = <0>;
> > +		vcc1-supply = <&vcc3v3_sys>;
> > +		vcc2-supply = <&vcc3v3_sys>;
> > +		vcc3-supply = <&vcc3v3_sys>;
> > +		vcc4-supply = <&vcc3v3_sys>;
> > +		vcc5-supply = <&vcc3v3_sys>;
> > +		vcc6-supply = <&vcc3v3_sys>;
> > +		vcc7-supply = <&vcc3v3_sys>;
> > +		vcc8-supply = <&vcc3v3_sys>;
> > +		vcc9-supply = <&vcc3v3_sys>;
> > +		wakeup-source;
> > +
> > +		regulators {
> > +			vdd_logic: DCDC_REG1 {
> 
> No underscores in node names. Anything requires it?

looks like the answer is "it depends" :-)

When the regulator-framework searches for the node to get the init-data from
it uses the actual node-name or the regulator-compatible property [0]
to match against.

And going via regulator-compatible was the "old" way, already deprecated
before the yaml-conversion [1] and not even included

So matching against the node-name is the correct way to go and it's actually
part of the rk8xx-binding as well [2]


Hope that helps,
Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/regulator/of_regulator.c#n477
[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/Documentation/devicetree/bindings/regulator/regulator.txt?id=1914a996436b09186489da73b807e1df71259f67
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml#n84



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
