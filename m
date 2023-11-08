Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFA2CC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 15:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJdgZ1RZeNPqeaiA8k6xFupvJ/Edpsj979qnljK3fC8=; b=DqFn45mgGWpl+c
	AoFB6pB+6xpkHeB5Q6wZx/99DNE1hVv3pbTP1AA/yvgcB4vs7wnieecg5V9KugFc+eV7TwooxN+o/
	J6b7YqTNaVuM5E2fiKC6sCcHoPMfLqIZkd3ICjBtAIAEpPPt+qZ0YWbhh8g/0utZHhi158hg+aBDf
	PALvp848U2HSiFpIgv8Qpt2JUzOwyco5ZeaFLmLY6GgEHJ5c+GTy+57MLjsGvNXedsF6mM5sB7thM
	REiEKj55RqE632T8y7DoIPvxCmZvgJynx8DJ/POYjoZZOBgnNAYxhZHF6syH9ngeggp4EABl1dotS
	/4lpeLPj/Y/bvY8mAxlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0kDP-004A0K-2v;
	Wed, 08 Nov 2023 15:11:35 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0kDL-0049wg-2j;
	Wed, 08 Nov 2023 15:11:33 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8CB55660768A;
	Wed,  8 Nov 2023 15:11:24 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699456285;
	bh=K5VXgBozdsSABodMQiE6+mK90u54h0+xV4Xvoon1qpI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kkphmV+JYfqj+ns8NoxsBLanCoQtKf/WqfersIRDq1ESjfsgbVsLyKprjuLkHb8+u
	 eYbeV/5sc9Uaixti/t99d0OJJa69i7X1jzOaxDyUqUbNO2LBrNgLoZCfEPbEp3S5s3
	 GgHwUpWZoRyvaqdkQXSdRH6HRp/Bi4yK+I+vaYWWK+Qo9pl7ya72C2qzL30umV1BUA
	 pKN2f2avJQGq79jRDm2H8n/TPa/eYtmQpuGxtvH6ZmOedLNG1Lbm1VFNpyeDyBOcEp
	 sKhe8zYc4qBHUHSmVlVp9/G+MKwvITnFKP02mJzKB0j9WibptLiG+uH8sOp7cO3mbu
	 cDh/a/cECWL/A==
Message-ID: <762f42fb-1cb3-4854-bd48-90d91c2eb3ef@collabora.com>
Date: Wed, 8 Nov 2023 16:11:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 01/56] media: videobuf2: Rename offset parameter
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-2-benjamin.gaignard@collabora.com>
Content-Language: en-US
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_071132_134121_2C0AAFCC 
X-CRM114-Status: GOOD (  17.35  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFJl
bmFtZSAnb2ZmJyBwYXJhbWV0ZXIgdG8gJ29mZnNldCcgdG8gY2xhcmlmeSB0aGUgY29kZS4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbT4KUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5w
QGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlk
ZW9idWYyLWNvcmUuYyAgIHwgMjYgKysrKysrKysrLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDEzIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUuYyBiL2RyaXZlcnMv
bWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jCj4gaW5kZXggMjdhZWU5MmYz
ZWVhLi5hNWU1N2FmZmViMzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlk
ZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRl
b2J1ZjIvdmlkZW9idWYyLWNvcmUuYwo+IEBAIC0zNTYsMjMgKzM1NiwyMyBAQCBzdGF0aWMgdm9p
ZCBfX3NldHVwX29mZnNldHMoc3RydWN0IHZiMl9idWZmZXIgKnZiKQo+ICAgewo+ICAgCXN0cnVj
dCB2YjJfcXVldWUgKnEgPSB2Yi0+dmIyX3F1ZXVlOwo+ICAgCXVuc2lnbmVkIGludCBwbGFuZTsK
PiAtCXVuc2lnbmVkIGxvbmcgb2ZmID0gMDsKPiArCXVuc2lnbmVkIGxvbmcgb2Zmc2V0ID0gMDsK
PiAgIAo+ICAgCWlmICh2Yi0+aW5kZXgpIHsKPiAgIAkJc3RydWN0IHZiMl9idWZmZXIgKnByZXYg
PSBxLT5idWZzW3ZiLT5pbmRleCAtIDFdOwo+ICAgCQlzdHJ1Y3QgdmIyX3BsYW5lICpwID0gJnBy
ZXYtPnBsYW5lc1twcmV2LT5udW1fcGxhbmVzIC0gMV07Cj4gICAKPiAtCQlvZmYgPSBQQUdFX0FM
SUdOKHAtPm0ub2Zmc2V0ICsgcC0+bGVuZ3RoKTsKPiArCQlvZmZzZXQgPSBQQUdFX0FMSUdOKHAt
Pm0ub2Zmc2V0ICsgcC0+bGVuZ3RoKTsKPiAgIAl9Cj4gICAKPiAgIAlmb3IgKHBsYW5lID0gMDsg
cGxhbmUgPCB2Yi0+bnVtX3BsYW5lczsgKytwbGFuZSkgewo+IC0JCXZiLT5wbGFuZXNbcGxhbmVd
Lm0ub2Zmc2V0ID0gb2ZmOwo+ICsJCXZiLT5wbGFuZXNbcGxhbmVdLm0ub2Zmc2V0ID0gb2Zmc2V0
Owo+ICAgCj4gICAJCWRwcmludGsocSwgMywgImJ1ZmZlciAlZCwgcGxhbmUgJWQgb2Zmc2V0IDB4
JTA4bHhcbiIsCj4gLQkJCQl2Yi0+aW5kZXgsIHBsYW5lLCBvZmYpOwo+ICsJCQkJdmItPmluZGV4
LCBwbGFuZSwgb2Zmc2V0KTsKPiAgIAo+IC0JCW9mZiArPSB2Yi0+cGxhbmVzW3BsYW5lXS5sZW5n
dGg7Cj4gLQkJb2ZmID0gUEFHRV9BTElHTihvZmYpOwo+ICsJCW9mZnNldCArPSB2Yi0+cGxhbmVz
W3BsYW5lXS5sZW5ndGg7Cj4gKwkJb2Zmc2V0ID0gUEFHRV9BTElHTihvZmZzZXQpOwo+ICAgCX0K
PiAgIH0KPiAgIAo+IEBAIC0yMTg1LDkgKzIxODUsOSBAQCBpbnQgdmIyX2NvcmVfc3RyZWFtb2Zm
KHN0cnVjdCB2YjJfcXVldWUgKnEsIHVuc2lnbmVkIGludCB0eXBlKQo+ICAgRVhQT1JUX1NZTUJP
TF9HUEwodmIyX2NvcmVfc3RyZWFtb2ZmKTsKPiAgIAo+ICAgLyoKPiAtICogX19maW5kX3BsYW5l
X2J5X29mZnNldCgpIC0gZmluZCBwbGFuZSBhc3NvY2lhdGVkIHdpdGggdGhlIGdpdmVuIG9mZnNl
dCBvZmYKPiArICogX19maW5kX3BsYW5lX2J5X29mZnNldCgpIC0gZmluZCBwbGFuZSBhc3NvY2lh
dGVkIHdpdGggdGhlIGdpdmVuIG9mZnNldAo+ICAgICovCj4gLXN0YXRpYyBpbnQgX19maW5kX3Bs
YW5lX2J5X29mZnNldChzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBsb25nIG9mZiwKPiAr
c3RhdGljIGludCBfX2ZpbmRfcGxhbmVfYnlfb2Zmc2V0KHN0cnVjdCB2YjJfcXVldWUgKnEsIHVu
c2lnbmVkIGxvbmcgb2Zmc2V0LAo+ICAgCQkJdW5zaWduZWQgaW50ICpfYnVmZmVyLCB1bnNpZ25l
ZCBpbnQgKl9wbGFuZSkKPiAgIHsKPiAgIAlzdHJ1Y3QgdmIyX2J1ZmZlciAqdmI7Cj4gQEAgLTIy
MTgsNyArMjIxOCw3IEBAIHN0YXRpYyBpbnQgX19maW5kX3BsYW5lX2J5X29mZnNldChzdHJ1Y3Qg
dmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBsb25nIG9mZiwKPiAgIAkJdmIgPSBxLT5idWZzW2J1ZmZl
cl07Cj4gICAKPiAgIAkJZm9yIChwbGFuZSA9IDA7IHBsYW5lIDwgdmItPm51bV9wbGFuZXM7ICsr
cGxhbmUpIHsKPiAtCQkJaWYgKHZiLT5wbGFuZXNbcGxhbmVdLm0ub2Zmc2V0ID09IG9mZikgewo+
ICsJCQlpZiAodmItPnBsYW5lc1twbGFuZV0ubS5vZmZzZXQgPT0gb2Zmc2V0KSB7Cj4gICAJCQkJ
Kl9idWZmZXIgPSBidWZmZXI7Cj4gICAJCQkJKl9wbGFuZSA9IHBsYW5lOwo+ICAgCQkJCXJldHVy
biAwOwo+IEBAIC0yMzA0LDcgKzIzMDQsNyBAQCBFWFBPUlRfU1lNQk9MX0dQTCh2YjJfY29yZV9l
eHBidWYpOwo+ICAgCj4gICBpbnQgdmIyX21tYXAoc3RydWN0IHZiMl9xdWV1ZSAqcSwgc3RydWN0
IHZtX2FyZWFfc3RydWN0ICp2bWEpCj4gICB7Cj4gLQl1bnNpZ25lZCBsb25nIG9mZiA9IHZtYS0+
dm1fcGdvZmYgPDwgUEFHRV9TSElGVDsKPiArCXVuc2lnbmVkIGxvbmcgb2Zmc2V0ID0gdm1hLT52
bV9wZ29mZiA8PCBQQUdFX1NISUZUOwo+ICAgCXN0cnVjdCB2YjJfYnVmZmVyICp2YjsKPiAgIAl1
bnNpZ25lZCBpbnQgYnVmZmVyID0gMCwgcGxhbmUgPSAwOwo+ICAgCWludCByZXQ7Cj4gQEAgLTIz
MzUsNyArMjMzNSw3IEBAIGludCB2YjJfbW1hcChzdHJ1Y3QgdmIyX3F1ZXVlICpxLCBzdHJ1Y3Qg
dm1fYXJlYV9zdHJ1Y3QgKnZtYSkKPiAgIAkgKiBGaW5kIHRoZSBwbGFuZSBjb3JyZXNwb25kaW5n
IHRvIHRoZSBvZmZzZXQgcGFzc2VkIGJ5IHVzZXJzcGFjZS4gVGhpcwo+ICAgCSAqIHdpbGwgcmV0
dXJuIGFuIGVycm9yIGlmIG5vdCBNRU1PUllfTU1BUCBvciBmaWxlIEkvTyBpcyBpbiBwcm9ncmVz
cy4KPiAgIAkgKi8KPiAtCXJldCA9IF9fZmluZF9wbGFuZV9ieV9vZmZzZXQocSwgb2ZmLCAmYnVm
ZmVyLCAmcGxhbmUpOwo+ICsJcmV0ID0gX19maW5kX3BsYW5lX2J5X29mZnNldChxLCBvZmZzZXQs
ICZidWZmZXIsICZwbGFuZSk7Cj4gICAJaWYgKHJldCkKPiAgIAkJZ290byB1bmxvY2s7Cj4gICAK
PiBAQCAtMjM4MCw3ICsyMzgwLDcgQEAgdW5zaWduZWQgbG9uZyB2YjJfZ2V0X3VubWFwcGVkX2Fy
ZWEoc3RydWN0IHZiMl9xdWV1ZSAqcSwKPiAgIAkJCQkgICAgdW5zaWduZWQgbG9uZyBwZ29mZiwK
PiAgIAkJCQkgICAgdW5zaWduZWQgbG9uZyBmbGFncykKPiAgIHsKPiAtCXVuc2lnbmVkIGxvbmcg
b2ZmID0gcGdvZmYgPDwgUEFHRV9TSElGVDsKPiArCXVuc2lnbmVkIGxvbmcgb2Zmc2V0ID0gcGdv
ZmYgPDwgUEFHRV9TSElGVDsKPiAgIAlzdHJ1Y3QgdmIyX2J1ZmZlciAqdmI7Cj4gICAJdW5zaWdu
ZWQgaW50IGJ1ZmZlciwgcGxhbmU7Cj4gICAJdm9pZCAqdmFkZHI7Cj4gQEAgLTIzOTIsNyArMjM5
Miw3IEBAIHVuc2lnbmVkIGxvbmcgdmIyX2dldF91bm1hcHBlZF9hcmVhKHN0cnVjdCB2YjJfcXVl
dWUgKnEsCj4gICAJICogRmluZCB0aGUgcGxhbmUgY29ycmVzcG9uZGluZyB0byB0aGUgb2Zmc2V0
IHBhc3NlZCBieSB1c2Vyc3BhY2UuIFRoaXMKPiAgIAkgKiB3aWxsIHJldHVybiBhbiBlcnJvciBp
ZiBub3QgTUVNT1JZX01NQVAgb3IgZmlsZSBJL08gaXMgaW4gcHJvZ3Jlc3MuCj4gICAJICovCj4g
LQlyZXQgPSBfX2ZpbmRfcGxhbmVfYnlfb2Zmc2V0KHEsIG9mZiwgJmJ1ZmZlciwgJnBsYW5lKTsK
PiArCXJldCA9IF9fZmluZF9wbGFuZV9ieV9vZmZzZXQocSwgb2Zmc2V0LCAmYnVmZmVyLCAmcGxh
bmUpOwo+ICAgCWlmIChyZXQpCj4gICAJCWdvdG8gdW5sb2NrOwo+ICAgCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
