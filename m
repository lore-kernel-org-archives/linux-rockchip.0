Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5611C43602
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 16:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5C7MopDqCBt3HW+BAOAttRdEiw8Pix2aPsmSHsHQEk=; b=j7HtXrp5vCmKir
	H0CqdAhFMrLN72aaWEJ9n6c7oc0kpaeepCayN/YB8QrwaK26xYMpOczJpmwhJfcBemidMMpfEt1Me
	Bn32XYaUxHGw72c1WUztPqGLKyP5J0XRhQ+OuE8R/QmmPGM8GhUx/lpnFUWRRbnL5GaayJq3PhCZZ
	k8iD/eyrPzHpFHLVc6DfbgWkM72tA5QR5he3a6HxSLGz4JjLc0Bw+UeP1H3BMCxfKhJuuWtYPq0+c
	tdPRNRACKBKfvvAqCyCJ3EY72domvLHv7aLn/vmEcYBBg26cxkpkIUguO3+036ORBFjOQjNJy92cD
	n03JQxVnOKA9VH3uIFgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8HD-0000000FQAv-2cOt;
	Tue, 07 Jul 2026 16:04:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8H6-0000000FQ9q-1uY7;
	Tue, 07 Jul 2026 16:03:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7204060018;
	Tue,  7 Jul 2026 16:03:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08EC71F000E9;
	Tue,  7 Jul 2026 16:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783440235;
	bh=VzanBIl/P1H1nynYPysN7FmIsOykUSWG68SMsrzYXo0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UFw4YemrE7yinlV44MlFnSxAJEvDkYWSz39aqURr3Pw93VpYqhat+Zr3Fpv/t1XRl
	 Cnki21bX11ijKnpEjr180jxDHaGknJ/t5H2omZrMqA51fBpuI9h44YxYtYTbiGfcYP
	 8r6+QswzKmaJ0KWKltlwKhpAJzsf/5lXVFSPNoQu/MLi8Fxwa4XbQNfz+4lLIu0vng
	 HoilOj7ZAWXnH3xLtbDPE30xpbCXl8/4LmXkEDiyFlK5OzXXDi6RvB+PI8a0vdBckb
	 KBBLdy0Pkj2F8Uzl5aweyNouhoO5IF8rHU0efLtDMSIQu7IkpTZHsW7uYoONDeYC0G
	 y4QAJvEKVFz2A==
Date: Tue, 7 Jul 2026 11:03:54 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board
 support
Message-ID: <20260707160354.GB3176120-robh@kernel.org>
References: <20260608060940.52549-1-hrushirajg23@gmail.com>
 <178301901903.3838694.3276523670393868229.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <178301901903.3838694.3276523670393868229.b4-ty@sntech.de>
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

On Thu, Jul 02, 2026 at 09:04:55PM +0200, Heiko Stuebner wrote:
> 
> On Mon, 08 Jun 2026 11:39:38 +0530, Hrushiraj Gandhi wrote:
> > This series adds initial device tree support for the Vicharak Axon
> > single-board computer, which is based on the Rockchip RK3588 SoC.
> > 
> > The Vicharak Axon is a feature-rich SBC targeting developer and embedded
> > use cases. It ships with:
> > 
> >   - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
> >   - RK806 PMIC providing all SoC power domains
> >   - eMMC 5.1 (on-board) and microSD slot
> >   - Gigabit Ethernet via RGMII (RTL8211F)
> >   - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
> >   - PCIe 3.0 x4 and two PCIe 2.0 slots
> >   - SATA 3.0
> >   - USB 2.0 host ports (EHCI/OHCI)
> >   - NXP PCA9554 I/O expander for status LEDs
> >   - Haoyu HYM8563 RTC
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: arm: rockchip: add Vicharak Axon board
>       commit: e0008b108aaf8c5aa22930b2ceadf8f894562acb
> [2/2] arm64: dts: rockchip: add Vicharak Axon board
>       commit: e08c3389c78dbefd31a57df8807cf57ef6f3c9b1

Both have issues and should be dropped.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
