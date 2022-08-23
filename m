Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97616C32774
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 18:00:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyLbI/01aejDj9yAGpWG7MiUMV5XPD9J+uj5ykIUDn4=; b=zePCkXO3/mWrck
	u0nRTKuH8/SgHLg2Dr58TyZYcmlAFjDMhi1nAPQIFqrQjTyGZWVty5waXAxE79j0xfO6j98Lo5pKl
	Gw6kK4v/nRdz2eg+JvnUZaXdeng/BVTvYBcm191Iobq2He74ZUU+v1ZQ5N2HUl8cAL2lpLaBIFQrZ
	FULR2aYE8RTJrhcRXTl/inyo70NdkFAENtQAOuG+L/+Z0oJ2DisLioTjUDVPWsgYTD+ETQ6ofADHB
	hvohDctt5y/SzSOLntijoozKfolZwsOlpUcqKGsEDAVIEIrTAt1dhfY/W08tsA3HiSZmhsaOTJp8D
	0nJESwVG5JMoRdryKRhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQYC1-007vlM-A9; Tue, 23 Aug 2022 18:00:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQYBq-007vc9-4P; Tue, 23 Aug 2022 17:59:51 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQYBm-0006NS-G1; Tue, 23 Aug 2022 19:59:46 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>, Jagan Teki <jagan@edgeble.ai>
Cc: Kever Yang <kever.yang@rock-chips.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 10/19] dt-bindings: clock: rockchip: Document RV1126 CRU
Date: Tue, 23 Aug 2022 19:59:45 +0200
Message-ID: <6086608.Sb9uPGUboI@diego>
In-Reply-To: <CA+VMnFyJOCc-RzENYs9L+U4VeJgEpMmZeSLZahcNdnL7_Cvw9Q@mail.gmail.com>
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220818212913.7FC43C433D6@smtp.kernel.org> <CA+VMnFyJOCc-RzENYs9L+U4VeJgEpMmZeSLZahcNdnL7_Cvw9Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_105950_213349_3E11ED1D 
X-CRM114-Status: GOOD (  17.12  )
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

Am Freitag, 19. August 2022, 23:20:03 CEST schrieb Jagan Teki:
> On Fri, 19 Aug 2022 at 02:59, Stephen Boyd <sboyd@kernel.org> wrote:
> >
> > Quoting Jagan Teki (2022-08-18 05:41:23)
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +
> > > +  clock-names:
> > > +    const: xin24m
> > > +
> > > +  rockchip,grf:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description:
> > > +      Phandle to the syscon managing the "general register files" (GRF),
> > > +      if missing pll rates are not changeable, due to the missing pll
> > > +      lock status.
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - "#clock-cells"
> > > +  - "#reset-cells"
> >
> > Why aren't clocks required?
> 
> I don't see any clocks being used by cru in rv1126 [1] so that is the
> reason I didn't add any. Let me know if it is something that is
> mandatory to add even if it's unused.
> [1] https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm/boot/dts/rv1126.dtsi#L1074

Our clock drivers normally just expect that xin24m to be present
but that xin24m _is_ a clock dependency for the cru and for a lot
of Rockchip SoCs Johan did update both the binding and the dtsi-s
to make that explicit when converting the binding over to yaml

See for example the rk3399.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
