Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12986CF0423
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 21:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vGZTx5zdvJLitDnyjTshvP68F9/Jj/Z3QBmilHo4nI8=; b=Mi6ZxPQ1IAJncN4Upk5XBjksKc
	218iWa8BW1+rppK8J0DF16eBmmmW4B7fNUV98jHH5gJPX+laoAWUn/JReIAKTqjccqui/VHxYUxQg
	Bzs8NCqqwn/DigZvuvaai1uypD350+YMUsOCyx1+CDwdKMfwd5CICTHz0/AH+RUJwyYnTVV5AzkAG
	BJ5HA4cZJdrvjAVQ/c9rCkzlIVeV/VsccnARyNy+yyK34+hUXMYYElwLwz4aNsFBmncgX20vpzDqc
	WksLFNsKQz90myZYdSF6Mu6KEl+JH02jROtC2gcvmiSXwGO9Gj/yFjY0UumNdGBgzzybOUNQqbiC9
	2BGvqZsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syHQi-000000078cs-0XmV;
	Tue, 08 Oct 2024 21:07:40 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syHM7-000000078Cp-01HS;
	Tue, 08 Oct 2024 21:02:57 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728421372;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=X89KkUvs3yckIxYQJTEkrf+NZHC+QsqQasuWZPjJ5G0=;
	b=dri21UsMfH3tzTmuKRRT8GwpwcHYeejQMFbN34Rq/G6yalSCbjOiOSxQIZOLw4QUJqeOqR
	ScwjBg/0PCDffS+Wa/u0SYqXAxtZwkWKWTi3fkJ1M/wpKixURwljkvYeh69sYQ1epM2o4G
	3mLPK5jWoecA+vGIM8gTxLSy27X8HlDgciy/z3Ynm3BH9wqLltWIWDsBRH6OKtdFZDr3m9
	KdikzKz9jz9VzoOS5DrXX3Pd3aSWvnDIjsH+/vEylxqGvhhFkk1SWsrqtJZTBzSimc2aEr
	nT+M3dRXkVrpV7BUoCYxppVRU3oPIq+5nRmPlc/VJ2f5ghdRJcJgjj77sRbB3Q==
Date: Tue, 08 Oct 2024 23:02:52 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Chris
 Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 01/14] arm64: dts: rockchip: fix i2c2 pinctrl-names
 property on anbernic-rg353p/v
In-Reply-To: <20241008203940.2573684-2-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-2-heiko@sntech.de>
Message-ID: <b16951e814e2231edbe868a809a49bac@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_140255_379271_CE42A2E4 
X-CRM114-Status: GOOD (  13.23  )
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

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> We want to control pins, not beer mugs, so rename pintctrl-names to the
> expected inctrl-names.

s/inctrl-names/pinctrl-names/

> This was not affecting functionality, because the i2c2 controller
> already had a set of pinctrl properties.
> 
> Fixes: 523adb553573 ("arm64: dts: rockchip: add Anbernic RG353P and 
> RG503")
> Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and 
> RG353VS")
> Cc: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Chris Morgan <macromorgan@hotmail.com>

Looking good to me, thanks for the patch.  It's obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> index a73cf30801ec..9816a4ed4599 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -92,7 +92,7 @@ button-r2 {
>  };
> 
>  &i2c2 {
> -	pintctrl-names = "default";
> +	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index e9954a33e8cd..a79a5614bcc8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -79,7 +79,7 @@ button-r2 {
>  };
> 
>  &i2c2 {
> -	pintctrl-names = "default";
> +	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c2m1_xfer>;
>  	status = "okay";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
