Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F7D2C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 20:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQsBD92R0tsTqQiphMwcfO8JGGcaw4YuOv/SZq05B+o=; b=r6w3q7GjEXwjDX
	WNk4ZKtTVPnVtQQfkwVDfV284V3AUKudkZvcZ9mNLoHR/Ou4fctEDk42x2gvqGMDLf69bkZKY3/E8
	soxDKVqyk3/d0qDGlCCJEfCiK/JA+vOvrZb5UhWoMsx4LidswTzGELSJMbN6DMF8APmlJcSY0YY/M
	ms9qJ2YBxdxOV2yU6SPfJewBhHDwS82++q/bT66SDbs72e/njzDVNJYli7R/gcB7glthJebiK/Z9t
	sh5At9ZmMy236l0bS4m6HC8lbFaLf4j+sspNeqog9UZ/WwTfNTtmkxdHYCjqPlgv2Q7hub/iL5+Kw
	wAVOC40Uy2wDd2wAkT2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdbKC-00000001PRS-2uzK;
	Mon, 12 Aug 2024 20:07:28 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdbHY-00000001OZx-0NBC;
	Mon, 12 Aug 2024 20:04:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723493059; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DFVI2ejPpKsbUe6M1G+97fYwnwJH60kxq3P1haxtGVtuC7EVdKBtNv65W3vByHwfHYByLCPbo7Tb4IcakvaMJ2hbzp5mNUNGqeaTb9a2v+O6Ph/HnEKqv7iTyEaqtS1EGeS9D5JwEAeqinu1UDfTkLykjsm/smG89+OfPO47L+k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723493059; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=HM8rEmZuiOeiTWWoyNk5ZGItA3VT+hmenQdK6mme3D4=; 
	b=LfAzPFgWIiijUzk4mP0p7/qdg0vVp9PFUv+kmPa4bXiG3IpRCivxMxhN0tZXgMLklJgwDv4QErDm1BoegRuD8rL8fCsVLLIPDxLKdN1UQUfApFx9YQZO9NBXR4tb4UE98m5pDOgkFeREpC6fN+wA1v4oBYcjWVYwjkrJcBWElaw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723493059;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=HM8rEmZuiOeiTWWoyNk5ZGItA3VT+hmenQdK6mme3D4=;
	b=JnBqZwsFfChLRa4mKla5C7lzVCWurRnysmd8RJWAuLarkr5EEFdt1QDdwLGlnkoN
	ZkmtoQBxYnMl5YFNxbN6vhEZcX86W0KqlKPL88zHOnewIT+Cmv83OaM8LU8dvtAyxHM
	5lVCRp2oC7eC6c+rVyQ6rvMfTfwityNSPgbD2Cec=
Received: by mx.zohomail.com with SMTPS id 1723493058277520.4040371971508;
	Mon, 12 Aug 2024 13:04:18 -0700 (PDT)
Message-ID: <31cb347a-1d14-4114-bad3-5e9e4e87bf08@collabora.com>
Date: Mon, 12 Aug 2024 23:04:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] drm/rockchip: Unregister platform drivers in
 reverse order
To: Andy Yan <andyshrk@163.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <seanpaul@chromium.org>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Mark Yao <markyao0591@gmail.com>,
 kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240808-rk-drm-fix-unreg-v1-1-c30d9a754722@collabora.com>
 <3649004a.1f69.191445d79dc.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <3649004a.1f69.191445d79dc.Coremail.andyshrk@163.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_130444_199091_D3EBA5BD 
X-CRM114-Status: GOOD (  18.76  )
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

SGkgQW5keSwKCk9uIDgvMTIvMjQgNToxNCBBTSwgQW5keSBZYW4gd3JvdGU6Cj4gCj4gSGkgQ3Jp
c3RpYW4sCj4gCj4gQXQgMjAyNC0wOC0wOCAxOTo1ODowMiwgIkNyaXN0aWFuIENpb2NhbHRlYSIg
PGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4gTW92ZSByb2NrY2hp
cF9kcm1fcGxhdGZvcm1fZHJpdmVyIHVucmVnaXN0cmF0aW9uIGFmdGVyIGl0cyBzdWItZHJpdmVy
cywKPj4gd2hpY2ggZW5zdXJlcyBhbGwgZHJpdmVycyBhcmUgdW5yZWdpc3RlcmVkIGluIHRoZSBy
ZXZlcnNlIG9yZGVyIHVzZWQKPj4gd2hlbiB0aGV5IHdlcmUgcmVnaXN0ZXJlZC4KPiAKPiBXb3Vs
ZCB5b3UgcGxlYXNlIHByb3ZpZWQgc29tZSBkZXRhaWwgaW5mb3JtYXRpb24gYWJvdXQgaG93IHRv
IHJlcHJvZHVjZSB0aGlzCj4gaXNzdWUgdGhpcyBwYXRjaCB0cnkgdG8gZml477yfT3Igc29tZSBr
ZXJuZWwgbG9nIHdoZW4gdGhpcyBpc3N1ZSAgIHRyaWdnZXJlZOOAggoKSSBzdWJtaXR0ZWQgdGhp
cyBwYXRjaCB3aGlsZSBpbnZlc3RpZ2F0aW5nIGEgY291cGxlIG9mIGlzc3VlcwplbmNvdW50ZXJl
ZCB3aGVuIHRyaWVkIHRvIHJlbG9hZCB0aGUgcm9ja2NoaXBkcm0gbW9kdWxlLiAKCk9uZSB3YXMg
YSBzeXN0ZW0gZnJlZXplLCB3aGljaCBldmVudHVhbGx5IHByb3ZlZCB0byBoYXZlIGEgZGlmZmVy
ZW50CnJvb3QgY2F1c2UgYW5kIGdvdCBmaXhlZCB2aWEgWzFdLiAgVGhlIG90aGVyIG9uZSB3YXMg
YSBsb2NrZGVwIHNwbGF0CndoaWNoIHNlZW1zIHRvIGJlIGNhdXNlZCBieSB0aGUgc3dpdGNoIHRv
IG1hcGxlIHRyZWUgcmVnaXN0ZXIgY2FjaGUgaW4Kdm9wMiAtIEkgaGF2ZSBhIHJlZ21hcCB3b3Jr
YXJvdW5kLCBub3QgeWV0IHN1cmUgdGhhdCdzIGEgcHJvcGVyIGZpeC4KCkFzIG9mIHY2LjExLXJj
MSwgcmVsb2FkaW5nIHRoZSBtb2R1bGUgd29ya3MgZmluZSwgdy8gb3Igdy9vIHRoaXMgcGF0Y2gK
YXBwbGllZCAoaWdub3JpbmcgdGhlIGFib3ZlIG1lbnRpb25lZCBzcGxhdCkuICBCdXQgSSBjb3Vs
ZCBvbmx5IHZlcmlmeQpvbiBSb2NrIDNBLCBoZW5jZSB1bnJlZ2lzdGVyaW5nIHRoZSBkcml2ZXJz
IGluIHRoZSBjb3JyZWN0IG9yZGVyIHNob3VsZCwKYXQgbGVhc3QsIGVsaW1pbmF0ZSBhIHBvdGVu
dGlhbCBzb3VyY2Ugb2YgdW5leHBlY3RlZCBiZWhhdmlvciBvbiB0aGUKb3RoZXIgYm9hcmRzLgoK
UmVnYXJkcywKQ3Jpc3RpYW4KClsxXTogOWQ0MmMzZWUzY2UzICgiYXJtNjQ6IGR0czogcm9ja2No
aXA6IEFkZCBtaXNzaW5nIHBvd2VyLWRvbWFpbnMgZm9yIHJrMzU2eCB2b3BfbW11IikKCj4+IEZp
eGVzOiA4ODIwYjY4YmQzNzggKCJkcm0vcm9ja2NoaXA6IFJlZmFjdG9yIHRoZSBjb21wb25lbnQg
bWF0Y2ggbG9naWMuIikKPj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlz
dGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAzICstLQo+PiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+PiBpbmRleCA0NGQ3NjlkOTIzNGQuLmNhN2IwNzUwM2Zi
ZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9k
cnYuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5j
Cj4+IEBAIC01MjgsMTAgKzUyOCw5IEBAIHN0YXRpYyBpbnQgX19pbml0IHJvY2tjaGlwX2RybV9p
bml0KHZvaWQpCj4+Cj4+IHN0YXRpYyB2b2lkIF9fZXhpdCByb2NrY2hpcF9kcm1fZmluaSh2b2lk
KQo+PiB7Cj4+IC0JcGxhdGZvcm1fZHJpdmVyX3VucmVnaXN0ZXIoJnJvY2tjaGlwX2RybV9wbGF0
Zm9ybV9kcml2ZXIpOwo+PiAtCj4+IAlwbGF0Zm9ybV91bnJlZ2lzdGVyX2RyaXZlcnMocm9ja2No
aXBfc3ViX2RyaXZlcnMsCj4+IAkJCQkgICAgbnVtX3JvY2tjaGlwX3N1Yl9kcml2ZXJzKTsKPj4g
KwlwbGF0Zm9ybV9kcml2ZXJfdW5yZWdpc3Rlcigmcm9ja2NoaXBfZHJtX3BsYXRmb3JtX2RyaXZl
cik7Cj4+IH0KPj4KPj4gbW9kdWxlX2luaXQocm9ja2NoaXBfZHJtX2luaXQpOwo+Pgo+PiAtLS0K
Pj4gYmFzZS1jb21taXQ6IDFlYjU4NmE5NzgyY2RlOGU1MDkxYjlkZTc0NjAzZTBhODM4NmIwOWUK
Pj4gY2hhbmdlLWlkOiAyMDI0MDcwMi1yay1kcm0tZml4LXVucmVnLTlmM2YyOTk5NmEwMAo+PiAt
LSAKPj4gQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNv
bT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
