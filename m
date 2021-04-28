Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A25A2C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:11:19 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E51846143A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 17:11:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E51846143A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XW3+cYkGdLEpROeGteVA1klEdjO7UPRGbtqkCuo4puI=; b=O4uVxK5fze/+gkM4Jyr+GEtLo
	z5wXPxNoNFSFDWqFvvxUQlMsYrBAs2cvvlBBbfjMZ86pu1FHFlOSRmGDTkuuJKFU2wFQ665Gzxbls
	suUKy/w94Fi8oq38o4ZEpi6uKDxVOGZBRY7C5sWv/ewJJXSyT3m/aZj/j8mXpxbUHb8BRyrIX00Ds
	e70WFGjQ+aw2Wr8V+T9WhNNVI7RgDOKIx+apsNbzkghyj93F5togfqc28iXxjQAo7xgh0FgQi1FXn
	JEvO5RA6YUtSN3Z0SND2T/iT4tyvPuqGYDMR0PRJafadY78QG/kyZWSTzOwpt9eMKJq9XNL/+H+BJ
	ILc9Tm+jQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbniS-003yUT-2r; Wed, 28 Apr 2021 17:11:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbniC-003yQX-At; Wed, 28 Apr 2021 17:10:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=mIVXkJyErgyhK703WoZHY4y6AWxwMxgi7lieHy4bM5o=; b=eI81SodA1uZVW1Xi9R16kvS/Jp
 q1S3SdKAIqd+VlrKF2oJGM6j15Itu/6Pft7H+DM4SeqWOhGJdkVKzWjGmDWyfneYlPRd/P6f2JD0D
 qdWWbOaTiD/Rol32X3lEgQqn7LaLpr2X287wdgMXjxAHLwcSQY7pTg2TAQfgvgpknvlGlEqPuaNHP
 3CabOCmhhpdZcfJEnVubGpLjLr1W49uqxAqXPD09SvAje4yUFe5sIUBA6F1IKYLakAu7QN2A9Gjpg
 EQ8bbKktmDLjOxMkBhSL6VNZznqaOGiucJB3QvGXqvxuPzBXomfa1sUnmjTX+e3KR3TiTwXszaKKU
 mQYyIJbw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbni8-0003Hv-Ii; Wed, 28 Apr 2021 17:10:55 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 05A351F42B77
Message-ID: <00113d54d30be862195b736a5e5026eab8f6b5ec.camel@collabora.com>
Subject: Re: [PATCH v3 11/79] media: rga-buf: use pm_runtime_resume_and_get()
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Heiko Stuebner
 <heiko@sntech.de>,  Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>,  linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Date: Wed, 28 Apr 2021 14:10:41 -0300
In-Reply-To: <a9099f1ffc537e5f997cb260a175715892387c5a.1619519080.git.mchehab+huawei@kernel.org>
References: <cover.1619519080.git.mchehab+huawei@kernel.org>
 <a9099f1ffc537e5f997cb260a175715892387c5a.1619519080.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_101052_767118_F7F9E5E5 
X-CRM114-Status: GOOD (  18.48  )
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

T24gVHVlLCAyMDIxLTA0LTI3IGF0IDEyOjI2ICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
d3JvdGU6Cj4gQ29tbWl0IGRkODA4OGQ1YTg5NiAoIlBNOiBydW50aW1lOiBBZGQgcG1fcnVudGlt
ZV9yZXN1bWVfYW5kX2dldCB0byBkZWFsIHdpdGggdXNhZ2UgY291bnRlciIpCj4gYWRkZWQgcG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldCgpIGluIG9yZGVyIHRvIGF1dG9tYXRpY2FsbHkgaGFuZGxl
Cj4gZGV2LT5wb3dlci51c2FnZV9jb3VudCBkZWNyZW1lbnQgb24gZXJyb3JzLgo+IAo+IFVzZSB0
aGUgbmV3IEFQSSwgaW4gb3JkZXIgdG8gY2xlYW51cCB0aGUgZXJyb3IgY2hlY2sgbG9naWMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBr
ZXJuZWwub3JnPgoKU29ycnksIEkganVzdCByZXBsaWVkIHRvIHRoZSB3cm9uZyBwYXRjaCB2ZXJz
aW9uLgpBZ2FpbjoKClJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxh
Ym9yYS5jb20+CgpUaGFua3MsCkV6ZXF1aWVsCgo+IC0tLQo+IMKgZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLWJ1Zi5jIHwgMyArLS0KPiDCoGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jwqDCoMKgwqAgfCA0ICsrKy0KPiDCoDIgZmlsZXMgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EtYnVmLmMKPiBpbmRleCBiZjlhNzViNzUwODMu
LjgxNTA4ZWQ1YWJmMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JnYS9yZ2EtYnVmLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlw
L3JnYS9yZ2EtYnVmLmMKPiBAQCAtNzksOSArNzksOCBAQCBzdGF0aWMgaW50IHJnYV9idWZfc3Rh
cnRfc3RyZWFtaW5nKHN0cnVjdCB2YjJfcXVldWUgKnEsIHVuc2lnbmVkIGludCBjb3VudCkKPiDC
oMKgwqDCoMKgwqDCoMKgc3RydWN0IHJvY2tjaGlwX3JnYSAqcmdhID0gY3R4LT5yZ2E7Cj4gwqDC
oMKgwqDCoMKgwqDCoGludCByZXQ7Cj4gwqAKPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBwbV9ydW50
aW1lX2dldF9zeW5jKHJnYS0+ZGV2KTsKPiArwqDCoMKgwqDCoMKgwqByZXQgPSBwbV9ydW50aW1l
X3Jlc3VtZV9hbmRfZ2V0KHJnYS0+ZGV2KTsKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHJldCA8IDAp
IHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcG1fcnVudGltZV9wdXRfbm9pZGxl
KHJnYS0+ZGV2KTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJnYV9idWZfcmV0
dXJuX2J1ZmZlcnMocSwgVkIyX0JVRl9TVEFURV9RVUVVRUQpOwo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCj4gaW5kZXggOWQxMjI0Mjk3MDZlLi5i
ZjNmZDcxZWMzYWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9y
Z2EuYwo+IEBAIC04NjYsNyArODY2LDkgQEAgc3RhdGljIGludCByZ2FfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdv
dG8gdW5yZWdfdmlkZW9fZGV2Owo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiAtwqDCoMKgwqDC
oMKgwqBwbV9ydW50aW1lX2dldF9zeW5jKHJnYS0+ZGV2KTsKPiArwqDCoMKgwqDCoMKgwqByZXQg
PSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KHJnYS0+ZGV2KTsKPiArwqDCoMKgwqDCoMKgwqBp
ZiAocmV0IDwgMCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byB1bnJlZ192
aWRlb19kZXY7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgcmdhLT52ZXJzaW9uLm1ham9yID0gKHJn
YV9yZWFkKHJnYSwgUkdBX1ZFUlNJT05fSU5GTykgPj4gMjQpICYgMHhGRjsKPiDCoMKgwqDCoMKg
wqDCoMKgcmdhLT52ZXJzaW9uLm1pbm9yID0gKHJnYV9yZWFkKHJnYSwgUkdBX1ZFUlNJT05fSU5G
TykgPj4gMjApICYgMHgwRjsKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
