Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97A44CCFA13
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Nov 2025 12:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFjpeVQ2+XJml8kWL6hufPbOeAygK3184DNEcIwOFSg=; b=2BlZU/V9l7UU5r
	4Ir1oxMguHo5okKYe8vCNb0WlD/ClJWNlIiWw3Yb2C71vxCfNSOqH3ZJU+Rvnd2z+Wm2XSHUkE1Yx
	5urt/pGe/gB8eHNMrX2uuO4/lxMg5ZnpyXL/RdlmXqLXldiozRK/c5bHuh2DEr+TvhTk45J/ghheO
	3yKY6K1vnvbRmUoDDMAyQ6fxnfNniLMQZDQKGGlX6cjCX8PIa+QOgvtkJ75dSEWb+X6sAYMJCMQxz
	VJsl3N+rH2Kz+4wRqEQBZjYX4fT1ssXkmj7oO9CMTaSXyCJURaGmfvipXUrNR3lKyLDVfqR9CXw1L
	Hhwyk5db/mbOxdee53BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHi9P-000000037TI-2eEG;
	Sat, 08 Nov 2025 12:34:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHi9L-000000037Sc-25Jl;
	Sat, 08 Nov 2025 12:34:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5998F4341D;
	Sat,  8 Nov 2025 12:34:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A579C116C6;
	Sat,  8 Nov 2025 12:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762605272;
	bh=45EdQFA6NEw7zfaldijyvwunk1IEh60CWkYy3zjQTj8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZAe1C6aBQOu9ufMPYHKXtgVkRMFWTkasSqsDrHkF2pcnXXL2tKM478Rl/JOtw1fuA
	 bD0mol7BLa/ILSTZ5qVjy6diwgDi24ZKHJyysi3Pl5wz4IzIy0Uraf3VwDMLdaRgpr
	 AWFZCkK0vdShLRvi2D8ey+7byiPq9+7NaXIlNkITumuldt2OcQXRNyedOpLm9lBHrg
	 P7bITn3re31Mn5YZ6PGiwnoBGL/jeNK1YeK2+0lMuOIvQ0Qu8Mxs3ThqN3blG22LJ+
	 2wCof2QQuNkXYclObVKA0Mu34jcLNBvldL7On6QA5fE0MaWJAwAseZZHR3Ks29JLiX
	 8O1QW3z1i8/kQ==
Date: Sat, 8 Nov 2025 13:34:26 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Damien Le Moal <dlemoal@kernel.org>,
	Anand Moon <linux.amoon@gmail.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] PCI: dw-rockchip: Skip waiting for link up
Message-ID: <aQ840q5BxNS1eIai@ryzen>
References: <20250113-rockchip-no-wait-v1-1-25417f37b92f@kernel.org>
 <1E8E4DB773970CB5+5a52c9e1-01b8-4872-99b7-021099f04031@radxa.com>
 <6e87b611-13ea-4d89-8dbf-85510dd86fa6@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e87b611-13ea-4d89-8dbf-85510dd86fa6@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251108_043435_752208_07B09E62 
X-CRM114-Status: GOOD (  21.98  )
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

SGVsbG8gU2hhd24sCgpPbiBUdWUsIE9jdCAyMSwgMjAyNSBhdCAwMzoxMDoxM1BNICswODAwLCBT
aGF3biBMaW4gd3JvdGU6Cj4g5ZyoIDIwMjUvMTAvMjEg5pif5pyf5LqMIDEyOjI2LCBGVUtBVU1J
IE5hb2tpIOWGmemBkzoKPiA+IEhpIE5pa2xhcywgQmpvcm4sCj4gPiAKPiA+IEkgbm90aWNlZCBh
biBpc3N1ZSBvbiB0aGUgUm9ja2NoaXAgUkszNTg4UyBTb0MgdXNpbmcgdGhlIEFTTWVkaWEgQVNN
MjgwNgo+ID4gUENJZSBicmlkZ2Ugd2hlcmUgZGV2aWNlcyBiZWhpbmQgdGhlIGJyaWRnZSBmYWls
IHRvIHByb2JlIHNpbmNlIHY2LjE0Lgo+ID4gU3BlY2lmaWNhbGx5LCB0aGlzIHN0YXJ0ZWQgaGFw
cGVuaW5nIGFmdGVyIGNvbW1pdAo+ID4gNjQ3ZDY5NjA1YzcwMzY4ZDU0ZmMwMTJmY2U4YTQzZThl
NTk1NWIwNC4KPiA+IGRtZXNnIGxvZ3MgZnJvbSBiZWZvcmUgYW5kIGFmdGVyIHRoaXMgY29tbWl0
IGFyZSBhdmFpbGFibGUgYXQ6Cj4gPiAgwqBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9SYWR4YU5h
b2tpL2ZjYTJiZmNhMmVlODBmZWZlZTdiMDBjNzk2N2QyZTNkCj4gPiAKPiA+IEkgaGF2ZSBjb25m
aXJtZWQgdGhhdCByZXZlcnRpbmcgdGhlIGZvbGxvd2luZyBjb21taXRzIGZpeGVzIHRoZSBpc3N1
ZToKPiA+ICDCoGNvbW1pdCBlYzlmZDQ5OWI5YzYgKCJQQ0k6IGR3LXJvY2tjaGlwOiBEb24ndCB3
YWl0IGZvciBsaW5rIHNpbmNlIHdlCj4gPiBjYW4gZGV0ZWN0IExpbmsgVXAiKQo+ID4gIMKgY29t
bWl0IDBlMGI0NWFiNWQ3NyAoIlBDSTogZHctcm9ja2NoaXA6IEVudW1lcmF0ZSBlbmRwb2ludHMg
YmFzZWQgb24KPiA+IGRsbF9saW5rX3VwIElSUSIpCj4gPiAKPiAKPiBUaGVuIHRoZXNlIHR3byBj
b21taXRzIHdvdWxkIGxpa2UgdG8gcmVwbHkgb24gbGluayB1cCBpcnEgaW5zdGVhZCBvZgo+IGZp
eGVkIGRlbGF5IGluIGR3YyBmcmFtZXdvcmsuIEhlcmUgaXMgYSBub3QgdmVyeSBwcmVjaXNlIHRp
bWVsaW5lCj4gZGVzY3JpcHRpb24uCj4gCj4gdGltZShtcykgfCAgZHdfcGNpZV93YWl0X2Zvcl9s
aW5r77yI77yJICAgICB8IHN5cyBpcnFfdGhyZWFkKCkgfCBIb3QgcmVzZXQKPiAtLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gMDogICAgICAgfCAgZHdfcGNpZV9saW5rX3VwIHJldHVybiBmYWxzZSAgfCAgbGlu
ayB1cCBpcnEgICAgIHwKPiAxeCAgICAgICB8ICBQaHlzaWNhbCBsaW5rIHVwIGhhcHBlbmQgICAg
ICB8ICAgICAgICAgICAgICAgICAgfAo+IDkwOiAgICAgIHwgIGR3X3BjaWVfbGlua191cCByZXR1
cm4gdHJ1ZSAgIHwgICAgICAgICAgICAgICAgICB8Cj4gMTAwOiAgICAgfCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgbXNsZWVwKDEwMCkgZG9uZXwKPiAxMHg6ICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICBwY2lfcmVzY2FuX2J1cyAgfAo+IDF4eDogICAg
IHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICB8IDw9
PW9jY3VyCj4gMTkwOiAgICAgfCAgbXNsZWVwKDkwKSBkb25lICAgICAgICAgICAgICAgfCAgICAg
ICAgICAgICAgICAgIHwKPiAxOXg6ICAgICB8ICBwY2lfaG9zdF9wcm9iZSAgICAgICAgICAgICAg
ICB8ICAgICAgICAgICAgICAgICAgfAo+IAo+IFdoYXQgaWYgdGhlIGhvdCByZXNldCBoYXBwZW5z
IHdoZW4gcGNpX3Jlc2Nhbl9idXMoKSBzdGFydHMuIEkgdGhpbmsKPiBzY2FuIGRldmljZXMgcG9z
c2libGUgZmFpbCB3aGVuIHNlZWluZyAweGZmZmZmZmZmIGZyb20gY2ZnIHJlYWQuIEJ1dAo+IGEg
OTBtcyBkZWxheSBwZXJmZWN0bHkgYXZvaWRzIHRoaXMgZXZlbnQgaW4gZHdfcGNpZV93YWl0X2Zv
cl9saW5rKCksIGFuZCBieQo+IHRoZSB0aW1lIHRoZSA5MG1zIGRlbGF5IGlzIGNvbXBsZXRlZCwg
dGhlIGxpbmsgaXMgYWN0dWFsbHkgaW4gYW4KPiBhY2Nlc3NpYmxlIHN0YXRlLgoKVGhlIHBjaWUt
ZHctcm9ja2NoaXAuYyBkcml2ZXIgaXMgbW9kZWxsZWQgYWZ0ZXIgdGhlIHFjb20gZHJpdmVyLgpT
byBpZiB0aGlzIGlzIGEgcHJvYmxlbSB3aGVuIGEgQVNNMjgwNiBzd2l0Y2ggaXMgY29ubmVjdGVk
LCBJIHdvdWxkCmV4cGVjdCBxY29tIHBsYXRmb3JtcyB0byBoYXZlIHRoZSBzYW1lIHByb2JsZW0u
CgoKRG8gd2UgaGF2ZSBhIFBDSSB0cmFjZSB0aGF0IGNhbiB0ZWxsIHVzIGV4YWN0bHkgd2hhdCBn
b2VzIHdyb25nPwoKRlVLQVVNSS1zYW4gdGVsbHMgdXMgdGhhdCB0aGUgZW51bWVyYXRpb24gZG9l
cyBub3QgZGV0ZWN0IGFueSBkZXZpY2VzLApidXQgYWxzbyB0aGF0IHRoZXJlIGlzIG5vIGNyYXNo
LgoKSWYgd2UgYXNzdW1lIHRoZSBzY2VuYXJpbyBmcm9tIHlvdXIgdGltZWxpbmUgYWJvdmUsIHRo
YXQgYSBob3QgcmVzZXQKaGFwcGVucyBqdXN0IGFmdGVyIHBjaV9yZXNjYW5fYnVzKCksIGFmdGVy
IGEgaG90IHJlc2V0LCBMVFNTTSBzaG91bGQKcmUtZW50ZXIgbGluayB0cmFpbmluZy4KCkkgdmVy
aWZpZWQgdGhpczoKIyBiYz0kKHNldHBjaSAtcyAwMDAwOjAwOjAwLjAgQlJJREdFX0NPTlRST0wp
CiMgc2V0cGNpIC1zIDAwMDA6MDA6MDAuMCBCUklER0VfQ09OVFJPTD0kKHByaW50ZiAiJTA0eCIg
JCgoMHgkYmMgfCAweDQwKSkpICYmIHNsIGVlcCAwLjAxICYmIHNldHBjaSAtcyAwMDAwOjAwOjAw
LjAgQlJJREdFX0NPTlRST0w9JGJjClsgICA2NS43MjM5OTBdIHJvY2tjaGlwLWR3LXBjaWUgYTQw
MDAwMDAwLnBjaWU6IFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0M6IDB4NwpbICAgNjUuNzI0
NzAxXSByb2NrY2hpcC1kdy1wY2llIGE0MDAwMDAwMC5wY2llOiBMVFNTTV9TVEFUVVM6IDB4MzAw
MTEKWyAgIDY1LjgyNTc4N10gcm9ja2NoaXAtZHctcGNpZSBhNDAwMDAwMDAucGNpZTogUmVjZWl2
ZWQgTGluayB1cCBldmVudC4gU3RhcnRpbmcgZW51bWVyYXRpb24hCgpTbyB3ZSBnZXQgYW5vdGhl
ciBsaW5rIHVwIElSUSBhZnRlciB0aGUgaG90IHJlc2V0LgoKVGhlIElSUSBoYW5kbGVyIGZvciB0
aGlzIElSUSB3aWxsIG9uY2UgYWdhaW4gY2FsbCBwY2lfcmVzY2FuX2J1cygpLgpTbyBJIHdvdWxk
IGV4cGVjdCB0aGF0IHRoaXMgc2Vjb25kIHBjaV9yZXNjYW5fYnVzKCkgY2FsbCB3b3VsZCBhY3R1
YWxseQpiZSBhYmxlIHRvIGZpbmQgdGhlIGRldmljZSBiZWhpbmQgdGhlIHN3aXRjaC4KCgpNYW5p
LCBCam9ybiwgdGhvdWdodHM/CgoKCktpbmQgcmVnYXJkcywKTmlrbGFzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
