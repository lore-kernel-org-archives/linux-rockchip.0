Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4AB6C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 07:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PaTVaHVaP6w+SCRK/TE6jYm/9Exmw1+K6h0+MBPeJ1A=; b=Unvt/ORzKNPolj
	Tyf+J0D4B6jag4eTy8aEBSPvDzga7r+3OMZdlJ7hqHIiaPCyoJuURL7imNoZwns68XVC2v4YkWGYU
	t89Nynr8keLHjpJW2KN4tWBXV/ajc4uYkPulA0gpUKAMO9yjF9SyG465MD+NkdcXSd+JEPs2tIFnu
	cczDQhVl7YF7yLKB9hE/qJZ2CLPN/cwIJKcy+MsiaTdZk7HujGAeXAI+fTDU8tg8xrK/mUtOe6MrA
	+MNlbI122XkbaFM01k0QnOlUHVU7eS7ti68gEZ6OWBb5plP86jtzeYuZZfLNL6D7aQMA4cdCCp6gW
	HE7DfEuh+XntN8I+I9uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1serj2-0000000CALj-0XwG;
	Fri, 16 Aug 2024 07:50:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sereo-0000000C9If-1KQI;
	Fri, 16 Aug 2024 07:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=k1rqrEp/hgoHj2qZTKIDmCM8YN6/xOQc45Uuml075HM=; b=JUb7yDP3quBbz3YJPP4izpsuJJ
	xBdwzYZb1tEl0yUWdPhOXKtLXJRhoqyJ2qV2J8b17nEZTZQGQYfLonDsrWG3sPt6ohw5gRgm3/jdx
	inS6+iYlt3T/NyETWp+nduY/rSUIyBoLwI31FJfVOOvfPHRnwDmlAjNd+GAkhQ5XjGkvGQhp1MWzA
	S8tFBrvN6F3ZDFHBEAoOorFn4+THrVzp9WnVwbLi6cW5aeHF60Femlxgpp+dC9IJ4ehNxHDrZf45W
	9SWea14LpGJwqqzAjB93x8XxcbLZQw/dvXRo6JmlwD1dMBivKsyPz7Z/dYcb+EqtxxxCJv8G4ljn4
	/AgeigKQ==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sereh-0007MW-1Y; Fri, 16 Aug 2024 09:45:51 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 1/3] dt-bindings: mmc: Add support for rk3576 dw-mshc
Date: Fri, 16 Aug 2024 09:45:49 +0200
Message-ID: <2504176.W2GruxG5Vl@diego>
In-Reply-To: <e640cbc4-6870-4607-a91e-0af41dd76df9@kernel.org>
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
 <5057223.82XvGhxQ46@diego> <e640cbc4-6870-4607-a91e-0af41dd76df9@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_004558_381636_77827622 
X-CRM114-Status: GOOD (  27.48  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 16. August 2024, 08:52:04 CEST schrieb Krzysztof Kozlowski:
> On 15/08/2024 15:49, Heiko St=FCbner wrote:
> > Am Donnerstag, 15. August 2024, 00:34:00 CEST schrieb Detlev Casanova:
> >> Add the compatible string for rockchip,rk3576-dw-mshc and add support
> >> for the rockchip,v2-tuning flag, a new feature of this core.
> >>
> >> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> >> ---
> >>  Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.ya=
ml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> >> index 211cd0b0bc5f3..0543cdb51c657 100644
> >> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> >> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> >> @@ -39,6 +39,7 @@ properties:
> >>                - rockchip,rk3368-dw-mshc
> >>                - rockchip,rk3399-dw-mshc
> >>                - rockchip,rk3568-dw-mshc
> >> +              - rockchip,rk3576-dw-mshc
> >>                - rockchip,rk3588-dw-mshc
> >>                - rockchip,rv1108-dw-mshc
> >>                - rockchip,rv1126-dw-mshc
> > =

> > this would mark the rk3576-dw-mshc as being the "same" as the
> =

> Not the same, but compatible.
> =

> > core rk3288 variant. rk3288 was the first controller introducing the
> > clock tuning for higher speeds. with the clocks being part of the CRU.
> > =

> > As we can see in later patches, this rk3576 though changes that
> > setup with moving the tunable clock configurations into the controller
> > itself.
> > =

> > So please don't claim to be compatible to the 3288, but instead start
> > a new block for this new set of controllers:
> =

> The question is can new device work with old compatible (without new
> features)?

the rk3288 and following have their clock phase tuning for hs-modes in
the main soc's clock controller. Hence you have the "ciu-drive" and
"ciu-sample" clocks [0].

On the rk3576 (and probably following) those clock phase settings moved
inside the mmc controller itself. So there are no external phase clocks
anymore.

So right now we have two types in the binding, the rk2928 type [1],
used on the old rk3066 and rk3188 socs, that did not support mmc hs-modes
and the rk3288-type which introduced phase tuning via clocks from the
main clock controller.

The rk3576 now switches to having phase tuning in the mmc controller
itself. So throwing that on unmodified code for the rk3288 will get you
degraded functionality, because the tuning won't work because there are
no "ciu-drive" and "ciu-sample" anymore .


And with that separate compatible we could also "tighten" the binding
a bit to make those additional clocks more explicit for the rk3288 type.


Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/arch/arm64/boot/dts/rockchip/rk3399.dtsi#n410
[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml#n27




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
