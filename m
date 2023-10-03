Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F350E75434
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Oct 2023 08:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUJVvjnUrcx/BkiDlHZg4W0cq+HGxuELy8pXhqIr85c=; b=sR4ciUmScsU4lo
	bLKGSwOciQnEQMQ9wKS/R8wAxSIrVplpd4iMY1OG5bOPpBMtPK0enbplF49m4d01FwkSEqt8VgUJl
	R4CYLGmNEz6FwMkmkNadRpktZ3e7DnwAhmwnbCjLbmMe89iBzBd06yGrjn5M6W1hp9Z4shIAmIKCi
	tVws8YJX6bEDa7AA6fiP1NrbvrhGPcWH+p8r9UP5dLRc4bpOrrbP4oemmDMGeyMkNfu/VmFJAPL14
	up13U3xyQ8VPv5EZzVszvYAmrAKmOQeg3imKJfzxEUt13rQc7iBkUIvk3cSUByd1Mmns4lKUh4zjy
	Lqx72CatslJIIEmbJcNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnaxJ-00EANx-1F;
	Tue, 03 Oct 2023 08:40:37 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnaxG-00EALU-0x
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Oct 2023 08:40:36 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2FBB660005;
	Tue,  3 Oct 2023 08:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696322428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YD9yrtCBZymzxDesfTQGfoyNHVBYtaajgX0MUzZwAM4=;
	b=it9nvDErLS3Dkumv3tt0+U8MyhdevvVnbQwCziN4asSKSbyARA7h9PvLo2sfSHeQ6e5jnb
	JyeqldpAwATrCmH2XtT9x8Uw3Kn+BtEvm96fyJkzGiTW/dj/1eeamkmoliQ0dLQcNsp9Cr
	tC5Jj9xnsOUIYT1LC0IlFPyGpWbUXbncdlz2ve6LVYaAWeKEFaSJ1J1fpJHRSmMie8N2C5
	peoKR0TaXLkVUFr6dYTvhoEAReeN2XF9TrNgVavMYJcRI9yj8lskfA4XGUssgqclYZoHzi
	WOkyfGmE4MfbaGOXlwkNmtNL2iCsou3zL9/P1oQ4sDqQMQb/tvQiK4/TcmOv2w==
Date: Tue, 3 Oct 2023 10:40:22 +0200
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: mchehab@kernel.org, heiko@sntech.de, ezequiel@vanguardiasur.com.ar,
	hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, paul.kocialkowski@bootlin.com,
	miquel.raynal@bootlin.com, maxime.chevallier@bootlin.com,
	luca.ceresoli@bootlin.com, thomas.petazzoni@bootlin.com,
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/3] media: dt-bindings: media: add rockchip-vip
Message-ID: <ZRvTdm5cTMT1tHlM@pc-86.home>
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
 <6fa90df50c201dec70165c5138bc837f5a8829b5.1695981374.git.mehdi.djait@bootlin.com>
 <20231002171801.GA1942512-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231002171801.GA1942512-robh@kernel.org>
X-GND-Sasl: mehdi.djait@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_014034_482952_791265F4 
X-CRM114-Status: GOOD (  21.98  )
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

Hello Rob,

Thank you for the review!

On Mon, Oct 02, 2023 at 12:18:01PM -0500, Rob Herring wrote:
> On Fri, Sep 29, 2023 at 12:08:00PM +0200, Mehdi Djait wrote:
> > Add a documentation for the Rockchip Camera Interface controller
> > binding.
> > 
> > This controller can be found on platforms such as the PX30 or
> > RK1808, RK3128 and RK3288. The PX30 is the only platform
> > supported so far.
> > 
> > Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> > ---
> >  .../bindings/media/rockchip-vip.yaml          | 91 +++++++++++++++++++
> 
> filename should match compatible.
> 
> >  1 file changed, 91 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vip.yaml b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> > new file mode 100644
> > index 000000000000..33c603209c39
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> > @@ -0,0 +1,91 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/rockchip-vip.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip VIP Camera Interface
> > +
> > +maintainers:
> > +  - Mehdi Djait <mehdi.djait@bootlin.com>
> > +
> > +description: |-
> 
> Don't need '|-'.
> 
> > +  Rockchip Video Input Processor present on PX30, RK1808, RK3128 and RK3288
> 
> Write complete sentences.
> 
> 
> 
> > +
> > +properties:
> > +  compatible:
> > +    const: rockchip,px30-vip
> 
> I see 4 SoCs listed, but only 1 compatible.
> 

PX30 is the only SoC I have used to test the driver. What is the best
way to proceed here ? Change the description ?

ack for all the other comments. 

--
Kind Regards
Mehdi Djait

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
