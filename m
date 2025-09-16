Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E136CAC599
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 03:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A5fQy9IxPvXC/0zvAMFv31q+/5T7Qej7u+f8s7GDYU=; b=YHqhoZ+8ezjDdP
	3MG6Ped/Da1pH9FVKFpz9+w/TFPRNP2HNl7TaxtvIrFQntJdlAYxrvNaKUwJTRSbRQtrnQuKZ17MP
	iAG8TYOLoM3COmfj6dsURZrxcCnznwVQf90xGOJv2WHnA7uDpIjZ1PzGWo+IQ2kp0fy9Qai608b11
	0FsGhr689dYBrYR0aC5JInvaZVoN1Occs+8drOcH2PKFoV9WFsT7ZEWgQdGeiz6urEiM42bW10jhO
	dxf0N5lcL9RrLo75ynoGyquPTJXMfV1BcLcpbyKMQu3T/veGwi2KKp1+iw1/+TEYL7iupb7kUn/2y
	sv/OKviliFkL/GIIOOpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMOC-00000006aqI-0ajE;
	Tue, 16 Sep 2025 03:29:56 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyMO7-00000006anc-3DMQ;
	Tue, 16 Sep 2025 03:29:54 +0000
X-QQ-mid: esmtpgz11t1757993315t735adbf3
X-QQ-Originating-IP: bCdIXwVAGF6MwENTPw+HEEysn9sINOX+5ML4W6MDpzk=
Received: from dkx-H410M-H-V2 ( [183.51.122.206])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 16 Sep 2025 11:28:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14883937900501578486
EX-QQ-RecipientCnt: 17
Message-ID: <EEABCC59F39E8FC5+04995f9826d047eeb5f4bada25c3dd93e50983b0.camel@t-chip.com.cn>
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Firefly
 ROC-RK3588-RT
From: Kaison Deng <dkx@t-chip.com.cn>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Peter Robinson
 <pbrobinson@gmail.com>, Jimmy Hon <honyuenkwun@gmail.com>, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Jonas
 Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, Andrew Lunn
 <andrew@lunn.ch>, Dragan Simic <dsimic@manjaro.org>, Wayne Chou
 <zxf@t-chip.com.cn>, Kaison Deng <dkx@t-chip.com.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, Heiko Stuebner <heiko@sntech.de>, Conor Dooley
 <conor+dt@kernel.org>
Date: Tue, 16 Sep 2025 11:28:33 +0800
In-Reply-To: <175794446144.2732898.9504412064423841025.robh@kernel.org>
References: <cover.1757902513.git.dkx@t-chip.com.cn>
	 <27b2ce7950fdbf28c6c8404c3f8be3c1c35d6b3c.1757902513.git.dkx@t-chip.com.cn>
	 <175794446144.2732898.9504412064423841025.robh@kernel.org>
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:t-chip.com.cn:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MXE8fio8Dejk8AUu/Aqvn7gY26XHjU32xF0F+vEcnzxjI2i5enOzEo6u
	B+Dh6kz80uah8B8wUaswfzDCl99idnuFMqxfqBmD0+Ozp1sdWfDcwP+omq8ENC20yjP/RPv
	sR3xDVUXXXsKQm0eoJCp51cc0OTFTG6g2omqHKYDPWy9IrGrpNbvj5APrDb4Y0SZi22En3y
	spzi1xIJjOgOdtkprq+niRa135qZMS/dheINQIHfKMc3aC+mhvWt+9oCtHxRyACbUKMh4S3
	zVvxDSykETpXHoObUGt09y+dhaGorYk1CC2ih+d6eKc+lNMedI0qPaUabqB0Qg8QRO9RmrW
	xhryliCL+TufmiSVO7yYQ8Puh2bGAs74td43hoEkNBIh34ks7eGfJsTAzeYHlO/jVvw8L5Z
	aSzDPiWoqD7BjY8yqD7pwN/IJl0MErhI+RLTeehgAsU66aqS0ZKu4yCJKvt96J7aUOOYe5g
	HltZQAr89sq7tbcOlQzBQ3ZCTmPUUX/bOvCY23ptl0oTOltYRHyqqT87ey4fWKlRxJ/eoLB
	7Mw1ay3A3qTJXxZ0hqNSmEIsZ42nExMzvc6aOrUPBXLMuU4fpCQ1AdXbgzp08zlfwUpXZtA
	Z4u/htrpaxMF6n3rgEEFhNLw2BnmmNZoMJVduT3C0+g2MpdHu6ZjBx+Xr+gR/KRRWZ2wmPx
	zFJoZcv/wQKaBKdudUUoiBtz2ibMrYLbxCAYYWj6zKFqQnaWLix1tDtz4wzuNkHIYEVQO3L
	jAV1peDbst0RDjfc2FJol4FKi8Lsn0lX547hpJ6Gsf88XAgZ71CE/XzAUclfDLITIGJ8E0z
	7V0EOeVvsvDIx544wcZiRj4U2u1T2FboByeh52UqYuephd1BwtfXXHy0B9QfGxkk4ZF3fm0
	JcfhmDYIm+Xig8tryg2jDRD/gSxC9GFYLqPCX32hs3nq5h3BtlGrYI43Cd/Iq6gmvjqb5xo
	5SJPcLaKNJJKYyxgGXpM9b8aBqC8Wqo8vD5tCoRtZFQ7JUm4lh5l8ha8jYq4xJR+k3/a0Mo
	mte8wVBFwqnZp/spPEfRFyDyhGKaDkvuLZlVCfWJKRXaz3QiJC
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_202952_164548_F04C45C7 
X-CRM114-Status: GOOD (  15.98  )
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

On Mon, 2025-09-15 at 08:54 -0500, Rob Herring (Arm) wrote:
> On Mon, 15 Sep 2025 10:22:04 +0800, Kaison Deng wrote:
> > This documents Firefly ROC-RK3588-RT which is a SBC based on RK3588
> > SoC.
> > 
> > Link: https://en.t-firefly.com/product/industry/rocrk3588rt
> > 
> > Signed-off-by: Kaison Deng <dkx@t-chip.com.cn>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions.
> However,
> there's no need to repost patches *only* to add the tags. The
> upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> Missing tags:
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 

Ok. Do I need to resend the next version for the missed tags?

Kaison



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
