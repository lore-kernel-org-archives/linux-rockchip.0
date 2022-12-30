Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2D2C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Dec 2022 17:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPZ0EP//el++DCAtFdJtNDcN8OlPXyVoojI/pENBitM=; b=owuUR5WJTrCjgY
	k7w3GXurSmlhXwXBAgNRmuPo4g0CN//jKigm8A7Uy36rHK9hIgJxsisfi8fo6PFN/qtVl/rd1ZW1g
	bybB13PB0U6rS0LmD8R/ENC9wVoRb+kkeghV2OX86ZHC2S6oF0zc6xuCRgrz6sGYyBPxZLJRRCJ57
	s1g35YICnsWicXLhDoA574nx0BtfmjuSTRBC0rOI//M8V/ULf7U3kxEnNspjldJoQrnfLahgHfdUp
	Zf/Lz4Sp3ieucW23qcXqo4zrkIpgSffIZNQBH5KeS+9peeQ4a4XxqcjMOmyGZ5T6mj/hWrXzbt2ks
	6ncHvzV88Z3QstkOYkLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBIza-00BSNs-0i; Fri, 30 Dec 2022 17:16:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBIsU-00BOkQ-L9; Fri, 30 Dec 2022 17:09:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 98FDD61B0E;
	Fri, 30 Dec 2022 17:09:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D798AC433D2;
	Fri, 30 Dec 2022 17:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672420144;
	bh=GvOiKqNHF1H13zIfDzDktRmecgOy4gbqAWyr1vFM/84=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=Pa2dtf4MfixEfHN8xynX38q0GPGJHp0VN/zKLX/gGc1+pO+MPbw56VNkUFU3lBg9q
	 uK4rcvqNnC4iWfRvp+Nvc2zrw4OI48KnOUVk93nnXmwGuS70rQJmmSAtN9zSWBqfjl
	 yie+H8PXjJY9Ax9Yc9eJdgqM6Y/yE79v8yBsMUp6XtUjQ+RfltNqjF4JjTsb4TkQCt
	 KdbkKQ9JF/5FR4hoRpROuWiYP5yp3h6hunc9C+2/lxeRWqiWcspsZfIKNjLdK/PP71
	 2fJmYLNEzZt1Dr8UWy7G8g/ilV8rcjgx+qdf0/Cl7Y3SIIQVPCCvNDAlFujz7zytsT
	 zJPYBtdTa76xw==
From: Felipe Balbi <balbi@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Heiko Stuebner
 <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-usb@vger.kernel.org"
 <linux-usb@vger.kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains
 property
In-Reply-To: <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
References: <20221219191038.1973807-1-robh@kernel.org>
 <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
 <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
 <87o7rlffi7.fsf@balbi.sh>
 <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
Date: Fri, 30 Dec 2022 19:08:58 +0200
Message-ID: <87k028g6ol.fsf@balbi.sh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221230_090906_787738_BC3F8E7E 
X-CRM114-Status: GOOD (  23.50  )
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


Hi,

Rob Herring <robh@kernel.org> writes:
>> >> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
>> >> > >> >  1 file changed, 3 insertions(+)
>> >> > >> >
>> >> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> >> > >> > index 6d78048c4613..bcefd1c2410a 100644
>> >> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> >> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
>> >> > >> > @@ -91,6 +91,9 @@ properties:
>> >> > >> >          - usb2-phy
>> >> > >> >          - usb3-phy
>> >> > >> >
>> >> > >> > +  power-domains:
>> >> > >> > +    maxItems: 1
>> >> > >>
>> >> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
>> >> > >> maintainer to get comments.
>> >>
>> >> Felipe is correct. We have 2 power-domains: Core domain and PMU.
>> >
>> > Power management unit? Performance management unit?
>> >
>> > That doesn't change that the rk3399 is 1 and we're stuck with it. So I
>> > can say 1 or 2 domains, or we add the 2nd domain when someone needs
>> > it.
>>
>> Isn't the snps,dwc3.yaml document supposed to document dwc3's view of
>> the world? In that case, dwc3 expects 2 power domains. It just so
>> happens that in rk3399 they are fed from the same power supply, but
>> dwc3' still thinks there are two of them. No?
>
> Yes. That is how bindings *should* be. However, RK3399 defined one PD
> long ago and it's an ABI. So we are stuck with it. Everyone else put

Are you confusing things, perhaps? DWC3, the block Synopsys licenses,
has, as Thinh confirmed, 2 internal power domains. How OEMs (TI, Intel,
Rockchip, Allwinner, etc) decide to integrate the IP into their systems
is something different. That is part of the (so-called)
wrapper. Different integrators will wrap Synopsys IP however they see
fit, as long as they can provide a suitable translation layer between
Synopsys own view of the world (its own interconnect implementation, of
which there are 3 to choose from, IIRC) and the rest of the SoC.

Perhaps what RK3399 did was provide a single power domain at the wrapper
level that feeds both of DWC3's own power domains, but DWC3 itself still
has 2 power domains, that's not something rockchip can change without
risking the loss of support from Synopsys, as it would not be Synopsys
IP anymore.

> power-domains in the parent because obviously the DWC3 has 0
> power-domains.

How did you come to this conclusion?

>> It's a similar situation when you have multiple clock domains with the
>> same parent clock.
>
> Yes, that's a common problem in clock bindings too. Not really
> anything we can do about that other than require a detailed reference
> manual with every binding and someone (me) reviewing the manual
> against the binding. Neither of those are going to happen. Even on Arm
> Primecell blocks which clearly (and publicly) document the clocks,
> we've gotten these wrong (or .dts authors just didn't follow the
> binding).

Heh

-- 
balbi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
