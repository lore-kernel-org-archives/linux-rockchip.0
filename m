Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C516C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 19:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N01wZorYAQTHO6CQMg6ly5kWh/Zae1Rj8aPaolwk69k=; b=Weh44p1P2HhBVm
	ZMWWnS33boNa15FYhPtq8JJ54w1Bmdz3LOPCHn/xd5JuxFiTlI/hOpVPI3EMAtEdfLyZamVUl0K73
	dLulIsOxhBZ6Zehw2GMDsI1LFOnf7DGu5hCacaNtTPxU2DlKTzESoFbiCD+J0d+BX4e4nPLp6VOS9
	SUqqlseBoNQuv03faEEUJgPFCyssxymBFsB79seq9zkhzILFkCIRcsi0BFCuvAxPIGQDk0CHITwnl
	yYz/6gBJIgVXVHSnvkekF1KrkjVc9wHoA1qVZw/RUE/la5rj2LUrPHAEgA8T/HG90zjmzn3WaBCMK
	AgOLStpRR0yc/BdqBhLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Qxj-00FmMI-7R; Thu, 22 Dec 2022 19:10:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8QxG-00Fm9l-IY; Thu, 22 Dec 2022 19:10:12 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p8Qx6-0000O2-R1; Thu, 22 Dec 2022 20:10:00 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Yuteng Zhong <zonyitoo@gmail.com>, Rob Herring <robh@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add RK3566 LubanCat 1
Date: Thu, 22 Dec 2022 20:10:00 +0100
Message-ID: <2863440.ElGaqSPkdT@diego>
In-Reply-To: <20221222172504.GA1741501-robh@kernel.org>
References: <Y6Kc650FuvHFWxP0@VM-66-53-centos> <20221222172504.GA1741501-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_111010_644040_6E3C29E7 
X-CRM114-Status: GOOD (  19.33  )
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

Hi Rob,

Am Donnerstag, 22. Dezember 2022, 18:25:04 CET schrieb Rob Herring:
> On Wed, Dec 21, 2022 at 01:43:07PM +0800, Yuteng Zhong wrote:
> > LubanCat 1 is a Rockchip RK3566 SBC based
> > is developed by EmbedFire Electronics Co., Ltd.
> > Mini Linux Card Type Cheap Computer Development Board
> > It has the following characteristics:
> > - MicroSD card slot, onboard eMMC flash memory
> > - 1GbE Realtek RTL8211F Ethernet Transceiver
> > - 1 USB Type-C port (power and USB2.0 OTG)
> > - 1 USB 3.0 Host port
> > - 3 USB 2.0 Host ports
> > - 1 HDMI
> > - 1 infrared receiver
> > - 1 MIPI DSI
> > - 1 MIPI CSI
> > - 1 x 4-section headphone jack
> > - Mini PCIe socket (USB or PCIe)
> > - 1 SIM Card slot
> > - 1 SYS LED and 1 PWR LED
> > - 40-pin GPIO expansion header
> > 
> > Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
> > Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
> 
> DHDAXCW is a legal name?
> 
> The person sending the patch email should be last.

We're on v7 already [0] and at least the Authorship + separate binding
issue got fixed meanwhile - haven't looked at the whitespace issue there yet.


Heiko


[0] https://lore.kernel.org/all/Y6MlrbGKiIVc6tXt@VM-66-53-centos/

> > ---
> > 
> > Changed in V2:
> >   - Remove RNG node
> > Changed in V3:
> >   - Modify all node names
> > 
> > ---
> >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> 
> Bindings should be separate patch.
> 
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3566-lubancat-1.dts   | 600 ++++++++++++++++++
> 
> Fix all the whitespace errors checkpatch.pl complains about.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
