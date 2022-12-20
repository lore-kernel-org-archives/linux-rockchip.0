Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82433C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 13:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HyMKPBjHPVOTp3KrouMq3ZKWeT9p4iUIraR4lNyGmO8=; b=3kX68HkkJkFrNZ
	v3e7f5D31xuVRmHMoV0PmpvMGUSEgYPy328WCyjtv1JNgZVncK1EPrmBKHSMo/LzYH0onDjsAOzs5
	q/17YZWMslPs1Imf6dSgZ1b9Msc+7TvkJ4F8DuxOCI5jZmQM7Dx7lHXUcL1xYpzPRyjuoVhy4xj0z
	BVQIwGpjpFkppriOkPTknW0zgx/szQAEMNermeDCNAkRAv2bITkA96/+7jsn4hzpR77TBEU+cm5Nv
	woVzMYoMrVzkRjpWBzTi6HlYn6sSz9/AnsSmjoH2g786AQahtUk3qZHU6lts4TuX8b9Jp2Bq9xvnS
	O1yR74l30/YgxuncqR5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7cIh-00FTC1-K4; Tue, 20 Dec 2022 13:04:55 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7cGE-00FQmp-B6; Tue, 20 Dec 2022 13:02:24 +0000
Received: from [IPV6:2a01:e0a:120:3210:bf7d:b502:d93b:e4e3] (unknown [IPv6:2a01:e0a:120:3210:bf7d:b502:d93b:e4e3])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D83F36602CA4;
	Tue, 20 Dec 2022 13:02:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671541340;
	bh=haA6w9EmCpkqi5iB2LLsKdnh/6FRvbucp0GFooZKrYY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Ig+qjYbgy6FmCKIolAqd/b+GmUivS+lSt3G3l1Jky716MRoHegVUU/ybihyrv7VZp
	 Kw6t2o6sGuTp8iSV/p7h1I1Bx60Yn2/R0Yz92bD8CpzY/32VjOgI4dVJF7IAnUr/wI
	 YIvlidIoBzkNi1jZqow35Y6HWkT6LLeCEUkyI19rfYCjQvvPmMS/shlpl0sgqtAtvC
	 sAqxuLw6gENlQnloy2hk8RfLXMvYqYozSweCl1Daee9MYSnGS4kJzwxmTiB9M56R30
	 3U2MWzr2HgLc/omi6nDnD9GOQlKZCziVddk/qPypwQTpcYjc0GdwjWF3bQiMOrRhXF
	 0anirHn4J3A4w==
Message-ID: <4aae8684-5ab4-c5a6-cc73-5dc61309b745@collabora.com>
Date: Tue, 20 Dec 2022 14:02:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 4/9] media: verisilicon: Check AV1 bitstreams bit depth
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-5-benjamin.gaignard@collabora.com>
 <e3663c85c75d09259a3135cb6ccfe7d6231bd752.camel@ndufresne.ca>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <e3663c85c75d09259a3135cb6ccfe7d6231bd752.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_050222_585295_F6303021 
X-CRM114-Status: GOOD (  13.93  )
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

CkxlIDE5LzEyLzIwMjIgw6AgMjE6MzgsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBM
ZSBsdW5kaSAxOSBkw6ljZW1icmUgMjAyMiDDoCAxNjo1NiArMDEwMCwgQmVuamFtaW4gR2FpZ25h
cmQgYSDDqWNyaXTCoDoKPj4gVGhlIGRyaXZlciBzdXBwb3J0cyA4IGFuZCAxMCBiaXRzIGJpdHN0
cmVhbXMsIG1ha2Ugc3VyZSB0byBkaXNjYXJkCj4+IG90aGVyIGNhc2VzLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNv
bT4KPj4gLS0tCj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
ZHJ2LmMgfCA2ICsrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2Rydi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMK
Pj4gaW5kZXggOGU5MzcxMGRjZmVkLi5lMTBmYzU5NjM0ZGQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4+IEBAIC0yODIsNyAr
MjgyLDEzIEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0
cmwpCj4+ICAgCQkvKiBXZSBvbmx5IHN1cHBvcnQgcHJvZmlsZSAwICovCj4+ICAgCQlpZiAoZGVj
X3BhcmFtcy0+cHJvZmlsZSAhPSAwKQo+PiAgIAkJCXJldHVybiAtRUlOVkFMOwo+PiArCX0gZWxz
ZSBpZiAoY3RybC0+aWQgPT0gVjRMMl9DSURfU1RBVEVMRVNTX0FWMV9TRVFVRU5DRSkgewo+PiAr
CQljb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2F2MV9zZXF1ZW5jZSAqc2VxdWVuY2UgPSBjdHJsLT5w
X25ldy5wX2F2MV9zZXF1ZW5jZTsKPj4gKwo+PiArCQlpZiAoc2VxdWVuY2UtPmJpdF9kZXB0aCAh
PSA4ICYmIHNlcXVlbmNlLT5iaXRfZGVwdGggIT0gMTApCj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsK
PiBBcyB5b3Ugc3RhdGUgaW4gdGhlIGNvdmVyIGxldHRlciwgc2hvdWxkIHRoaXMganVzdCBiZSB0
aGlzIGZvciBub3cgPwoKVGhlIGRyaXZlciBjYW4gZGVjb2RlIDggb3IgMTAgYml0cyBiaXRzdHJl
YW1zIGJ1dCB3aWxsIG9uIHByb2R1Y2UgOGJpdHMgKE5WMTJfNEw0IG9yIE5WMTIpCmZyYW1lcy4g
VGhlIGhhcmR3YXJlIGlzIGFibGUgdG8gdHJ1bmNhdGUgMTBiaXRzIGJpdHN0cmVhbXMgdG8gOCBi
aXRzIG91dHB1dC4KCj4KPgo+PiArCQlpZiAoc2VxdWVuY2UtPmJpdF9kZXB0aCAhPSA4KQo+PiAr
CQkJcmV0dXJuIC1FSU5WQUw7Cj4KPj4gICAJfQo+PiArCj4+ICAgCXJldHVybiAwOwo+PiAgIH0K
Pj4gICAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
