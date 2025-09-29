Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E540CAC5B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 08:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TNyCEKBCAXjGlcxjUjmNWhDS7K7GF4XufYzepw9FSIo=; b=AcUkktnRayhm4+TCXuBa8cKm0t
	itMym1B/ynxf0uG3xg45LVUh7LknPrH4vid+xOZeuF/cIIHQZbeOb7lhaZkDgd6ER6JCiEi1nL449
	b6wUUgq1Nmp1efXiRprmjI0VlsGtQk2dZChae+W4aTH8u7hA02P68GmZsNLKuNvOQpKeoHc990Ej1
	5EKvuHF+IeH+bTdRsscUMBlMbxRoMllnUpTP13NYCd4iVmueqWcwlVA0syURFB94tFHQJBDJfM4SC
	505yQI58k19fyDQebMJtpCrXXqEz3gy2EctdUBpS4csXGuxktpRa3O3JeZtreEoJreh5rwnjA07p1
	2knYyP/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v397I-00000001lsl-40jN;
	Mon, 29 Sep 2025 08:20:16 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v397F-00000001lsC-464J;
	Mon, 29 Sep 2025 08:20:15 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1759134009;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8oK+T6aZibp3zhTv/GFM9GWZmrGwuRk6vAxJAm8TV4s=;
	b=flc3dMm+P5PsO95Okxw565JshEKi7HR7mV9UIcwtd3ug/gnEuAInUznF+Usr5YaEtqgBbH
	Mx/60trvF0rlUiIOsmWVDrkwCjF275k0aXYDvUMjbTdNXQuD6LMXkM0cgNo9y4jOTVvRTT
	Eul+yDHIUPtuKuvVQEzvGRprKXbN23o5AOMMJHBr5CbOi2RQZRqcZm2XYjF6qpEsMDJKZ3
	s3njOrU34zvhxJjjrQBqLFEHNQYYf32uY1PuF1hA4lxzmVO/SSPnFYXQCUBqwjVASYiTB9
	1dkBS32XzwpBCdUZ5d2F6bnWEJ0u0bJZLQxAj90QOx+9eJBsiG7sO6WxKq9PyQ==
Date: Mon, 29 Sep 2025 10:20:08 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Ondrej
 Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
Subject: Re: [PATCH v3 0/5] Upstreaming Pinephone Pro Patches
In-Reply-To: <b01ed528-8b29-4a6a-bdff-88f2e3b5dd2e@gmail.com>
References: <20250921-ppp_light_accel_mag_vol-down-v3-0-7af6651f77e4@gmail.com>
 <53eabe34a310ea9c74315fa09a604e4a@manjaro.org>
 <b01ed528-8b29-4a6a-bdff-88f2e3b5dd2e@gmail.com>
Message-ID: <115da845d9161e6ecfa67cf189b84aa8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_012014_373632_3B61CC72 
X-CRM114-Status: GOOD (  26.09  )
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

SGVsbG8gUnVkcmFrc2hhLAoKT24gMjAyNS0wOS0yOSAwOTo0NCwgUnVkcmFrc2hhIEd1cHRhIHdy
b3RlOgo+PiBUaGFua3MgZm9yIHN1Ym1pdHRpbmcgdGhlc2UgcGF0Y2hlcy7CoCBIb3dldmVyLCBw
bGVhc2UgZXhwYW5kIHRoZSBwYXRjaAo+PiBkZXNjcmlwdGlvbnMsIGJlY2F1c2UgdGhlaXIgY3Vy
cmVudCBmb3JtcyBhcmUgdG9vIHRlcnNlIGFuZCwgYXMgc3VjaCwKPj4gc2ltcGx5IG5vdCBhY2Nl
cHRhYmxlLsKgIFRoaXMgYXBwbGllcyB0byBhbGwgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcy4KPiAK
PiBHb3RjaGEsIHdpbGwgZG8hIEkndmUgYWRkZWQgdGhlIHRlc3RpbmcgdGhhdCBJIGRpZC4gRnJv
bQo+IGh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLmh0
bWwKPiAKPj4gVGhlIHRleHQgc2hvdWxkIGJlIHdyaXR0ZW4gaW4gc3VjaCBkZXRhaWwgc28gdGhh
dCB3aGVuIHJlYWQgd2Vla3MsCj4+IG1vbnRocyBvciBldmVuIHllYXJzIGxhdGVyLCBpdCBjYW4g
Z2l2ZSB0aGUgcmVhZGVyIHRoZSBuZWVkZWQgZGV0YWlscwo+PiB0byBncmFzcCB0aGUgcmVhc29u
aW5nIGZvciB3aHkgdGhlIHBhdGNoIHdhcyBjcmVhdGVkLgo+IAo+IEl0IGZlbHQgbGlrZSBzYXlp
bmcgbW9yZSB0aGFuICJhZGRpbmcgeCBzZW5zb3IiIHNlZW1lZCBsaWtlIGFkZGluZwo+IGZsdWZm
IHRvIG1lLCBzbyB0aGF0IGlzIHdoeSBJIGtlcHQgaXQgc2hvcnQuIExldCBtZSBrbm93IGlmIHRo
ZXJlIGlzCj4gc29tZXRoaW5nIGVsc2UgSSBzaG91bGQgYWRkIGJlc2lkZSB0aGUgdGVzdHMgSSBo
YXZlIGRvbmUuCgpUaGFua3MgZm9yIGltcHJvdmluZyB0aGUgcGF0Y2ggZGVzY3JpcHRpb25zIGlu
IHRoZSB2NCBvZiB0aGlzIHNlcmllcy4KSSBqdXN0IHdlbnQgcXVpY2tseSB0aHJvdWdoIHRoZSB2
NCBhbmQgaXQgbG9va3MgbXVjaCBiZXR0ZXIuCgpJdCBjb3VsZCBiZSBzYWlkIHRoYXQgdGhlIG5l
dyBwYXRjaCBkZXNjcmlwdGlvbnMgYXJlIG5vdyBhIGJpdCB0b28KdmVyYm9zZSwgaW4gdGhlIHNl
bnNlIHRoYXQgdGhlIHRlc3QgcHJvY2VkdXJlcyBhbmQgdGhlaXIgcmVzdWx0cyBjb3VsZApiZSBz
dW1tZWQgdXAgYSBiaXQgYmV0dGVyIGluIHByb3NlLCBpbnN0ZWFkIG9mIHByb3ZpZGluZyB0aGUg
InJhdyIKaW5wdXRzIGFuZCBvdXRwdXRzLiAgSG93ZXZlciwgaXQncyBzdGlsbCBiZXR0ZXIgdG8g
aGF2ZSB0aG9zZSwgdGhhbgpub3QgdG8gaGF2ZSBhbnl0aGluZy4gIFdyaXRpbmcgZ29vZCBwcm9z
ZSBpcyBhIHNraWxsIHRoYXQgdXN1YWxseQpyZXF1aXJlcyBsZWFybmluZyBhbmQgcHJhY3RpY2Uu
Cgo+PiBJJ20gYWxzbyB1bmRlciBpbXByZXNzaW9uIHRoYXQgeW91J3JlIHN1Ym1pdHRpbmcgdGhl
c2UgcGF0Y2hlcyAKPj4gdXBzdHJlYW0KPj4gYmxpbmRseSBhbmQgd2l0aG91dCByZXNlYXJjaGlu
ZyB0aGUgcnVsZXMgdGhhdCBhcHBseSB3ZWxsIGVub3VnaCwgCj4+IHdoaWNoCj4+IG1heSBub3Qg
YmUgdGhlIGJlc3QgcG9zc2libGUgYXBwcm9hY2guCj4gCj4gU29ycnkhIEkndmUgcmVhZAo+IGh0
dHBzOi8vZG9jcy5rZXJuZWwub3JnL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLmh0bWwgYSBi
dW5jaCBvZgo+IHRpbWVzIGR1cmluZyB0aGUgeWVhcnMgSSBoYXZlIGNvbnRyaWJ1dGVkIHRvIHRo
ZSBMaW51eCBrZXJuZWwgYW5kCj4gaW5ldml0YWJseSBmb3JnZXQgc29tZXRoaW5nLiBQbGVhc2Ug
ZmVlbCBmcmVlIHRvIHRlbGwgbWUgd2hhdCBJJ3ZlCj4gZG9uZSB3cm9uZyEgSSd2ZSBjb3JyZWN0
ZWQgbXkgbWlzdGFrZXMgaW4gdjQgKGFuZCB1bmRvdWJ0ZWRseSBwcm9iYWJseQo+IGludHJvZHVj
ZWQgbW9yZSwgYnV0IGZlZWwgZnJlZSB0byB0ZWxsIG1lIHRoYXQgOykgKQoKWW91IGhhdmVuJ3Qg
ZG9uZSBhbnl0aGluZyB0ZWNobmljYWxseSB3cm9uZywgYnV0IHRoZSB3YXkgeW91IHN1Ym1pdHRl
ZAp0aGUgdjIgYW5kIHYzIG1hZGUgdGhlbSBmZWVsIGEgYml0IGxpa2UgeW91IHBpY2tlZCB0aG9z
ZSBwYXRjaGVzIGZyb20Kc29tZSByYW5kb20gcGxhY2UgYW5kIHN1Ym1pdHRlZCB0aGVtIHRvIHRo
ZSBtYWlsaW5nIGxpc3Qgd2l0aG91dCByZWFsbHkKdW5kZXJzdGFuZGluZyB0aGUgc3ViamVjdCBt
YXR0ZXIuICBJbiBvdGhlciB3b3JkcywgaXQncyB0aGUgCmNvbnRyaWJ1dG9yJ3MKam9iIHRvIGNv
bnZpbmNlIGV2ZXJ5b25lIGVsc2UgdGhhdCB0aGUgc3VibWl0dGVkIHBhdGNoZXMgYXJlIGZpbmUg
dG8KYmVjb21lIGFjY2VwdGVkLCBhbmQgdGhlIHYyIGFuZCB2MyBzaW1wbHkgbGFja2VkIHRoYXQu
Cgo+PiBGaW5hbGx5LCBwbGVhc2UgcmVmcmFpbiB5b3Vyc2VsZiBmcm9tIHNlbmRpbmcgbXVsdGlw
bGUgdmVyc2lvbnMgb2YgdGhlCj4+IHNhbWUgcGF0Y2ggc2VyaWVzIGluIHRoZSBzYW1lIGRheS7C
oCBEb2luZyBzbyBtYWtlcyByZXZpZXdpbmcgdGhlIAo+PiBwYXRjaGVzCj4+IHVubmVjZXNzYXJp
bHkgaGFyZC4KPiAKPiBTb3JyeSBhYm91dCB0aGF0IG9uY2UgYWdhaW4hIEknbSBtb3N0bHkgYSBo
b2JieWlzdCB0aGF0IGxvdmVzIHdvcmtpbmcKPiBvbiBMaW51eCBvdmVyIHRoZSB3ZWVrZW5kLiBJ
IHdhbnRlZCB0byBnZXQgY29ycmVjdCBteSBtaXN0YWtlcyBzbyB0aGF0Cj4gSSBjYW4gZ2V0IHJl
dmlld3Mgb3ZlciB0aGUgd2Vlay4gSSB3aXNoIGxrbWwgdXNlZCBhIGZvcmdlLCBzbyBJIGRpZG4n
dAo+IGhhdmUgdG8gc3BhbSB5b3UsIGJ1dCBJIGRpZ3Jlc3MuIEkgd2lsbCBrZWVwIHRoaXMgaW4g
bWluZCBtb3ZpbmcKPiBmb3J3YXJkLgoKSSB3b25kZXIgaG93IHdvdWxkIHNvbWUgZm9yZ2UgcHJl
dmVudCAic3BhbW1pbmciPyAgSXQgaXNuJ3QgYWJvdXQgdGhlCnBvc3NpYmxlICJzcGFtbWluZyIs
IGJ1dCBhYm91dCB0aGUgYWN0IG9mIHN1Ym1pdHRpbmcgZGlmZmVyZW50IHZlcnNpb25zLAp3aGlj
aCB3b3VsZCBiZSBwcmVzZW50IHJlZ2FyZGxlc3Mgb2YgdGhlIHdheSB0aGV5J2QgYmUgc3VibWl0
dGVkLCBhbmQKdGhlIHJldmlld2VycyB3b3VsZCBuZWVkIHRvIGJlIGF3YXJlIChpLmUuICJzcGFt
bWVkIikgb2YgdGhlbSBhbnl3YXkuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
