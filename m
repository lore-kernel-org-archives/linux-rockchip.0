Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F13A6CA5FED
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 07:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8yAC5RFWf5HUM1XadLkePkzA8ptzImSE3h1VpicwelY=; b=OG3A2AJc4Q8E0M
	pTRCP/LUCR5rVz1aRKAEdNTQd2YC9jPyrkotCFpSxp60dHNAVZT+6/vlzMjw4Wpmc6EsMPAgdmysr
	O3IdXnWxSLWHmrrF1uQQ8znM1/ry9CKIT7DUIGJTZCYpiJwIp6Lk8XqC0cZBusGl38xeeNEqMfFyc
	35OGebEHcmu3PBRFfzElqJzmexVn0EOvIlR0UIljVXxSNPn/OPd7fnBieIU3eaFAR7534NPt1p2QX
	txCOx6ClaWuGfSJmbC0nMzKWutbnypY0v46mdT+SgWL8qxetbu6oWDmZYEblVf5HaVsgn9cNPmCTV
	DGvjwitAhMuWHA1yUjZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF4tG-00000005i4R-0CI9;
	Fri, 09 Oct 2026 07:19:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF4tC-00000005i3V-0J2a;
	Fri, 09 Oct 2026 07:19:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=a/8J9ffRImKtNVgXRfCWQ7IuyliYAcjl+4vVSs1mp0o=; b=dasyinXg5c5YC9V8raqDWPImHP
	ZLaFAtOqeK/6eFGh99ixvboc5TRLL4LqbmI83EQEC7yFDUW7RbfmU8fWQ0h5F3wzWB/ocDRdNs7aU
	Mx25M1ZiXFRP1B6KsiQmYb88Yti+hdeSgb1L7I8v113gqBReOZBgVKmBp2EALwVl4oLP/4ALmSojt
	wdeRs8PbtPMCKyKtrLMTm8ifBggbc33keCoyCkodt+ugxhgxlLjIceV1drs09ZBSrlrY0X1rxJDQQ
	/MO/n3RG9Eqp8/LNKzwfQDYdUR21ZO8UCSiwjXYwbucVhOS5frUaE7RK4OTyXFa/GhNdiofR7KSzX
	9kiqAF+Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Jun Yan <jerrysteve1101@gmail.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add dma-names to RK356x UART nodes
Date: Fri, 09 Oct 2026 09:19:25 +0200
Message-ID: <3055334.SvYEEZNnvj@phil>
In-Reply-To: <20261009020103.364498-1-jerrysteve1101@gmail.com>
References: <20261009020103.364498-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_001934_196751_5A4F919C 
X-CRM114-Status: GOOD (  11.27  )
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

QW0gRnJlaXRhZywgOS4gT2t0b2JlciAyMDI2LCAwNDowMTowMiBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEp1biBZYW46Cj4gVGhlIFJLMzU2eCBVQVJUIG5vZGVzIGRlZmlu
ZSBhIGRtYXMgcHJvcGVydHkgYnV0IG9taXQgdGhlIG1hdGNoaW5nCj4gZG1hLW5hbWVzIHByb3Bl
cnR5LCBzbyB0aGUgODI1MCBkcml2ZXIgZmFpbHMgdG8gcmVxdWVzdCBhIERNQSBjaGFubmVsCj4g
YW5kIGZhbGxzIGJhY2sgdG8gUElPLCBsb2dnaW5nOgo+IAo+ICAgb2ZfZG1hX3JlcXVlc3Rfc2xh
dmVfY2hhbm5lbDogZG1hLW5hbWVzIHByb3BlcnR5IG9mIG5vZGUKPiAgICcvc2VyaWFsQGZlNjUw
MDAwJyBtaXNzaW5nIG9yIGVtcHR5Cj4gCj4gQWRkIHRoZSBtaXNzaW5nIGRtYS1uYW1lcyA9ICJ0
eCIsICJyeCIgdG8gdWFydDAgdGhyb3VnaCB1YXJ0OSwKPiBtYXRjaGluZyBvdGhlciBSb2NrY2hp
cCBTb0NzIHN1Y2ggYXMgdGhlIFJLMzU4OC4KPiAKPiBGaXhlczogYTNhZGMwYjkwNzFkICgiYXJt
NjQ6IGR0czogcm9ja2NoaXA6IGFkZCBjb3JlIGR0c2kgZm9yIFJLMzU2OCBTb0MiKQo+IFNpZ25l
ZC1vZmYtYnk6IEp1biBZYW4gPGplcnJ5c3RldmUxMTAxQGdtYWlsLmNvbT4KClBsZWFzZSBkb24n
dCBkbyB0aGF0LiBVYXJ0IGRtYSBjYW4gY2F1c2UgcHJvYmxlbXMgb24gdWFydHMgdGhhdCBkb24n
dAp1c2UgZmxvdy1jb250cm9sLCBzZWUgWzBdLiBTbyB0aGUgc29sdXRpb24gb2YgY2hvaWNlIGlz
IHRvIG9ubHkgZW5hYmxlCml0IGZvciB1YXJ0cyBjb25uZWN0ZWQgdG8gYmx1ZXRvb3RoIG9uIGF0
IGxlYXN0IFJLMzU2eC4KCgpIZWlrbwoKCgpbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtcm9ja2NoaXAvQ0FNZFl6WXBYdE1vY0N0Q3BaTFVfeHVXbU9wMkphX3YwQWowZTZZRk5SQS15
Vjd1MTRnQG1haWwuZ21haWwuY29tLwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
