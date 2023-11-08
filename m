Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83348C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 16:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6FIgdC/0zeMSMcTCqrq1ukEi2QuJYPmfXoB65ikiG0=; b=xDtlhJvC/f+emP
	HSSzv66DdSm8oarUJajWRrjQluG4xVzNSF+X6lcOhdRtP60CSRF3M+BAlzRBfpN3ukPDn7HjcVtEt
	P2QAkajimbbkvHoyPQklYWmCeDTjEjobeRuZvMmHKtRBSlmpQCdzwsxt7cyNv71ULkXuY3oUm6QvA
	wcC7hl7n1b5eWMwlotLSyyoqQkzRymD2I8jM3N7dR2AbbCe3gAcQHyZ9FLpHPhoBNwLKhnKG7XTNi
	Pbi0sSyWGc1F9o3jJKRb6AZtEx9dzvjl1HxYMehds7D1gWezeIYRU6TQklo61CXCbb7jMKamuPohk
	6sjKls6kisB6KcOtZ3Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0lpr-004LSM-1o;
	Wed, 08 Nov 2023 16:55:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0lpn-004LQt-2K;
	Wed, 08 Nov 2023 16:55:21 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3B5B56607699;
	Wed,  8 Nov 2023 16:55:17 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699462518;
	bh=x0X3+hz1eLsm7RowObDnmSRMEbSmWS82Ri5R/c672DI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PmGxV2yyqYJ8vEh9UpWUC0nxLHF+0jH5ErcGBLcYoi2aIZ4ChTZ1LA3CAJxCLiPQ5
	 cSk2Tw2eO31X9c3EGfEUtn71/H6a6BAGOab8O2DIAKB3xWzLB/NbzjqEsUKAd3YqcV
	 moVeFO0HtyAYFSwkHdwRb/1ASUsFFxSjBtU6AwwN/fkLuGKkSnNzNjBBwF43v46OZ5
	 Qr8zmnwqcf8D3BluW3TuRmStKOHrsnghwQQ2BtquuNzh6dG8/CLuKfPu1V0zd0uGFB
	 66qkyJ4w08bxdxJLNTALH0L1CoqoNQ7lKcnoq/PCoHfcM7UCgRyK4Husut9wLMJsZ3
	 x4jQsFDAPXlqQ==
Message-ID: <be16b724-a8fb-4928-bff6-d95e1224bd20@collabora.com>
Date: Wed, 8 Nov 2023 17:55:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 09/56] media: amphion: Use vb2_get_buffer() instead of
 directly access to buffers array
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Zhou Peng <eagle.zhou@nxp.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-10-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-10-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_085519_921790_62EE8FC2 
X-CRM114-Status: GOOD (  15.63  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X2J1ZmZlcigpIGluc3RlYWQgb2YgZGlyZWN0IGFjY2VzcyB0byB0aGUgdmIyX3F1
ZXVlIGJ1ZnMgYXJyYXkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIHRoZSB0eXBlIG9mIHRo
ZSBidWZzIGluIHRoZSBmdXR1cmUuCj4gQWZ0ZXIgZWFjaCBjYWxsIHRvIHZiMl9nZXRfYnVmZmVy
KCkgd2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4gYSB2YWxpZCBwb2ludGVyIHNvIGNo
ZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YgYWxsIG9mIHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4K
Cj4gQ0M6IE1pbmcgUWlhbiA8bWluZy5xaWFuQG54cC5jb20+Cj4gQ0M6IFpob3UgUGVuZyA8ZWFn
bGUuemhvdUBueHAuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9hbXBoaW9u
L3ZwdV9kYmcuYyB8IDIyICsrKysrKysrKysrKysrKysrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL2FtcGhpb24vdnB1X2RiZy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9hbXBoaW9uL3ZwdV9kYmcuYwo+IGluZGV4IDk4MmMyYzc3NzQ4NC4uYTQ2MmQ2ZmU0ZWE5
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vYW1waGlvbi92cHVfZGJnLmMK
PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL2FtcGhpb24vdnB1X2RiZy5jCj4gQEAgLTE0
MCwxMSArMTQwLDE4IEBAIHN0YXRpYyBpbnQgdnB1X2RiZ19pbnN0YW5jZShzdHJ1Y3Qgc2VxX2Zp
bGUgKnMsIHZvaWQgKmRhdGEpCj4gICAKPiAgIAl2cSA9IHY0bDJfbTJtX2dldF9zcmNfdnEoaW5z
dC0+ZmgubTJtX2N0eCk7Cj4gICAJZm9yIChpID0gMDsgaSA8IHZxLT5udW1fYnVmZmVyczsgaSsr
KSB7Cj4gLQkJc3RydWN0IHZiMl9idWZmZXIgKnZiID0gdnEtPmJ1ZnNbaV07Cj4gLQkJc3RydWN0
IHZiMl92NGwyX2J1ZmZlciAqdmJ1ZiA9IHRvX3ZiMl92NGwyX2J1ZmZlcih2Yik7Cj4gKwkJc3Ry
dWN0IHZiMl9idWZmZXIgKnZiOwo+ICsJCXN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKnZidWY7Cj4g
Kwo+ICsJCXZiID0gdmIyX2dldF9idWZmZXIodnEsIGkpOwo+ICsJCWlmICghdmIpCj4gKwkJCWNv
bnRpbnVlOwo+ICAgCj4gICAJCWlmICh2Yi0+c3RhdGUgPT0gVkIyX0JVRl9TVEFURV9ERVFVRVVF
RCkKPiAgIAkJCWNvbnRpbnVlOwo+ICsKPiArCQl2YnVmID0gdG9fdmIyX3Y0bDJfYnVmZmVyKHZi
KTsKPiArCj4gICAJCW51bSA9IHNjbnByaW50ZihzdHIsIHNpemVvZihzdHIpLAo+ICAgCQkJCSJv
dXRwdXQgWyUyZF0gc3RhdGUgPSAlMTBzLCAlOHNcbiIsCj4gICAJCQkJaSwgdmIyX3N0YXRfbmFt
ZVt2Yi0+c3RhdGVdLAo+IEBAIC0xNTUsMTEgKzE2MiwxOCBAQCBzdGF0aWMgaW50IHZwdV9kYmdf
aW5zdGFuY2Uoc3RydWN0IHNlcV9maWxlICpzLCB2b2lkICpkYXRhKQo+ICAgCj4gICAJdnEgPSB2
NGwyX20ybV9nZXRfZHN0X3ZxKGluc3QtPmZoLm0ybV9jdHgpOwo+ICAgCWZvciAoaSA9IDA7IGkg
PCB2cS0+bnVtX2J1ZmZlcnM7IGkrKykgewo+IC0JCXN0cnVjdCB2YjJfYnVmZmVyICp2YiA9IHZx
LT5idWZzW2ldOwo+IC0JCXN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKnZidWYgPSB0b192YjJfdjRs
Ml9idWZmZXIodmIpOwo+ICsJCXN0cnVjdCB2YjJfYnVmZmVyICp2YjsKPiArCQlzdHJ1Y3QgdmIy
X3Y0bDJfYnVmZmVyICp2YnVmOwo+ICsKPiArCQl2YiA9IHZiMl9nZXRfYnVmZmVyKHZxLCBpKTsK
PiArCQlpZiAoIXZiKQo+ICsJCQljb250aW51ZTsKPiAgIAo+ICAgCQlpZiAodmItPnN0YXRlID09
IFZCMl9CVUZfU1RBVEVfREVRVUVVRUQpCj4gICAJCQljb250aW51ZTsKPiArCj4gKwkJdmJ1ZiA9
IHRvX3ZiMl92NGwyX2J1ZmZlcih2Yik7Cj4gKwo+ICAgCQludW0gPSBzY25wcmludGYoc3RyLCBz
aXplb2Yoc3RyKSwKPiAgIAkJCQkiY2FwdHVyZVslMmRdIHN0YXRlID0gJTEwcywgJThzXG4iLAo+
ICAgCQkJCWksIHZiMl9zdGF0X25hbWVbdmItPnN0YXRlXSwKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
