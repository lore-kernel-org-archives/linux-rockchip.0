Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08624C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 15:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/PkCiwFfYVr1R1xF7NTOioxgw+F/IHMKc6HAvy8JhM=; b=m8fXnLGZGZ8sNj
	9g3l9oU/0dkFTdn8zYjVZdl2yCQOaWxlvGhHh4iCyLZyEhKPUPhn468X2pV2EmuazE61lMgHNkPwR
	ksZC4sTBFC7nvvulnJ5094qkt/AgUg19STEmL9ftg9zZuoaGg5IRSA3yFdo40KhpxvniEH3evwE/d
	XbPrHNKb7bBu8llWao040ZRWyWGMXEzhGCE+eJ60wx5NLS8EV6mRvA23ls6y0psKjpJqNQjlncina
	fS6IOSv7RMTIsGRSTitWkkI2LobeciasFO0HAzK4fM0aGR8cva4MYljJeYKl6mfXmYDMQoS7XjXMj
	na5vkFQvSmv965N+QGEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSgvT-00H3Pe-EJ; Fri, 11 Mar 2022 15:11:31 +0000
Received: from mail-oo1-f52.google.com ([209.85.161.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSgg2-00GwxA-11; Fri, 11 Mar 2022 14:55:35 +0000
Received: by mail-oo1-f52.google.com with SMTP id
 w3-20020a4ac183000000b0031d806bbd7eso10710952oop.13; 
 Fri, 11 Mar 2022 06:55:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4vC10SOLI9xOKTVYszTXMZKBktQmr7QFcn56lUlHPqY=;
 b=AeMJ+4pxIKT0I6dnzivVHRgo3xNI4TsgpDFUU1R5Zp02c/o5r8WcY36ivhiw7qnZzr
 kcSrupJPycuBQreJJa/smfnBIm87MJC57+YcPgexm+F2cnAZKB7eH1ruSXscA7VnbBxw
 Nk1JV2qRfZCDrbeW9VweuR7rRyWuxCM6RqkJx70qfKmRCk+IDfjsMay5j9Y8lrI7lQH6
 nPqNC9oV2lzO5K9qHM08VhqOuuLS0T6cAMVjKcSNrgLIyWSe7o24g8H6yOC2KDQYqIJy
 E9sqX0241Ok7ZdewkcTJeTRCBH6oH9oYXTxrJSC+ZVOa8HjHJ0B3p3AlT3kuh3kfJ2/p
 QSog==
X-Gm-Message-State: AOAM533gpxeviAHeSPhPiITmNPY4yyug39ZUEqA+FBN7HBeFo9+Gq+SB
 MgwszsP9G8X34t4UHM6ebQ==
X-Google-Smtp-Source: ABdhPJyE+yG0Kmj8j3sIuXoUp3Io81NMMrA2r6Q0cA7nkN1tKUpiAx9HKkuSbr2kBPy0PNmsE3WMOw==
X-Received: by 2002:a05:6870:3929:b0:d9:a13b:2454 with SMTP id
 b41-20020a056870392900b000d9a13b2454mr11082044oap.162.1647010532202; 
 Fri, 11 Mar 2022 06:55:32 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 n23-20020a056870559700b000d47e9dabf0sm3791327oao.0.2022.03.11.06.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Mar 2022 06:55:31 -0800 (PST)
Received: (nullmailer pid 3777813 invoked by uid 1000);
 Fri, 11 Mar 2022 14:55:30 -0000
Date: Fri, 11 Mar 2022 08:55:30 -0600
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v8 10/24] dt-bindings: display: rockchip: dw-hdmi: Add
 additional clock
Message-ID: <Yiti4n0prhDLdYC+@robh.at.kernel.org>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-11-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311083323.887372-11-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_065534_106112_38672665 
X-CRM114-Status: GOOD (  12.42  )
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

On Fri, 11 Mar 2022 09:33:09 +0100, Sascha Hauer wrote:
> The rk3568 HDMI has an additional clock that needs to be enabled for the
> HDMI controller to work. It is not needed for the HDMI controller
> itself, but to make the SoC internal busses work.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v7:
>     - rename hclk to niu
> 
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
