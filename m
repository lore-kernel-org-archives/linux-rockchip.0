Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 856B5CEBF80
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 08:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eupb+vuaQAGXLulJI7w+dPTW9mnlZVV9JpstCe/hFs=; b=FCxCYipBwn7h56
	dY71Y9hE06iVLkGk9Kn36zm+ly0ryMvCVlvKFbSqeiQYoqjR65tJeWA2it68TxACx8D+hK4e2UcNM
	AhGFeTzUcG4M/mEqgq6qea69VPSiEdVBtGwvwfwdfEu3TnF5t69Ow2UfNW7pWesFX6KjHWYo5TE1O
	6nm3x3zvr8R3NUyFQmWmasj6Deg9ol+txEQ6YrZZfWYqnEF7Jw7rFNULu8jylq3coXaTSN6ZYXIZY
	PW5xH+JbmJvlSTyPMsXL1PrFhHN1wXZoVedc1y8AugC20L0wbYSPDua+dygWw4UKQQMdzeFyL6i4N
	IrsuzQyWh2sR4DGouFVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su5wV-0000000AQot-0u70;
	Fri, 27 Sep 2024 08:03:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su5vZ-0000000AQe4-0IpX;
	Fri, 27 Sep 2024 08:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=VrHmD3qjrTGLP9NWMXSPhKgSjDl2KVnQsH7jouH3UsI=; b=QLSmztucKNR9BO55sYkVhudf8M
	zxv4k5lSfkeSk9O/fAfcX+6YrDVdYAJ4BXUdhMzUt2GlIDFp/VFi+wKbizLPemDqINc5q+BdwGlUm
	KAnzGihqcTR1VEqDfA2GidGdVaB2FTCyLA8yd7BT4TW8+UoXXAbiaZo2ii5a4iBGMkQnOXWyl3spz
	+gJXa6F4pqt+uGWneO8VsAP4tnIbY/vMfzfv1OvTOw+xB/IDp/iSneW81xEAthSAqdmYAKW0MP8O5
	N3L0b4Ay2DAgQ3cq0ZE9q7Jf/H1RL4z47VoVXe7EyTTu8/MQDeH6/vscyWyejC0MGjVqwVs6UNSYX
	kH7HbgnQ==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1su5vT-00009l-Ez; Fri, 27 Sep 2024 10:02:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wang <frawang.cn@gmail.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Fri, 27 Sep 2024 10:02:05 +0200
Message-ID: <20816071.Yz81rIOvuz@phil>
In-Reply-To: <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
References: <20240926103223.29538-1-frawang.cn@gmail.com>
 <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
 <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_010213_147854_35D38898 
X-CRM114-Status: GOOD (  18.53  )
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

Hi Krzysztof,

Am Freitag, 27. September 2024, 09:30:30 CEST schrieb Krzysztof Kozlowski:
> On 27/09/2024 09:01, Frank Wang wrote:
> > Hi Krzysztof,
> > 
> > On 2024/9/26 22:19, Krzysztof Kozlowski wrote:
> >> On 26/09/2024 12:32, Frank Wang wrote:
> >>> +  - if:
> >>> +      properties:
> >>> +        compatible:
> >>> +          contains:
> >>> +            enum:
> >>> +              - rockchip,rk3576-usb2phy
> >>> +    then:
> >>> +      properties:
> >>> +        clocks:
> >>> +          minItems: 3
> >>> +          maxItems: 3
> >> Read one more time the example I gave you. Top-level constraints are
> >> saying max one clock.
> >>
> >> Best regards,
> >> Krzysztof
> >>
> > 
> > Sorry for overlooking this, I will set both "clocks" and "clock-names" 
> > to true, and add the else case below the above codes for the "old" SoCs.
> > Just like the below.
> > 
> > -  clocks:
> > -    maxItems: 1
> > +  clocks: true
> > 
> > -  clock-names:
> > -    const: phyclk
> > +  clock-names: true
> 
> For the third time, read the code I gave you. Do you see something like
> this there? Why doing all the time something different than existing code?

On vacation right now so late to the party, and somewhat confused :-) .

I've tried to find the code you mentioned, but did fail.
In [0] you mention "maybe oneOf". The other replies in that version were
about the ordering needing to stay for the older phy variants.

[1] in v2 has that NAK thing and [2] from v3 references that example again

I am probably just blind, but could use a pointer.


Because I think going with a
  - if:
      properties:
        compatible:
          contains:
            enum:
              - rockchip,rk3576-usb2phy
    then:
      properties:
        clocks:
          minItems: 3
          maxItems: 3
        clock-names:
          items:
            - const: phyclk
            - const: aclk
            - const: aclk_slv
    else:
      properties:
        clocks:
          maxItems: 1
        clock-names:
          const: phyclk

block should actually make sure each variant will check for the appropriate
number of clocks?

And having clocks:true in the main part then makes sure that the property
is not getting marked as:
arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dtb: usb2-phy@0: 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/phy/rockchip,inno-usb2phy.yaml#


Heiko


[0] https://lore.kernel.org/lkml/snccizbw6thn3lhwad4xppp7vqii4p56ttl2gufwc3ke7vfckf@e4b7nvwwtdfr/
[1] https://lore.kernel.org/lkml/2a4200ac-3ea2-4449-94ac-c4b9f37ad800@kernel.org/#t
[2] https://lore.kernel.org/lkml/ed829240-d4f7-471f-84f6-3509f87f11a1@kernel.org/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
