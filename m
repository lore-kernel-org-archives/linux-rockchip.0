Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F1DFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 10:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIhv4Dkc7hhi5xcsdnv2/RGljY3tUpnX4sDuE6Wlj+Q=; b=QJCdBmWwp+YSFP
	bzcEze106Cp/J83wad6+btPn85fxccAqS+dpBX5gRm4AtkGagHSr5+8H1MiwdcE7WIgPTpLWEjyhb
	VUIvADdptsrSh3kCI/P7KRaGI0eG8wEp7y0heq5oyumAYBtJYxzNhNTAsuxQFdjdZoGbqtmiqqifV
	kxnihdINiJkMJT+X6fgzZ4h2eS+y/Jtb8eZaTCmWW461j7Tmn05dcZm1Ni+occgGYhZikTG052+ZE
	1sO7jD3aym4PtWDPbZaBKcnOt2DH/QBvaQm4YsqA7+LjGMlVS9ixXJ6K7HpsyHDui0cj55Bpk+8aQ
	daeNy5OGw6AhZlev6U8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd8Fs-002ni6-PG; Sat, 09 Apr 2022 10:23:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd8Fp-002ng7-FX; Sat, 09 Apr 2022 10:23:43 +0000
Received: from p508fd313.dip0.t-ipconnect.de ([80.143.211.19]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nd8Fg-0000g7-0v; Sat, 09 Apr 2022 12:23:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
 Frank Wunderlich <frank-w@public-files.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: Aw: [PATCH] arm64: dts: rockchip: Fix clocks for rk356x usb
Date: Sat, 09 Apr 2022 12:23:31 +0200
Message-ID: <9183927.T7Z3S40VBb@phil>
In-Reply-To: <trinity-71c38625-1a00-47d7-8e23-4f33f25a997a-1649499268581@3c-app-gmx-bap35>
References: <20220409075147.136187-1-linux@fw-web.de>
 <trinity-71c38625-1a00-47d7-8e23-4f33f25a997a-1649499268581@3c-app-gmx-bap35>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_032341_568454_1DE006CC 
X-CRM114-Status: GOOD (  14.01  )
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

Am Samstag, 9. April 2022, 12:14:28 CEST schrieb Frank Wunderlich:
> Hi,
> 
> > Gesendet: Samstag, 09. April 2022 um 09:51 Uhr
> > Von: "Frank Wunderlich" <linux@fw-web.de>
> 
> > -		clock-names = "ref_clk", "suspend_clk",
> > -			      "bus_clk";
> > +		clock-names = "ref", "suspend_clk",
> > +			      "bus_early";
> >  		dr_mode = "host";
> >  		phy_type = "utmi_wide";
> >  		power-domains = <&power RK3568_PD_PIPE>;
> > @@ -280,8 +280,8 @@ usb_host1_xhci: usb@fd000000 {
> >  		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> >  		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
> >  			 <&cru ACLK_USB3OTG1>;
> > -		clock-names = "ref_clk", "suspend_clk",
> > -			      "bus_clk";
> > +		clock-names = "ref", "suspend_clk",
> > +			      "bus_early";
> >  		dr_mode = "host";
> 
> this is the patch breaking it:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=33fb697ec7e58c4f9b6a68d2786441189cd2df92
> 
> suspend clock needs to be renamed too from "suspend_clk" to "suspend"
> 
> else i get this error on poweroff
> 
> xhci-hcd xhci-hcd.1.auto: Host halt failed, -110
> 
> regards Frank

ok, so do you want to send a v2 including that change?
Alternatively I can also add this change when applying.

Also for educational purposes, the format for referencing a commit
you're fixing would be

Fixes: 33fb697ec7e5 ("usb: dwc3: Get clocks individually")
Signed-off-by: ....


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
