Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B14ABC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Dec 2022 12:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=prMcCaVMg5oQjo5US/GTuZt8OAOeLmiD4N8vEWFT9jM=; b=MmswYeKJRZ1GMG
	qoWmxaQe/gxoFnsq0xGev2NKYco6324Sn8pTTJmEBNMwWExosU7LuOIsvyMdzl1wl4NdFaIzlWyPn
	BjQAHZQpFJahF1i0M1NehHiLBwMwUgXM83V7r2MwPlX+jUYVAQhpMB2P3e0o/ttBMf/ZrGd6jnDcS
	LBbVnvoDfBPhYVshglWRFp140YRGnboxPMMJyOu7Oa6rmXq9dYeklXNRbXF0fFRBb3cTlgewL2Gig
	QGhifyMrIndACqcIM+y4Z29tBJkRd4/tm5gueO2PhWGRzyNeqsfnpnJIYVtUz/ocmMVx6nvqkbY5j
	9lMKaDC4vVIK08A8BXCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA8a3-00Cdds-5c; Tue, 27 Dec 2022 11:57:15 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA8Y5-00CclR-Q8; Tue, 27 Dec 2022 11:55:24 +0000
Received: by mail-ej1-x631.google.com with SMTP id ud5so31460367ejc.4;
        Tue, 27 Dec 2022 03:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X6iaCG2BPEAfstDTQK7Chp1YWfal4CgLw9FeJm6/8OA=;
        b=TMU3/v/jjzfRB7hJwXTKIAOGaY4rkzONqauW9KypWDdQUMtZBx7DJN0u9NQ33uG8KJ
         fGRYDuPiQAx1VEr7H9kGSIYXdS7aq20jmFb1eiywnPwgnUkf2DGdjf9yxqt9ita5kCIG
         cVFZu8tvi//MBIbjSFpZN5f8lRgy4NGeZPAArEKfNhEmzTHN/R0uizAU8wYQcTnFOUdv
         3zWL+ZJ5xsD3WJvF1bJeQK2Xgu3V+TAxgDOo/nOzkG29JkoddtqMq+OEaUjswlVa4M/H
         rSz2Oz+b1FkoucnkXzYXnKEiZGiRD3fh++LBYg+Wj+zIYqBmtvb2wpyRo6imz/212BgM
         xMqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X6iaCG2BPEAfstDTQK7Chp1YWfal4CgLw9FeJm6/8OA=;
        b=Obn5ASesVGZWlsB5HbqohZ9kbG0CwvjeFP8WMMM9kMAk3e0E/U6aOirwTEdpy9diDc
         T+/rx1TxsWgBRbn/O7oTzxGOswv0NwTT0e0d42AhKlKX7ClW/4QGwgGA4k9Ha2+PmvIu
         ayPquXXOAJhBgHCl0bDXstye0/jBG16+DgK6jXDj/THpJFO1olEbHWucmoQ3o70G+CrE
         m71I290hXN/0ehWJmmukU1LK8vEGvg90orHg9h1HrqxhhfL2JHHY/kbMxOI5MpgMYIUB
         xXjy5nEENlj2Ob3e+GS3rQPXC158rWTspwhsjdPJzyH2HArnZTYJDHFrwa7INSqFL+Eu
         WuZw==
X-Gm-Message-State: AFqh2koHh4G1RRy2W2ld0mTA/bdLhbYjn9xXB7wsd0TZhAP1mM4IDqy/
	UdaussAstAOgXt7LINP5UaQ=
X-Google-Smtp-Source: AMrXdXvQX9JN/0hXoM+n1PXaAzQEZouI9zk+r04XcJ4eXmN/Wv9lEHTUnuTGIiOFDeR3lEkwrMjr1w==
X-Received: by 2002:a17:906:6b0f:b0:78d:f454:ba3d with SMTP id q15-20020a1709066b0f00b0078df454ba3dmr15991137ejr.60.1672142110714;
        Tue, 27 Dec 2022 03:55:10 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id p12-20020a17090653cc00b007aece68483csm5890362ejo.193.2022.12.27.03.55.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 03:55:10 -0800 (PST)
Message-ID: <732352f3-fda0-039e-4fef-ceb6f5348086@gmail.com>
Date: Tue, 27 Dec 2022 12:55:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCHv3 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC
 node
To: Anand Moon <anand@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Richard Cochran <richardcochran@gmail.com>
Cc: Jagan Teki <jagan@edgeble.ai>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
References: <20221227104837.27208-1-anand@edgeble.ai>
 <20221227104837.27208-3-anand@edgeble.ai>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20221227104837.27208-3-anand@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_035513_922960_6E471874 
X-CRM114-Status: GOOD (  15.32  )
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



On 12/27/22 11:48, Anand Moon wrote:
> Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
> add GMAC node for RV1126 SoC.
> 
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> v3: drop the gmac_clkin_m0 & gmac_clkin_m1 fix clock node which are not
> used, Add SoB of Jagan Teki.
> V2: drop SoB of Jagan Teki.
> ---
>  arch/arm/boot/dts/rv1126.dtsi | 49 +++++++++++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> index 1cb43147e90b..e20fdd0d333c 100644
> --- a/arch/arm/boot/dts/rv1126.dtsi
> +++ b/arch/arm/boot/dts/rv1126.dtsi
> @@ -90,6 +90,55 @@ xin24m: oscillator {
>  		#clock-cells = <0>;
>  	};
>  

> +	gmac: ethernet@ffc40000 {

Nodes with a reg property are sort on reg address.
Heiko can fix that.. ;)

	timer0: timer@ff660000 {
	gmac: ethernet@ffc40000 {
	emmc: mmc@ffc50000 {

> +		compatible = "rockchip,rv1126-gmac", "snps,dwmac-4.20a";
> +		reg = <0xffc40000 0x4000>;
> +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "macirq", "eth_wake_irq";
> +		rockchip,grf = <&grf>;
> +		clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
> +			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_REF>,
> +			 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>,
> +			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_PTPREF>;
> +		clock-names = "stmmaceth", "mac_clk_rx",
> +			      "mac_clk_tx", "clk_mac_ref",
> +			      "aclk_mac", "pclk_mac",
> +			      "clk_mac_speed", "ptp_ref";
> +		resets = <&cru SRST_GMAC_A>;
> +		reset-names = "stmmaceth";
> +
> +		snps,mixed-burst;
> +		snps,tso;
> +
> +		snps,axi-config = <&stmmac_axi_setup>;
> +		snps,mtl-rx-config = <&mtl_rx_setup>;
> +		snps,mtl-tx-config = <&mtl_tx_setup>;
> +		status = "disabled";
> +
> +		mdio: mdio {
> +			compatible = "snps,dwmac-mdio";
> +			#address-cells = <0x1>;
> +			#size-cells = <0x0>;
> +		};
> +
> +		stmmac_axi_setup: stmmac-axi-config {
> +			snps,wr_osr_lmt = <4>;
> +			snps,rd_osr_lmt = <8>;
> +			snps,blen = <0 0 0 0 16 8 4>;
> +		};
> +
> +		mtl_rx_setup: rx-queues-config {
> +			snps,rx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +
> +		mtl_tx_setup: tx-queues-config {
> +			snps,tx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +	};
> +
>  	grf: syscon@fe000000 {
>  		compatible = "rockchip,rv1126-grf", "syscon", "simple-mfd";
>  		reg = <0xfe000000 0x20000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
