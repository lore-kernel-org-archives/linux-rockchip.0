Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E7BE7718B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 09:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D2+4v/zhHwpCte/oLedaaCSL9qFHFSPHf0DPLkx+SV8=; b=lhQ3O+/IN6NmsRmhwYfuo+KVal
	E4Fp/s89f9g1kErTZqWKmfYD7LtZRZVmCffzeORRCRniTgm8WdJ445JT+KZIEdGDLO2Ktn5wQnf+5
	u5n3f2E8BXNLZoal3mkTGglGJ7tMDR0nDeiOAgiJ7lhwWwM6FymW96dtNin/2gf0R1LsS1X5XxJ7r
	PcHGjKnt2W+9qx+ZjLOAGyyJ/Bzy12x/aQOP6dcv/ut3nxTCTNAGICWA5K/jezxVEDS0Q+xeVQuu0
	EAYVX678l1GiwNLRRhIixvaGRATK6ETqccfmN9lX9jozwErupyAr5egbuKALADSLzqVlFv1uJqDtt
	nPNMbArw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQNnq-0000000DYz0-4AZs;
	Wed, 25 Dec 2024 09:35:42 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQNnf-0000000DYxW-28hJ
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Dec 2024 09:35:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735119327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fpIa73iwb0+bmyk8l/k9K8qRAzYUQwzwLHgKuu6+iTA=;
	b=CzvMFrhFpjw048BmP5O7rSRZbXlQiIg8VslRibB+4JdDrHyzErWcVo0lXSn3HtB07hLtcV
	5g6C+P7lxXfnnAzAvaYKYDOMGfGlwQP9PUQ+l6gZstPKnFxNzMeZRn80W1j+tUAqaLLfK6
	OkvTKkGw1Fyt1q3TB/49hN/hKX+9j1OrjikdRewn+Rb2/Ts7Zq80m9uheG5hQv4l9O4/QA
	Kqtar8qNCV7P1jVEZdXiFQSFdnfYeZfnhEo25zFyJ9Zepikkqdtu5e968aA72kxQ8043yb
	xkdtt/dfPsOGQH2ykGuNonQrI2n62LUcAKyPc/1jvEreDxaSQv3ll11mcEZHNA==
Date: Wed, 25 Dec 2024 10:35:26 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, dmt.yashin@gmail.com, sebastian.reichel@collabora.com,
 tim@feathertop.org, kever.yang@rock-chips.com,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and rebase
 Radxa ROCK 5B
In-Reply-To: <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
References: <20241224210912.2121-1-naoki@radxa.com>
 <CABjd4YxLnays9Ho0bDR0pTyz5Tjx3C=0U6bcRdQ8ntyu68VVGg@mail.gmail.com>
Message-ID: <4bac4d58493cb0e7fc863095e02ffad3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_013531_716713_5191A6B0 
X-CRM114-Status: GOOD (  16.25  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gQWxleGV5IGFuZCBOYW9raSwKCk9uIDIwMjQtMTItMjUgMDk6MzIsIEFsZXhleSBDaGFy
a292IHdyb3RlOgo+IE9uIFdlZCwgRGVjIDI1LCAyMDI0IGF0IDEyOjIy4oCvUE0gRlVLQVVNSSBO
YW9raSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToKPj4gCj4+IFRoZSBSYWR4YSBST0NLIDVCKyBp
cyBhbiB1cGdyYWRlZCB2ZXJzaW9uIG9mIHRoZSBSYWR4YSBST0NLIDVCLgo+PiAKPj4gVGhpcyBw
YXRjaCBzZXJpZXMgaW50cm9kdWNlcyBhIHNoYXJlZCAuZHRzaSB0aGF0IGNhbiBiZSB1c2VkIG9u
IHRoZQo+PiBuZXcgUmFkeGEgUk9DSyA1QissIHRoZSBleGlzdGluZyBSYWR4YSBST0NLIDVCLCBh
bmQgdGhlIHVwY29taW5nIFJhZHhhCj4+IFJPQ0sgNVQuCj4+IAo+PiBUaGlzIHBhdGNoIHNlcmll
cyBpbmNsdWRlcyAiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBVU0ItQyBzdXBwb3J0IHRvCj4+
IFJPQ0sgNUIiIGJ5IFNlYmFzdGlhbiBSZWljaGVsWzFdLgo+PiAKPj4gWzFdIAo+PiBodHRwczov
L3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAvcGF0Y2gvMjAyNDEy
MTAxNjM2MTUuMTIwNTk0LTEtc2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbS8KPj4gCj4+
IEZVS0FVTUkgTmFva2kgKDMpOgo+PiAgIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQg
UmFkeGEgUk9DSyA1QisKPj4gICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJhZHhhIFJPQ0sg
NUIrCj4+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IENvbnZlcnQgUmFkeGEgUk9DSyA1QiB0byB1
c2Ugc2hhcmVkIC5kdHNpCj4gCj4gVGhpcyBvbmUgZG9lc24ndCBsb29rIGVxdWl2YWxlbnQgdG8g
dGhlIGV4aXN0aW5nIFJPQ0sgNUIgZGV2aWNlIHRyZWUKPiBhZnRlciB5b3VyIGNoYW5nZXMgKEkn
dmUgbm90aWNlZCBpbiBwYXJ0aWN1bGFyIHRoYXQgZmFuIGNvb2xpbmcgbGV2ZWxzCj4gYXJlIGRp
ZmZlcmVudCAtIGJ1dCB0aGF0J3MganVzdCB0aGUgcGFydCBJIHJlbWVtYmVyIHdlbGwgc2luY2Ug
SQo+IG1vZGlmaWVkIGl0IGVhcmxpZXIsIHRoZXJlIG1pZ2h0IGJlIG1vcmUgZGlmZmVyZW5jZXMp
Lgo+IAo+IFdvdWxkIHlvdSBtaW5kIHJlYXJyYW5naW5nIHRoZSBwYXRjaGVzIHNvIHRoYXQgdGhl
IHNwbGl0IG9mIFJPQ0sgNUIKPiBkdHMgaW50byBhIGNvbW1vbiAuZHRzaSBhbmQgcGVyLWJvYXJk
IC5kdHMgYWRkaXRpb25zIGNvdWxkIGJlIG1hZGUKPiBvbmUtdG8tb25lIGVxdWl2YWxlbnQgd2l0
aG91dCBmdW5jdGlvbmFsIGNoYW5nZXMsIGFuZCB0aGVuIGFkZCBST0NLCj4gNUIrIGFuZCBhbnkg
b3RoZXIgcmVxdWlyZWQgY2hhbmdlcyBvbiB0b3Agb2YgdGhhdD8KPiAKPiBTZWUgd2hhdCBEcmFn
YW4gZGlkIHdoZXJlIGhlIHByZXBhcmVkIHBhcmVudCAuZHRzaSBmb3IgcGVyLXZhcmlhbnQgT1BQ
cyAKPiBbMV0KPiAKPiBbMV0gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2No
aXAvOWZmZWRjMGUyY2E3ZjE2N2Q5ZDc5NWIyYThmNDNjYjlmNTZhNjUzYi4xNzE3OTIzMzA4Lmdp
dC5kc2ltaWNAbWFuamFyby5vcmcvCgpKdXN0IGEgYnJpZWYgbm90ZSB0aGF0IEkgYWdyZWUgd2l0
aCBBbGV4ZXkncyByZWNvbW1lbmRhdGlvbiBhYm92ZS4KVGhlc2UgcGF0Y2hlcyBzaG91bGQgYmUg
cmV3b3JrZWQgaW4gYSB3YXkgdGhhdCBtYWtlcyB0aGUgdHJhbnNpdGlvbgp0byB1c2luZyB0aGUg
c2hhcmVkIGR0c2kgZmlsZSBtdWNoIG1vcmUgb2J2aW91cy4KCkJlc2lkZXMgbWFraW5nIHRoZXNl
IGNoYW5nZXMgZWFzaWVyIHRvIHJldmlldyB0aGF0IHdheSwgYW5kIGdpdmluZwpiZXR0ZXIgY2hh
bmNlcyB0byBlbnN1cmluZyB0aGVyZSBhcmUgbm8gaXNzdWVzIHRoYXQgbWFuYWdlZCB0byBzbGlw
CnRocm91Z2ggdGhlIGNyYWNrcywgaXQgd2lsbCBhbHNvIGJlIG11Y2ggZWFzaWVyIGxhdGVyIHRv
IHRyYWNrIGRvd24KYW55IHBvc3NpYmxlIHJlZ3Jlc3Npb25zLCBpbiBjYXNlIHRoZXkgZXZlbnR1
YWxseSBhcmUgZGlzY292ZXJlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
