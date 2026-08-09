Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E82EEC5AC80
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Aug 2026 09:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JN9Rf+myigmivGE3M1fgjgDEyQ/wR5eN04FR90VSGIM=; b=qlQK51Tuy9qGUT
	dcXdABeQ4YEkcTL/juWRgjJa+Q9ThcCehX2OeyipuQm2upb7dNrnSZBThFothHSKNlwcdB/JKMify
	8FT+3/uO5HRc0BfYzKPfDnOUoXHYoFoPJkMWCA4ynjDvZY9B6x+VKCudjUkRd08iO03pPWh9mxs2I
	dIeZ6RJ0njOw81yTdKvJup4yM1J56qx6vXcvc7spvODoYch6PzyHWlGnviJce1PraWHy5AtVaigIw
	ccqVdnMyqBd1a83Eey4S/ZCQPF9ZvEwnfg9sdwLennkK/v939pJWY0gG9HbRToSvfyrA3XZxYaPHU
	GapK53RwVobEe1SCg6gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt0CP-0000000A9ua-3vqv;
	Sun, 09 Aug 2026 09:52:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wt0CN-0000000A9u5-40lI;
	Sun, 09 Aug 2026 09:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cLkXAt7OGH8Oo/NH9UiNt6x/1vsL4WiOEANljYk0/Ww=; b=EeMU3u0QzmIlGOIG+RqLB4XfG3
	CyfD4gxnEYqrFB8u5Onuh09iiMaDy5zTeoaTVRANFgLSgRmN/9B8V0gdrrjxtVU9jByUn3y0j942v
	hXuwiS3e19GRpBgjFCjfzAt4Tz4z0vkBRRrkL4ahZ6/f6n5aKKEPzxXpnIPAXxyoQMO9XZ0NzWfL0
	90WYdvSnvYAQoUgylNS0vEiHrG3B4446MmvMd690Su08KBxltdedBPqrcE6HAuiX14BS2GE2rCyGY
	k8MiDLLUmJudtsZ8q0aDUXS7FUy5H11GjZ6XqZfL0jkib58r6Hg5dq6Ze71mSALwS9sVRsIr1dc18
	4/ysp5AQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linusw@kernel.org>, Simon Glass <sjg@chromium.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 huang lin <hl@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/4] pinctrl: rockchip: Add RV1106 pinctrl support
Date: Sun, 09 Aug 2026 11:51:56 +0200
Message-ID: <12961763.rMLUfLXkoz@diego>
In-Reply-To: <20260729072727.v3.4.0af20e702c540f54a3d1694654b158a9b783d68e@changeid>
References: <20260729132736.3807082-1-sjg@chromium.org>
 <20260729072727.v3.4.0af20e702c540f54a3d1694654b158a9b783d68e@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260809_025208_010905_D1CEFD85 
X-CRM114-Status: GOOD (  10.55  )
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

QW0gTWl0dHdvY2gsIDI5LiBKdWxpIDIwMjYsIDE1OjI3OjI4IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gQWRkIHBpbmN0cmwgc3VwcG9ydCBmb3Ig
dGhlIFJvY2tjaGlwIFJWMTEwNiwgYmFzZWQgb24gdGhlIHZlbmRvcgo+IGtlcm5lbCBpbiB0aGUg
THVja2ZveCBQaWNvIFNESyBbMV0gYXQgY29tbWl0IDgyNGI4MTdmOCAoYSBMaW51eAo+IDUuMTAu
MTYwIGtlcm5lbCB0cmVlKS4gRWFjaCBHUElPIGJhbmsgaGFzIGl0cyBvd24gSU8gY29udHJvbCAo
SU9DKQo+IHJlZ2lzdGVyIGJsb2NrLCByZWZlcmVuY2VkIGJ5IHRoZSByb2NrY2hpcCxncmYgcGhh
bmRsZSBvZiB0aGUgYmFuawo+IG5vZGU7IHRoZSByZWdpc3RlciBvZmZzZXRzIGFyZSByZWxhdGl2
ZSB0byB0aGUgYmFuaydzIG93biBibG9jay4gVGhlCj4gZHJpdmUgc3RyZW5ndGggdXNlcyB0aGUg
UkszNTY4LXN0eWxlIGV4cG9uZW50aWFsIGVuY29kaW5nIGFuZCBvbmx5Cj4gcGlucyAwLTYgb2Yg
R1BJTzAgaGF2ZSBkcml2ZS1zdHJlbmd0aCByZWdpc3RlcnMuCj4gCj4gVGhlIFJWMTEwMyBpcyBh
IHBhY2thZ2UgdmFyaWFudCBvZiB0aGUgUlYxMTA2IHdpdGggZmV3ZXIgcGlucyBhbmQgdXNlcwo+
IHRoZSBzYW1lIHBpbiBjb250cm9sbGVyLgo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vTHVj
a2ZveFRFQ0gvbHVja2ZveC1waWNvCj4gCj4gU2lnbmVkLW9mZi1ieTogU2ltb24gR2xhc3MgPHNq
Z0BjaHJvbWl1bS5vcmc+Cj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+CgphcGFydCBmcm9tIHRoZSBuZXcgcGVyLWJhbmsgcGluY29uZmlnIHdvbmt5bmVzIFJv
Y2tjaGlwIGludHJvZHVjZWQsCnRoaXMgaXMgbW9zdGx5IGEgc3RhbmRhcmQgcGluY3RybC12YXJp
YW50IGFkZGl0aW9uLgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
