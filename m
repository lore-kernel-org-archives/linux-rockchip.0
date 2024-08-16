Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED2DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 06:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rg09npPOyYprVG9rjJpVzIvCIVuWIESmOpa6MQvOhwE=; b=SeHqd9/f3cG6EvEgjEAcMh46d8
	CkOlmZk1y4597+wch1oM5xZli2N6i1Svb3vESi1r8MHr2OYXSEvuq4iWRPn2/xJtcsWRR3PI/qpV5
	wbx8N4nR/Q7HQYmkPKwotTiStfYR5NolxCw/EooUp8Ozp9O8NC6PJp+Ult1cHoDbr6pDopzGOKBaB
	u5bTPrFbU6Dls7VAymttWuwbKCPZqZet96t/AmOv1gArqq0jjl0fDBp1JJ4g3AHMNXyWPHMe2JNQb
	LqhIQduKu0pomUmK5QW92OzYyAdpv36fejyywNcZa17NxrJ+YVdeL18ZIG/YwcvOYWmwyGxKd6242
	iw8qU1fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqp1-0000000BzL2-2fnO;
	Fri, 16 Aug 2024 06:52:27 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqoL-0000000BzCW-2lov;
	Fri, 16 Aug 2024 06:51:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723791101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=erdeOGfMKnjJZthRQ74ZwqFW9cbRAdXya4HEE8czlZo=;
	b=DtUekxEajDyHcJ1DEsY/8VEsO+N6NYgruSKHNHe0ivJpXlj9DQu/LRb+Eg3kHDi0x6mIBo
	gS+Hsibva5U/JDu847lT27TVtlRnMf3tPXALDAvVk9XVa3rpxkalsV6HUL/2mKXzy/Acj0
	fBUWYKfvvG1Fj3JeXQ1WVgXmp5uKvu/ApsuYIYdHC1qLx1bbE5yxTMQ9pps75Wxy1pWhmJ
	2SxOAuk5zOVSCMtwajBHCL+wo26g84iFVAenQILZzc9ci2KZTYz0cWmlwfmuwXHkNbrv7K
	a6BQHUXj0mIZy7QY/5HRbx+MobPTlxrzJsjrGI2xGFXw4H0HmSfso3pHUyFk4Q==
Date: Fri, 16 Aug 2024 08:51:40 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: improve eMMC speed on NanoPi
 R2S Plus
In-Reply-To: <20240814170048.23816-4-jin@mediatomb.cc>
References: <20240814170048.23816-1-jin@mediatomb.cc>
 <20240814170048.23816-4-jin@mediatomb.cc>
Message-ID: <002107db3dcf3f1d1d1a767f049b5b79@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_235146_246748_743EE893 
X-CRM114-Status: GOOD (  11.91  )
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

Hello Sergey,

On 2024-08-14 19:00, Sergey Bostandzhyan wrote:
> This change has been suggested by Daniel Golle during patch review,
> adding mmc-hs200-1_8v; makes sure that eMMC gets detected as HS200
> which improves it's performance.

Describing who suggested the patch in the patch description looks
out of place.  Instead, you should add a Suggested-by tag, whose
purpose is exactly to describe who suggested the patch.

> Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> index 12eabdbf8fe8..146b1da198b8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> @@ -23,6 +23,7 @@
>  	cap-mmc-highspeed;
>  	supports-emmc;
>  	disable-wp;
> +	mmc-hs200-1_8v;
>  	non-removable;
>  	num-slots = <1>;
>  	pinctrl-names = "default";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
