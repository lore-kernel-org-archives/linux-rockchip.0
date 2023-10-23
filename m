Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38EF2C25B42
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Oct 2023 22:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTitPUu9lHHQeX2I7cMjGJnxboIdfIOpMsYJ+aKGrZk=; b=kqM7j/8B3qGkQo
	K3IzmWrxnLFpcHOuNr3jFWYVQDkhF/pmwsWvwpHeTN5LMbNjewgCEM0/DwSYzpzbNXiVIgT6AZQ0X
	qvPIVXBh+PrGUOU49gKcGaf2B5rUg47WBJ8eQuQNxEoYN2mjvcvNaHWC7A4OYWDXcTYsGYUdE98vn
	rRl30f4KjKVFluHcm+oTDvKy3MHlwsM0EJsiOdkLpsv0ZJD2lA5eUclPzVG3Mg4Gm4rtc+SqTZjfr
	sD/P1I2MODAH0cQxaF8Vf2s+BHu/MuRytaRhEAbp076huU7rzI3fDir5POZuJWOuQkzN32q/1K3be
	GYiKpwO4KEODBusDyfEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qv3XQ-008NSG-0j;
	Mon, 23 Oct 2023 22:36:44 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qv3XM-008NQl-2X;
	Mon, 23 Oct 2023 22:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1698100592;
 bh=wM+xQTdMWTyO4bxesxODcq1HkQ/m5t1W25dETDzkkEA=;
 b=vGL0t4lg7LO1B56eQ/jhH2gU0QtuWbHUge5pRcy88wRYxF+Rgkc90x8GB3rVN82SI1Mar8CSy
 Q4ZlDqT2q7QL1Y+EGwdssNu15AuD7Ss5awxZLgaWZXOamC0tvyMcElN3O5vQQnK+MVMDc4rtRdL
 MKOhIpInbCgzl47YDFSyNjzDoP4pbPeCpkr3Ma1YnMEAjiKNI+Wl3g1gEabZIrwHAvOuPnV6hht
 yf7zlzGOTeejHE2YsxDLyYzu/kZWDdW7gfkGEZsKwOJfeenPjzgoQLBpk7ytl8Bseh8YAVes8g7
 jh6KjD4hPJhUakn+q/WsrgCV05MHe+dik4J36rC4zxZw==
Message-ID: <2e3f27a4-48b7-41ae-a686-930ac3deffee@kwiboo.se>
Date: Tue, 24 Oct 2023 00:36:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/2] drm/rockchip: vop: Add NV15, NV20 and NV30 support
Content-Language: en-US
To: Christopher Obbard <chris.obbard@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, kernel
 <kernel@collabora.com>
References: <20231023173718.188102-1-jonas@kwiboo.se>
 <f28f34b1c58a41856eed020b5d02dc3abf1a8e94.camel@collabora.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <f28f34b1c58a41856eed020b5d02dc3abf1a8e94.camel@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6536f570a54e5ddc6f4f4641
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_153640_865885_237523DF 
X-CRM114-Status: GOOD (  19.36  )
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

SGkgQ2hyaXMsCgpPbiAyMDIzLTEwLTIzIDE5OjUyLCBDaHJpc3RvcGhlciBPYmJhcmQgd3JvdGU6
Cj4gSGkgSm9uYXMsCj4gCj4gT24gTW9uLCAyMDIzLTEwLTIzIGF0IDE3OjM3ICswMDAwLCBKb25h
cyBLYXJsbWFuIHdyb3RlOgo+PiBUaGlzIHNlcmllcyBhZGQgc3VwcG9ydCBmb3IgZGlzcGxheWlu
ZyAxMC1iaXQgNDoyOjAgYW5kIDQ6MjoyIGZvcm1hdHMKPj4gcHJvZHVjZWQKPj4gYnkgdGhlIFJv
Y2tjaGlwIFZpZGVvIERlY29kZXIgb24gUkszMjJYLCBSSzMyODgsIFJLMzMyOCwgUkszMzY4IGFu
ZCBSSzMzOTkuCj4+IEFsc28gaW5jbHVkZSAxMC1iaXQgNDo0OjQgc3VwcG9ydCBzaW5jZSBWT1Ag
Y2FuIHN1cHBvcnQgdGhhdCBhbHNvLgo+Pgo+PiBGaXJzdCBwYXRjaCBhZGRzIG5ldyBmb3VyY2Mg
MTAtYml0IFlVViBmb3JtYXRzIHdpdGggNDoyOjIvNDo0OjQgc3ViLQo+PiBzYW1wbGluZy4KPj4g
U2Vjb25kIHBhdGNoIGFkZHMgc3VwcG9ydCBmb3IgZGlzcGxheWluZyB0aGUgbmV3IGZvdXJjYyBm
b3JtYXRzLgo+Pgo+PiBUaGVzZSBwYXRjaGVzIGhhdmUgYmVlbiBpbiB1c2UgYnkgTGlicmVFTEVD
IGFuZCBvdGhlciBkaXN0cm9zIGZvciB0aGUKPj4gcGFzdCAzKyB5ZWFycywgaG9waW5nIHRoZXkg
Y2FuIGJlIG1lcmdlZCB0aGlzIHRpbWUgYXJvdW5kLgo+Pgo+PiBBIHJvdWdoIGxpYmRybS9tb2Rl
dGVzdCBwYXRjaCBbMl0gaGF2ZSBiZWVuIHVzZWQgdG8gdmFsaWRhdGUgdXNlIG9mCj4+IE5WMTUs
IE5WMjAgYW5kIE5WMzAgZm9ybWF0cyBvbiBSSzMyODgsIFJLMzMyOCBhbmQgUkszMzk5IGJvYXJk
cy4KPj4KPj4gwqAgbW9kZXRlc3QgLXMgPGNvbm5lY3Rvcl9pZD5APGNydGNfaWQ+Ojxtb2RlPi08
dnJlZnJlc2g+QDxmb3JtYXQ+Cj4+Cj4+IFRpbmtlciBCb2FyZCBSMi4wIChyazMyODh3KToKPj4g
wqAgbW9kZXRlc3QgLXMgNTA6MTkyMHgxMDgwLTYwQE5WMTUKPj4KPj4gUm9jayBQaSA0IChyazMz
OTkpOgo+PiDCoCBtb2RldGVzdCAtcyA1MkA0NDoxOTIweDEwODAtNjBATlYxNQo+Pgo+PiBSb2Nr
NjQgKHJrMzMyOCk6Cj4+IMKgIG1vZGV0ZXN0IC1zIDQyOjE5MjB4MTA4MC02MEBOVjE1Cj4+Cj4+
IENoYW5nZXMgaW4gdjU6Cj4+IC0gVXNlIGRybV9mb3JtYXRfaW5mb19taW5fcGl0Y2goKSBmb3Ig
Y29ycmVjdCBicHAKPj4gLSBBZGQgbWlzc2luZyBOVjIxLCBOVjYxIGFuZCBOVjQyIGZvcm1hdHMK
Pj4KPj4gQ2hhbmdlcyBpbiB2NDoKPj4gLSBSZXdvcmsgUkszMzI4L1JLMzM5OSB3aW4wLzEgZGF0
YSB0byBub3QgYWZmZWN0IFJLMzM2OAo+Pgo+PiBDaGFuZ2VzIGluIHYzOgo+PiAtIE5vIGNoYW5n
ZXMsIHJlYmFzZWQgb24gbmV4dC0yMDIzMDYxNgo+PiAtIFItQiB0YWdzIHdhcyBjb2xsZWN0ZWQK
Pj4KPj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSBBZGQgTlYzMCBmb3JtYXQKPj4gLSBSLUIgdGFncyB3
YXMgbm90IGNvbGxlY3RlZCBkdWUgdG8gTlYzMCBjaGFuZ2VzCj4+Cj4+IFRoaXMgc2VyaWVzIGlz
IGFsc28gYXZhaWxhYmxlIGF0IFsxXSBhbmQgbGliZHJtL21vZGV0ZXN0IHBhdGNoIGF0IFsyXS4K
Pj4KPj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9Ld2lib28vbGludXgtcm9ja2NoaXAvY29tbWl0
cy92Ni42LXJjNy12b3AtbnYxNQo+PiBbMl0gaHR0cHM6Ly9naXRodWIuY29tL0t3aWJvby9saWJk
cm0vY29tbWl0cy9udjE1Cj4gCj4gQ291bGQgeW91IG9wZW4gYSBkcmFmdCBtZXJnZSByZXF1ZXN0
IGZvciBsaWJkcm0gdXBzdHJlYW0gYXQKPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
bWVzYS9kcm0gcG9pbnRpbmcgdG8gdGhpcyBzZXJpZXM/IElmIHRoZXJlIGFyZQo+IHN1YnNlcXVl
bnQgcmV2aXNpb25zIG9mIHRoaXMgc2VyaWVzLCBpdCdkIGJlIGdyZWF0IHRvIGxpbmsgdGhhdCBt
ZXJnZSByZXF1ZXN0Cj4gaW4gdGhlIGNvdmVyIGxldHRlci4KCkhhdmUgY3JlYXRlZCBhIGRyYWZ0
IG1lcmdlIHJlZ3Vlc3QgZm9yIGxpYmRybS9tb2RldGVzdCBjaGFuZ2VzIG5vdy4KaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvZHJtLy0vbWVyZ2VfcmVxdWVzdHMvMzI5CgpUaGUg
cGF0dGVybiBjb2RlIGNvdWxkIHJlYWxseSBuZWVkIHNvbWUgaW1wcm92ZW1lbnRzL3JlZmFjdG9y
aW5nLCBpbgpjdXJyZW50IGZvcm0gaXQgc2hvdWxkIGF0IGxlYXN0IGJlIGVub3VnaCB0byBjcmVh
dGUgYSB0ZXN0IHBhdHRlcm4gdG8KaGVscCB0ZXN0L3ZhbGlkYXRlIHRoaXMgc2VyaWVzIDotKQoK
UmVnYXJkcywKSm9uYXMKCj4gCj4gCj4gQ2hlZXJzIQo+IAo+IENocmlzCj4gCj4+Cj4+IEpvbmFz
IEthcmxtYW4gKDIpOgo+PiDCoCBkcm0vZm91cmNjOiBBZGQgTlYyMCBhbmQgTlYzMCBZVVYgZm9y
bWF0cwo+PiDCoCBkcm0vcm9ja2NoaXA6IHZvcDogQWRkIE5WMTUsIE5WMjAgYW5kIE5WMzAgc3Vw
cG9ydAo+Pgo+PiDCoGRyaXZlcnMvZ3B1L2RybS9kcm1fZm91cmNjLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDggKysrCj4+IMKgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AuYyB8IDM2ICsrKysrKysrLS0tCj4+IMKgZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AuaCB8wqAgMSArCj4+IMKgZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX3ZvcF9yZWcuYyB8IDY2ICsrKysrKysrKysrKysrKysrLS0tLQo+PiDC
oGluY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqAgMiArCj4+IMKgNSBmaWxlcyBjaGFuZ2VkLCA5NiBpbnNlcnRpb25zKCspLCAxNyBkZWxl
dGlvbnMoLSkKPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
