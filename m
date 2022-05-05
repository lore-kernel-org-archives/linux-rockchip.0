Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88917C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 07:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vaR0W0uHuiQuHT2waOVTeuWmhFMR6jMpSArgA9cW8aM=; b=rVvgDrpS8jWDL4
	B0hXMEaHFyArtXqLcdW2e2atjDcNXTejxR6YmYK6uT+FZZgRIxP2L4WA7T9M4fP28xh+CmUUz3Xbr
	mzrirtgFMxSsu8U8+EQx3kPp36ViuHUbelfgfLkyuuOANO7qHBSiTykiNv4QXbsWvRD0o8a0klqdz
	x6UAm9QIcbqojHnguafcvH+PsALqQnAvIcwwP9K0PGmanLneMNzVQO3GuUEBp5NfFFl+O3JZ28zm/
	sqUFRasMCA3dc+WNSSlFGPwNRe3yKVA+zTXTmU+y0gCppqwlMbB5iskXuDFO6W7e05qQM97vqJ2G9
	VtWnyG3uE9OMkEP984OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmVpa-00ENRS-Ka; Thu, 05 May 2022 07:23:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmVpQ-00ENOr-4t; Thu, 05 May 2022 07:23:13 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nmVpI-0006ji-TB; Thu, 05 May 2022 09:23:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v11 16/24] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date: Thu, 05 May 2022 09:23:03 +0200
Message-ID: <2508329.Lt9SDvczpP@diego>
In-Reply-To: <20220505064131.GF4012@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <1911394.usQuhbGJ8B@diego> <20220505064131.GF4012@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_002312_227757_53DBE7CF 
X-CRM114-Status: GOOD (  20.78  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 5. Mai 2022, 08:41:31 CEST schrieb Sascha Hauer:
> On Thu, May 05, 2022 at 02:28:24AM +0200, Heiko St=FCbner wrote:
> > Am Freitag, 22. April 2022, 09:28:33 CEST schrieb Sascha Hauer:
> > > The VOP2 is the display output controller on the RK3568. Add the node
> > > for it to the dtsi file along with the required display-subsystem node
> > > and the iommu node.
> > > =

> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > Acked-by: Rob Herring <robh@kernel.org>
> > > ---
> > > +	vop: vop@fe040000 {
> > > +		reg =3D <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> > > +		reg-names =3D "regs", "gamma_lut";
> > =

> > reg-names does not seem to be part of the dt-binding.
> > Though now in the vop2-driver I see that the code uses that naming.
> > =

> > I guess we might want to just go the vop1-way by using numbered
> > platform-resources via a follow-up patch and drop the regnames here?
> =

> Or we could document the reg-names properties in a follow-up patch.
> Wouldn't that be better?

Also a possibility. Although that of course leads us into the naming
bike-shed ;-) ... i.e. for reg-names I'd do "vop" + "gamme-lut" (dash inste=
ad
of underscore) - instead of the ones used right now.

While using numbered resources would keep the commonality between
both vops



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
