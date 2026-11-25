Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C110606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 22:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Xx4J+DYE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=HsNp5YFE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UaxSDRJN15vyTLRlcZjs7UL8O/NBKrH8udzKQrb66lU=; b=Xx4J+DYEhIF92hUENdigdSyTX5
	9WXkJ3gBUX+8mExJqPSjRjogLi7Aigk5mZjbb3O3iCMbvbps0BI7/M3xpt5ioEM3d7gkZa6DHEsg6
	ysxcJghGvSVaxoyUHcrezHjmV02ZuyEacvCDKgVA+LDN9aswtkeqe2ooZzHRIt9av2imDFtIIj3zZ
	7S0eWXsWeu7E5uukTxsdL+NJdo9utHkht/XCrVpCUiRYVSmseDC2h41gWniPJCfylUyB6ycTJpF9f
	E9UU0wF6+Qi5H1iU1hFn74Gc4CikHNmmASoxnntj6p4KaElFH2ytyhS5AIvtLAa68de8XGI019zs+
	Notpl+8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWLAs-0000000BRCq-35qm;
	Wed, 25 Nov 2026 22:09:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWLAp-0000000BRCJ-32ke;
	Wed, 25 Nov 2026 22:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=zgSLzQzvj94+CU+RMzv+1QgkSdJmrKstSCWUmbLgimg=; b=HsNp5YFEYBEH6UIUl7uJpBPD1S
	kEIA7BRehcSxPC8vULQaJazoTL0GdjJL7hD8w7drcGk0CSQ8hcQM1B4dy+GJjLclNwiOWZfRyFLWr
	+suXXRhIMkmnzVfBdPq2NLCT1Q64oA9E26MGiul15QwbdlV1JUj4vyf064M7J++yKTa1d6pT+t8NY
	nw6HPSmHE4tIWNW/kSMme56UlQyOXvNaFAQ8qq6KvPZE49326kHNWJuQB1JBpL+7fCsubwcI8bF2S
	DKE6Kc02+6PwO/YtowuVgKPb5D+y3DkqDMQZIahZ/kefWPRVofdUvrqaTG1n+gJvbeBY7SBXUql0J
	u8jqCAow==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, John Clark <inindev@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/7] arm64: dts: rockchip: Updates to RGMII PHYs on Sige5 and
 NanoPi M5
Date: Wed, 25 Nov 2026 23:08:50 +0100
Message-ID: <Cu3H0uEZRa63R-pg_rJRCw@sntech.de>
In-Reply-To: <CAKTNdwFrQErYOgG9gnCc3g6JOGoimKa2AOKMs3LAcBVYuDuE0w@mail.gmail.com>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
 <179563805247.3885553.6358930861216631692.b4-ty@b4>
 <CAKTNdwFrQErYOgG9gnCc3g6JOGoimKa2AOKMs3LAcBVYuDuE0w@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_140907_823972_6DD19EF6 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGV5IEFsZXhleSwKCkFtIE1pdHR3b2NoLCAyNS4gTm92ZW1iZXIgMjAyNiwgMjI6NTg6MDkgTWl0
dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiBPbiBU
aHUsIE5vdiAyNiwgMjAyNiBhdCAxMjoyMeKAr0FNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+ID4KPiA+Cj4gPiBPbiBGcmksIDIwIE5vdiAyMDI2IDE0OjQ4OjA4ICsw
NDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+ID4gQm90aCBBcm1Tb00gU2lnZTUgYW5kIE5h
bm9QaSBNNSBib2FyZHMgdXNlIHRoZSBzYW1lIFJlYWx0ZWsgUkdNSUkgUEhZcwo+ID4gPiB3aGlj
aCBjdXJyZW50bHkgc2hhcmUgYW4gaXNzdWUgcHJldmVudGluZyB0aGVtIGZyb20gZW51bWVyYXRp
b24gdW5sZXNzIGFuCj4gPiA+IGVhcmxpZXIgYm9vdCBzdGFnZSBsZWZ0IHRoZW0gb3V0IG9mIHJl
c2V0OiBhdCBwb3dlci1vbiwgdGhlaXIgcmVzZXQgbGluZXMKPiA+ID4gYXJlIGFzc2VydGVkLCBz
byB0aGV5IGNhbm5vdCBhbnN3ZXIgYW4gTURJTyBwcm9iZS4gVW50aWwgdGhleSBhbnN3ZXIsIHRo
ZQo+ID4gPiBPUyBjYW5ub3QgbG9vayB1cCB0aGUgSUQgdG8gbWF0Y2ggYSBkcml2ZXIuIEFuZCB1
bnRpbCB0aGUgT1MgaGFzIGEgZHJpdmVyLAo+ID4gPiBub3RoaW5nIHJlbGVhc2VzIHRoZWlyIHJl
c2V0IGxpbmUuCj4gPiA+Cj4gPiA+IFsuLi5dCj4gPgo+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4K
PiA+IFsxLzddIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBEZXNjcmliZSBOYW5vUGkgTTUgRXRoZXJu
ZXQgUEhZcyBieSB0aGVpciBJRAo+ID4gICAgICAgY29tbWl0OiA2OTNlMGM0ZjAwMzg5YTA5N2Q3
MTA1NzdlZDVjMjRjNGFjM2Y3NWE3Cj4gPiBbMi83XSBhcm02NDogZHRzOiByb2NrY2hpcDogRGVz
Y3JpYmUgU2lnZTUgRXRoZXJuZXQgUEhZcyBieSB0aGVpciBJRAo+ID4gICAgICAgY29tbWl0OiA1
ZDgzOWFkOTU1M2Y5MGM3MjcxNTdjNDU0NzFhOTExZjY0Y2QwNjdhCj4gPiBbMy83XSBhcm02NDog
ZHRzOiByb2NrY2hpcDogRHJvcCBOYW5vUGkgTTUgUEhZIHJlZmVyZW5jZSBjbG9ja3MKPiA+ICAg
ICAgIGNvbW1pdDogOWM4M2I1M2U2Yzg1OGE5YThmMDBjYTgyZWNkMWY0NmQyZDcyM2I3MAo+ID4g
WzQvN10gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEVuYWJsZSBBTERQUyBvbiBOYW5vUGkgTTUgRXRo
ZXJuZXQgUEhZcwo+ID4gICAgICAgY29tbWl0OiA2MjBhZDViMDliZWM1YWJkODNkMzViZjIzYzFh
ZjFmYjY4ZWVkODBiCj4gPiBbNS83XSBhcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIEFMRFBT
IG9uIFNpZ2U1IEV0aGVybmV0IFBIWXMKPiA+ICAgICAgIGNvbW1pdDogZTQ4ZjFkMzA0ZjdiNjli
NDdjNmY5OGI3MDFhYTZmOGM4NGZmYmI5YQo+ID4gWzYvN10gYXJtNjQ6IGR0czogcm9ja2NoaXA6
IFNob3J0ZW4gTmFub1BpIE01IEV0aGVybmV0IFBIWSByZXNldCB0byBkYXRhc2hlZXQgdGltaW5n
Cj4gPiAgICAgICBjb21taXQ6IDVlZmFiOWU3YzI4NDQ4ZjYwMzVlNzIxNjI1NWY3Yjc2YjI4ZmY5
N2IKPiA+IFs3LzddIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBTaG9ydGVuIFNpZ2U1IEV0aGVybmV0
IFBIWSByZXNldCB0byBkYXRhc2hlZXQgdGltaW5nCj4gPiAgICAgICBjb21taXQ6IGEyYTM5MGU3
ZmE5ZTczZmYwN2QyYTlmYzAwMjExNGUyOTk0ODMyMDIKPiAKPiBXb3VsZCB5b3UgbWluZCBkcm9w
cGluZyB0aGUgbGFzdCB0d28gcGF0Y2hlcyBoZXJlPyBTYXNoaWtvIHBvaW50ZWQgb3V0Cj4gdGhh
dCBhIGxhdGVyIHJldmlzaW9uIG9mIHRoZSBkYXRhc2hlZXQgcHJlc2NyaWJlcyBsb25nZXIgcmVz
ZXQgdGltaW5ncwo+IHZzLiB0aG9zZSBpbiB0aGUgcmV2aXNpb24gSSBoYWQsIGFuZCB3aXRoIHRo
b3NlIGluIG1pbmQgaXQncyBub3Qgd29ydGgKPiB0aGUgY2h1cm4uCj4gCj4gVGhlIHJlc3Qgc2hv
dWxkIGJlIGZpbmUuCgpJJ3ZlIG5vdyBkcm9wcGVkIAphMmEzOTBlN2ZhOWUgYXJtNjQ6IGR0czog
cm9ja2NoaXA6IFNob3J0ZW4gU2lnZTUgRXRoZXJuZXQgUEhZIHJlc2V0IHRvIGRhdGFzaGVldCB0
aW1pbmcKNWVmYWI5ZTdjMjg0IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBTaG9ydGVuIE5hbm9QaSBN
NSBFdGhlcm5ldCBQSFkgcmVzZXQgdG8gZGF0YXNoZWV0IHRpbWluZwoKZm9yY2UtcHVzaGVkIHRo
ZSBicmFuY2ggYW5kIHJlLWNyZWF0ZWQgbXkgZm9yLW5leHQgYnJhbmNoLCBzbyB0aGV5CnNob3Vs
ZCBiZSBnb25lIG5vdyA6LSkKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
