Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D88A0C001B0
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jun 2023 07:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiy0it7TyQNd+1OSLSlUMpN3kWQE6KWZEnhowc9jVsI=; b=3XrZKbiSrBmzoz
	VUf0hhc1qsVpBY6K4cRjzJ6IFPX4xdfcOfS6ErDtaPS0HoF+xZuVD/PnSPYHmDTPfgG0KVEtxO51J
	LBjC3m+8Q0l0X4CLXEDzwdr735vvdwKjpiB8cSM7e5XqW99wa/N3pNrMaaUHR3zaQNCWJB1qA9IfB
	+KKOS4d3cLVlpgHyEuWJwa5b4kjUZqxLUEwzVXxNvb4YGqWp6yFF6fxv8AfkABr1RAh8f9rwG4Jik
	zAjpCX0f4YGydSSuw+jXcEbKTrAxeprOXN/a9BaSy9EhDW+YNXh2xUaHGx/VaqEU6S7dlkwrSyHlj
	0t0cDY4RyJlxkw4uY40g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCaoa-002kMn-1g;
	Fri, 23 Jun 2023 07:02:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCaoV-002kLJ-2A;
	Fri, 23 Jun 2023 07:02:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6772160F4D;
	Fri, 23 Jun 2023 07:02:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFB32C433C8;
	Fri, 23 Jun 2023 07:02:28 +0000 (UTC)
Message-ID: <f21d6fce-155c-28f0-fdea-e9264ba1f7ba@xs4all.nl>
Date: Fri, 23 Jun 2023 09:02:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 03/11] media: videobuf2: Remove VB2_MAX_FRAME limit on
 buffer storage
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Dan Carpenter <dan.carpenter@linaro.org>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com,
 ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
 <20230622131349.144160-4-benjamin.gaignard@collabora.com>
 <bddd6cb7-cd72-4fb5-8d4a-d02cb9c46dce@kadam.mountain>
 <39aff680-316a-7382-c93b-d9ca61c389e9@collabora.com>
Content-Language: en-US
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <39aff680-316a-7382-c93b-d9ca61c389e9@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_000235_771501_43E350CD 
X-CRM114-Status: GOOD (  16.14  )
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

T24gMjIvMDYvMjAyMyAxNjoxMywgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMjIv
MDYvMjAyMyDDoCAxNjoxMSwgRGFuIENhcnBlbnRlciBhIMOpY3JpdMKgOgo+PiBPbiBUaHUsIEp1
biAyMiwgMjAyMyBhdCAwMzoxMzo0MVBNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToK
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYy
LWNvcmUuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5j
Cj4+PiBpbmRleCBmMWZmN2FmMzRhOWYuLjg2ZTFlOTI2ZmE0NSAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4+PiArKysgYi9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYwo+Pj4gQEAgLTQ1
NSw5ICs0NTUsOSBAQCBzdGF0aWMgaW50IF9fdmIyX3F1ZXVlX2FsbG9jKHN0cnVjdCB2YjJfcXVl
dWUgKnEsIGVudW0gdmIyX21lbW9yeSBtZW1vcnksCj4+PiDCoMKgwqDCoMKgIHN0cnVjdCB2YjJf
YnVmZmVyICp2YjsKPj4+IMKgwqDCoMKgwqAgaW50IHJldDsKPj4+IMKgIC3CoMKgwqAgLyogRW5z
dXJlIHRoYXQgcS0+bnVtX2J1ZmZlcnMrbnVtX2J1ZmZlcnMgaXMgYmVsb3cgVkIyX01BWF9GUkFN
RSAqLwo+Pj4gK8KgwqDCoCAvKiBFbnN1cmUgdGhhdCBxLT5udW1fYnVmZmVycyArIG51bV9idWZm
ZXJzIGlzIFVJTlRfTUFYICovCj4+PiDCoMKgwqDCoMKgIG51bV9idWZmZXJzID0gbWluX3QodW5z
aWduZWQgaW50LCBudW1fYnVmZmVycywKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgVkIyX01BWF9GUkFNRSAtIHEtPm51bV9idWZmZXJzKTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgVUlOVF9NQVggLSBxLT5udW1fYnVmZmVycyk7Cj4+PiDCoCDCoMKgwqDC
oMKgIGZvciAoYnVmZmVyID0gMDsgYnVmZmVyIDwgbnVtX2J1ZmZlcnM7ICsrYnVmZmVyKSB7Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgLyogQWxsb2NhdGUgdmIyIGJ1ZmZlciBzdHJ1Y3R1cmVzICov
Cj4+IEFoLi4uwqAgSGVyZSdzIG9uZSBvZiB0aGUgaW50ZWdlciBvdmVyZmxvdyBidWdzIEkgd2Fz
IHRhbGtpbmcgYWJvdXQuwqAgVGhlCj4+IF9fdmIyX3F1ZXVlX2FsbG9jKCkgZnVuY3Rpb24gcmV0
dXJucyBhbiBpbnQgc28gaWYgbnVtX2J1ZmZlcnMgZ29lcyBvdmVyCj4+IElOVF9NQVggd2UgYXJl
IGhvc2VkLgo+IAo+IEkgd2lsbCBsaW1pdCBpdCB0bzoKPiAjZGVmaW5lIFZCMl9RVUVVRV9NQVhf
QlVGRkVSU8KgIChJTlRfTUFYICYgUEFHRV9NQVNLKcKgIC8qIFRoZSBtYXNrIHByZXZlbnRzIDg1
JSBvZiBpbnRlZ2VyIG92ZXJmbG93cyAqLwo+IGFzIHlvdSBoYXZlIHN1Z2dlc3QgaXQuCgpJTUhP
IElOVF9NQVggaXMgd2F5IG92ZXJraWxsLiBIb3cgYWJvdXQgKDFVIDw8IDIwKT8gSSB3b3VsZCBs
aWtlIHNvbWUgc29ydCBvZgpzYW5pdHkgY2hlY2sgaGVyZS4gMTA0ODU3NiBidWZmZXJzIG9mIDY0
MHg0ODAgYW5kIDQgYnl0ZXMgcGVyIHBpeGVsIGlzIDEuMiBUQi4KClNpbmNlIGEgVEIgb2YgbWVt
b3J5IGlzIGRvYWJsZSB0aGVzZSBkYXlzLCBJIHRoaW5rIHRoaXMgaXMgYSByZWFzb25hYmxlCnZh
bHVlIGZvciBNQVhfQlVGRkVSUyB3aXRob3V0IGFsbG93aW5nIGp1c3QgYW55dGhpbmcuCgpBbiBh
bHRlcm5hdGl2ZSBpcyB0byBtYWtlIHRoaXMgYSBrZXJuZWwgY29uZmlnLgoKUmVnYXJkcywKCglI
YW5zCgo+IAo+IFRoYXQgd2lsbCBiZSBpbiB2ZXJzaW9uIDQuCj4gCj4gVGhhbmtzLAo+IEJlbmph
bWluCj4gCj4+Cj4+IHJlZ2FyZHMsCj4+IGRhbiBjYXJwZW50ZXIKPj4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
