Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEC27C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 07:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibTWobkHq7N1zxHoTNhEXd8Etg7UJCdI5EyKqV5VARw=; b=SP+LNbbBOpuSTN
	LuJNgnqPFHWKFXPt1l2QY9FqM2R2fct/yPaaV5tN3KNn5x/GZXx6Fzq/jFiKjKmaAvM/MZW8RaOx+
	oSCm81QeekkWbBBzg58+fKYLYbCPxyLe930gZXyoGifWszDZZJ/gcXUTW3srwu9MHc4rbO/shxZVE
	erX6K0K+B6Wz9bNv3jW1iYFnBYwBwyrhjj587zDs4fkuEVy+0rxj7eOiCb4Rql1Z13NmUA9C/JLN+
	2kwpaTkxcvcsZ5XdIfaphaokSB/WdQ4ys08byxXQdLTiO3DADU5HChjuKv9jaaz1a+pvtP92NFsWL
	D0f5VuCCZA5Dr/zXM8Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqVqf-009Sgv-VQ; Fri, 26 Nov 2021 07:40:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqVqQ-009Scw-Hh
 for linux-rockchip@lists.infradead.org; Fri, 26 Nov 2021 07:40:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mqVqL-00055I-Gi; Fri, 26 Nov 2021 08:40:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mqVqH-0003zL-Jk; Fri, 26 Nov 2021 08:40:21 +0100
Date: Fri, 26 Nov 2021 08:40:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 08/12] arm64: dts: rockchip: rk356x: Add VOP2 nodes
Message-ID: <20211126074021.GH28260@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-9-s.hauer@pengutronix.de>
 <8451aeb1-03c9-6c90-c95e-c4a76e2159b8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8451aeb1-03c9-6c90-c95e-c4a76e2159b8@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:33:04 up 281 days, 10:56, 123 users,  load average: 0.11, 0.15,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_234030_595980_A9542C96 
X-CRM114-Status: GOOD (  32.89  )
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

On Thu, Nov 25, 2021 at 09:25:28PM +0100, Johan Jonker wrote:
> Hi Sascha,
> 
> 
> On 11/17/21 3:33 PM, Sascha Hauer wrote:
> > The VOP2 is the display output controller on the RK3568. Add the node
> > for it to the dtsi file along with the required display-subsystem node
> > and the iommu node.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 52 ++++++++++++++++++++++++
> >  1 file changed, 52 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > index 46d9552f60284..6ebf7c14e096a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> > @@ -447,6 +447,58 @@ gmac1_mtl_tx_setup: tx-queues-config {
> >  		};
> >  	};
> >  
> 
> > +	display_subsystem: display-subsystem {
> > +		compatible = "rockchip,display-subsystem";
> > +		ports = <&vop_out>;
> > +	};
> 
> Some DT sort rules:
> 
> For nodes:
> Sort things without reg alphabetical first,
> then sort the rest by reg address.
> 
> > +
> > +	vop: vop@fe040000 {
> 
> > +		compatible = "rockchip,rk3568-vop";
> 
> From rockchip-vop2.yaml:
> +properties:
> +  compatible:
> +    enum:
> 
> +      - rockchip,rk3568-vop
> +      - rockchip,rk3566-vop
> 
> Maybe sort yaml compatibles in alphabetical order.
> 
> rockchip,rk3566-vop is not used in the dtsi I think.
> 
> Comment by Andy Yan:
> > 
> > But take care that the vop on rk3566 has a special limitation: there are 
> > three
> > 
> > windows(Cluster1/Esmart1/Smart1) that have a mirror lock, that means they
> > 
> > can't be programed framebuffer address independently , they can only
> > 
> > share framebuffer address with Cluster0/Esmart0/Smart0.
> 
> Question:
> Given Andy's comment could someone explain weather the vop and hdmi
> nodes should be in rk3566.dtsi and rk3568.dtsi with an extra
> rockchip,rk3566-dw-hdmi compatible?

We could put the vop/hdmi nodes into rk356x.dtsi and just add the
compatible properties to rk3566.dtsi and rk3568.dtsi.
We'll need the exact SoC type, besides the mirror lock thingy there are a
few other minor differences between the SoCs.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
