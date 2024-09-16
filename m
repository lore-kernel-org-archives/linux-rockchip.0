Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ECEFC3ABA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 12:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ou91EJWkdOdFakp3NibSFKYFavZl2TkIVtvOUZrf05M=; b=K0trLr5HAWnvgz
	v4AajLEIjj3kacYZp2WF08mpA75KZ5QBy9qyH8WlXjHvJW1t34YrsKw85dalTWcDG4z2jI9ONAMJ8
	8u1esMMXMi8msDup+UTLbI+PYPD1XV1fdRIniKqKe9BX+4QOiDu7/+3XD8sbWiw89Xi0EAelRNREr
	U1KbHp+uPsECujz7RKbkig6XDmJGOzsd/4eLId5FMlc+WqxmJyicl3A45nTGqxwqzA4HUX17blMNh
	KPyC6euf5wt9AXPKepKVNBVJIORBr+BfzmjLmIac8C/AD2uVlMm2Q+ULc5XLBv+/YS3hJNwrj8jG3
	rNfPcWvaa5XIZ07mmraw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqB0Z-000000040eE-2ncW;
	Mon, 16 Sep 2024 12:39:11 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqAzR-000000040O7-170h;
	Mon, 16 Sep 2024 12:38:03 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id BE8B240006;
	Mon, 16 Sep 2024 12:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1726490278;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=uLkXpJT9dGCwpmHNqyKonZZcRd+WJrVd5CM3zLffLK8=;
	b=m3o/NVeEvXK49KYFrO0OUF5UYvy9X8gvcsMc+8zXzqn2sSF2p1dW+z+djPjUuxoZ0daJc5
	e6inRencX+z0xorrs8P70zs6CknIw7ZTGP4OEen0i9BXbGtjIExrwZipun6FdBbqKpukz0
	5Cx8nsBwn7NVmo0gSUgc//qxLxdb/gscweUPEkTNmpD1oa6PqMzhPvKbscx9HGvvb15Tel
	EkNRNCNWUHYa3lce6jZsqA84LNK+Yz2PsbdjL5A0DWTvEBadAmW5OCnOBU1KEXlLXl4Iw8
	BdEjSXIKBzNkTrriGLUwVtqI/pUKp6dcYs2DlPueMQUwk4ZRMqlgRunX9SC3mg==
Date: Mon, 16 Sep 2024 14:37:56 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: rtc: microcrystal,rv3028: add
 #clock-cells property
Message-ID: <202409161237568b626ad7@mail.local>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-4-karthikeyan@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240912142451.2952633-4-karthikeyan@linumiz.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_053801_457867_9C3B209B 
X-CRM114-Status: GOOD (  12.87  )
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

On 12/09/2024 19:54:48+0530, Karthikeyan Krishnasamy wrote:
> RV3028 RTC has a clock out features, the clk out can be
> controlled using clkout register, to consume the clock out
> from rv3028 '#clock-cells' property is added.
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> ---
> 
> Notes:
>     v3:
>     - fix commit message
>     
>     v2:
>     - fix commit message subject
> 
>  Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
> index 5ade5dfad048..cda8ad7c1203 100644
> --- a/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
> +++ b/Documentation/devicetree/bindings/rtc/microcrystal,rv3028.yaml
> @@ -22,6 +22,9 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  "#clock-cells":
> +    const: 0
> +
>    trickle-resistor-ohms:
>      enum:
>        - 3000
> -- 
> 2.39.2
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
