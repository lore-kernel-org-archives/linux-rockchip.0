Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C70E0C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 18:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmzIYVFf6oMzMUvcN0Yf5SwaKz+OadqWoIC1y+p5fyc=; b=XZBNGOl5NwaUCK
	AHkFiwqlQizAyZ9nhSC+hwbA+xSdYVDEKzRC2UHjeUMWQlUg3kUuaqYuDdBkrBAzSzYnra8cbzXtM
	pXnvIxJdSZRzR7SM6p/g3ULpxz4aRJCJoJzIr3uuCp1t4nxmjCfu0XunmRZaVz5I0Bvh39qqcBNTh
	8vRDVWH4DxtQy6Dv5gjjDoZ02kfbbH2Qli6YyjC+fuwmzlwIpw/qnxTBrmECUv6gMPDLQ5RHj5ZUC
	8oR2hiYWB8z2Jd38oXWYwMO3QouWwIitiLcT7xXvRsN7VUGsp3ybjRio6kDj3UL0PllBwjLfhusf7
	GmKjZiOC0R8UdrG1LvSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2F0-00FPVj-BK; Tue, 17 May 2022 18:48:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2EZ-00FPJj-1S; Tue, 17 May 2022 18:47:52 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nr2ET-0003v4-Q5; Tue, 17 May 2022 20:47:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: enable the gpu on BPI-R2-Pro
Date: Tue, 17 May 2022 20:47:44 +0200
Message-ID: <5858497.iIbC2pHGDl@phil>
In-Reply-To: <20220415104951.27104-4-linux@fw-web.de>
References: <20220415104951.27104-1-linux@fw-web.de>
 <20220415104951.27104-4-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_114751_139803_CD2B4D6F 
X-CRM114-Status: GOOD (  16.26  )
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

Am Freitag, 15. April 2022, 12:49:51 CEST schrieb Frank Wunderlich:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Enable the GPU core on the Rockchip RK3568 BananaPi R2 Pro
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index cc3591251bab..10f68d054f76 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -196,6 +196,11 @@ &gmac1m1_rgmii_clk
>  	status = "okay";
>  };
>  
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
>  &hdmi {
>  	avdd-0v9-supply = <&vdda0v9_image>;
>  	avdd-1v8-supply = <&vcca1v8_image>;
> @@ -566,6 +571,8 @@ &spi3 {
>  };
>  
>  &tsadc {
> +	rockchip,hw-tshut-mode = <1>;
> +	rockchip,hw-tshut-polarity = <0>;

This is not gpu-specific, so if needed should be a separate patch.

>  	status = "okay";
>  };
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
