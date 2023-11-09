Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7632C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 15:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zL04qzL5A/uI6f/P01+JFOz+ex66B8sd+OoV4rCczv4=; b=LbGVyAHkduoURg
	RHISyyUPq9m6o2MneIlHRGU5hVRhoROxRh2swmaHJT4G+XFaWH8mVE+b5rHb3o3isG/5g089WLhPD
	QwQeSfaXowB99gnksI82XXQ5MbN2kCZW0zzXhdS2uyciEfdL6mLO0/lHFrc0Oo85lWDqu49T+QdOi
	4mzO4v1C7kEFlywslGtEEPZaeZCDO0M0IIokgZk99vA29PC3VXwtdCM/y/op/aM6SaCrqKElGbIVP
	sS33PN5kRPm558h7umuyAdKassMh4Sdi+WlppWdXQxDiit/GUga/GNIazELkBzaNWPAlBSO8SQ7LN
	tM6YeacVgLiCM9kRTlJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r17Gu-006ePx-0T;
	Thu, 09 Nov 2023 15:48:44 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r17Gq-006eO4-1b;
	Thu, 09 Nov 2023 15:48:42 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E8CB466074E4;
	Thu,  9 Nov 2023 15:48:35 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699544917;
	bh=H8fQMzAQclovte9fUhQqhR9RME7QzrA5CMSsHFHHe48=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FqsNW12FTrHddxbUZNTRJLwmHkbFwMt8sMH09J9IDgjXIBafoaSVFK+DV9F+1zmpS
	 ADOv0ySxbRuwvJn5hgOuv4VweR6twzFBj6j5BmK/LCCIHi16xnOCC2ovhEz4IaYnSG
	 SbFhF2+BXYzUqBMHc/GEoDq7NQIrouybDhD4Ldq7EQhSPwfRNr+3+zdqe4npLthK+f
	 0NOXDROw1NV7xabxBFOHtH6Lrns24/CuAUFmsHrwECFRP4ZEFBca4dmCDuonhD4cBB
	 hvc9vs6nB2oz/aXnbUlUPr1nQ/mVBWn/Bb0yOEn6vge+cIpEEwoIOrmim/RkTWTGCo
	 8mC9cfVI2Qplw==
Message-ID: <618d5b67-ba46-4c33-ae7f-990f4b522ba8@collabora.com>
Date: Thu, 9 Nov 2023 16:48:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 35/56] media: cedrus: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 kernel@collabora.com, Maxime Ripard <mripard@kernel.org>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-36-benjamin.gaignard@collabora.com>
 <083e43d9-452a-4b11-b7f1-f75992bc795e@collabora.com>
 <ZUzpSXDbO60uGr0t@aptenodytes>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <ZUzpSXDbO60uGr0t@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_074840_848318_D257DFF3 
X-CRM114-Status: GOOD (  22.20  )
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

SGkgUGF1bCwKClcgZG5pdSA5LjExLjIwMjMgb8KgMTU6MTQsIFBhdWwgS29jaWFsa293c2tpIHBp
c3plOgo+IEhpIEFuZHJ6ZWosCj4gCj4gT24gVGh1IDA5IE5vdiAyMywgMTI6MjcsIEFuZHJ6ZWog
UGlldHJhc2lld2ljeiB3cm90ZToKPj4gSGkgUGF1bCwKPj4KPj4gVyBkbml1IDMxLjEwLjIwMjMg
b8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+Pj4gVXNlIHZiMl9nZXRfbnVtX2J1
ZmZlcnMoKSB0byBhdm9pZCB1c2luZyBxdWV1ZSBudW1fYnVmZmVycyBmaWVsZCBkaXJlY3RseS4K
Pj4+IFRoaXMgYWxsb3dzIHVzIHRvIGNoYW5nZSBob3cgdGhlIG51bWJlciBvZiBidWZmZXJzIGlz
IGNvbXB1dGVkIGluIHRoZQo+Pj4gZnV0dXJlLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4gQWNrZWQt
Ynk6IFBhdWwgS29jaWFsa293c2tpIDxwYXVsLmtvY2lhbGtvd3NraUBib290bGluLmNvbT4KPj4K
Pj4gR2l2ZW4geW91J3ZlIGFsYXJlZHkgQS1iLCB3b3VsZCB5b3UgYmUgb2sgd2l0aCBhZGRpbmcg
dGhpcyBzZW50ZW5jZToKPj4KPj4gIldoaWxlIGF0IGl0LCBjaGVjayB0aGUgcmV0dXJuIHZhbHVl
IG9mIHZiMl9nZXRfYnVmZmVyKCkuIgo+Pgo+PiB0byB0aGUgY29tbWl0IG1lc3NhZ2UgYm9keT8K
PiAKPiBOb3Qgb25seSBkbyBJIGFncmVlLCBidXQgYmVjYXVzZSB0aGlzIGlzIGRvbmUgaW4gYSBm
dW5jdGlvbiByZXR1cm5pbmcgdm9pZCwKPiB5b3UgY291bGQgZXZlbjoKPiAKPiBpZiAoV0FSTl9P
TighdmIpKQo+IAljb250aW51ZTsKPiAKPiBzbyB0aGF0IGl0IGRvZXNuJ3QgZ28gY29tcGxldGVs
eSB1bm5vdGljZWQuCj4gCj4gV2hhdCBkbyB5b3UgdGhpbms/Cj4gCgpJJ2QgYXNrIEJlbmphbWlu
LgoKQnV0IG15IHRha2Ugb24gdGhlIGRpcmVjdGlvbiBvZiBjaGFuZ2VzIGlzIHRoYXQgdWx0aW1h
dGVseQp0aGVyZSB3aWxsIGJlICJob2xlcyIgaW4gdGhlIGFycmF5IG9mIGFsbG9jYXRlZCBidWZm
ZXJzIChoZW5jZSB0aGUKYml0bWFwIHRvIHRyYWNrIHdoaWNoIHNsb3RzIGFyZSB1c2VkIGFuZCB3
aGljaCBhcmUgbm90KS4gSW4gb3RoZXIgd29yZHMsCmdldHRpbmcgYSBOVUxMIHNvbWV0aW1lcyB3
aWxsIGJlIGFuIGV4cGVjdGVkIHNpdHVhdGlvbiwgYW5kIGEgV0FSTigpIHdpbGwKbm90IGJlIGFw
cHJvcHJpYXRlIGZvciBhbiBleHBlY3RlZCBzaXR1YXRpb24uCgpAQmVuamFtaW4/CgpSZWdhcmRz
LAoKQW5kcnplagoKPiBDaGVlcnMsCj4gCj4gUGF1bAo+IAo+PiBAQmVuamFtaW46Cj4+Cj4+IFdp
dGggdGhpcyBjaGFuZ2UsIHlvdSBjYW4gYWRkIG15Cj4+Cj4+IFJldmlld2VkLWJ5OiBBbmRyemVq
IFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgo+Pgo+Pj4gQ0M6IE1heGlt
ZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9zdGFn
aW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNfaDI2NC5jIHwgOSArKysrKysrLS0KPj4+ICAg
IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjUuYyB8IDkgKysr
KysrKy0tCj4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX2gyNjQuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMv
Y2VkcnVzX2gyNjQuYwo+Pj4gaW5kZXggZGZiNDAxZGYxMzhhLi4zZTI4NDNlZjZjY2UgMTAwNjQ0
Cj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0
LmMKPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gy
NjQuYwo+Pj4gQEAgLTY1Myw4ICs2NTMsMTMgQEAgc3RhdGljIHZvaWQgY2VkcnVzX2gyNjRfc3Rv
cChzdHJ1Y3QgY2VkcnVzX2N0eCAqY3R4KQo+Pj4gICAgCXZxID0gdjRsMl9tMm1fZ2V0X3ZxKGN0
eC0+ZmgubTJtX2N0eCwgVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFKTsKPj4+IC0JZm9yIChp
ID0gMDsgaSA8IHZxLT5udW1fYnVmZmVyczsgaSsrKSB7Cj4+PiAtCQlidWYgPSB2YjJfdG9fY2Vk
cnVzX2J1ZmZlcih2YjJfZ2V0X2J1ZmZlcih2cSwgaSkpOwo+Pj4gKwlmb3IgKGkgPSAwOyBpIDwg
dmIyX2dldF9udW1fYnVmZmVycyh2cSk7IGkrKykgewo+Pj4gKwkJc3RydWN0IHZiMl9idWZmZXIg
KnZiID0gdmIyX2dldF9idWZmZXIodnEsIGkpOwo+Pj4gKwo+Pj4gKwkJaWYgKCF2YikKPj4+ICsJ
CQljb250aW51ZTsKPj4+ICsKPj4+ICsJCWJ1ZiA9IHZiMl90b19jZWRydXNfYnVmZmVyKHZiKTsK
Pj4+ICAgIAkJaWYgKGJ1Zi0+Y29kZWMuaDI2NC5tdl9jb2xfYnVmX3NpemUgPiAwKSB7Cj4+PiAg
ICAJCQlkbWFfZnJlZV9hdHRycyhkZXYtPmRldiwKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMgYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMKPj4+IGluZGV4IGZjOTI5NzIzMjQ1Ni4u
NTJlOTRjOGYyZjAxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhp
L2NlZHJ1cy9jZWRydXNfaDI2NS5jCj4+PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3Vu
eGkvY2VkcnVzL2NlZHJ1c19oMjY1LmMKPj4+IEBAIC04NjksOCArODY5LDEzIEBAIHN0YXRpYyB2
b2lkIGNlZHJ1c19oMjY1X3N0b3Aoc3RydWN0IGNlZHJ1c19jdHggKmN0eCkKPj4+ICAgIAl2cSA9
IHY0bDJfbTJtX2dldF92cShjdHgtPmZoLm0ybV9jdHgsIFY0TDJfQlVGX1RZUEVfVklERU9fQ0FQ
VFVSRSk7Cj4+PiAtCWZvciAoaSA9IDA7IGkgPCB2cS0+bnVtX2J1ZmZlcnM7IGkrKykgewo+Pj4g
LQkJYnVmID0gdmIyX3RvX2NlZHJ1c19idWZmZXIodmIyX2dldF9idWZmZXIodnEsIGkpKTsKPj4+
ICsJZm9yIChpID0gMDsgaSA8IHZiMl9nZXRfbnVtX2J1ZmZlcnModnEpOyBpKyspIHsKPj4+ICsJ
CXN0cnVjdCB2YjJfYnVmZmVyICp2YiA9IHZiMl9nZXRfYnVmZmVyKHZxLCBpKTsKPj4+ICsKPj4+
ICsJCWlmICghdmIpCj4+PiArCQkJY29udGludWU7Cj4+PiArCj4+PiArCQlidWYgPSB2YjJfdG9f
Y2VkcnVzX2J1ZmZlcih2Yik7Cj4+PiAgICAJCWlmIChidWYtPmNvZGVjLmgyNjUubXZfY29sX2J1
Zl9zaXplID4gMCkgewo+Pj4gICAgCQkJZG1hX2ZyZWVfYXR0cnMoZGV2LT5kZXYsCj4+Cj4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBLZXJu
ZWwgbWFpbGluZyBsaXN0IC0tIGtlcm5lbEBtYWlsbWFuLmNvbGxhYm9yYS5jb20KPiBUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGtlcm5lbC1sZWF2ZUBtYWlsbWFuLmNvbGxhYm9yYS5j
b20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
