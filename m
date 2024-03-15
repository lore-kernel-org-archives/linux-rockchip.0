Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C39FEC54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 11:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGy6JHg8yhud4bUK6hLIAELjEhKAMy3V7RUrTit6scM=; b=yzw1jxlsoKT9pP
	BqTQbOjpI7uCIw+mw6j9vYMKqLI3eikaFRc2D9b4JZQY2xk2cC9lrZ8r3xNDsVQ7Ljy6wNaz/4p1x
	OE+WW+3rC6Zaxjyqb9mkG4FTikucKSU4pMI1yh3BR07E8ohozyKi362F2V/aKeb7+VddaOEfJX2A6
	caWl6GSG3I5QrqkvUAlYqgWtjGV6GqC2vnmC1dbG2fW+qmGgrTjM5rvAy8FdrCXtREqRewtGL8YQR
	mRrXgmxNq/R0KYsLcJ3/832lltX5DxzO5Diom6kdRAieHEMnD6K9O13JlwXfpQtYiEz54MBVGmYca
	0ibiL4twp7PXycTw5Zhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5XB-0000000HaAi-1pj0;
	Fri, 15 Mar 2024 11:15:33 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5X7-0000000Ha9v-2DUE;
	Fri, 15 Mar 2024 11:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710501328;
	bh=dl7ZhBIyNJ+zkeATWSO3R1GGYspWpDZBRDyyr6jhFxI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LZAY3hiq1mwwA9m59SLy+T5ZuyG+SM7R9K57TZdw85wxld+66CUWGg0yvUtTXQO9D
	 pKbyloDvRwGnDg1vBhSyXLJe6gJT0BNToA7zZaayOesHRR9Tpsf1391diB/dUnRHl0
	 g2XY6gmD+97I6E7ftZRYWQX+1yu1aY4StsUWhGewTo0Dzhv+qWUIpdI2cLEuj77axT
	 QzXGamsy7SRP5kXVa4v2eiO6L9jk0R7xrWxeiz01jTL1521s1ulgHBPOanmL0yqFAx
	 MzP7PrH37lOM/mKdm+Od5RmybnW4NakayucXCBEoztypsIGWC+NoSszFhyfvNBx2ci
	 9ZMN33QjAeDbQ==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6B6FE37820D8;
	Fri, 15 Mar 2024 11:15:24 +0000 (UTC)
Message-ID: <4b88ae15-ac1c-c77f-69cf-26cd192ee908@collabora.com>
Date: Fri, 15 Mar 2024 16:45:22 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 05/11] drm/ci: mediatek: Refactor existing mediatek
 jobs
Content-Language: en-US
To: Helen Koike <helen.koike@collabora.com>, dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 emma@anholt.net, robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 hamohammed.sa@gmail.com, rodrigosiqueiramelo@gmail.com,
 melissa.srw@gmail.com, mairacanal@riseup.net, mcanal@igalia.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240306030649.60269-1-vignesh.raman@collabora.com>
 <20240306030649.60269-6-vignesh.raman@collabora.com>
 <e53fd362-c2c2-4935-b6a3-c73decd23d10@collabora.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <e53fd362-c2c2-4935-b6a3-c73decd23d10@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_041529_720046_6827F628 
X-CRM114-Status: GOOD (  17.96  )
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

SGkgSGVsZW4sCgpPbiAwNy8wMy8yNCAxOTozMiwgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gCj4gCj4g
T24gMDYvMDMvMjAyNCAwMDowNiwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4gRm9yIG1lZGlhdGVr
IG10ODE3MyBhbmQgbXQ4MTgzLCB0aGUgZGlzcGxheSBkcml2ZXIgaXMgbWVkaWF0ZWsuCj4+IEN1
cnJlbnRseSwgaW4gZHJtLWNpIGZvciBtZWRpYXRlaywgb25seSB0aGUgZGlzcGxheSBkcml2ZXIg
aXMKPj4gdGVzdGVkLiBSZWZhY3RvciB0aGUgZXhpc3RpbmcgbWVkaWF0ZWsgam9icyBzbyB0aGF0
IGdwdSBkcml2ZXIKPj4gdGVzdGluZyBqb2JzIGNhbiBiZSBhZGRlZCBsYXRlciBhbmQgdXBkYXRl
IHhmYWlscyBhY2NvcmRpbmdseS4KPj4gU2luY2UgdGhlIGNvcnJlY3QgZHJpdmVyIG5hbWUgaXMg
cGFzc2VkIGZyb20gdGhlIGpvYiB0byB0ZXN0IGdwdQo+PiBhbmQgZGlzcGxheSBkcml2ZXIsIHJl
bW92ZSB0aGUgY2hlY2sgdG8gc2V0IElHVF9GT1JDRV9EUklWRVIKPj4gYmFzZWQgb24gZHJpdmVy
IG5hbWUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFZpZ25lc2ggUmFtYW4gPHZpZ25lc2gucmFtYW5A
Y29sbGFib3JhLmNvbT4KPj4gLS0tCj4+Cj4+IHYyOgo+PiDCoMKgIC0gUmVmYWN0b3IgdGhlIHBh
dGNoIHRvIHJlbmFtZSBqb2IgdG8gaW5kaWNhdGUgZGlzcGxheSBkcml2ZXIgdGVzdGluZywKPj4g
wqDCoMKgwqAgcmVuYW1lIHRoZSBleGlzdGluZyB4ZmFpbCBmaWxlcywgYW5kIHJlbW92ZSBJR1Rf
Rk9SQ0VfRFJJVkVSIGZyb20gCj4+IHRoZQo+PiDCoMKgwqDCoCBzY3JpcHQgc2luY2UgaXQncyBu
b3cgc2V0IGJ5IHRoZSBqb2IuCj4+Cj4+IHYzOgo+PiDCoMKgIC0gQWRkIHRoZSBqb2IgbmFtZSBp
biBHUFVfVkVSU0lPTiBhbmQgdXNlIGl0IGZvciB4ZmFpbCBmaWxlIG5hbWVzIAo+PiBpbnN0ZWFk
Cj4+IMKgwqDCoMKgIG9mIHVzaW5nIERSSVZFUl9OQU1FLiBBbHNvIHVwZGF0ZSB4ZmFpbHMuCj4+
Cj4+IHY0Ogo+PiDCoMKgIC0gUmVtb3ZlIHRoZSBkaXNwbGF5IHN1ZmZpeCBpbiBqb2IgYW5kIHJl
bmFtZSB4ZmFpbHMgYWNjb3JkaW5nbHkuCj4+IMKgwqDCoMKgIFJlbW92ZSB0aGUgY2hhbmdlIGFk
ZGluZyBqb2IgbmFtZSBpbiBHUFVfVkVSU0lPTi4KPj4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1
L2RybS9jaS9pZ3RfcnVubmVyLnNowqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMCAtLS0t
LS0tLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3QueW1swqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHwgMjEgKysrKysrKysrKysrKystLS0tLQo+PiDCoCAuLi4vZHJt
L2NpL3hmYWlscy9tZWRpYXRlay1tdDgxNzMtZmFpbHMudHh0wqDCoCB8IDE1IC0tLS0tLS0tLS0t
LS0KPj4gwqAgLi4uL2RybS9jaS94ZmFpbHMvbWVkaWF0ZWstbXQ4MTczLWZsYWtlcy50eHTCoCB8
IDEzICsrKysrKysrKysrKwo+PiDCoCAuLi4vZHJtL2NpL3hmYWlscy9tZWRpYXRlay1tdDgxODMt
ZmFpbHMudHh0wqDCoCB8IDIxICsrKysrKysrKysrKy0tLS0tLS0KPj4gwqAgLi4uL2RybS9jaS94
ZmFpbHMvbWVkaWF0ZWstbXQ4MTgzLWZsYWtlcy50eHTCoCB8wqAgOCArKysrKysrCj4+IMKgIDYg
ZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCj4+IMKgIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vY2kveGZhaWxzL21lZGlhdGVrLW10ODE3
My1mbGFrZXMudHh0Cj4+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vY2kv
eGZhaWxzL21lZGlhdGVrLW10ODE4My1mbGFrZXMudHh0Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vY2kvaWd0X3J1bm5lci5zaCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vY2kvaWd0
X3J1bm5lci5zaAo+PiBpbmRleCA3N2NkODFmZTZkMWEuLjcxMWYzMjc3MmU0OCAxMDA3NTUKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpL2lndF9ydW5uZXIuc2gKPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2NpL2lndF9ydW5uZXIuc2gKPj4gQEAgLTIwLDE2ICsyMCw2IEBAIGNhdCAvc3lzL2tl
cm5lbC9kZWJ1Zy9kcmkvKi9zdGF0ZQo+PiDCoCBzZXQgLWUKPj4gwqAgY2FzZSAiJERSSVZFUl9O
QU1FIiBpbgo+PiAtwqDCoMKgIHJvY2tjaGlwfG1lc29uKQo+PiAtwqDCoMKgwqDCoMKgwqAgZXhw
b3J0IElHVF9GT1JDRV9EUklWRVI9InBhbmZyb3N0Igo+PiAtwqDCoMKgwqDCoMKgwqAgOzsKPj4g
LcKgwqDCoCBtZWRpYXRlaykKPj4gLcKgwqDCoMKgwqDCoMKgIGlmIFsgIiRHUFVfVkVSU0lPTiIg
PSAibXQ4MTczIiBdOyB0aGVuCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV4cG9ydCBJR1Rf
Rk9SQ0VfRFJJVkVSPSR7RFJJVkVSX05BTUV9Cj4+IC3CoMKgwqDCoMKgwqDCoCBlbGlmIFsgIiRH
UFVfVkVSU0lPTiIgPSAibXQ4MTgzIiBdOyB0aGVuCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGV4cG9ydCBJR1RfRk9SQ0VfRFJJVkVSPSJwYW5mcm9zdCIKPj4gLcKgwqDCoMKgwqDCoMKgIGZp
Cj4+IC3CoMKgwqDCoMKgwqDCoCA7Owo+PiDCoMKgwqDCoMKgIGFtZGdwdSkKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgICMgQ2Fubm90IHVzZSBIV0NJX0tFUk5FTF9NT0RVTEVTIGFzIGF0IHRoYXQgcG9p
bnQgd2UgZG9uJ3QgCj4+IGhhdmUgdGhlIG1vZHVsZSBpbiAvbGliCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoCBtdiAvaW5zdGFsbC9tb2R1bGVzL2xpYi9tb2R1bGVzLyogL2xpYi9tb2R1bGVzLy4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbCBiL2RyaXZlcnMvZ3B1L2Ry
bS9jaS90ZXN0LnltbAo+PiBpbmRleCAwODU3NzczZTVjNWYuLmY4ZjQ4NTIzYWRhMyAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3QueW1sCj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9jaS90ZXN0LnltbAo+PiBAQCAtMjgyLDI5ICsyODIsNDAgQEAgYW1kZ3B1OnN0b25leToK
Pj4gwqDCoMKgwqDCoCAtIC5sYXZhLWlndDphcm02NAo+PiDCoMKgwqAgc3RhZ2U6IG1lZGlhdGVr
Cj4+IMKgwqDCoCB2YXJpYWJsZXM6Cj4+IC3CoMKgwqAgRFJJVkVSX05BTUU6IG1lZGlhdGVrCj4+
IMKgwqDCoMKgwqAgRFRCOiAke0RFVklDRV9UWVBFfQo+PiDCoMKgwqDCoMKgIEJPT1RfTUVUSE9E
OiBkZXB0aGNoYXJnZQo+PiDCoMKgwqDCoMKgIEtFUk5FTF9JTUFHRV9UWVBFOiAiIgo+PiAtbWVk
aWF0ZWs6bXQ4MTczOgo+PiArLm10ODE3MzoKPj4gwqDCoMKgIGV4dGVuZHM6Cj4+IMKgwqDCoMKg
wqAgLSAubWVkaWF0ZWsKPj4gwqDCoMKgIHBhcmFsbGVsOiA0Cj4+IMKgwqDCoCB2YXJpYWJsZXM6
Cj4+IMKgwqDCoMKgwqAgREVWSUNFX1RZUEU6IG10ODE3My1lbG0taGFuYQo+PiAtwqDCoMKgIEdQ
VV9WRVJTSU9OOiBtdDgxNzMKPiAKPiBMb29rcyBsaWtlIGl0IG1ha2Ugc2Vuc2UgdG8ga2VlcCBH
UFVfVkVSU0lPTiBoZXJlLCBubz8KPiBTYW1lIGNvbW1lbnQgZm9yIC5tdDgxODMuCgpZZXMsIHdp
bGwga2VlcCB0aGUgR1BVX1ZFUlNJT04gaGVyZSBmb3IgbWVkaWF0ZWsgam9icyBhbmQgb3RoZXJz
IGFsc28uCgpSZWdhcmRzLApWaWduZXNoCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
