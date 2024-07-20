Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A46E0C3DA7E
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jul 2024 21:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MRnkCuUkFhDrkzrSddUuV75SkQ2lcaBhsil3QhdKmY=; b=MEpSl6mjqJqTye
	RFhZ8Er6AsHx4hwCWAuzVn4vDGKcxZwettve33DGbGWOiUAAITIpeP2jvoLDzlVTQQjAQnjFs4RgF
	s/OFUD10+ij/UmcDaU8palG+ie3qeIu7Aq9dtb+OPiSnj8NsH/OtpjkHguK7WvaohaftwhMDcGuXU
	o8Lh13WUrk8YfHXkbpI57dRiANF3GeqX6jqBKf3HvyzVSaMRZao8Deitwk05EyGDBP8+Oy+X5kQQ3
	tOw5b3NPjJPa1KjJ61Dl7zvgYO8B6ksPCjZaOflguddveXoqszB4t031GfCcAIrQq7i80+Hb0YUC7
	R2wAI/655xqja518SSpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHNa-00000005gTI-1499;
	Sat, 20 Jul 2024 21:12:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHM6-00000005fu3-3vdr;
	Sat, 20 Jul 2024 21:11:04 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVHM5-00065w-Li; Sat, 20 Jul 2024 23:11:01 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: ukleinek@debian.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/8] arm64: dts: rockchip: enable uart0 on qnap ts433
Date: Sat, 20 Jul 2024 23:11:01 +0200
Message-ID: <4879096.JsnAkG3lO3@diego>
In-Reply-To: <20240720210856.778014-4-heiko@sntech.de>
References: <20240720210856.778014-1-heiko@sntech.de>
 <20240720210856.778014-4-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_141103_019897_080B79B9 
X-CRM114-Status: GOOD (  10.02  )
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

Am Samstag, 20. Juli 2024, 23:08:49 CEST schrieb Heiko Stuebner:
> Uart0 is connected to an MCU on the board that handles system control
> like the fan-speed. So far no driver for it is available though.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

ignore this one ;-)

I updated the subject and them fumbled with git-format-patch



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
