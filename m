Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98FE6C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 09:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R+q2sUZdTBreT1wUTfMiEHhbjaRAn1fm3B2OzuwTaTo=; b=o4yYyV7WdsGAxdgs5kNH+CZoSF
	qxunBYx/mcc30J2OjNyKkUR+udiT3pEuh0+5ze34KqgquNUQoITHO4xf1RwE9TDFSSmr12NAJm8vk
	8SQgu8eWgH+irtVtos9jCbtlVQoqFJ5d1KP1lOTVRxJWEwSz5CxiGnUKGGFrmYIsIkIyMm0Z7MK+G
	TaerNoL+lu4cEJGv+85t7IypKE5TSWMN03Ovcd8k/0+F/07liErDCGXafeJZg015V5XA+HsVhGfeb
	L/vFamfsgRLeGhTIyj/BOMSGbzFY5MOUCnd2HSuVvkG8x6tTe6VGHzOege9yFZkKzzqzHIsOZdvXO
	WF2tA1WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHj3t-00Gqib-Rx; Wed, 09 Feb 2022 09:14:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHj25-00Gq4R-GH
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 09:13:03 +0000
Message-ID: <230d0df3-48b1-055e-db63-6a3a8729e4d0@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1644397975;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XjuJ+rd31KANgcFkAEXyxwxIyZDTD6N9n3bno06v3MU=;
 b=v03U4VBWJfSt571JpfJGLGqszgqvOb1bEMbTDtsmhYo5uXbhQJUQoEQXancJY6JOjQueJJ
 mhytpVvazu9DcsKUFtvO9OTd+sV2XWniSbbx/QEUqQ9Rq0YwJwv8QV7c/iUP6AFcgV1RfO
 pr9s42gDrsCPCUKZFKxgQ12QkFSVOUFQFb8hnZ5RTD23Ecg6GAohKpAjedrzy0mBsUevaZ
 hdKCMwkHMNOSflWY8JeiUG4q+e96gA18Wtrg/j2QGjYWxcTnck5MzMlrBR2RELiWnotiNJ
 wrzhtFXwAHuzS1tztRNaaxAyuS1dqgoFTosE0mRPNuDiWmsa2sHMw0CEZkP+xA==
Date: Wed, 9 Feb 2022 10:12:52 +0100
MIME-Version: 1.0
Subject: Re: [PATCH v5 4/5] arm64: dts: rockchip: enable the gpu on quartz64-a
Content-Language: da-DK
To: linux-rockchip@lists.infradead.org
References: <20220209085110.3588035-1-michael.riesch@wolfvision.net>
 <20220209085110.3588035-5-michael.riesch@wolfvision.net>
From: Dan Johansen <strit@manjaro.org>
Organization: Manjaro ARM
In-Reply-To: <20220209085110.3588035-5-michael.riesch@wolfvision.net>
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_011302_307442_28AB1329 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Tested-by: Dan Johansen <strit@manjaro.org> on Quartz64 Model A

Den 09.02.2022 kl. 09.51 skrev Michael Riesch:
> From: Ezequiel Garcia <ezequiel@collabora.com>
>
> Enable the GPU core on the Pine64 Quartz64 Model A.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>   arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
>   1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 3e65465ac7d5..b048db6cff3a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -221,6 +221,11 @@ &gmac1m0_clkinout
>   	status = "okay";
>   };
>   
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
>   &i2c0 {
>   	status = "okay";
>   
-- 
Kind regards
*Dan Johansen*
Project lead of the *Manjaro ARM* project
Manjaro-ARM <https://manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
