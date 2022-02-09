Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E8CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 10:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQ174jz8Y9lOGxiB6ClGG7cp8ALtK7vWnZlG6EbX0mE=; b=o/EhUbkGqc9I22
	8Y3XYksDqYh/AUYm4qijMZKczxzHSRXQns20RWaJ1/gz43ve2jsT7lOunwOetkKGw87De8Fo0nnVw
	0LKDSVPi87WQ4SXQh+Miva2PDy/08PPxwwvnrt8V8M/juDMuvTnWHxQQFpJpx+6pI6p+WEpMMaUlB
	9dSBaf/9SjqPgA1pwExqNRjoVQp/ekeXG8GtC2uEADkER4GTt6N2D6UbP+bNs1WyrDfVOpL+naCjX
	NziDtUGrwce3Qe/AFZtEQhz0xC/EXDMn6Sy0eKJg3qBxK5UGALnNAU5kVyosGGXkZBQ4QMwvaCSQ7
	5lxT77HIb1Jz7HZmqqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHkCO-00HFcn-HJ; Wed, 09 Feb 2022 10:27:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHk4x-00HCcA-6N; Wed, 09 Feb 2022 10:20:04 +0000
Received: from [91.65.34.88] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHk4p-0000GB-Gs; Wed, 09 Feb 2022 11:19:55 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: davem@davemloft.net, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 Corentin Labbe <clabbe@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] dt-bindings: crypto: rockchip: fix a typo on
 crypto-controller
Date: Wed, 09 Feb 2022 11:19:54 +0100
Message-ID: <4940101.4UnPYNKMnq@diego>
In-Reply-To: <20220209101721.1659574-1-clabbe@baylibre.com>
References: <20220209101721.1659574-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_022003_300363_1EB5CDC2 
X-CRM114-Status: GOOD (  17.31  )
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

Hi Corentin,

Am Mittwoch, 9. Februar 2022, 11:17:21 CET schrieb Corentin Labbe:
> crypto-controller had a typo, fix it.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

the binding for the crypto-accelerator is pretty standard
without any crazy stuff, so you could also try to convert it
to the yaml format ;-)


Heiko

> ---
>  Documentation/devicetree/bindings/crypto/rockchip-crypto.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> index 5e2ba385b8c9..53e39d5f94e7 100644
> --- a/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> +++ b/Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> @@ -16,7 +16,7 @@ Required properties:
>  
>  Examples:
>  
> -	crypto: cypto-controller@ff8a0000 {
> +	crypto: crypto-controller@ff8a0000 {
>  		compatible = "rockchip,rk3288-crypto";
>  		reg = <0xff8a0000 0x4000>;
>  		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
