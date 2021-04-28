Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88262C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:12:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB43B613C5
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:12:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB43B613C5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8V6+G4000ZlP7BjOI3L4zy4R1QAMTApMrQ6bd0vkceY=; b=RIl331Gn7ACzJ7ZMsvrGh0YFb
	pCNZKizlq9pQ97+EGZLfv/NcfTa5V+tNmYBTMKskfzXgSC/tNlB5GIQ771WOyPQqBrWbFnhgjHjHH
	FdezelCCUzNh9DapFAmtJYYganOP13tTowT0fWPbo73Ix7hv27T/vaTX1s5udyVThyKzfc+s/MsSC
	nQgDVo6sdnKsSLX/E5EB65MmLmYP8YpUAtEP+ISvVpPaBN+fxjCflthntlXgU8LeLammOBSOg7t10
	rZPsjRt9g6hp0yo++Fqpoz2ncwvNQzdAfbMfwn7B4kOFT8DKfJ4chR8wghjZnAzQyIpIjhYStKT8D
	ZkT3gEGTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbnjQ-003ylW-U9; Wed, 28 Apr 2021 17:12:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnjB-003ygu-U9; Wed, 28 Apr 2021 17:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=UKqwaOMBEkldqiq2N+i5eL9Uc2EL1olADRS6fkp0ljo=; b=ajX1f/YVkt2gHOVVsxD5UqsDDs
 57LJnqAmuGr15byiRnp4keUWsppRvwln21WOHRUS+fOv8cpnwOQPRQn0XijC4/JLIewQye/pgDoA/
 L+eQslMY9K6D1/UuZM5/tEseGGwqTwConm+U5u4s3hArsiNUrldT91I26jTlc+kveg9W7+7UH43N0
 hOivTRVhWQTKXcPgklUywU2Z1lFafd+j/j4Cga1k4WyE6kmeczdVWfsv9+VqbRm3qRWQqz6GUHyre
 wmPj7gNMIhjZ1Yuhk+O4RGKjJhjN1eId3WclUJ/6+7wtD6qvXEzXoBwbZClG7FsRhI4UIIBOA42Vc
 d+NJEMxA==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnj8-0003Li-EA; Wed, 28 Apr 2021 17:11:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D09D91F41D72
Message-ID: <2615f6be602573869e979d4d763155a86332c845.camel@collabora.com>
Subject: Re: [PATCH v4 57/79] media: rockchip/rga: use
 pm_runtime_resume_and_get()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Heiko Stuebner
 <heiko@sntech.de>,  Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Wed, 28 Apr 2021 14:11:44 -0300
In-Reply-To: <cf0f0cb266c8b552f03583590a3b02a56f751c79.1619621413.git.mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <cf0f0cb266c8b552f03583590a3b02a56f751c79.1619621413.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_101154_621763_4ADBC47F 
X-CRM114-Status: GOOD (  18.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCAyMDIxLTA0LTI4IGF0IDE2OjUyICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
d3JvdGU6Cj4gQ29tbWl0IGRkODA4OGQ1YTg5NiAoIlBNOiBydW50aW1lOiBBZGQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCB0byBkZWFsIHdpdGggdXNhZ2UgY291bnRlciIpCj4gYWRkZWQgcG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxl
Cj4gZGV2LT5wb3dlci51c2FnZV9jb3VudCBkZWNyZW1lbnQgb24gZXJyb3JzLgo+IAo+IFVzZSB0
aGUgbmV3IEFQSSwgaW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9naWMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBr
ZXJuZWwub3JnPgoKVWdoLCBzaWdoLi4uIE9LLCB0aGVyZSB3YXMgYSB2NC4gU29ycnkgZm9yIHRo
ZSBub2lzZSEKClJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9y
YS5jb20+Cgo+IC0tLQo+IMKgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2Evcmdh
LWJ1Zi5jIHwgMyArLS0KPiDCoGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3Jn
YS5jwqDCoMKgwqAgfCA0ICsrKy0KPiDCoDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtYnVmLmMKPiBpbmRleCBiZjlhNzViNzUwODMuLjgxNTA4ZWQ1YWJmMyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKPiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKPiBAQCAt
NzksOSArNzksOCBAQCBzdGF0aWMgaW50IHJnYV9idWZfc3RhcnRfc3RyZWFtaW5nKHN0cnVjdCB2
YjJfcXVldWUgKnEsIHVuc2lnbmVkIGludCBjb3VudCkKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7
Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKHJnYS0+ZGV2
KTsKPiArwqDCoMKgwqDCoMKgwqByZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KHJnYS0+
ZGV2KTsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCA8IDApIHsKPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcG1fcnVudGltZV9wdXRfbm9pZGxlKHJnYS0+ZGV2KTsKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJnYV9idWZfcmV0dXJuX2J1ZmZlcnMocSwgVkIyX0JV
Rl9TVEFURV9RVUVVRUQpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IHJldDsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jCj4gaW5kZXggOWQxMjI0Mjk3MDZlLi5iZjNmZDcxZWMzYWYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKPiArKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYwo+IEBAIC04NjYsNyArODY2
LDkgQEAgc3RhdGljIGludCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gdW5yZWdfdmlkZW9fZGV2Owo+
IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqBwbV9ydW50aW1lX2dldF9z
eW5jKHJnYS0+ZGV2KTsKPiArwqDCoMKgwqDCoMKgwqByZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9h
bmRfZ2V0KHJnYS0+ZGV2KTsKPiArwqDCoMKgwqDCoMKgwqBpZiAocmV0IDwgMCkKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byB1bnJlZ192aWRlb19kZXY7Cj4gwqAKPiDCoMKg
wqDCoMKgwqDCoMKgcmdhLT52ZXJzaW9uLm1ham9yID0gKHJnYV9yZWFkKHJnYSwgUkdBX1ZFUlNJ
T05fSU5GTykgPj4gMjQpICYgMHhGRjsKPiDCoMKgwqDCoMKgwqDCoMKgcmdhLT52ZXJzaW9uLm1p
bm9yID0gKHJnYV9yZWFkKHJnYSwgUkdBX1ZFUlNJT05fSU5GTykgPj4gMjApICYgMHgwRjsKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
