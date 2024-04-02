Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5214CD1284
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 06:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5f2PrQgLcgMKMqj3UqoidvOH1bFXUzGLzU/vAgI+Vc=; b=fh1c0XuLSzx0i4
	ljQP0Mk/KUG/Zd+EL9pGeqDRZCeKA7ADybEZEQbn6i5bEcbRtWS5I/On9XyJwH4Vqg2nOO/j306pH
	+cjtwpijTHGpx81/Z4GMv1/Hw/4/yhFuYB4ipfnkgm/SH8jI05kjzdOovynW2skueC2z/uczm/LBE
	VbXh0q0apWkR7buaG3n9/IrsUfDe4qqiY0cjCBKMMkxtTKAYUu6lRJrsM4/buaMqEWLLrxcVAUNoe
	4AbVqf91piOubGIFU6W7T1Sz/xpeuRV0zJM42aHrKAmFvA66uXlClMLC/vzfeklTP1ihkyVKOjJGh
	sCJGnAfCPlePSqEE8zYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrXnG-00000009vxJ-3UY4;
	Tue, 02 Apr 2024 06:38:50 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrXnD-00000009vvG-0IRV;
	Tue, 02 Apr 2024 06:38:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712039917;
	bh=qJ2dEukUQYHmEsmyw7ZbHI+ur/eWAO9V0o+2VTjVyKc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=txDJvUuo77oktz3jmtd4lM0A60gu44Qfn+EdrSsVl2vZAMFCKl38AIQ1VOQlhmv/E
	 tFRlfqiGYTZE57dpvnEpyDHFxaMq0ZRRuC4TG4rpMAbtwBY3ztzCR8BdyyL3zpEyyy
	 lnxJ3Gsr2XSmpOgUnKTceku5iUpbG5pdWn2pTeEysWe/Io8SMnjdlXfvsEEDCG4lyA
	 P0L4HpM59sWUDQDYHoRYeA4Da/SqPgkfTkHqNHD4jXBi9NQHSG3bpruiljKcHk1V3j
	 V7DlJi1wO5HnLdXlfbG5fpNtxMOpK/im+J7NvCG0QzU9ypIsiqjClQwV6xaKMhwnOT
	 cyiR2dBIIlQwQ==
Received: from [100.66.96.193] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: vignesh)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6E60837803EE;
	Tue,  2 Apr 2024 06:38:33 +0000 (UTC)
Message-ID: <d21abe07-074b-4158-a544-d2f50d0bdeac@collabora.com>
Date: Tue, 2 Apr 2024 12:08:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/10] drm/ci: rockchip: Add job to test panfrost GPU
 driver
Content-Language: en-US
To: Helen Koike <helen.koike@collabora.com>, dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 emma@anholt.net, robdclark@gmail.com, david.heidelberg@collabora.com,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 hamohammed.sa@gmail.com, rodrigosiqueiramelo@gmail.com,
 melissa.srw@gmail.com, mairacanal@riseup.net, mcanal@igalia.com,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240401061235.192713-1-vignesh.raman@collabora.com>
 <20240401061235.192713-10-vignesh.raman@collabora.com>
 <17c5f479-8d25-411a-816f-506320359ab5@collabora.com>
From: Vignesh Raman <vignesh.raman@collabora.com>
In-Reply-To: <17c5f479-8d25-411a-816f-506320359ab5@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_233847_250032_BDCA4C8B 
X-CRM114-Status: GOOD (  18.47  )
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

SGkgSGVsZW4sCgpPbiAwMS8wNC8yNCAyMjoxMywgSGVsZW4gS29pa2Ugd3JvdGU6Cj4gCj4gCj4g
T24gMDEvMDQvMjAyNCAwMzoxMiwgVmlnbmVzaCBSYW1hbiB3cm90ZToKPj4gRm9yIHJvY2tjaGlw
IHJrMzI4OCBhbmQgcmszMzk5LCB0aGUgR1BVIGRyaXZlciBpcyBwYW5mcm9zdC4KPj4gU28gYWRk
IHN1cHBvcnQgaW4gZHJtLWNpIHRvIHRlc3QgcGFuZnJvc3QgZHJpdmVyIGZvciByb2NrY2hpcAo+
PiBTT0MgYW5kIHVwZGF0ZSB4ZmFpbHMuIFNraXAgS01TIHRlc3RzIGZvciBwYW5mcm9zdCBkcml2
ZXIKPj4gc2luY2UgaXQgaXMgbm90IGEgbm90IGEgS01TIGRyaXZlciBhbmQgc2tpcCBkcml2ZXIt
c3BlY2lmaWMgdGVzdHMuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFZpZ25lc2ggUmFtYW4gPHZpZ25l
c2gucmFtYW5AY29sbGFib3JhLmNvbT4KPiAKPiBCdHcsIGp1c3QgYSBuaXQsIEkgd291bGQgc3F1
YXNoIHRoaXMgd2l0aCB0aGUgcHJldmlvdXMgY29tbWl0LCBzbyB3ZSAKPiBkb24ndCBoYXZlIGEg
cG9pbnQgaW4gaGlzdG9yeSB3aXRoIHBhbmZyb3N0IHRlc3RzLCB0aGFuIHdpdGhvdXQgdGhlbSwg
Cj4gdGhhbiB3aXRoIHRoZW0gYWdhaW4uIEJ1dCB3aXRoIG9yIHdpdGhvdXQgdGhpcyBjaGFuZ2U6
Cj4gCj4gQWNrZWQtYnk6IEhlbGVuIEtvaWtlIDxoZWxlbi5rb2lrZUBjb2xsYWJvcmEuY29tPgoK
TWF5YmUgSSB3aWxsIG1vdmUgdGhlIHNraXBwaW5nIGttcyB0ZXN0cyBhbmQgb3RoZXIgZHJpdmVy
IHNwZWNpZmljIHRlc3RzIAogIHRvIHRoZSBwcmV2aW91cyBjb21taXQuCgpSZWdhcmRzLApWaWdu
ZXNoCgo+IAo+IFRoYW5rcwo+IEhlbGVuCj4gCj4+IC0tLQo+Pgo+PiB2MjoKPj4gwqDCoCAtIEFk
ZCBwYW5mcm9zdCBHUFUgam9icyBmb3Igcm9ja2NoaXAgU09DIHdpdGggbmV3IHhmYWlscy4KPj4K
Pj4gdjM6Cj4+IMKgwqAgLSBTa2lwIEtNUyB0ZXN0cyBmb3IgcGFuZnJvc3QgZHJpdmVyIHNpbmNl
IGl0IGlzIG5vdCBhIG5vdAo+PiDCoMKgwqDCoCBhIEtNUyBkcml2ZXIgYW5kIHVwZGF0ZSB4ZmFp
bHMuIEFkZCB0aGUgam9iIG5hbWUgaW4gR1BVX1ZFUlNJT04KPj4gwqDCoMKgwqAgYW5kIHVzZSBp
dCBmb3IgeGZhaWwgZmlsZSBuYW1lcyBpbnN0ZWFkIG9mIHVzaW5nIERSSVZFUl9OQU1FLgo+Pgo+
PiB2NDoKPj4gwqDCoCAtIFJlbW92ZSB0aGUgZ3B1IHN1ZmZpeCBpbiBqb2IgYW5kIHJlbmFtZSB4
ZmFpbHMgYWNjb3JkaW5nbHkuCj4+Cj4+IHY1Ogo+PiDCoMKgIC0gU2tpcCBkcml2ZXItc3BlY2lm
aWMgdGVzdHMuCj4+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kvdGVzdC55bWzCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMCArKysrKysr
KysrCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMvcGFuZnJvc3QtcmszMjg4LWZhaWxz
LnR4dCB8wqAgMSArCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMvcGFuZnJvc3Qtcmsz
Mjg4LXNraXBzLnR4dCB8wqAgOCArKysrKysrKwo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vY2kveGZh
aWxzL3BhbmZyb3N0LXJrMzM5OS1mYWlscy50eHQgfMKgIDEgKwo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vY2kveGZhaWxzL3BhbmZyb3N0LXJrMzM5OS1za2lwcy50eHQgfMKgIDggKysrKysrKysKPj4g
wqAgNSBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspCj4+IMKgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2dwdS9kcm0vY2kveGZhaWxzL3BhbmZyb3N0LXJrMzI4OC1mYWlscy50eHQK
Pj4gwqAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMvcGFuZnJv
c3QtcmszMjg4LXNraXBzLnR4dAo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUv
ZHJtL2NpL3hmYWlscy9wYW5mcm9zdC1yazMzOTktZmFpbHMudHh0Cj4+IMKgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vY2kveGZhaWxzL3BhbmZyb3N0LXJrMzM5OS1za2lwcy50
eHQKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbCBiL2RyaXZl
cnMvZ3B1L2RybS9jaS90ZXN0LnltbAo+PiBpbmRleCA5NmIyOTljMzJjMDcuLjhjOTBhZTVhNTFl
NiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2NpL3Rlc3QueW1sCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9jaS90ZXN0LnltbAo+PiBAQCAtMTkxLDExICsxOTEsMjEgQEAgcm9ja2No
aXA6cmszMjg4Ogo+PiDCoMKgwqDCoMKgIC0gLnJrMzI4OAo+PiDCoMKgwqDCoMKgIC0gLnJvY2tj
aGlwLWRpc3BsYXkKPj4gK3BhbmZyb3N0OnJrMzI4ODoKPj4gK8KgIGV4dGVuZHM6Cj4+ICvCoMKg
wqAgLSAucmszMjg4Cj4+ICvCoMKgwqAgLSAucGFuZnJvc3QtZ3B1Cj4+ICsKPj4gwqAgcm9ja2No
aXA6cmszMzk5Ogo+PiDCoMKgwqAgZXh0ZW5kczoKPj4gwqDCoMKgwqDCoCAtIC5yazMzOTkKPj4g
wqDCoMKgwqDCoCAtIC5yb2NrY2hpcC1kaXNwbGF5Cj4+ICtwYW5mcm9zdDpyazMzOTk6Cj4+ICvC
oCBleHRlbmRzOgo+PiArwqDCoMKgIC0gLnJrMzM5OQo+PiArwqDCoMKgIC0gLnBhbmZyb3N0LWdw
dQo+PiArCj4+IMKgIC5pOTE1Ogo+PiDCoMKgwqAgZXh0ZW5kczoKPj4gwqDCoMKgwqDCoCAtIC5s
YXZhLWlndDp4ODZfNjQKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMv
cGFuZnJvc3QtcmszMjg4LWZhaWxzLnR4dCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vY2kveGZhaWxz
L3BhbmZyb3N0LXJrMzI4OC1mYWlscy50eHQKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5k
ZXggMDAwMDAwMDAwMDAwLi5hYmQzNWE4ZWY2ZjQKPj4gLS0tIC9kZXYvbnVsbAo+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vY2kveGZhaWxzL3BhbmZyb3N0LXJrMzI4OC1mYWlscy50eHQKPj4gQEAg
LTAsMCArMSBAQAo+PiArcGFuZnJvc3RfcHJpbWVAZ2VtLXByaW1lLWltcG9ydCxDcmFzaAo+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL3hmYWlscy9wYW5mcm9zdC1yazMyODgtc2tp
cHMudHh0IAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMvcGFuZnJvc3QtcmszMjg4LXNr
aXBzLnR4dAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjQx
YTg0NmE1OTY0NAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS94
ZmFpbHMvcGFuZnJvc3QtcmszMjg4LXNraXBzLnR4dAo+PiBAQCAtMCwwICsxLDggQEAKPj4gKyMg
UGFuZnJvc3QgaXMgbm90IGEgS01TIGRyaXZlciwgc28gc2tpcCB0aGUgS01TIHRlc3RzCj4+ICtr
bXNfLioKPj4gKwo+PiArIyBTa2lwIGRyaXZlciBzcGVjaWZpYyB0ZXN0cwo+PiArbXNtXy4qCj4+
ICteYW1kZ3B1LioKPj4gK3YzZF8uKgo+PiArdmM0Xy4qCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vY2kveGZhaWxzL3BhbmZyb3N0LXJrMzM5OS1mYWlscy50eHQgCj4+IGIvZHJpdmVy
cy9ncHUvZHJtL2NpL3hmYWlscy9wYW5mcm9zdC1yazMzOTktZmFpbHMudHh0Cj4+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNmY1ZTc2MGQ1ZWMwCj4+IC0tLSAv
ZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2NpL3hmYWlscy9wYW5mcm9zdC1yazMz
OTktZmFpbHMudHh0Cj4+IEBAIC0wLDAgKzEgQEAKPj4gK3BhbmZyb3N0X3ByaW1lQGdlbS1wcmlt
ZS1pbXBvcnQsRmFpbAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2NpL3hmYWlscy9w
YW5mcm9zdC1yazMzOTktc2tpcHMudHh0IAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMv
cGFuZnJvc3QtcmszMzk5LXNraXBzLnR4dAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjQxYTg0NmE1OTY0NAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9jaS94ZmFpbHMvcGFuZnJvc3QtcmszMzk5LXNraXBzLnR4dAo+PiBAQCAt
MCwwICsxLDggQEAKPj4gKyMgUGFuZnJvc3QgaXMgbm90IGEgS01TIGRyaXZlciwgc28gc2tpcCB0
aGUgS01TIHRlc3RzCj4+ICtrbXNfLioKPj4gKwo+PiArIyBTa2lwIGRyaXZlciBzcGVjaWZpYyB0
ZXN0cwo+PiArbXNtXy4qCj4+ICteYW1kZ3B1LioKPj4gK3YzZF8uKgo+PiArdmM0Xy4qCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
