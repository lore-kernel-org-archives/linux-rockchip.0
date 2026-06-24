Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BFA8CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 11:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eo17Xns80gZDRSS2AMvZsjYiMhwU8ZI6mOfjb0clSIU=; b=fv02IJ5U5Bu8iG
	4MXhLZfpkzlqXQoTjkLFX5RIDU0iZyLUFiSeRASh6u5aQy58kzo2BwdzK/Dv8hXkTtH4t3gnXSnjT
	99vcYiKXexLKEymRGl8q5xzfgLsCwnFzz3YWjeE9xwZZRXCVmUUZbPhYmZziOpe/bfHrNEB9dIlM+
	vu1nMA9SkeSBxOOyMjuoAN3dMAQ3KLCoqIQAPBv4P28rxTV1maYjX3ZoDhSuVYwbePEFCAVtW0mlW
	R6ipdwVD50IYNAwzCORyYtMLnt3ndtY77VOAybvzYZRkz95UjaAaYI9CvmEnE1WsnzU/TrMBFDvoY
	ke9VnWJfTA0orkMVe2kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcM7g-00000007i65-1NYe;
	Wed, 24 Jun 2026 11:50:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcM7e-00000007i5B-1Q6a;
	Wed, 24 Jun 2026 11:50:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lO0hgqE9Avytw8qlzJRPWePoOJiVJlIHiSjn9i+FEbY=; b=JS+xJ88sBGk93oWMEscysoluuC
	658s0tG+Eb4BXXO3akz+agVe/Jt+aXOYv2fXFLbrdICbc+MuROfcLS3A/nh3BBKYkgEuDGb/WFDDG
	PATyEu5Fnzn8oWGgZvdczD+JRj5myMae9Mz66E4XTxUE0lXwVL3nqes7544YKUN3wgh/pKysIX99R
	7ev3OruvWpvTIqHLBkN90QmQTLzqyml9JRnFcPZfbWaUew/Y+KcMHuaGTPre8O7357Rj9QJjcsBO/
	3cvZJbi+WdsmL5vQiofJInlGVAc7GDPseiPSKDh2HyhsipnxgugUCx642Gpkk+R/qzRwbV4InFP5M
	5TDFFbvg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 David Wu <david.wu@rock-chips.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Yanan He <grumpycat921013@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Yanan He <grumpycat921013@gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: net: rockchip-dwmac: Allow 9 clocks
Date: Wed, 24 Jun 2026 13:50:18 +0200
Message-ID: <3779785.hdfAi7Kttb@diego>
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-3-5aef608a3f64@gmail.com>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
 <20260624-rv1126-alientek-dlrv1126-v1-3-5aef608a3f64@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_045026_375091_B1F66E8B 
X-CRM114-Status: GOOD (  14.81  )
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

QW0gTWl0dHdvY2gsIDI0LiBKdW5pIDIwMjYsIDEwOjQ0OjQwIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgWWFuYW4gSGU6Cj4gUlYxMTI2IGhhcyBhIHNlcGFyYXRlIEdNQUMg
RXRoZXJuZXQgb3V0cHV0IGNsb2NrIHVzZWQgYXMgdGhlIGV4dGVybmFsCj4gUEhZIHJlZmVyZW5j
ZSBjbG9jay4gVGhpcyBjbG9jayBpcyBkZXNjcmliZWQgaW4gYWRkaXRpb24gdG8gdGhlIGV4aXN0
aW5nCj4gR01BQyBjbG9ja3MuCgpBUyBzdGF0ZWQgaW4gdGhlIGRyaXZlciBwYXRjaCwgdGhpcyBp
cyB0aGUgaW5wdXQgY2xvY2sgZm9yIHRoZSBwaHkKYW5kIGV0aGVybmV0IHBoeXMgYXJlIHBlcmZl
Y3RseSBjYXBhYmxlIG9mIGhhbmRsaW5nIHRoZWlyIGlucHV0CmNsb2Nrcy4gU2VlIHJlZmVyZW5j
ZSBpbiB0aGUgZHJpdmVyIHBhdGNoLgoKCkhlaWtvCgoKPiBTaWduZWQtb2ZmLWJ5OiBZYW5hbiBI
ZSA8Z3J1bXB5Y2F0OTIxMDEzQGdtYWlsLmNvbT4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sIHwgMiArLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55
YW1sCj4gaW5kZXggODBjMjUyODQ1MzQ5Li44NmE3ZTgzNjc1YWUgMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sCj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21h
Yy55YW1sCj4gQEAgLTcxLDcgKzcxLDcgQEAgcHJvcGVydGllczoKPiAgCj4gICAgY2xvY2tzOgo+
ICAgICAgbWluSXRlbXM6IDQKPiAtICAgIG1heEl0ZW1zOiA4Cj4gKyAgICBtYXhJdGVtczogOQo+
ICAKPiAgICBjbG9jay1uYW1lczoKPiAgICAgIGNvbnRhaW5zOgo+IAo+IAoKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
