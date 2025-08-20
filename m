Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A4BCA0EF8
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 09:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zjVYpNGzIFZCP05L6cc1pwXlm93rSa33/ElMmbnXEY=; b=4sJgQUP6M2O7xC
	mVrDuE2OhXHryiuN7M4xd3cqztW1L5aIrPfrGoMiROEvV2ellR2ie8l0VRcDhDbjhusN639JKut8j
	daTg91YAGKdINeByMt6DtH02AnM/WlJLuX2AVegHclnnNZm6LFejMFcbKr11vXENtgRkCFP01bFJX
	dZYcEXBa0nAcih15I4DV18Zh0VL69ATViKral/3+Z+vNVRIrGghVOTIrBNTx6U5TdeE4wTCnH/pCy
	+4hjYQglf4n5RJ2lAM6l7zIx+e6Nf6TrysDbFDZb8X0/pgnjvL6FKHmM3P7xMNbj8ynR15g9Dypwd
	u8S9njZLR76thDh5wa2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoekl-0000000Cq1G-2SWC;
	Wed, 20 Aug 2025 09:05:07 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uodxt-0000000ChCr-1IbD
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 08:14:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A27C56113B;
	Wed, 20 Aug 2025 08:14:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E08A0C113D0;
	Wed, 20 Aug 2025 08:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755677676;
	bh=Q0amB+FLN0DKHfucM8btGqFHkdrP29AlfTdO55mBX58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cvcgfbvS6AsdIkvJMpDJNKGzo221HJZRMdcyFRDHWAMrBbTVX1tnPNSNsugIoaj7I
	 v5vK2w3XllMb+jW38L1BUIgzU9Sg2va5GYCyRTEp88dH1zhat3N4Q8sKRWSkZCyPuk
	 him2qQyqT9SmbJGhAq5gABuTTDg1qGJQx57Mjv426uOahFC+95JgcBpjHOWaXu1fVR
	 ZnkjtM6XqbuiDkFLhF7mtPBb6oclYlJ8/RDPF4EewW2M7DSCtvizmMAcb4RXXja9lT
	 MZGGnW+dp2TGAwyfuCNtBu3keCcn4LFrE6M8S58tjvAdSP8xOuqlp55UCCxHlydhob
	 uYsYemGDsE8VA==
Date: Wed, 20 Aug 2025 10:14:33 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: leds: Clearly mark label property as
 deprecated
Message-ID: <20250820-hairy-economic-wildebeest-ba25a1@kuoka>
References: <20250815104805.405009-1-didi.debian@cknow.org>
 <b30905fa-6bd1-47dd-8371-f609d418387b@kernel.org>
 <DC2ZLORG11W0.1CS78L6F2OV4Q@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DC2ZLORG11W0.1CS78L6F2OV4Q@cknow.org>
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

On Fri, Aug 15, 2025 at 02:06:49PM +0200, Diederik de Haas wrote:
> On Fri Aug 15, 2025 at 1:00 PM CEST, Krzysztof Kozlowski wrote:
> > On 15/08/2025 12:47, Diederik de Haas wrote:
> >> The text description already mentioned the label property was
> >> deprecated, but using the 'deprecated' property makes is clearer and
> >> more explicit.
> >> 
> >> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> >> ---
> >>  Documentation/devicetree/bindings/leds/common.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >> 
> >
> > Please first read previous discussions:
> 
> [I reversed the order of the links so the oldest is first]
> 
> > https://lore.kernel.org/all/20221122111124.6828-1-cniedermaier@dh-electronics.com/
> 
> Rob: "They ['function' and 'label'] serve 2 different purposes."
> 
> > https://lore.kernel.org/all/20240509110545.49889-1-linux@fw-web.de/
> 
> Krzysztof: "I don't think there was conclusion to make it deprecated on
> last attempt"
> 
> I agree.
> What I don't understand: Why wasn't the text updated to correct the
> incorrect statement about deprecation (that's how I interpret it now)?
> Or some other conclusion being made and that that will be reflected in
> the text and/or a deprecated property.
> 
> Otherwise the confusion remains and then it's just a matter of time
> before a 4th person comes along proposing the same patch.
> And possibly even more harmful: people use it incorrectly.

Whatever change you want to do here, I expect to address one way or
another these previous discussions. If the code is confusing, refine the
description. But not in a way which ignored previous feedbacks.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
