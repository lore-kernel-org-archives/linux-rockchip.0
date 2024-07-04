Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94529C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 11:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAciGEDvFzQ45AiGr3sAC20+kbWd+u7tkgHukQCzAqs=; b=nMgvcbdq3jQc/5
	+cXbQFgJN3x0+f7J8XSs/vu1Tft5jThQqbDKdXSQBW75Oh525USwl6eN+4MMEqpt0ZYdLvNMzxxez
	AAsBJJAjX3k5t8IlpAi5a+VlD+eMnoxmbwoqgvSmNkvMSWhhij/NSurfYX4k711y6Zcu6lqartCnN
	xdNJNlAxedpLnNJ3LLqpZPWk/DiABxC25iJENQy65WOyKI20XgXb4ErfcXB9P4dLggqeDWLYKxKLh
	eDC2bgv6vX4Ej/kZpNIL/2kMDIm5BeIIQbHx5XwNECMWefJEQpqDumvWnaARnri03IsrT42NiAMik
	h9hcBmNyBO50j00OaTdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPKXP-0000000Czcn-0BzH;
	Thu, 04 Jul 2024 11:22:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPKXB-0000000Czb5-00rx;
	Thu, 04 Jul 2024 11:21:54 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPKX5-0008Oh-P3; Thu, 04 Jul 2024 13:21:47 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
Date: Thu, 04 Jul 2024 13:21:46 +0200
Message-ID: <2224639.1BCLMh4Saa@diego>
In-Reply-To: <faeb87de-b97e-4f95-bbb0-edd03a411f4c@gmail.com>
References: <20240703210524.776455-1-heiko@sntech.de>
 <20240703210524.776455-3-heiko@sntech.de>
 <faeb87de-b97e-4f95-bbb0-edd03a411f4c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_042153_076583_5B5303DB 
X-CRM114-Status: GOOD (  20.94  )
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

Hi Alex,

Am Donnerstag, 4. Juli 2024, 12:52:35 CEST schrieb Alex Bee:
> Am 03.07.24 um 23:05 schrieb Heiko Stuebner:
> > The Rock 5 ITX as the name suggests is made in the ITX form factor and
> > actually build in a form to be used in a regular case even providing
> > connectors for regular front-panel io.
> > 
> > It can be powered either bei 12V, ATX power-supply or PoE.
> > 
> > Notable peripherals are the 4 SATA ports, M.2 M-Key slot, M.2 E-key slot,
> > 2*2.5Gb pcie-connected ethernet nics.
> > 
> > As of yet unsupported display options consist of 2*hdmi, DP via type-c,
> > eDP + 2*DSI via pcb connectors.
> > 
> > USB ports are 4*USB3 + 2*USB2 on the back panel and 2-port front-panel
> > connector.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > ---

> > +&usb_host1_xhci {
> > +	dr_mode = "host";
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> > +	status = "okay";
> > +
> > +	/* 2.0 hub on port 1 */
> > +	hub_2_0: hub@1 {
> > +		compatible = "usb5e3,610";
> > +		reg = <1>;
> > +		peer-hub = <&hub_3_0>;
> > +		vdd-supply = <&vcc5v0_usb12>;
> Are you sure about this one? I couldn't find any schematics for this board,
> but both the bindings for usb5e3,610 and the datasheet[0] are saying this
> is the supply for the hub's internal logic which is typically ~3.3V. It's
> definitely not a supply for the vbus.
> 
> [0] http://www.sunnyqi.com/upLoad/product/month_1308/GL852G.pdf

yeah, you're right. The vdd-supply is coming from vcc_3v3 it seems
vcc5v0_usb12 is the phy supply instead.

Will fix that in v3.

Thanks for catching that
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
