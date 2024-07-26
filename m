Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A790C3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j7a/jepTrUvtLxqhljQ/eYJAxiuPadnQYEigdKEu900=; b=A/tisSGwB5Pwyz
	50vwEibKGumhw8NNslfyWiNjFfEOeu3i2PjEgYB2MZsxS9omOWWLaFYLxWinPCf3c9/KW/S3LpdZy
	G/1dghhViB+6pCcH+HCQqpd+rhbopO6anedYiqtcXLRKBlBCaMcW+BL6tVh4O/9/p2m0VIenCWJgc
	FWg3rcpRWQ/cAk+L3QmlrvifN4Hlgf8QjHO4KKlSiaGLnwADxtXaJfuj7+qYbosRrudXYHaBCRzyK
	tWjoVMPSl5S+akDiWn8EmNuOQfI9b7SyqKLpd1Rdtd1ZEUIrHsPpqNzdbecJsPMqb8VtnNhHhr/kw
	CnQnxwa4iW2k3bxzurTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXTKK-00000005C10-1eXS;
	Fri, 26 Jul 2024 22:22:16 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXTJt-00000005Bt7-1UPS;
	Fri, 26 Jul 2024 22:21:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A6667CE13B3;
	Fri, 26 Jul 2024 22:21:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C092FC32782;
	Fri, 26 Jul 2024 22:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722032506;
	bh=sdQCLSxH2SZWba0zwiskrjW/AKOsVQ4oOsTR42AxIpA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=qYcPziJAIqn+i+6SiIwlNUSR6tpl2/6m9Czqsk9Rx592FeNev+M3hE87g2zPYasJg
	 6KYrXi+ou6/IZ74k+yKDX45CZjIehQnBZZ6L1ZuPUdMZxEqOHEuzmowFR3ugIXmrIm
	 +q+DuQESSSgjAnEpnGwArxI4pKLOaEq7i/GIbzUm/d1WgZFBIF8C0roOt6pb3JO/CT
	 T+d6IFfTuPubF1yR/MuRZzwh2Z3HQ8IJeK1rUBRHcPZm1vaQvW+v3RKHxsUc9EhOg2
	 sA/lnGkZI2q2XDpbcZfEYJx82CFa6cyttI/Jhv9Pz7VihrWyhC1Sv3wgyzBFWt1p8F
	 8Btv1HeQQGnog==
Message-ID: <00f9f4b8722d97b1c6fcec27d53bc06d.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240718-prozac-specks-6b5fd8b83e3e@spud>
References: <20240715110251.261844-1-heiko@sntech.de> <20240715110251.261844-2-heiko@sntech.de> <20240716-deceiving-saucy-851fb2303c1f@spud> <3178118.zE8UqtGg2D@diego> <20240718-prozac-specks-6b5fd8b83e3e@spud>
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for voltage-controlled-oscillators
From: Stephen Boyd <sboyd@kernel.org>
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Conor Dooley <conor@kernel.org>, Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>
Date: Fri, 26 Jul 2024 15:21:44 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_152149_591807_23E63ECA 
X-CRM114-Status: GOOD (  18.21  )
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

Quoting Conor Dooley (2024-07-18 08:59:50)
> 
> FWIW, I wouldn't classify this as device-specific. "enable-gpios" and
> "vdd-supply" are pretty generic and I think the latter is missing from
> the vast majority of real* "fixed-clocks". I would expect that devices
> where the datasheet would call
> 
> * Real because there's plenty of "fixed-clocks" (both in and out of tree)
> that are used to work around the lack of a clock-controller driver for an
> SoC.

I agree!

> 
> > I think generic power-sequences
> >   were the topic back then, though that might have changed over time?
> > - There are places that describe "fixed-clock" as
> >   "basic fixed-rate clock that cannot gate" [1]
> 
> I think that that is something that could be changed, it's "just" a
> comment in some code! Sounds like Stephen disagrees though :)

It's more about making a clear break from the fixed-clock binding so
that the extra properties are required.

> 
> > - Stephen also suggested a separate binding [2]
> 
> I liked your "gated-oscillator" suggestion in another reply, but
> "gated-fixed-clock" might be a better "thematic" fit since this is a
> special case of fixed-clocks?
> 

It looks to me like we've arrived at the hardest problem in computer
science, i.e. naming. Any of these names is fine. I'd look to see what
those parts on mouser are called and use that to drive the compatible
name decision if you can't decide. The description section in the
binding could be verbose and link to some parts/pdfs if that helps too.
In the past I've seen EEs call these things clock buffers. I'm not a
classically trained EE myself but it usually helps to use similar names
from the schematic in DT because DT authors are sorta translating
schematics to DT.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
