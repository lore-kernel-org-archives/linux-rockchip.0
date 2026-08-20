Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 531C5C5DF87
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 11:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Z6wLPfWV1dQfsgsyPTJh06akpzedvYET9VTQoP8Brg=; b=01mcN9Rwa2igss
	ToW0XI/dC7bfC1yRpBqaDR2nHMtVz5KDsdob8hWJRKMvdaeezgza6TjIunjtwRlYAVgKy3Xh7ajF4
	ayvhytT7l7i+t3OHMd+hnjoMqqAnXrI2E1j2zKrEUJgz9klaWJF9VuaNOcyQZeUkyZtCk35yEM8HD
	c7QVtluFOq8pLN6581+OVtSRiE55C9RZQRub3gha6V13LTWjipjm4WOViO8lg9GAx0jPyOequXf4e
	JCTQ6ZQpQZ+B7t1012pjshSI0dLdWQ8/eLl4rKGKPZoGb11IVGkr7x6u+s4PDRL/PBXKkLYo4Vfz5
	AECpPy8gSPFYscbIl4tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1FN-0000000BTum-3KlM;
	Thu, 20 Aug 2026 11:47:49 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1FK-0000000BTss-48JM
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 11:47:48 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-c1c50c1e29bso338465666b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 04:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787226465; cv=none;
        d=google.com; s=arc-20260327;
        b=YQzNSE7T3QUsXhWORqwnw46sjkPHzUXREPNV2tdaAtT5wW+34SgzrYggGRj9sz0IEu
         JKyr0AN6/TBRzqnKrIMUc4DpLUt8kRYbIRZ+ffYDTO3JFoPSbNhwsTRVnXQSyt9B5azq
         U1gJegTdd/5vWksRLJsWQm85XvFxIyPp7hRxvsFL7jOvMjpOGEEAbuti7EsZTEX2zXU4
         vONwNfTuHgautagTTcLB9JdXD+viT6LtQ7pBb+HnNUxf96QDQhBfHydSK+sTBEp0LOAb
         1U9Dj0q69b8n9FjBa7+9NczDEfkMyEyMivNUyJKOn6F7MkCBl1rDrWvfbTVFHqsiu0ho
         OaYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=paOojrCaYfkKAM5OrAXgPdy+BI/CSmLloSHESiLn3MQ=;
        fh=LA/XrBAHCAWcaQRHP/uehHYiUJ9qdItpM0fxvF5yEtw=;
        b=hfV4IBAZi1JfJsrA0ATnjuf6J4Sk4LAqc8IK8eZ2/R2c7cYsFJI2C+KIc/Mzpd6Mf3
         TynHq3XCPss6ZYV12P/XGH4+T3z4A5Qd7HQhzKrESJ4SSPF+G/vP65C7wM30ppe5K2e1
         DPKXfo8Qiz66Zdak5hRxbrFREgDRY6JfzHYzh90MCn91Xg7+/WACBy6j2hOlx05wckvC
         YLGtC59j3p5pHQhDyWoLiiDg5ol/jGBdF4RwVc+EDxT15HnChks/g9fh35Lterz2OyCa
         Bb9X0yc2LxoEQ1JreFCxU9mL65A7fdsYI66MnxCIKa8v8Wx6zKvEbrStCLxqZvzQ7eVL
         1MSA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1787226465; x=1787831265; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=paOojrCaYfkKAM5OrAXgPdy+BI/CSmLloSHESiLn3MQ=;
        b=gtMBiPhtsGmEaS9zEU/p2r9s5SBGlUKGH+c01n6FSQYVPgPiXhH8HMbpi+vx1LvoKr
         Yq6YGA/5V0nthXCXaeStjZsOeGZOo6p3JL1IYxVjEK8UPrlFwkGfRJmIuUdkM2jp2kMp
         A801QeAEhJ9R7sEoY/fM1dqKmCtNayUmRirZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787226465; x=1787831265;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=paOojrCaYfkKAM5OrAXgPdy+BI/CSmLloSHESiLn3MQ=;
        b=CcslWG+Hk5lZDJ1SpGyVO5ip5Zxp4w9S8Eoa72Lww1fgl13d9B/SirWg7ea5fR1waj
         tEuefsZsWSbl7bQKMHZ6c7e5/6zrVRbUs7pTYCw33oxsB/mtxkx2NLJoZ2mcio2Uemft
         nAmVfS5iLCsN3gz/BcFOtgy5o4WmEFFAFuiLO5tltEpo7qEo9hgvI/A4ei8UWFOjq7hT
         7FpJIZLy8l0c2cXyqXZmsF6PvBRYl5yCBY4CaQ7PhOGDegsfJDt5HCIXsNdaV6/V/6TD
         KQZgSXbEUMcqxH7ve2lSZh8RgbHBEtljp4oY8vx8Tt7sLLmJiyw58RSg59bjRtHCUtFX
         guhw==
X-Gm-Message-State: AOJu0Yx8PtQc/QxHyq3YU+1YuGOKswpzlG8iW/r9ADc0sMyugokpsc8V
	LJGlzhJ72Q3L+TSz6Rpjv2XSoMC9n577PMEuvgfJ0n4h6RYZgMnvoAxLC5/GcEiLAuJx9439lT7
	qIxhB8quIn3SJI2s1UgBOTNTqhFeAn1ufY0stbKt+
X-Gm-Gg: AR+sD10lZvEa/II8+9lTbk+pf3mzejewOgrUdW0NbXcSYnKkycC03qn62jsvClLeDEg
	0prRAssJ5sLync8Q7NodAc3Ljsjwf0BjOMANEKou15vShMHyUY2NKTzRnNcoSIxdi68bCrMGIVL
	ltfmwSRkwr1DQvAoEmIt+w8bZPNZoRWyrgwBrg6ulZH15O8KEdbPkFT4IgQ3ALZ4WmJ3AhpSzRv
	pAQd/1ul/bvCXnTbaC66ezz4zQ8wmEG4+diNbhLhStf8MOuJ1zGWY6MLOO7PXJHZ6scMWN8MUZ0
	TlvZqYISUKPDfYAeNhfNiI8VwSf48Tf8MqUw1Juk43k=
X-Received: by 2002:a17:907:84b:b0:c20:1c9d:8d4b with SMTP id
 a640c23a62f3a-c23f929e232mr710101966b.2.1787226465039; Thu, 20 Aug 2026
 04:47:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260810121121.210040-1-vlad@zlab.su> <20260810121121.210040-7-vlad@zlab.su>
In-Reply-To: <20260810121121.210040-7-vlad@zlab.su>
From: Simon Glass <sjg@chromium.org>
Date: Thu, 20 Aug 2026 05:47:33 -0600
X-Gm-Features: AcwNN1Wh5n38wXHkJkuB8H7_benVkiW5QlI5gxabpims6DcR7Y_DZnlEoYHYlzw
Message-ID: <CAFLszTiuH7KcvCKcpE09tTavFEWGNMj+C1Og0T=k5MvEZdB-OQ@mail.gmail.com>
Subject: Re: [PATCH 06/25] ARM: dts: rockchip: Add Ethernet GMAC node for RV1106
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_044747_050595_D2D44D74 
X-CRM114-Status: GOOD (  14.92  )
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

Hi Vladislav,

On Mon, 10 Aug 2026 at 06:15, Vladislav Leonov <vlad@zlab.su> wrote:
>
> Rockchip RV1106 has GMAC 10/100 ethernet controller.
>
> Signed-off-by: Vladislav Leonov <vlad@zlab.su>
> ---
>
>  arch/arm/boot/dts/rockchip/rv1106.dtsi | 62 ++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rockchip/rv1106.dtsi b/arch/arm/boot/dts/rockchip/rv1106.dtsi
> index fa5d0d7f4dcb..71dd3dcc386c 100644
> --- a/arch/arm/boot/dts/rockchip/rv1106.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rv1106.dtsi
> @@ -19,6 +19,7 @@ / {
>         interrupt-parent = <&gic>;
>
>         aliases {
> +               ethernet0 = &gmac;
>                 gpio0 = &gpio0;
>                 gpio1 = &gpio1;
>                 gpio2 = &gpio2;
> @@ -282,6 +283,67 @@ system_sram: sram@ff6c0000 {
>                         ranges = <0 0xff6c0000 0x40000>;
>                 };
>
> +               gmac: ethernet@ffa80000 {
> +                       compatible = "rockchip,rv1106-gmac", "snps,dwmac-4.20a";
> +                       reg = <0xffa80000 0x10000>;
> +                       interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
> +                                       <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "macirq", "eth_wake_irq";
> +                       rockchip,grf = <&grf>;
> +                       clocks = <&cru CLK_GMAC0_TX_50M_O>, <&cru CLK_GMAC0_REF_50M>,
> +                               <&cru ACLK_MAC>, <&cru PCLK_MAC>;

Should this have a minItems exception like RK3506 and 3528? As it is
it fails validation for me as it expects 5 clocks.

> +                       clock-names = "stmmaceth", "clk_mac_ref",
> +                                       "aclk_mac", "pclk_mac";
> +                       resets = <&cru SRST_A_MAC>;
> +                       reset-names = "stmmaceth";
> +
> +                       snps,mixed-burst;
> +                       snps,tso;
> +
> +                       snps,axi-config = <&stmmac_axi_setup>;
> +                       snps,mtl-rx-config = <&mtl_rx_setup>;
> +                       snps,mtl-tx-config = <&mtl_tx_setup>;
> +
> +                       phy-mode = "rmii";
> +                       clock_in_out = "input";
> +                       phy-handle = <&rmii_phy>;
> +
> +                       status = "disabled";
> +
> +                       mdio: mdio {
> +                               compatible = "snps,dwmac-mdio";
> +                               #address-cells = <0x1>;
> +                               #size-cells = <0x0>;
> +                               rmii_phy: ethernet-phy@2 {
> +                                       compatible = "ethernet-phy-ieee802.3-c22";
> +                                       reg = <2>;
> +                                       clocks = <&cru CLK_MACPHY>;
> +                                       resets = <&cru SRST_MACPHY>;
> +                                       phy-is-integrated;
> +                               };
> +                       };
> +
> +                       stmmac_axi_setup: stmmac-axi-config {
> +                               snps,wr_osr_lmt = <4>;
> +                               snps,rd_osr_lmt = <8>;
> +                               snps,blen = <0 0 0 0 16 8 4>;
> +                       };
> +
> +                       mtl_rx_setup: rx-queues-config {
> +                               snps,rx-queues-to-use = <1>;
> +                               queue0 {
> +                                       status = "okay";
> +                               };
> +                       };
> +
> +                       mtl_tx_setup: tx-queues-config {
> +                               snps,tx-queues-to-use = <1>;
> +                               queue0 {
> +                                       status = "okay";
> +                               };
> +                       };
> +               };
> +
>                 emmc: mmc@ffa90000 {
>                         compatible = "rockchip,rv1106-dw-mshc", "rockchip,rk3288-dw-mshc";
>                         reg = <0xffa90000 0x4000>;
> --
> 2.47.3
>

Regards,
Simon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
