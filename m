Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5854C5321E
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 01:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dsnmMEynU10lrvAQt8nCdlBRHP/1fFNSi5uuuNtlls=; b=oLaLGXKbCXfOPB
	l1yAtpCJiO6UAxLojnfaQvOAoCyqtarG/RzOe2i0isXjHcUMHJ3VzLAFDk1lVMbeZu/9ea9fbpBJL
	cQU5L4xTTnqqXXb80nCB5MTW/TyTF41UJzw6wEAlUjyOBKNOtvnVMFERxB7mrYyQj3gaF78ch6GxA
	/aop/Zicza6zG4LgZl7shKqA1be9tOTu6iKnbjezVo5+GAnIU1Bje19xr1RXRXQQn0bURvzZtbwTs
	Lk3Cq0+SmmKhNSWy9ufMgkHBKv++bgMwcrAkz1G+J6lJzYLWmbAhmyj/1wH1tkFrRxPFzvbvQslyN
	/KKGSQ9Pl5MhYRATkT1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shg3U-00000001CGg-1vJN;
	Sat, 24 Aug 2024 01:59:04 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shg2g-00000001C5w-3NUR;
	Sat, 24 Aug 2024 01:58:17 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id D5D011C0003;
	Sat, 24 Aug 2024 01:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1724464690;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lnixKGZ9j8jXTXWeAPNxltVu25XKBOwXu4ouyQ+656A=;
	b=g3qumbqB+AysT8EzAW1bLfb8GrBd6ArIkZi3UnJWiVFuNyKqDu114L0+Q6iGeP9Msij8IW
	MvNmt+IMliivrJWlT86VRHJC6XRXWYzyyzf4FcXB33CeEuQauiyGN0uvR1epCxSk7qnJ7S
	b7DoynDLdTiT3Rd0Ews8KW+6dhzE/3AAkAl6NDQS9FKEueblSsYVNfF7lB1pbc8Ar/qq9z
	8pjBcXhB6SEayNsz7c0rq9yjQInKCrFh3+uxwygCLpyXrhBfXL/RhMzrwSYqG4GfX5iVM3
	lAhj819UHAFn/pL7b1LjhU6oECJnCJ/rlB4C/DECt7Lo603feOFaspMZ1inh/w==
Date: Sat, 24 Aug 2024 03:58:09 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: Re: [PATCH 5/8] Documentation: bindings: rtc: add clock-cells
 property
Message-ID: <202408240158092f696ac7@mail.local>
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
 <20240823153528.3863993-6-karthikeyan@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240823153528.3863993-6-karthikeyan@linumiz.com>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_185815_482019_5EC1B159 
X-CRM114-Status: GOOD (  12.37  )
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

Hello,

the subject needs to start with:

dt-bindings: rtc: microcrystal,rv3028:

On 23/08/2024 21:05:25+0530, Karthikeyan Krishnasamy wrote:
> consume clkout from rv3028 rtc which is able to provide
> different clock frequency upon configuration
> 
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> ---
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
