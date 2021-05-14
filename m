Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA50DC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:10:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 553926141F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:10:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 553926141F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z5wMIbj0/HVEiw3Y3xjFfxvb829k4nHI9+84u+sorh8=; b=raoFD0p36dEM5ZYt0RAIivft7
	924G1FwTD2uEA0dp2YjqZkQD+zb1j9sATIw3U+DT6WAMzN27um89urT2JzjOozDXudSKrjzsR+TEz
	OqdHaihX16aRtK9KIPnYuYUhjo3FEleznJraot62Yb+FhVOflJM8sx8XrfrNejPe/4fQ2gHH/Hf8+
	PdvEwD7pulJxdv2HGHm2blyC4nPtfTu1MSTJj/w6XySxIpXec9Gq3fZbs4Q/bypmEnG8+PwRz8VNb
	MzPTCTa8ju3mUFdczOc/3QT2BFTdeE0Sz7gBRhaBJZHDiXb2absoZPb2zYXrcxYycXxKv+I5SYWtx
	30s1e5gBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWdt-007zeI-A3; Fri, 14 May 2021 12:10:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWde-007zcT-5R; Fri, 14 May 2021 12:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=Go5OSz4/H+uPDLDGGgQ0MKW8Mm4VQjGQmcRsSfCNjhk=; b=up8r7ap4JeTBDIYICDp98BuXte
 kjfm0gChxUGE7NPWuGhIjuNp7rs0WIOwoS2qrmi1fpHFTSFlAgWoyj2sup4da22rZ7MEgEhp28R+R
 KdpTEMy5sy0/Ie/CkuQiTkdraUFNpwk0zz0wYm9PNlWHlm9BZqGFnEb3UpDfpbHRShAU6MOEmrJmg
 U7NyYI/dgghYJ3hKUMyBjo3ytT90+IxHgzDp8aeYgBbPYm2xQ8ce6a+91Bu/okt/oYp1lkJ8AqEzE
 vz+7SNaoKQQ56zue4mG++qepKGVlNATGH6ax5uF4XJ11xdhfjhHkzGGVNwsvxZwkx84ne+kr4qcLg
 fTIP48kg==;
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWdb-00Bxa0-FY; Fri, 14 May 2021 12:09:52 +0000
Received: by mail-ej1-x629.google.com with SMTP id n2so44329711ejy.7;
 Fri, 14 May 2021 05:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Go5OSz4/H+uPDLDGGgQ0MKW8Mm4VQjGQmcRsSfCNjhk=;
 b=nD4+69L0GyZ2kV1uA2c1GTo/HMZ/EwsYCcl5GHssbzJpZ+D9vMPWQCPTEaQD39HZas
 SMqHD02OWB4MeDbgtjJiRznlEVZ4oAL7xBeX1jKBOqN0JFLQLwqLpsdH2H4iWAyK3t5l
 ekdbOWF2G6Js328yV3c4NJzRJWujby5zvV6XP90+7maeQ5yF7u8NV7QaAG+NrSKY/0ZN
 ohGCc8yaGYndmDKouASKQlLz4/OLbKU9mdJeC93rcApDsP7fY+/6tUrpYTa+Q1/3v/Xp
 4e+LRZ/sK2MeoFOvS683JBwCUp9a030AItFCwn4rI541vd396RfYD+a/3zypC6Xadphn
 Ho5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Go5OSz4/H+uPDLDGGgQ0MKW8Mm4VQjGQmcRsSfCNjhk=;
 b=ZTboxuyjxG8OV6TmEOe0DZsM0r4Vbk4DiVh29m8621NU9kpPtFYOp/vFmqHMtugHrh
 Ba/VsCj7BoaBvmNOBJzWqbPJvOL15P0AEysUAnywxA/fPTd+M8PM7KSkNmHlDzTrCThR
 hoXozCqE1r3Yf1HI1MDitBLZyiNGRBbUBJKxR/fqCdSEzi74c2mbKRc6/e2hoch+d73l
 VD10NEtV9R2eOcDGJYMtd9kKiKOLyyxqZ4VEu53usbgCNI7dKJhV5v9g/g8Ll3RWSX7r
 l0sPw3+mqGvH/iLMY6pDApAkiUH7OfWwOHz0020Lf3a/kteEBmoYF6+TKCimsRIbtrwq
 sgSg==
X-Gm-Message-State: AOAM531nW4T8Z2VGRzN4WFlIz8tabel+4CiTYkKvl1r4qM6BHU3XkWDm
 vdUyenKtTKuR1KeYNXZF2wZ3EJAKqJI=
X-Google-Smtp-Source: ABdhPJyAnROvySSX2j8qEuTumlWsloarcCjIII71QSFBa3JDkrFykrLpk6GMnrwn96PJCPZnt2nMIA==
X-Received: by 2002:a17:906:60d6:: with SMTP id
 f22mr48909457ejk.177.1620994188724; 
 Fri, 14 May 2021 05:09:48 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 i5sm749805ejv.120.2021.05.14.05.09.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 05:09:48 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add USB support to RK3308 dts
To: Tobias Schramm <t.schramm@manjaro.org>, linux-usb@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210514102734.2091238-1-t.schramm@manjaro.org>
 <20210514102734.2091238-5-t.schramm@manjaro.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <01388394-603e-6a43-2044-ae1e93eb0ff3@gmail.com>
Date: Fri, 14 May 2021 14:09:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210514102734.2091238-5-t.schramm@manjaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_050951_555866_E7D109C8 
X-CRM114-Status: GOOD (  21.13  )
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

Hi Tobias,

Just sent a patch for grf.yaml and rockchip-usb-phy.yaml conversion myself.

Added { .compatible = "rockchip,rk3308-usb2phy", .data =
&rk3308_phy_cfgs }, to phy-rockchip-inno-usb2.c

Added is "rockchip,rk3308-usb-phy" to rockchip-usb-phy.txt

compatible = "rockchip,rk3308-usb2phy"; is used in this patch.

Maybe try phy-rockchip-inno-usb2.yaml?

"rockchip,rk3308-usb2phy-grf", "syscon", "simple-mfd" document missing.

Could someone recheck the reg memory size?
Is this still correct then?

===
compatible = "rockchip,rk3308-grf", "syscon", "simple-mfd";
reg = <0x0 0xff000000 0x0 0x10000>;

Do we still need "0x0 0x10000" here?
===
compatible = "rockchip,rk3308-usb2phy-grf", "syscon", "simple-mfd";
reg = <0x0 0xff008000 0x0 0x4000>;
===
compatible = "rockchip,rk3308-detect-grf", "syscon", "simple-mfd";
reg = <0x0 0xff00b000 0x0 0x1000>;
===
compatible = "rockchip,rk3308-core-grf", "syscon", "simple-mfd";
reg = <0x0 0xff00c000 0x0 0x1000>;
===

Johan

On 5/14/21 12:27 PM, Tobias Schramm wrote:
> The Rockchip RK3308 features an integrated USB 2.0 phy, an USB OTG
> controller and OHCI/EHCI interfaces.
> This patch adds all of those to the RK3308 dtsi and thereby enables USB
> support on the RK3308.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 75 ++++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 0c5fa9801e6f..80fd802d6c15 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -177,6 +177,43 @@ reboot-mode {
>  		};
>  	};
>  
> +	usb2phy_grf: syscon@ff008000 {
> +		compatible = "rockchip,rk3308-usb2phy-grf", "syscon",
> +			     "simple-mfd";
> +		reg = <0x0 0xff008000 0x0 0x4000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		u2phy: usb2-phy@100 {

> +			compatible = "rockchip,rk3308-usb2phy";
> +			reg = <0x100 0x10>;
> +			clocks = <&cru SCLK_USBPHY_REF>;
> +			clock-names = "phyclk";
> +			clock-output-names = "usb480m_phy";
> +			#clock-cells = <0>;
> +			assigned-clocks = <&cru USB480M>;
> +			assigned-clock-parents = <&u2phy>;
> +			status = "disabled";
> +

Looks like

> +			u2phy_otg: otg-port {
> +				#phy-cells = <0>;
> +				interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "otg-bvalid", "otg-id",
> +						  "linestate";
> +				status = "disabled";
> +			};
> +
> +			u2phy_host: host-port {
> +				#phy-cells = <0>;
> +				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
> +				interrupt-names = "linestate";
> +				status = "disabled";
> +			};
> +		};
> +	};
> +
>  	detect_grf: syscon@ff00b000 {
>  		compatible = "rockchip,rk3308-detect-grf", "syscon", "simple-mfd";
>  		reg = <0x0 0xff00b000 0x0 0x1000>;
> @@ -579,6 +616,44 @@ spdif_tx: spdif-tx@ff3a0000 {
>  		status = "disabled";
>  	};
>  
> +	usb20_otg: usb@ff400000 {
> +		compatible = "rockchip,rk3308-usb", "rockchip,rk3066-usb",
> +			     "snps,dwc2";
> +		reg = <0x0 0xff400000 0x0 0x40000>;
> +		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_OTG>;
> +		clock-names = "otg";
> +		dr_mode = "otg";
> +		g-np-tx-fifo-size = <16>;
> +		g-rx-fifo-size = <280>;
> +		g-tx-fifo-size = <256 128 128 64 32 16>;
> +		phys = <&u2phy_otg>;
> +		phy-names = "usb2-phy";
> +		status = "disabled";
> +	};
> +
> +	usb_host_ehci: usb@ff440000 {
> +		compatible = "generic-ehci";
> +		reg = <0x0 0xff440000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
> +		clock-names = "usbhost", "arbiter", "utmi";
> +		phys = <&u2phy_host>;
> +		phy-names = "usb";
> +		status = "disabled";
> +	};
> +
> +	usb_host_ohci: usb@ff450000 {
> +		compatible = "generic-ohci";
> +		reg = <0x0 0xff450000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
> +		clock-names = "usbhost", "arbiter", "utmi";
> +		phys = <&u2phy_host>;
> +		phy-names = "usb";
> +		status = "disabled";
> +	};
> +
>  	sdmmc: mmc@ff480000 {
>  		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xff480000 0x0 0x4000>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
