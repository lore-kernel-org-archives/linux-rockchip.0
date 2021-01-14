Return-Path: <SRS0=rUAS=GR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE54C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 19:09:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 369E923A5C
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 19:09:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 369E923A5C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0igKk7L93qNrEXF2g4FD7egoXAgizfcTC8/eDuw9RFQ=; b=YwNAsRC8opK+8vXDyB6KNx9uK
	CO+T+I1paBIrxndEeS69popXSAd9LX2bQJ6DVEiykowDs7aFLkNrmVYsCschPCRuy0uCd9IxGGXF7
	BDSD0qrXSsdy5D58Si3+aqhKfzHLPPY2SWidL25blh/6Zv6Bu0FxLlD8YmUvyYMQ6BsMt31tq7Zmg
	k6VBH1SKhFF5jbLY6C7TXuIS4Aa+A34qtJg/nrrK+UgqU9pX0xk44dcxDx7o9G1C65zH/Z1tfOh1k
	NPuIcoNOTrQHxH8bgVB0aFyQQTV2JmlD1JsXf0fpeYsPmYHrEmc60mgs5DM7I6iSDheFKMqQeJmTP
	FNgGSBFtw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0807-0007ZX-Un; Thu, 14 Jan 2021 19:09:44 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0805-0007Y1-DN; Thu, 14 Jan 2021 19:09:42 +0000
Received: by mail-ot1-f42.google.com with SMTP id r9so6181871otk.11;
 Thu, 14 Jan 2021 11:09:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LHnv4YBdvdSukhMOpEajJnzBDnb/tm9j26BMAF7scIo=;
 b=GHJ4HzFmJu7CoaULXECwR/fQGCgQrDkpEDKl9ljbrkwKNnpObD1HqcGsXVC49iD9y4
 50wyagWuTs7jSc0l6VMe0iaxp43vcFYaloeRdz4RByFsSSn14Tz8XLd8kBTKSTW5LpPL
 8XG9PPjRu2CWw8lwDVIhrqvM86VNzDF+R2zmnEiE0kK3Iv8IeOBou/QNmRd3QwNNks1T
 +zFYCLOi1uWp1W2ISrqOwcEQGdIJljHmsZZyj3nXomzl2OFWvUgGR8A7eI4vqelwFDKy
 ev3NI1SGr7xsl1jn57QQlj9FfJuJkvXShrigZONX8bw75Aof3aK4kAkhRWur167gihVk
 rO0w==
X-Gm-Message-State: AOAM531oitFHZnJNKKmeNQSEWtAivlm/pv+1cS9E4ELVyqaBYB7EWt8H
 74xFQ4d00Epp9xluwvPFRrUJcPgHjg==
X-Google-Smtp-Source: ABdhPJyXY9ue6QPUzsbYXuR+YT+3/Y46kF6q/lHe43oOwfEA57P9/0c2PVBhldi1Kjbmb/mgV1Fn3A==
X-Received: by 2002:a9d:8ea:: with SMTP id 97mr5456555otf.223.1610651380243;
 Thu, 14 Jan 2021 11:09:40 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v4sm1225950otk.50.2021.01.14.11.09.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Jan 2021 11:09:39 -0800 (PST)
Received: (nullmailer pid 3390716 invoked by uid 1000);
 Thu, 14 Jan 2021 19:09:38 -0000
Date: Thu, 14 Jan 2021 13:09:38 -0600
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
Message-ID: <20210114190938.GA3390660@robh.at.kernel.org>
References: <20210110035846.9155-1-wens@kernel.org>
 <20210110035846.9155-3-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210110035846.9155-3-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210114_140941_472037_FB0BE1DB 
X-CRM114-Status: GOOD (  19.00  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 10 Jan 2021 11:58:45 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Radxa ROCK Pi E is a router oriented SBC based on Rockchip's RK3328 SoC.
> As the official wiki page puts it, "E for Ethernets".
> 
> It features the RK3328 SoC, gigabit and fast Ethernet RJ45 ports, both
> directly served by Ethernet controllers in the SoC, a USB 3.0 host port,
> a power-only USB type-C port, a 3.5mm headphone jack for audio output,
> two LEDs, a 40-pin Raspberry Pi style GPIO header, and optional WiFi+BT
> and PoE header.
> 
> The board comes in multiple configurations, differing in the amount of
> onboard RAM, the level of WiFi+BT (none, 802.11n 2.4GHz, or 802.11ac
> 2.4 GHz & 5 GHz), and whether PoE is supported or not. These variants
> can all share the same device tree.
> 
> The USB 2.0 OTG controller is available on the 40-pin header. This is
> not enabled in the device tree, since it is possible to use it in a
> host-only configuration, or in OTG mode with an extra pin from the
> header as the ID pin.
> 
> The device tree is based on the one of the Rock64, with various parts
> modified to match the ROCK Pi E, and some parts updated to newer styles,
> such as the gmac2io node's mdio sub-node.
> 
> Add a compatible string for the new board.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
