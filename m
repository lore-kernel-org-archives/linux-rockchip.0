Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A249C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 10:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Mjh0bfGeMQ75F1+nSkQkaQiEpOjzzQ2BP6dEDcN300=; b=IzrzGN7Gzi6l30nY/i4et4HLgm
	Z0F8JH2PXZsBt5SWcx4yj0JZjT9dhpU9guMvUwfLsYyx149yHbX6XDowVYpGPjCW8iLczr3QOjdnr
	i6DBIwbaXWIbhgGAjzszWCyU1tfPAyRo0gVdEw7l9meoQLkhIU8d+GcIbARSP0utt1JJEsV9hcfEa
	8Armyz6sfwZCbzQggivWQtpxbFac28f0x7z6AE43chE0avU8dtq2g+UaYqgsd6k6s465XvY5dK8h7
	v7rmXlLKMqkrn7zuE3QsfXVdpcRoW8IazThJyjkQpqTENzb+HBNTE0Vj0SUsgTZ4EOdVZWtkuKbJy
	+wlFiMWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9PXw-00EYFp-3g; Mon, 17 Jan 2022 10:47:32 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9PXj-00EYDn-Vj; Mon, 17 Jan 2022 10:47:21 +0000
Received: by mail-ed1-x534.google.com with SMTP id t24so63691463edi.8;
 Mon, 17 Jan 2022 02:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kQrPFgdxVgPR6BVQXGQ/0R4Kn0v4ZftEF3a6Zc0bXEg=;
 b=VTl1vqutUhGOzDHpntFj3kNJ16v8xteNMJDLIGBN4SuZflcIMGQMoSGggoRb3tFdjQ
 ZGBScoCkznZzd4jZbF31zq/ShP/WPI5CoJUbNIKli7cbyFDmvaCx8rZqKedtwK/+Ej7q
 WuH5F+I7I7vNMF/mfmYbTxLYf8DvgwHTz1Epo6O1bwVQpBpq+EF8ydKmHyzBVYIDyMs8
 hYVnM7xdkst2GSo8BP9VCJ5XgWe9Un6juUTtiT+LSujXfGS27pOgB6nGBKp7jPsuAV0a
 JbPqIbe8VC+dPv43ZG6Hz5sJcYu0uRV1nkOFQTIFLl5iTeTxxTotjKh8dOLia1ot6NGv
 n68A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kQrPFgdxVgPR6BVQXGQ/0R4Kn0v4ZftEF3a6Zc0bXEg=;
 b=VIdImQM1CCH2EQI/n9jdo7bZhndkHNdZnzqr5FW5+3uxDzbbHi+0QTSWPPz6dgGRE4
 dz8FaX0oQk9q75iHnFhzVtznssdvaH3Q8CcKhHQpL1UkrifGxfok6l+7n+y4wLqR6wrD
 wLa3L9jDuMxrsLfO0wfjBSCex9Ok3mNxSTKSSF6hYIS8gu5obd1vlkdwebDROmC+X0Ty
 N+lUeOMUP4K18N7Hu2YfviV8IOMRZi11X4jizdANNfFJ9gltGD5nKxHgmbLPpqsdLrF9
 a6f54rY3ra3isDKAgGv3GOE68/IkVBBTdS7GymTkJscnsgYHPjuosqcNQoismztYIMNZ
 FhVA==
X-Gm-Message-State: AOAM530ohxQ/HmT/hJIweKkWn+F2fpcUNywLaMEkLkYJ28lHxo7JwBXq
 nnobXIsNrqFZUMAHZSqvhL0=
X-Google-Smtp-Source: ABdhPJy1fBH6oJcwoFfp0VB+M+Dxx9jIZNtaspcHFK8jiVeml0mwOxxjdGTIwB7HB8vIiF1gWaJWEg==
X-Received: by 2002:a05:6402:254d:: with SMTP id
 l13mr2009027edb.190.1642416437484; 
 Mon, 17 Jan 2022 02:47:17 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 l25sm2944774edc.20.2022.01.17.02.47.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 02:47:17 -0800 (PST)
Subject: Re: [PATCH v1 1/3] dts64: rk3568: drop pclk_xpcs from gmac0
To: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220116124911.65203-1-linux@fw-web.de>
 <20220116124911.65203-2-linux@fw-web.de>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <8285bea7-559c-5834-78c7-5a062b7d8269@gmail.com>
Date: Mon, 17 Jan 2022 11:47:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220116124911.65203-2-linux@fw-web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_024720_062468_E99EE952 
X-CRM114-Status: GOOD (  20.89  )
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

Hi Frank,

Despite that the DT is hosted in the kernel tree
DT and mainline kernel driver support are 2 separate things.
PCLK_XPCS might be in use elsewhere.

Given the link below pclk_xpcs is only needed for rk3568.
Maybe gmac1 should have a PCLK_XPCS too, because one can select between
them.

ethernet: stmicro: stmmac: Add SGMII/QSGMII support for RK3568
https://github.com/rockchip-linux/kernel/commit/1fc7cbfe9e227c700c692f1de3137914b3ea6ca6

The original dtsi did have PCLK_XPCS in both nodes.
https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L2121
https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L1492

Maybe fix the document or leave it as it is for now as long the driver
isn't updated and someone has tested it.
That's up to the DT maintainer.

Johan

===

XPCS is also part of PD_PIPE.
See Rockchip RK3568 TRM Part1 V1.0-20210111.pdf page 475.
Please advise if the power-domain@RK3568_PD_PIPE does need a PCLK_XPCS
fix or is PCLK_PIPE enough in combination with a PHY driver?

PD_PIPE:

BIU_PIPE
USB3OTG
PCIE20
PCIE30
SATA
XPCS


	power-domain@RK3568_PD_PIPE {
		reg = <RK3568_PD_PIPE>;
		clocks = <&cru PCLK_PIPE>;
		pm_qos = <&qos_pcie2x1>,
			 <&qos_pcie3x1>,
			 <&qos_pcie3x2>,
			 <&qos_sata0>,
			 <&qos_sata1>,
			 <&qos_sata2>,
			 <&qos_usb3_0>,
			 <&qos_usb3_1>;
		#power-domain-cells = <0>;
	};



On 1/16/22 1:49 PM, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> pclk_xpcs is not supported and breaks dtbs_check, so remove it
> 
> following warnings occour, and many more
> 
> rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clocks:
>     [[15, 386], [15, 389], [15, 389], [15, 184], [15, 180], [15, 181],
>     [15, 389], [15, 185], [15, 172]] is too long
> 	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml
> rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clock-names:
>     ['stmmaceth', 'mac_clk_rx', 'mac_clk_tx', 'clk_mac_refout', 'aclk_mac',
>     'pclk_mac', 'clk_mac_speed', 'ptp_ref', 'pclk_xpcs'] is too long
> 	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml
> 
> after removing the clock the other warnings are also gone.
> 
> Co-developed-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 2fd313a295f8..d91df1cde736 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -32,13 +32,11 @@ gmac0: ethernet@fe2a0000 {
>  		clocks = <&cru SCLK_GMAC0>, <&cru SCLK_GMAC0_RX_TX>,
>  			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_MAC0_REFOUT>,
>  			 <&cru ACLK_GMAC0>, <&cru PCLK_GMAC0>,
> -			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>,
> -			 <&cru PCLK_XPCS>;
> +			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>;
>  		clock-names = "stmmaceth", "mac_clk_rx",
>  			      "mac_clk_tx", "clk_mac_refout",
>  			      "aclk_mac", "pclk_mac",
> -			      "clk_mac_speed", "ptp_ref",
> -			      "pclk_xpcs";
> +			      "clk_mac_speed", "ptp_ref";
>  		resets = <&cru SRST_A_GMAC0>;
>  		reset-names = "stmmaceth";
>  		rockchip,grf = <&grf>;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
