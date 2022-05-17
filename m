Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54239C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 18:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKLGuqLFRrE33TgnQiYrrDKCs+6fMpVtcGNg4LcufNI=; b=WyT9Efs9VH3Hq9
	kNlQUC9RVdzResE31FhrfrUgf1cbTx0NyAZIgiqGuNUUtBAMCw4B6bY1C+7lizKTqHHGOsaFegoJf
	Fsu7P8++RZ3w11y3g6SpwE9YHC/kFhzk0g4puHs9vZpoyHSqyNQQPXm6CF8PzzaHonKACcmVRcNFQ
	AZRm4W7FB0YI21p6cxfo7fIyERbo+ex8KZTMxmL8TIoBU+qM0KYHBQ7jOWVSNAweJiFpSw4vb7dvm
	g2VCHnkAP5NFHH+/w106/ysHsjhROCfefA98Kjy1Os0NO+EkJEqxwh3Sel9n2ZUOnpu64i9yQBNOr
	sdKy4aMU5LFP2MUs7acg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2F1-00FPWF-4a; Tue, 17 May 2022 18:48:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2EZ-00FPKe-MZ; Tue, 17 May 2022 18:47:52 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1nr2EX-0003vD-T1; Tue, 17 May 2022 20:47:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: set display regulators to
 always-on on BPI-R2-Pro
Date: Tue, 17 May 2022 20:47:49 +0200
Message-ID: <11363549.CDJkKcVGEf@phil>
In-Reply-To: <20220415104951.27104-2-linux@fw-web.de>
References: <20220415104951.27104-1-linux@fw-web.de>
 <20220415104951.27104-2-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_114751_765766_D82A1A56 
X-CRM114-Status: GOOD (  16.53  )
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

Am Freitag, 15. April 2022, 12:49:49 CEST schrieb Frank Wunderlich:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Set display related regulators to always-on on Banana PI R2 Pro
> board.

Hmm, I'd expect some sort of explanation for the "why" here.
It looks like both the gpu patch as well as the vop patch do
reference the relevant regulators for the gpu+hdmi nodes,
so in theory this shouldn't be necessary anymore?

> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index 2700fb18a3bc..0950f9659bb4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -225,6 +225,7 @@ regulator-state-mem {
>  
>  			vdd_gpu: DCDC_REG2 {
>  				regulator-name = "vdd_gpu";
> +				regulator-always-on;
>  				regulator-init-microvolt = <900000>;
>  				regulator-initial-mode = <0x2>;
>  				regulator-min-microvolt = <500000>;
> @@ -274,6 +275,7 @@ regulator-state-mem {
>  
>  			vdda0v9_image: LDO_REG1 {
>  				regulator-name = "vdda0v9_image";
> +				regulator-always-on;
>  				regulator-min-microvolt = <900000>;
>  				regulator-max-microvolt = <900000>;
>  
> @@ -369,6 +371,7 @@ regulator-state-mem {
>  
>  			vcca1v8_image: LDO_REG9 {
>  				regulator-name = "vcca1v8_image";
> +				regulator-always-on;
>  				regulator-min-microvolt = <1800000>;
>  				regulator-max-microvolt = <1800000>;
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
