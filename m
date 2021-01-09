Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B28EC433DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 13:49:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7EAFC236FB
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 13:49:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7EAFC236FB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RxoIgXqJ7R1AhBX5iE9rdcUhpEdaec/oeYh7/pEkt4o=; b=Kp09aOu8uMwX91CKxmB4d/PqT
	mkDWXz5qz6uHk0WSG8QUNzCKoQ05gnvlsCrX5PUHIg9aaT3d8+0lm5JRYqjrib74HkScm/raUPdtR
	YhnNaoqig11PJ63I5HY/rwwaPaZe7zNPwKlciQ97CXwHgyqqvMcJUARitQe6ON4gvP8XGkT4mMFYZ
	vloFna+5/gUrgJkumS/t4VyBS5elwInKr5rffGYyy9OQAcl0iv9KE6wIc2WkdRuxnMBiKSQexQxy2
	RWDeL+I1LR7wnhooiAc1pJTWKya2XHJWoD6Fomrps0wuXK01f+rTQttb4ZHTQDkCyUjNvOWLS7Ail
	MTohwXhpA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyEcm-0001r7-Fk; Sat, 09 Jan 2021 13:49:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyEcj-0001qF-NL; Sat, 09 Jan 2021 13:49:46 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyEcX-0000Ht-R5; Sat, 09 Jan 2021 14:49:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v1 1/4] media: dt-bindings: rockchip-rga: add more rga
 compatible properties
Date: Sat, 09 Jan 2021 14:49:32 +0100
Message-ID: <1863232.usQuhbGJ8B@diego>
In-Reply-To: <20201219112653.10705-1-jbx6244@gmail.com>
References: <20201219112653.10705-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_084945_831198_C17990D2 
X-CRM114-Status: GOOD (  13.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Samstag, 19. Dezember 2020, 12:26:50 CET schrieb Johan Jonker:
> Add more rga compatible properties.
> 
> "rockchip,px30-rga", "rockchip,rk3288-rga"
> "rockchip,rk3328-rga", "rockchip,rk3288-rga"
> "rockchip,rk3368-rga", "rockchip,rk3288-rga"
> 
> make ARCH=arm64 dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

this patch1 should probably go through the media-tree.
So hopefully media-people will notice this series?


> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-rga.yaml b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> index dd645ddcc..a609b63bb 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-rga.yaml
> @@ -21,7 +21,11 @@ properties:
>        - const: rockchip,rk3288-rga
>        - const: rockchip,rk3399-rga
>        - items:
> -          - const: rockchip,rk3228-rga
> +          - enum:
> +              - rockchip,px30-rga
> +              - rockchip,rk3228-rga
> +              - rockchip,rk3328-rga
> +              - rockchip,rk3368-rga
>            - const: rockchip,rk3288-rga
>  
>    reg:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
