Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C70C02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0FybCpemG7bHzGf0/vlKX1IXJffn4vqNGgpf3tjRQ30=; b=vylNbGpz2SB+s8
	xoM+TN8Fc6e4kMJZyNwAlGr/eOGDpudYSS+ZiPe9szWp2Mq8D+EqIJfXDwZS4yr/BdmaaQKd4ehOh
	dRpKcbLQEPP/hLnehEvNd4u61IOkR1SS+YAS8nmRon5l7RBFND7+gRjXw1ESSOZoS3f2mtMk2beQt
	ZycUhvNz95HpJzJ9Hx42ytk+BualyXmIWDqF24Y4xroEqRRLQBlYN2ahnuJAOWi22OQIaE9GMySvp
	cvfy35s8+BlQFOlq3wGoRqp2k/g0wDzdjbQ7e7qc6px+Jzkvj3L0tQxq8ggszh4+B6smlF9wPd8vd
	6hhMjZ1eZB8xzwibzhxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thUQ4-0000000042f-2eAz;
	Mon, 10 Feb 2025 14:05:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thUOf-000000003sg-0TdX;
	Mon, 10 Feb 2025 14:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UfuBIcq6o6pd5Lky7KHDHxvpQdqj4uIwbsrsWkRv4y8=; b=2y259NvN7jKxSqKZofA185dq2o
	enK8KcFyHAimIMTX0cygzP3gW5BXHU98khsVCAAw3cZXywfXhHFuWS+YT+2SNZkIzZqjD1NDdnjxD
	XC5fezOqRRhoBDtwcb0zf1mYK2yET2BrphLt10XNzKUTtBYqI6PvzSLJr0kUHwACeXPPESMAlqHbx
	wdX6eR7HNTChazp8xGXMXgXK4Cdfb5wIKTe8dU1DeHp8DUhFyWcFKh5QCVpvjvY1KxH6GXhJ7Y9Uj
	5Vs0G2alSTwv+Hlg17R1mh1SgdKIrd9D8HLgETiH6QQBnQ4AbNQaV2mkJbLnU1zMcYMhwZRiNcnWY
	OPNU8jHQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1thUOc-0003Qo-V6; Mon, 10 Feb 2025 15:04:22 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexey Charkov <alchark@gmail.com>, linux-sound@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: ASoC: rockchip: Add compatible for RK3588 SPDIF
Date: Mon, 10 Feb 2025 15:04:22 +0100
Message-ID: <870305083.0ifERbkFSE@diego>
In-Reply-To: <56d128d7-c4bd-48de-b823-0b88147220e1@sirena.org.uk>
References: <20250120-rk3588-spdif-v1-0-1415f5871dc7@gmail.com>
 <4315116.iIbC2pHGDl@diego>
 <56d128d7-c4bd-48de-b823-0b88147220e1@sirena.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_060425_152743_FD45C696 
X-CRM114-Status: GOOD (  25.07  )
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

SGkgTWFyaywKCkFtIE1vbnRhZywgMTAuIEZlYnJ1YXIgMjAyNSwgMTQ6MjA6NTggTUVaIHNjaHJp
ZWIgTWFyayBCcm93bjoKPiBPbiBTdW4sIEZlYiAwOSwgMjAyNSBhdCAxMDoxMDo0N1BNICswMTAw
LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IEFtIE1vbnRhZywgMjAuIEphbnVhciAyMDI1LCAx
MDowMToyNyBNRVogc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiA+ID4gQWRkIGEgY29tcGF0aWJs
ZSBzdHJpbmcgZm9yIFNQRElGIG9uIFJLMzU4OCwgd2hpY2ggaXMgc2ltaWxhciB0byB0aGUKPiA+
ID4gb25lIG9uIFJLMzU2OC4KPiAKPiA+IGFzIHRoZSBiaW5kaW5nIGlzIG1vcmUgaW4gdGhlIGRy
aXZlci1yZWFsbSwgaXMgdGhpcyBwYXRjaCBzdGlsbAo+ID4gc29tZXdoZXJlIG9uIHlvdXIgcmFk
YXI/Cj4gCj4gUGxlYXNlIGRvbid0IHNlbmQgY29udGVudCBmcmVlIHBpbmdzIGFuZCBwbGVhc2Ug
YWxsb3cgYSByZWFzb25hYmxlIHRpbWUKPiBmb3IgcmV2aWV3LiAgUGVvcGxlIGdldCBidXN5LCBn
byBvbiBob2xpZGF5LCBhdHRlbmQgY29uZmVyZW5jZXMgYW5kIHNvIAo+IG9uIHNvIHVubGVzcyB0
aGVyZSBpcyBzb21lIHJlYXNvbiBmb3IgdXJnZW5jeSAobGlrZSBjcml0aWNhbCBidWcgZml4ZXMp
Cj4gcGxlYXNlIGFsbG93IGF0IGxlYXN0IGEgY291cGxlIG9mIHdlZWtzIGZvciByZXZpZXcuICBJ
ZiB0aGVyZSBoYXZlIGJlZW4KPiByZXZpZXcgY29tbWVudHMgdGhlbiBwZW9wbGUgbWF5IGJlIHdh
aXRpbmcgZm9yIHRob3NlIHRvIGJlIGFkZHJlc3NlZC4KPgo+IFNlbmRpbmcgY29udGVudCBmcmVl
IHBpbmdzIGFkZHMgdG8gdGhlIG1haWwgdm9sdW1lIChpZiB0aGV5IGFyZSBzZWVuIGF0Cj4gYWxs
KSB3aGljaCBpcyBvZnRlbiB0aGUgcHJvYmxlbSBhbmQgc2luY2UgdGhleSBjYW4ndCBiZSByZXZp
ZXdlZAo+IGRpcmVjdGx5IGlmIHNvbWV0aGluZyBoYXMgZ29uZSB3cm9uZyB5b3UnbGwgaGF2ZSB0
byByZXNlbmQgdGhlIHBhdGNoZXMKPiBhbnl3YXksIHNvIHNlbmRpbmcgYWdhaW4gaXMgZ2VuZXJh
bGx5IGEgYmV0dGVyIGFwcHJvYWNoIHRob3VnaCB0aGVyZSBhcmUKPiBzb21lIG90aGVyIG1haW50
YWluZXJzIHdobyBsaWtlIHRoZW0gLSBpZiBpbiBkb3VidCBsb29rIGF0IGhvdyBwYXRjaGVzCj4g
Zm9yIHRoZSBzdWJzeXN0ZW0gYXJlIG5vcm1hbGx5IGhhbmRsZWQuCgpXaXRoIGl0IGJlaW5nIDMg
d2Vla3Mgc2luY2UgdGhlIHBhdGNoIHdhcyBvcmlnaW5hbGx5IHBvc3RlZCwgSSB0aG91Z2h0Cml0
IG1pZ2h0IGJlIHRoZSB0aW1lIHRvIGFzayBpZiB0aGUgYmluZGluZy1wYXRjaCB3YXMgc3RpbGwg
YXJvdW5kLgoKSSB2YWd1ZWx5IGRvIHJlbWVtYmVyIHlvdSBzYXlpbmcgaW4gdGhlIHBhc3QgdGhh
dCBpZiBhIHBhdGNoIGhhc24ndApiZWVuIGFwcGxpZWQvaGFuZGxlZCBhZnRlciBYIHRpbWUtdW5p
dHMsIGl0IHdvdWxkbid0IGJlIGluIHlvdXIgaW5ib3gKYW55bW9yZSwgYnV0IGFtIG5vdCBzdXJl
IGFueW1vcmUgOy0pIC4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
