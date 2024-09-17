Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66A87CAC5AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Sep 2024 23:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H27xrT5Zq8TiPlrg7uh0NnDZ5ZQ83ww3tqs0o+yNWPc=; b=2MQ8UgEldxo7Q1
	EXViRriWOh+CboiThkix+tKvLyMNQ1p7at/fnT0De8QngCOlbRhA8smYMgNxF1tMA7vEYI+paA7R+
	mZrRxJJlon4crPQyU6TvuCq8etZAyuQeVn06pKOq+Ift63GJRhHna16uB6QPpXmdwNvL63jy5wt3L
	O14aMAAZyjo4gGHc364TmVWnVVbRrHKv885Ag0LAvGKTVQJhPCrrBTGHjd8sOkJZHPiwiDwL2rki6
	zXSw+VzJi6cxPYgU2UQ/tHw1xS5B1bIT+/ReOfkZD6Y5lGpo6EM9H+Beo72dbuqeN6C+N77ra0HNW
	wQXWvBZ1y84WpnOKCgDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqhRf-000000077lI-3IFH;
	Tue, 17 Sep 2024 23:17:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqhQT-000000077RG-48Ud;
	Tue, 17 Sep 2024 23:16:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=40wm3mtRL5sJV1zlzoc6UE0S8NFNw9Lh5DHK9lkWm6w=; b=HwY71rt/FVc/VdGqFqiuLisH1u
	kjD53brKWLSRBEZleE2U9ioYp3XixxrIujBonicrzeTG1yGXcbdB7Y8qfEGxxxVPaURsSMkkND3b7
	eMPcBB7H/KVPd9PAjIjNxRLLxalEgMAQ/HiKGGSEIJbsrUVfcB2tAMNkJ51le5RgSGBqIc2DyG2Hv
	wEPqcFjgctPu6qGsYKBIOwCRGTeJpU5J1fX1wNSkqRO9zOiJKAh8fmfeXN3JL8xl6qq2ucBC7CllY
	7zchmkYEshE9b/zoUrrbbuxrYMoPnAcL3cqDPwaAYulL+B8DqkW4/OGzHYQBVTmo9UV5bfhKj2eWf
	LY2B/FSQ==;
Received: from [213.164.25.30] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sqhQR-00013I-4e; Wed, 18 Sep 2024 01:16:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alexandre.belloni@bootlin.com,
 Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add rockchip,rv1126-wdt
 string
Date: Wed, 18 Sep 2024 01:16:02 +0200
Message-ID: <2206048.Mh6RI2rZIc@phil>
In-Reply-To: <20240912142451.2952633-2-karthikeyan@linumiz.com>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-2-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_161606_062000_54D00D73 
X-CRM114-Status: GOOD (  14.59  )
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

Hey,

Am Donnerstag, 12. September 2024, 16:24:46 CEST schrieb Karthikeyan Krishnasamy:
> Add rockchip,rv1126-wdt compatible string.
> 
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>

I think this patch misses some recipients because neither
the watchdog maintainers nor the watchdog list is included.

We'll need for them to at least Ack this patch, so they'll
need to be included. Please check your scripts/get_maintainer.pl
call


Thanks
Heiko

> ---
> 
> Notes:
>     v3:
>     - add watchdog compatible string
> 
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index c7aab0418a32..bccd27a1e470 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -31,6 +31,7 @@ properties:
>                - rockchip,rk3568-wdt
>                - rockchip,rk3588-wdt
>                - rockchip,rv1108-wdt
> +              - rockchip,rv1126-wdt
>            - const: snps,dw-wdt
>  
>    reg:
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
