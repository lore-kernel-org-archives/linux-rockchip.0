Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4C9FC5DF81
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 12:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ab6+TVgjdG5fk3m4OkNi+wNfhBt/WWlFYpzSGfc4euc=; b=38ALZBUkY6slHB
	AQBdCNlI5dLa0Ow7PNex8tiV5Czw7eFd7T7blFdqirhwTq3nqzk17GUh77yM3Uc8GGyOOjQRIEEP8
	LoR3pOlXrMEdIU9GoCh9ZkFWWsqbvtNVQc/njd7kJzBV6qy77SJUSaU9tPuqZ3rFu4u3FbFzm6Kk5
	UoP9MQzj0cTfP/jN3kaM6t6sqgRYKtkgHYoRuNcX1zgZz+cGw++JtQHHUySGJTaxnavSBxBdIulis
	PGSyLz47PAeLrggMFOQ5yS78Z/cBwduz3aje9acCUzszGMW4OWRNWXsXI2dyzbL68xW3vs/HI4/39
	p69lRz3s0GkTXkAKQIHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1SK-0000000BUsj-3659;
	Thu, 20 Aug 2026 12:01:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1SH-0000000BUs8-3vtg;
	Thu, 20 Aug 2026 12:01:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=YovAaYKiXn+Qq1GP17B+q6+CJmqK0Gm0WlW1hsq6A2s=; b=JWMrF72gutaao3Y5BH2hl/NXWJ
	RF/F4b25BTXYH3D35mR0+BQpY2M/L91uaK7npus4BQcn/4eahxD+K21x2Rw7qvpKkj1+B5QMdnBAO
	wWoAlyMzG4Mx0PjO503XGXIAGg1P7mZn4zknwdym8Gn5+GMulV10Q8ABq2LSJ3Km0lLLoSzBaiEV8
	I2x94caTEZHVBbo6iiP0dZTuQNpePphMkix6kfUP4eKHzMdcDD33387vcI4h2gUcLwqD0H6V4GSBt
	EtIYm4Q1YK9r6VfZr/tPWywueRndCqRsIRmMqwIW7MYwU7/FRgz2CzN8Dg7/q+5mNedr2uu+3CD/u
	Hsf2Hodw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Vladislav Leonov <vlad@zlab.su>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 01/25] dt-bindings: reset: Add RV1106 CRU reset definitions
Date: Thu, 20 Aug 2026 14:01:03 +0200
Message-ID: <2506382.tdWV9SEqCh@diego>
In-Reply-To: <20260814-pristine-warthog-of-tolerance-4be5cc@quoll>
References: <20260810121121.210040-1-vlad@zlab.su> <20260810121121.210040-2-vlad@zlab.su>
 <20260814-pristine-warthog-of-tolerance-4be5cc@quoll>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_050110_025748_22C7E01F 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMTQuIEF1Z3VzdCAyMDI2LCAxMjoxNToyNiBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4gT24gTW9uLCBBdWcgMTAs
IDIwMjYgYXQgMDM6MTA6NTJQTSArMDMwMCwgVmxhZGlzbGF2IExlb25vdiB3cm90ZToKPiA+IEFk
ZCB0aGUgcmVzZXQgSUQgZGVmaW5pdGlvbnMgZm9yIHRoZSBSb2NrY2hpcCBSVjExMDYgY2xvY2sg
YW5kCj4gPiByZXNldCB1bml0IChDUlUpLCB0byBiZSB1c2VkIGJ5IHRoZSByZXNldCBjb250cm9s
bGVyIGRyaXZlciBhbmQKPiA+IGRldmljZSB0cmVlIG5vZGVzLgo+IAo+IFRoaXMgZ29lcyB3aXRo
IHRoZSBiaW5kaW5nL2NvbXBhdGlibGUgdXNpbmcgaXQsIHdoZXJlIGlzIGl0PwoKaXQgd2FzIG5v
dCBwYXJ0IG9mIHRoZSBpbml0aWFsIENSVSBzdWJtaXNzaW9uLCBzbyB0aGUgYmluZGluZyBpcyBh
dApodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xp
bnV4LW5leHQuZ2l0L2NvbW1pdC8/aWQ9NzEzZTRkNTRmZjczNjliODExOGY5MWU5OGEwMDgyMjBk
NjBiMmE1ZgoKc2xhdGVkIGZvciB0aGUgbWVyZ2Utd2luZG93LgoKCkhlaWtvCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
