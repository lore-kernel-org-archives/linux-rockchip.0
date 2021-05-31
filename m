Return-Path: <SRS0=B2S1=K2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F252FC47080
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 18:24:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9324760720
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 18:24:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9324760720
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6d5tsUBIuLFz8SXufM/4iRDiemDc4EFrf48SnwOdt/c=; b=o1JzeQ1Z2t2P6I
	mqCeGL6xjxveozrLeejtTDQVBveUavp16af/qB2/J77Ssa4CyRdCvATHzySfurkBgA68Wgro51zp6
	OXVtlIZqFloc43jE08ZZ8vnrWNEqtwq6GqjfuhMJmJN+iU4IIrPPXSVUP4iPmVxqEs8Ruy1oAptFG
	aAIOydJMayjRIVhelU6H7tEHTRWnGLvr2U7B/WUGO874EhZbFGw/jOzIKNGR93BZmdbaCeH5vMjLY
	waWSdv0mYSubiPbuqvjrRP1WpXH7AdSF0nvvxnVUKiuDPzNxgaK6JeB218yz2AL8KOvNOeZ5jeN+J
	r1SYo/vufv18I2mtNarQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnmaH-00D74o-4T; Mon, 31 May 2021 18:24:17 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnmaC-00D73l-BZ; Mon, 31 May 2021 18:24:15 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14VIO6E6080994;
 Mon, 31 May 2021 13:24:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622485446;
 bh=O2iM25f5/x+rzwqtq3QA51hSxyfErqRC1hDB5orHtWk=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=Arnzg5elhcOvLisPL5lrM63jLS3E1rl+Jh1x3rVB64L557HjcBDt+hCWFFFpdEt5b
 yw3RAeeAACNCZy+lOyF9eLOqbrYJ/EElmY+hyXSC7orhhHLYZMSALLFQIJKC/hGVG0
 qCM0nUFBcQQs9TgtxxbHmtpHIOqTxTtE33EdH41U=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14VIO6mq110522
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 31 May 2021 13:24:06 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 31
 May 2021 13:24:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 31 May 2021 13:24:06 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14VIO44b058721;
 Mon, 31 May 2021 13:24:05 -0500
Date: Mon, 31 May 2021 23:54:04 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Chris Morgan <macroalpha82@gmail.com>
CC: <linux-mtd@lists.infradead.org>, <linux-rockchip@lists.infradead.org>,
 <andy.yan@rock-chips.com>, <yifeng.zhao@rock-chips.com>,
 <sugar.zhang@rock-chips.com>, <tudor.ambarus@microchip.com>,
 <michael@walle.cc>, <heiko@sntech.de>, <robh+dt@kernel.org>,
 <vigneshr@ti.com>, <richard@nod.at>, <miquel.raynal@bootlin.com>, Chris
 Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Enable SFC for Odroid Go
 Advance
Message-ID: <20210531182402.7qdhubb2objdspz6@ti.com>
References: <20210528170020.26219-1-macroalpha82@gmail.com>
 <20210528170020.26219-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210528170020.26219-5-macroalpha82@gmail.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_112412_521764_BF76E80F 
X-CRM114-Status: GOOD (  17.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 28/05/21 12:00PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This enables the Rockchip Serial Flash Controller for the Odroid Go
> Advance. Note that while the attached SPI NOR flash and the controller
> both support quad read mode, only 2 of the required 4 pins are present.
> The rx and tx bus width is set to 2 for this reason.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../boot/dts/rockchip/rk3326-odroid-go2.dts      | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> index 49c97f76df77..a72506d7c6ee 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> @@ -484,6 +484,22 @@ &sdmmc {
>  	status = "okay";
>  };
>  
> +&sfc {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sfc_clk &sfc_cs &sfc_bus2>;
> +	status = "okay";
> +
> +	nor_flash: xt25f128b@0 {
> +		reg = <0>;
> +		compatible = "xtx,xt25f128b","jedec,spi-nor";

Is the generic "jedec,spi-nor" compatible not enough? I think these 
flash manufacturer specific compatibles are there because of legacy 
reasons and should be avoided. Try to see if just "jedec,spi-nor" does 
the trick.

> +		spi-rx-bus-width = <2>;
> +		spi-tx-bus-width = <2>;
> +		spi-max-frequency = <108000000>;
> +	};
> +};
> +
>  &tsadc {
>  	status = "okay";
>  };
> -- 
> 2.25.1
> 

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
