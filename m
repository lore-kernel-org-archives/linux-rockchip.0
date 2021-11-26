Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF46C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 08:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jS87y7EuYdkzQgK5ocXOTstLrrfsPuDE1DvefL5Dcjc=; b=NEoXsxb16xrPRn
	mH3MRZ3QlpWP4P1Neyie7izO2T2Faf/EEThtT8rT76Mj9C83iVZYcz3AWYB0dg2Gl85oom9Yp2S6K
	Q5WoVEf7XnHa1Hj1Oj+g/AzMO/x/fIY8bkmXFPn60LIdN2ptHT/lkJlPMWZwH/5v9r5wiihSG2GLA
	rNSIEbA2zM6ixWlh0UhoDKoO53S6WH/xGK3FJ1lMdjBEYrChtliWF9CHprkQfVbOk94IhvsHfbfez
	VUWFpRRNHGP0J5r9+HdoXys9if0SMjG9Bxz+PPu/f+WVg+uP3uDMfP0RZNu4HwpIQtRChwFbLN9sa
	zNB3XPv7eorV4MamCBZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqWOo-009ad6-ON; Fri, 26 Nov 2021 08:16:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqWOc-009abD-2N; Fri, 26 Nov 2021 08:15:51 +0000
Received: from ip5f5b2004.dynamic.kabel-deutschland.de ([95.91.32.4]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mqWOX-0008Mz-Bs; Fri, 26 Nov 2021 09:15:45 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/12] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Date: Fri, 26 Nov 2021 09:15:44 +0100
Message-ID: <2143457.uCsENmBeE3@diego>
In-Reply-To: <20211126074021.GH28260@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <8451aeb1-03c9-6c90-c95e-c4a76e2159b8@gmail.com>
 <20211126074021.GH28260@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_001550_153543_99392A80 
X-CRM114-Status: GOOD (  29.40  )
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

Am Freitag, 26. November 2021, 08:40:21 CET schrieb Sascha Hauer:
> On Thu, Nov 25, 2021 at 09:25:28PM +0100, Johan Jonker wrote:
> > Hi Sascha,
> > 
> > 
> > On 11/17/21 3:33 PM, Sascha Hauer wrote:
> > > The VOP2 is the display output controller on the RK3568. Add the node
> > > for it to the dtsi file along with the required display-subsystem node
> > > and the iommu node.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
> > >  1 file changed, 52 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > index 46d9552f60284..6ebf7c14e096a 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > > @@ -447,6 +447,58 @@ gmac1_mtl_tx_setup: tx-queues-config {
> > >  		};
> > >  	};
> > >  
> > 
> > > +	display_subsystem: display-subsystem {
> > > +		compatible = "rockchip,display-subsystem";
> > > +		ports = <&vop_out>;
> > > +	};
> > 
> > Some DT sort rules:
> > 
> > For nodes:
> > Sort things without reg alphabetical first,
> > then sort the rest by reg address.
> > 
> > > +
> > > +	vop: vop@fe040000 {
> > 
> > > +		compatible = "rockchip,rk3568-vop";
> > 
> > From rockchip-vop2.yaml:
> > +properties:
> > +  compatible:
> > +    enum:
> > 
> > +      - rockchip,rk3568-vop
> > +      - rockchip,rk3566-vop
> > 
> > Maybe sort yaml compatibles in alphabetical order.
> > 
> > rockchip,rk3566-vop is not used in the dtsi I think.
> > 
> > Comment by Andy Yan:
> > > 
> > > But take care that the vop on rk3566 has a special limitation: there are 
> > > three
> > > 
> > > windows(Cluster1/Esmart1/Smart1) that have a mirror lock, that means they
> > > 
> > > can't be programed framebuffer address independently , they can only
> > > 
> > > share framebuffer address with Cluster0/Esmart0/Smart0.
> > 
> > Question:
> > Given Andy's comment could someone explain weather the vop and hdmi
> > nodes should be in rk3566.dtsi and rk3568.dtsi with an extra
> > rockchip,rk3566-dw-hdmi compatible?
> 
> We could put the vop/hdmi nodes into rk356x.dtsi and just add the
> compatible properties to rk3566.dtsi and rk3568.dtsi.

sounds about right. We have similar solutions in place in other socs.

Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
