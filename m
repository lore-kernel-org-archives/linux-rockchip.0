Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C84C2C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 19:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYi2bAl0zEuS0IZgGiMyHHNnxSMt6xLRdN6FR1BXLRY=; b=K2eFl1wy81u/YI
	McPp16cFfG/ajDpb9AziwRJp82lTZHFkLvXtN5+ALFJH4SDZxBLmwGkdGCCBqa598BRG9qJolGcfr
	YoTWfyUs8iklODhp+pJf6z7cBDSwiQDv6MKkslcYzIJAClOvmQQOg3a2FYZNXyaSE0H320RdsKmtQ
	FzwXKx83r7I+Y/mzA2VR69roRO6JQNUDZ86OdbtAxPQTyNErLcEa73D6KOk7GYdBWXAwb1SziA6Ni
	KEAK+IE1Gr2EtqfJIiuzHuOp8qwe2K+hbEKIPtzVmg4ZHbWHcFM8/Xj6gGGtRUqLG7Jn1ZNX5kAr8
	ThJWVJd4MGHj8o4PP8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVx6-0000000CTSJ-1Jfc;
	Mon, 29 Jul 2024 19:22:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVwf-0000000CTOK-0pod;
	Mon, 29 Jul 2024 19:22:10 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYVwc-0007DX-3G; Mon, 29 Jul 2024 21:22:06 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add wolfvision pf5 visualizer display
Date: Mon, 29 Jul 2024 21:22:05 +0200
Message-ID: <1941803.VZ3vTMCxA0@diego>
In-Reply-To: <171338906385.2268267.11350398666302673626.b4-ty@sntech.de>
References: <20240412-feature-wolfvision-pf5-display-v1-1-f032f32dba1a@wolfvision.net>
 <171338906385.2268267.11350398666302673626.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_122209_269591_4C53EA31 
X-CRM114-Status: GOOD (  15.47  )
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

Am Mittwoch, 17. April 2024, 23:24:34 CEST schrieb Heiko Stuebner:
> On Fri, 12 Apr 2024 14:54:09 +0200, Michael Riesch wrote:
> > Add device tree overlay for the WolfVision PF5 Visualizer display.
> > Since there shall be additional variants of the WolfVision PF5 display in
> > future, move common definitions to a device tree include file.
> > 
> > 
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: add wolfvision pf5 visualizer display
>       commit: ecca3b96aa849bf7a6e704567c5f71bff912cec0

I have kept that patch around for a while, hoping the DTC patch would
get merged soon'ish, but it looks like this will still take a bit.

Keeping this patch on top of the pile makes everything hard, so sadly
I've dropped it for now.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
