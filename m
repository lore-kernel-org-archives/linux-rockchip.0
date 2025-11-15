Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D75DCEB2E4
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 18:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBzQbReNrROzku0JUFp7R5proPoBPCh96KHpIeGxvPc=; b=gFrcuVyrQy5cew
	0Xo8c6cPAZ4k00YrCuBqsc/w6BcxsJkMTF92KWP2nHxCK420RBgi0nY1PcUgpRPBzasXLtAI+J8JV
	L7DF/bGWvMV2nFbfNJTij1mkKQgjixUl3tPb4B2yodBaS51hGzf94jo4+1NnWASrTXLgcApi7n9iD
	4/c2mSTNUbRPK2GJ+UM2vbOzAh5Z0OYJlZ6L0Pza1HZ5UNW25ar5ZVgI3KqzQ2m7/+MoHrqhKsZB5
	l4ilAA2lAA0q7wqDd7pXAULco5h6/a+V7vWX+PhvJrAsb+IldnhVsr0pqPNHqtqZzhvhApIQ1gEmp
	QoQk+9KRee0Kwd7QyNnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKKZD-0000000DyHe-1BEE;
	Sat, 15 Nov 2025 18:00:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKKZ9-0000000DyHA-3MNU;
	Sat, 15 Nov 2025 18:00:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=+C/kU3wegl/g8oahkJ5TL3Nr8ieZ3KWlXonyzZd5hhk=; b=EakzarZLj9n5uOsx7TlSnRgt1p
	TekWmMyDtSu3MkuD8D27cazGfl76DTAJtM+syFL7+KotnDFUk0A7CuYfj0Ku7oP8KYYsNltqQ6fzi
	l2oM65z9QYEv1L1mIM9kkaUUsCtSLGHlxC2+/Ksu91dF9wxQ7SqUZ65+1/DZd8lY/fajnyav6arJL
	5p0k54jZwHbt4DczlVdZv7MpRMEFkne0oTfB6nt9iII9fRneBiDMvA5ZZ8HBRfutRrQLIv2eu2pd6
	e+liEvqiUpIWrukIScewemOcMXWmaAwSyVBdSQlww2orWZIi+mCHmgKia3fKZN12lpgRwvUGjRg7P
	N8W+O0Qw==;
Received: from i53875bd0.versanet.de ([83.135.91.208] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vKKYk-0007jc-Gg; Sat, 15 Nov 2025 18:59:38 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, michael.riesch@collabora.com
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@collabora.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Mehdi Djait <mehdi.djait@bootlin.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v15 00/14] media: rockchip: add a driver for the rockchip camera
 interface
Date: Sat, 15 Nov 2025 18:59:36 +0100
Message-ID: <2678569.Lt9SDvczpP@diego>
In-Reply-To: <20240220-rk3568-vicap-v15-0-8f4915ee365d@collabora.com>
References: <20240220-rk3568-vicap-v15-0-8f4915ee365d@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_100003_875514_4C2EC565 
X-CRM114-Status: GOOD (  22.25  )
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

QW0gRnJlaXRhZywgMTQuIE5vdmVtYmVyIDIwMjUsIDE2OjIwOjExIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgTWljaGFlbCBSaWVzY2ggdmlhIEI0IFJlbGF5Ogo+IFRoaXMg
c2VyaWVzIGludHJvZHVjZXMgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIENhbWVyYSBJbnRlcmZh
Y2UgKENJRiksCj4gd2hpY2ggaXMgZmVhdHVyZWQgaW4gbWFueSBSb2NrY2hpcCBTb0NzIGluIGRp
ZmZlcmVudCB2YXJpYXRpb25zLgo+IFRoZSBzZXJpZXMgaGFzIG5vdyBiZWVuIGFyb3VuZCBmb3Ig
YSB3aGlsZSBhbmQgaGFzIHJlY2VpdmVkIG1hbnkgY29tbWVudHMKPiBhbmQgcmV2aWV3cy4gVGh1
cywgaXQgc2hvdWxkIGJlIHJlYWR5IGZvciBtYWlubGluZSBieSBub3cuCj4gCj4gVGhlIGxhc3Qg
aXNzdWUgd2UgZGlzY3Vzc2VkIChzZWUgdGhyZWFkIHRvIHYxNCwgbGluayBiZWxvdykgd2FzIHRo
ZQo+IG5lY2Vzc2FyeSBpbnRlZ3JhdGlvbiBvZiBhIG11eCBzdWJkZXZpY2UsIGFzIHRoZSBNSVBJ
IENTSS0yIGRhdGEgY2FuCj4gYmUgcGFzc2VkIHRvIHRoZSBJU1AgYW5kL29yIHRvIHRoZSBWSUNB
UCBvbiBSSzM1NjguIEluIG9yZGVyIHRvIGF2b2lkCj4gYW55IHVBUEkgYnJlYWthZ2UsIHRoZSBN
SVBJIENTSS0yIHJlY2VpdmVyIHN1cHBvcnQgaGFzIGJlZW4gcmVtb3ZlZCBpbiB2MTUKPiAoZm9s
bG93aW5nIGFuIG9mZi1saXN0IGRpc2N1c3Npb24gd2l0aCBTYWthcmkpLgo+IAo+IFRoZXJlZm9y
ZSwgdGhlIHYxNSBvZiB0aGUgc2VyaWVzIGFkZHMgYSBtZWRpYSBjb250cm9sbGVyIGNlbnRyaWMg
VjRMMgo+IGRldmljZSBkcml2ZXIgZm9yIHRoZSBSb2NrY2hpcCBDSUYgd2l0aAo+ICAtIHN1cHBv
cnQgZm9yIHRoZSBQWDMwIFZJUCAobm90IHRlc3RlZCwgdGhvdWdoLCBkdWUgdG8gdGhlIGxhY2sg
b2YgSFcpCj4gIC0gc3VwcG9ydCBmb3IgdGhlIFJLMzU2OCBWSUNBUCwgaW5jbHVkaW5nCj4gICAg
IC0gY2FwdHVyaW5nIGZyYW1lcyBmcm9tIHRoZSBEVlAKPiAgICAgLSBjYXB0dXJpbmcgZnJhbWVz
IGZyb20gdGhlIE1JUEkgQ1NJLTIgcmVjZWl2ZXIKPiAgLSBhYnN0cmFjdGlvbiBmb3IgdGhlIHBp
bmctcG9uZyBzY2hlbWUgdG8gYWxsb3cgZm9yIGZ1dHVyZSBleHRlbnNpb25zCj4gIC0gYWJzdHJh
Y3Rpb24gZm9yIHRoZSBJTlRFUkZBQ0UgYW5kIENST1AgcGFydHMgdG8gYWxsb3cgZm9yIGZ1dHVy
ZQo+ICAgIGV4dGVuc2lvbnMKPiAgLSBpbml0aWFsIHN1cHBvcnQgZm9yIGRpZmZlcmVudCB2aXJ0
dWFsIGNoYW5uZWxzIChub3QgdGVzdGVkLCB0aG91Z2gsCj4gICAgZHVlIHRvIHRoZSBsYWNrIG9m
IEhXKQo+IAo+IEFwYXJ0IGZyb20gdGhhdCwgdGhlcmUgYXJlIG5vIGNoYW5nZXMgY29tcGFyZWQg
dG8gdjE0Lgo+IAo+IExvb2tpbmcgZm9yd2FyZCB0byB5b3VyIGNvbW1lbnRzIQoKWy4uLl0KCj4g
TWljaGFlbCBSaWVzY2ggKDEyKToKPiAgICAgICBEb2N1bWVudGF0aW9uOiBhZG1pbi1ndWlkZTog
bWVkaWE6IGFkZCByb2NrY2hpcCBjYW1lcmEgaW50ZXJmYWNlCj4gICAgICAgbWVkaWE6IGR0LWJp
bmRpbmdzOiB2aWRlby1pbnRlcmZhY2VzOiBhZGQgZGVmaW5lcyBmb3Igc2FtcGxpbmcgbW9kZXMK
PiAgICAgICBtZWRpYTogZHQtYmluZGluZ3M6IGFkZCByb2NrY2hpcCByazM1NjggdmljYXAKPiAg
ICAgICBtZWRpYTogcm9ja2NoaXA6IGFkZCBkcml2ZXIgZm9yIHRoZSByb2NrY2hpcCBjYW1lcmEg
aW50ZXJmYWNlCj4gICAgICAgbWVkaWE6IHJvY2tjaGlwOiBya2NpZjogYWRkIGFic3RyYWN0aW9u
IGZvciBpbnRlcmZhY2UgYW5kIGNyb3AgYmxvY2tzCj4gICAgICAgbWVkaWE6IHJvY2tjaGlwOiBy
a2NpZjogYWRkIGFic3RyYWN0aW9uIGZvciBkbWEgYmxvY2tzCj4gICAgICAgbWVkaWE6IHJvY2tj
aGlwOiBya2NpZjogYWRkIHN1cHBvcnQgZm9yIHB4MzAgdmlwIGR2cCBjYXB0dXJlCj4gICAgICAg
bWVkaWE6IHJvY2tjaGlwOiBya2NpZjogYWRkIHN1cHBvcnQgZm9yIHJrMzU2OCB2aWNhcCBkdnAg
Y2FwdHVyZQo+ICAgICAgIG1lZGlhOiByb2NrY2hpcDogcmtjaWY6IGFkZCBzdXBwb3J0IGZvciBy
azM1NjggdmljYXAgbWlwaSBjYXB0dXJlCgpmb3IgcGVvcGxlIHBsYXlpbmcgYWxvbmcgYXQgaG9t
ZSwgcGF0Y2hlcyAxLTEwIHNlZW1zIHRvIGhhdmUgYmVlbiBtZXJnZWQKaW50byB0aGUgbWVkaWEt
Y29tbWl0dGVycyB0cmVlIFswXQoKClswXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
bGludXgtbWVkaWEvbWVkaWEtY29tbWl0dGVycy8tL2NvbW1pdC8xZjIzNTNmNWExYWY5OTVlZmJm
N2JlYTQ0MzQxYWEwZDAzNDYwYjI4CiAgICB0aGF0IGNvbW1pdCBhbmQgYmFja3dhcmRzIGluIHRo
ZSBoaXN0b3J5CgoKCj4gICAgICAgYXJtNjQ6IGRlZmNvbmZpZzogZW5hYmxlIHJvY2tjaGlwIGNh
bWVyYSBpbnRlcmZhY2UKPiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIHZpY2FwIG5v
ZGUgdG8gcmszNTZ4Cj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGVuYWJsZSB2aWNhcCBk
dnAgb24gd29sZnZpc2lvbiBwZjUgaW8gZXhwYW5kZXIKCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
