Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1BB1C27C78
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 03:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YNU1k0rdZDBiTgZXHwF4PXCJOn4XTPrBEZJtAwVS58I=; b=t/DFRcJCp9kRPGahcgboIg6KpC
	dQdQ1/SXrEoQWzlkLmpD3zPilpsa23A1yWK9+ZIa5JcYcwAim0FenBdrYwP2ZRlgobrTI/9NbrWow
	YZp3ah5vEnpUPt397Jo132L7LB3k8K/axItNIn8UaNhvT7Gbh7908JfysAhuVN7kF6AIJNJG54v2W
	K+IPNhVMxQsFN+HUbeGQ3rk5HwH7Rr+VGgE7ZtkkM2JSaLoZMk59KdCIH5dQQgXPyWCvqLDhxxixS
	RXCb4KvleeiNr31MWiQ7MDlxDaAPNkds0ksf9UhA6AUPr/I6NfeSUfnL/GXCoFDf1OTfCMhOmPmvR
	i6evLb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHEF8-0000000ArZ0-0m19;
	Wed, 12 Jun 2024 03:01:46 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHEF4-0000000ArX8-3Yjq
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 03:01:45 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1718161299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HIrwMckBwVtYf7EpF2NcoeEcwDRVGbJiqslvQ/yvl80=;
	b=k5/s+Q2i9ZyhgktmkSwXThY89m1Ddxunv5uOw0ZXKyLGB4qtsS5UF0H9IWG/2+DKQrLcEH
	xXvEIWBwMJokOPachpZs6gcvdnqShT6ry4DRY60byNDbSVSui5OYf+5Fo0jkwK0Czz41NU
	BnXVVY4OmPnEjFYEyKrUciiFDuJueW+mfrzTxMFuaRghqaOkjANj58iBP+AFcTzOn2Bt0U
	EMlu0w13JoxnsOLy5BZE+9GVqHT6v94kuwJRrkuxM2Pwluv/t9Vz9Nxw+vbIhfRcYAd6d9
	gqwV5JTu3c7z14ABENBshMwsjQXB1q/He7ZQAspvSvFOMJoA1a9apbh0KA8R8A==
Date: Wed, 12 Jun 2024 05:01:39 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: make poweroff(8) work on Radxa
 ROCK 5A
In-Reply-To: <20240612011221.822-1-naoki@radxa.com>
References: <20240611122746.751-1-naoki@radxa.com>
 <20240612011221.822-1-naoki@radxa.com>
Message-ID: <c47a034c48193745692b20d0e36ba7e7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_200143_379271_42347D0E 
X-CRM114-Status: GOOD (  11.75  )
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

Hello Fukami,

On 2024-06-12 03:12, FUKAUMI Naoki wrote:
> Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
> controller, so the board shuts down properly on poweroff(8).
> 
> Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Thanks for the v2.  Just another small suggestion, the tags above
should go like this, with no empty lines between them:

   Fixes: ...
   Reviewed-by: ...
   Signed-off-by: ...

> Changes in v2:
> - remove an empty line above "system-power-controller;"
> - reword commit message
> - add R-b tag
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index b070955627be..3b9a349362db 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -394,6 +394,7 @@ pmic@0 {
>  		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
>  			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
>  		spi-max-frequency = <1000000>;
> +		system-power-controller;
> 
>  		vcc1-supply = <&vcc5v0_sys>;
>  		vcc2-supply = <&vcc5v0_sys>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
