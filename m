Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D56C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:12:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 59D1C60F9D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:12:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 59D1C60F9D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLqEEEM1pdqR3nGbmiLyI4ryvYtQuKjUTdpaG6ffdwU=; b=zMJ/oaa4xo25y3
	Tii847+n9/sKUQ5Ci7BMiJUz9X5gQYbB2p5ts2R9jegxwuOOYtAZsaK7oIv8VnJfpbMjZgMAylByo
	Wt3337yAQoPNWOcSHpTdQL5fTXxH7bzUyGu1MOVDHRIc/pcK8SbdA+X1Rgyb9KNVsGtBhplw7GU6Y
	8Ib7B9tP15bPRLoqmdqerrmlhAUVI3Z/GKipGRzCHjIlx7v1ZuITJ9I7hhN+WTQ2DKJm12SiYXfw9
	5mvdt2AVLG8Xj5ZAlI2WNnXbZZwe+440zRnmVxebbMwh6eWJdUBpu9whfx6yKFSRDgozuJ23iFwjA
	sD6oTbHX2ZreyPzTteNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kIj-0010P6-VH; Wed, 28 Jul 2021 14:12:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kGY-000zLG-TU; Wed, 28 Jul 2021 14:10:36 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8kGX-0005zA-8U; Wed, 28 Jul 2021 16:10:33 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: gpio: rockchip,
 gpio-bank: increase max clocks
Date: Wed, 28 Jul 2021 16:10:32 +0200
Message-ID: <10355864.nUPlyArG6x@diego>
In-Reply-To: <20210728135534.703028-2-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-2-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_071035_025178_CA72266A 
X-CRM114-Status: GOOD (  17.30  )
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

Hi Peter,

Am Mittwoch, 28. Juli 2021, 15:55:26 CEST schrieb Peter Geis:
> The rk356x adds a debounce clock to the gpio devices.
> Increase the maximum clocks to account for it.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

that binding change is also part of Jianqun's gpio driver series,
also adds clock descriptions for both and even got an Ack from Rob
already, so we should be going with that other variant ;-)

Heiko

> ---
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> index d993e002cebe..489a5263a7a1 100644
> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
> @@ -22,7 +22,7 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 1
> +    maxItems: 2
>  
>    gpio-controller: true
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
