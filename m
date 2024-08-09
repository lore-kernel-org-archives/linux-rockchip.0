Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A683C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 17:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCr8i9o3C1ysYKItyDr8nzauJjXdxFg5wQJPzuN7ydk=; b=xrEhcpY6t0CBoH
	VWCrnFv/sRYLems8b9fkr631o22NR3J5iNY65ff/U2v1sJk1LhKeh5MCoyFvYBMd1VjHgQLS/vpUx
	5s5LIleJK8YEflUJpXR7KjkVLqIVv06MWU1i403TsWrwWpRNJpGzfn9ZGwsQKRgE6A9oUT1tiKmWe
	dgnk6VDLTVUr1MccHprB/IX+46Ra9dfL3wcj2hZlJAZ2nHD/W1zi+EZSuTx1qIkG/Pw1vn6JyZ7pa
	MzrX4IU1PjCvNpU3T5Axsw9UuW5T3B6Iyx5sctCIHpP0+vZ2IGrwA7irIjsq10jrVLF9u8N1BQK+z
	0Vgw7r0u7WTke9t9hPcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scTmn-0000000C77R-1Uq7;
	Fri, 09 Aug 2024 17:52:21 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scTmb-0000000C75p-1Bfl;
	Fri, 09 Aug 2024 17:52:10 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723225918; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=S+A9AILRdKvrlCGFSy00odNQG9O2FFEPDfwA4EBO4Iolg6H++cqpyDiDT4ZqftB3s4fNU0ZCdTf8jE8wKIpEOmHdieEqTVGrjq8GJpXQVkPuvXlX5/TruuLKW9zbst4QmvIPoCVKrGV3J1oe6mDIgHKNpplOjQpdGFPr1mxPpu4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723225918; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=1ql2EfSTUecIUIaUErNOW0M2LCtEFtewoUZd3lUg5SE=; 
	b=JkDNR4/Cq/ztLtHH/aHRuodAtw5XtbKrUvLmkZndhAEzvmSnK5NoDlcfLixq3RdP65WtShzm1u1VBIEDvK2sAuZmA47W4Bi5XI4eS/52ccYSVrTgjtrWjQprFID/cqE9Ury2IJkR4WleOtymck5VubsLgaBsni3Lenv6VslU+vk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723225918;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=1ql2EfSTUecIUIaUErNOW0M2LCtEFtewoUZd3lUg5SE=;
	b=J202LTRAanUypzJNuBchc173ecIXUZaNwBMvzG7CAEIPJFFCPdosOgURloAmgIdx
	NbXE+CEf0Shy7ced7eK9xAqgxhbhRJV/H8dt7Ay4rOnRrkBuXRXw54oXS1USyqUR9mw
	2Ib47arDAZI4JgtkF0kPtxA0sYDO4a7RrcHR2C2I=
Received: by mx.zohomail.com with SMTPS id 1723225916646903.4101544239923;
	Fri, 9 Aug 2024 10:51:56 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: Add rk3576 pinctrl bindings
Date: Fri, 09 Aug 2024 13:53:16 -0400
Message-ID: <22382840.EfDdHjke4D@trenzalore>
In-Reply-To: <20240809-dexterity-attention-8376b3b16d59@spud>
References: <20240808164132.81306-1-detlev.casanova@collabora.com>
 <20240808164132.81306-2-detlev.casanova@collabora.com>
 <20240809-dexterity-attention-8376b3b16d59@spud>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_105209_423976_3151549B 
X-CRM114-Status: GOOD (  18.11  )
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

On Friday, 9 August 2024 10:58:38 EDT Conor Dooley wrote:
> On Thu, Aug 08, 2024 at 12:39:55PM -0400, Detlev Casanova wrote:
> > Add the compatible string as well as the optional rockchip,sys-grf field.
> 
> Optional for all rockchip devices supported by this binding, or just the
> one you're adding?

It is only optionally used by rk3576. I can add it in an 'if:', or update the 
description with somthing like "It is used on rk3576 for i3c software 
controlled weak pull-up"

> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml      | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git
> > a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml index
> > 20e806dce1ecb..cd527ccc9e6bf 100644
> > --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > 
> > @@ -45,6 +45,7 @@ properties:
> >        - rockchip,rk3368-pinctrl
> >        - rockchip,rk3399-pinctrl
> >        - rockchip,rk3568-pinctrl
> > 
> > +      - rockchip,rk3576-pinctrl
> > 
> >        - rockchip,rk3588-pinctrl
> >        - rockchip,rv1108-pinctrl
> >        - rockchip,rv1126-pinctrl
> > 
> > @@ -54,6 +55,12 @@ properties:
> >      description:
> >        The phandle of the syscon node for the GRF registers.
> > 
> > +  rockchip,sys-grf:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      The phandle of the syscon node for the SYS GRF registers.
> > +      It is used for i3c software controlled weak pull-up.
> > +
> > 
> >    rockchip,pmu:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description:





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
