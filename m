Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1250BC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 21:20:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1154C6127B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 21:20:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1154C6127B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QO4ASe5+wl7gbDKWEEICGUwgsRBw4hdp+dh1q0S+Qc4=; b=2A3SUsOuTIoMjA
	K8A3tGIBk/3Hgn29t4hBnMu3AUy4BHULnl7FhjOY6xQhliQ5JRkLtGex632Bip6m/41KPSZmrWymw
	33NK3RAIPqi+69Ns9b2XqD/oTwcfgJyQOPP2WA8ZbskAlLZq5fEi0NJVrwKttX9mpnGj1RJfhszKm
	DFk7TxYbC0xOY8K0QvhDxvtJUNyTsJYiL/jqRT0VfoQMGR0L06lJo/l8ceo23tMETNBa67SQKCC9X
	hv8KYxvqJFrxI36qGFoLDh1Vy3VqlJijUMJA4CLD4ty8F86nhv7ig9tu0XldBivJCbKULlG9mrZMn
	j3ZkZ8QTUpp6Mcm8Y4jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIHMn-000iwC-1v; Mon, 23 Aug 2021 21:20:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIHMa-000isT-Gu; Mon, 23 Aug 2021 21:20:13 +0000
Received: from p5b036204.dip0.t-ipconnect.de ([91.3.98.4] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <heiko@sntech.de>)
 id 1mIHMW-0002ta-Ce; Mon, 23 Aug 2021 23:20:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix GPU register width for RK3328
Date: Mon, 23 Aug 2021 23:20:04 +0200
Message-ID: <7657417.31r3eYUQgx@phil>
In-Reply-To: <c586d864-994f-2d24-9b29-2933b567be84@gmail.com>
References: <20210623115926.164861-1-knaerzche@gmail.com>
 <c586d864-994f-2d24-9b29-2933b567be84@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_142012_621073_CEFD6762 
X-CRM114-Status: GOOD (  22.98  )
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

Hi Alex,

Am Montag, 23. August 2021, 00:19:08 CEST schrieb Alex Bee:
> Hi Heiko,
> 
> is there anything left to do for this one?

nope, there wasn't anything missing, I just somehow managed to overlook
the patch till your ping. As you can see from the other mail, it is
applied now :-)

Heiko

> 
> Same for:
> 
> https://patchwork.kernel.org/project/linux-rockchip/patch/20210623145918.187018-1-knaerzche@gmail.com/
> 
> and
> 
> https://patchwork.kernel.org/project/linux-rockchip/patch/20210623150208.187201-1-knaerzche@gmail.com/
> 
> Alex
> 
> Am 23.06.21 um 13:59 schrieb Alex Bee:
> > As can be seen in RK3328's TRM the register range for the GPU is
> > 0xff300000 to 0xff330000.
> > It would (and does in vendor kernel) overlap with the registers of
> > the HEVC encoder (node/driver do not exist yet in upstream kernel).
> > See already existing h265e_mmu node.
> >
> > Fixes: 752fbc0c8da7 ("arm64: dts: rockchip: add rk3328 mali gpu node")
> > Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > ---
> >   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > index 8c821acb21ff..da84be6f4715 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> > @@ -599,7 +599,7 @@ saradc: adc@ff280000 {
> >   
> >   	gpu: gpu@ff300000 {
> >   		compatible = "rockchip,rk3328-mali", "arm,mali-450";
> > -		reg = <0x0 0xff300000 0x0 0x40000>;
> > +		reg = <0x0 0xff300000 0x0 0x30000>;
> >   		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>,
> >   			     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
> >   			     <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>,
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
