Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAE68C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 13:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=28dUYV66VjH6xXn62r6xUwq6mmkv4ZauD4IWJGDesg4=; b=v26BB2QV6n0bn/ptvuXyAWqp8r
	o6Ty2R69mmxRpYrKbRMzrUjN/Y6TRAVhkcNjxOKwjJT8tDEPWzWbSd5RyjatmyhmTaYDciPG78ijk
	rZ+PJh2yk0BJmP/4n44tcFhEvZygqVWPCPrI3Db5em2uPbs1wOJeIBdyopWRsRS/h2mnhcLc6kGs3
	BFaanfs80NF30uRQG6XMoauFr7HbfAgq4rcqM1cb6Lj9yMUFv1/f1BTHSWBXDz6P7xFJF+6o2BYgl
	X0jvP0pHe1W1Hd6HoEKI6Em9s9h7vZaKhgXbhvooDUndeIKBGa2GE9PZ2tQht6lPlQMsOUhue2Std
	ZCuYhTAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTiOy-00000007VxA-3Gyg;
	Sat, 27 Jan 2024 13:07:16 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTiOu-00000007Vvy-1aOC;
	Sat, 27 Jan 2024 13:07:14 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706360826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bk6+Qt63zpVKPvyd59TSkCFvtJ6XCqIm1CpEdsrrlXQ=;
	b=YGrl7iSkAgKAzurcYoY/JBmDgFQE0odHd3zkM3PxCL83Fa+MKdZDh1Mq3b9/MFZlvQggke
	say9hMDzfc0XCQ/QAPGm8VllGkJUomoCT/5UKfD3Ujo17f932cd0YUb76PGv4inbaA6oJe
	halMkO29kTzipj+WpHcWCo2kCcVPyUigUxpibk244bLAR78FMJrs/UeYgj5DDwohr7Y6q0
	sURPtUyX3WAV8NCI+/LL/dVUnzRCEhgogRp6AKiP/O2qV1yNE/khCl/bCg3WO4cwlTOlOl
	srmG9SxpfHhJlk+Uba6S3SbZEdLWKZnFjUB8LJ4tr3O0EKe/TzkMhwo4BQKc8w==
Date: Sat, 27 Jan 2024 14:07:06 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool
 Pi 4B
In-Reply-To: <20240127092034.887085-1-andyshrk@163.com>
References: <20240127092034.887085-1-andyshrk@163.com>
Message-ID: <3e9760ae2dfb48e544b11801f02c2690@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_050712_908179_643BA7D1 
X-CRM114-Status: GOOD (  11.89  )
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

On 2024-01-27 10:20, Andy Yan wrote:
> Follow others rk3588 based boards, and u-boot only use mmc0/1
> as mmc boot targets, so aliase sdmmc as mmc1.
> 
> Fixes: 3f5d336d64d6 ("arm64: dts: rockchip: Add support for rk3588s
> based board Cool Pi 4B")
> Signed-off-by: Andy Yan <andyshrk@163.com>

Makes sense to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> index 3fae40b9ae1b..3b9d21a6f8bf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
> @@ -20,8 +20,8 @@ / {
> 
>  	aliases {
>  		mmc0 = &sdhci;
> -		mmc1 = &sdio;
> -		mmc2 = &sdmmc;
> +		mmc1 = &sdmmc;
> +		mmc2 = &sdio;
>  	};
> 
>  	analog-sound {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
