Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00478CE8352
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 14:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHlFBinneCAgBnO98wpqHtmzRCh0BXHCCP0kJHyWH5Q=; b=BQjUVeaMIdCb1+
	9+odVhN4k+Sbwv0qZ0DbJfP6Eo8QI7lk/oRzcAGEkeixGCQJCisjYe45f7QR03RYLPP3liKuxpUu1
	5sMIAXLnqEFDreFE+2Ka1xQkz66kyWmikQoxJ+cJYbKLUEzV8GRpxeq1b0S3cgFGuhYJP3H8yGRuN
	L2XBJ7fQj2giZZLeo+a/Ngvv0tRxuViK9FvYsfqyBE+TWp8ptXDhA0AGjvatrXagBC8jXhe8fBHYt
	UgTq4dMEzPkZZGXkTapnq1OScu+J/pr/HbOg1FjTo4e1DwwXiiE6OkZB/mjQ+YX79VoI1XUZy1xSP
	TBqnX0kihNQRtipmH5pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svHgy-0000000HYMo-0wPM;
	Mon, 30 Sep 2024 14:48:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svHfQ-0000000HXxB-3o59;
	Mon, 30 Sep 2024 14:46:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+/5cL9UnfJbkuScQXbDl9+5xv+uD29Ok6MxJQa09pCg=; b=yhcfCDwQ4IAS2bgSSUMmxGo21t
	awZWRCAQj4opOeRg7sKAKhSBTODy9Y8e9bZkC4dtj8FuirG3ld/gNdmcJ4w+f8wdfDxzXZ0yb2w5x
	a9wBPj8pbd0Z8tAlalMeucIE/+Qt8cSbT9VoGlNCOTv0tbSb8NEA5vIOTT0Zaman1TjDIBtTlzOAC
	uRjiEtfjhnM5bj42j3quY9/PPRiXhjhToH0PI6rpGY6JSudon2kSbwiFvoALLRS6ot2J4KY2NjHz/
	i8xXvZNY9klR1CfAT/o0L/5SCnJD6xccmtPtmgWYE0jiTVZwmWHytAIMKsfnLqKEL2nx6ZBnSppKJ
	bH9zVQ3w==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svHfG-00064Q-Sd; Mon, 30 Sep 2024 16:46:18 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Christopher Obbard <chris.obbard@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 6/9] media: dt-bindings: rockchip,vdec: Add RK3288 compatible
Date: Mon, 30 Sep 2024 16:46:17 +0200
Message-ID: <3342168.44csPzL39Z@diego>
In-Reply-To: <20231105233630.3927502-7-jonas@kwiboo.se>
References: <20231105233630.3927502-1-jonas@kwiboo.se>
 <20231105233630.3927502-7-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_074628_952257_2B58CCCC 
X-CRM114-Status: GOOD (  17.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jonas,

Am Montag, 6. November 2023, 00:36:13 CEST schrieb Jonas Karlman:
> Add a RK3288 compatible for a version of the Rockchip VDEC IP that only
> support HEVC decoding.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>

While looking for something else in my inbox, I stumbled upon this series.
Looking at 6.12-rc1, it seems the rk3288 parts at least didn't make it in
yet, so I guess I a rebase+resend might be in order?


Heiko

> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 08b02ec16755..0f00e9c86737 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -16,7 +16,9 @@ description: |-
>  properties:
>    compatible:
>      oneOf:
> -      - const: rockchip,rk3399-vdec
> +      - enum:
> +          - rockchip,rk3288-vdec
> +          - rockchip,rk3399-vdec
>        - items:
>            - enum:
>                - rockchip,rk3228-vdec
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
