Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33596C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 17:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4wdiU2t9zFmkbKV54qldbMd5SBBCewTZnTC3ICTRw0=; b=D0A7Pkt5OahZzB
	kkm85tLHd9jA0+dyJ9J2qwjyOFQsj3S8PGENvomQ2ZsWIG4vyATCfw7WkjFLZgwspV+bni6VeXeTr
	7CBeK6Frj1Cwa+0e8Wc7THTztH150J/16gn/4Xpp/oTfWYrXOgAIjAwHmGhNfzFVwIA/yJVMCn+qp
	Q6+AUA7xCuFJCMBu0BdqUUIQ25eaR3G9scnOO0ea+vLP6rzw1+3FvwuzesZLEkmhmxVluAe9m9awG
	FSHmHKL5hCs4YX2IW9Ml0sKCC+84kbWq8Tla3AUKdTiqAZ1wUDB+dynDo2MfUugf5k9zWsJ8/+q7P
	h9CGYPukLw2WJ7jDUzQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfLfv-00000005Byi-20BS;
	Thu, 02 Jul 2026 17:58:11 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfLfq-00000005By0-3g8O;
	Thu, 02 Jul 2026 17:58:09 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1783015078; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=eEysXMWkIgmgQq62POpwZyPtReROdfp9DcRBZm7J7VV9L4T7f4D2D5hFLYpH/NCy9AaIJcgohrMXouNd49NWhM17YEM6u0nS/7krbK+tiZh8sm0HdioSI5Qr8mAYiCp2jgOAoxKXSc2SQIh6u0Uz4ZMpfJy7U+mxDOGfs6HdGDs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1783015078; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=x3FGYaIm4+Bx0K10N4oUqaYj+E/e8FPAh9PHboSXrzk=; 
	b=iLAJCtbo+PF1YEckzcYGJMNbMdlyWKKsn4MZmtCHAMDSq4/OMk/3CZZ+sTQZCRio4a1qm9EAucAlT5GUejBiLdGZuwrtc/mWiqL3kcVuVtBMPAYUpxwjtCagLBWW7V9genwWzRzaTyrEpD4DzdsLuFAPyT9bA8eFioGBNJ2U+po=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783015078;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=x3FGYaIm4+Bx0K10N4oUqaYj+E/e8FPAh9PHboSXrzk=;
	b=VztCoPJASoeUL1MHjKIt2nXkDdHMArt4uv52ZZ0C//hsZI+W7r113xfrbRdRHzgY
	m2uDcnQbTcPhFJpJE8lz7S1Cg6eiIs6EukYNgDQ3+p7jJxkicf7zyzwQm2kLEUb7RAA
	nJfETZp4mAlqmpWI0r8G7dWVcVaLDngAQrvI/t44=
Received: by mx.zohomail.com with SMTPS id 1783015076593286.68618795309317;
	Thu, 2 Jul 2026 10:57:56 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Narasimharao Vadlamudi <ahmisaranrao@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Hans Verkuil <hverkuil@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Narasimharao Vadlamudi <ahmisaranrao@gmail.com>
Subject: Re: [PATCH] media: rkvdec: Propagate platform_get_irq() errors
Date: Thu, 02 Jul 2026 13:57:54 -0400
Message-ID: <u6-dHgmpTzmKPiphpyUkbA@collabora.com>
In-Reply-To: <20260701111203.62092-1-ahmisaranrao@gmail.com>
References: <20260701111203.62092-1-ahmisaranrao@gmail.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_105806_978768_24D38A3E 
X-CRM114-Status: GOOD (  15.18  )
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

SGkgVmFkbGFtdWRpLAoKT24gV2VkbmVzZGF5LCBKdWx5IDEsIDIwMjYgNzoxMjowM+KAr2EubS4g
RWFzdGVybiBEYXlsaWdodCBUaW1lIE5hcmFzaW1oYXJhbyAKVmFkbGFtdWRpIHdyb3RlOgo+IHBs
YXRmb3JtX2dldF9pcnEoKSByZXR1cm5zIGEgcG9zaXRpdmUgSVJRIG51bWJlciBvbiBzdWNjZXNz
IGFuZCBhCj4gbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLiBJdCBubyBsb25nZXIgcmV0
dXJucyB6ZXJvLiBUaGUgZHJpdmVyCj4gY3VycmVudGx5IHJldHVybnMgLUVOWElPIGZvciBhbGwg
ZmFpbHVyZXMsIHdoaWNoIGxvc2VzIHVzZWZ1bCBlcnJvcnMKPiBzdWNoIGFzIC1FUFJPQkVfREVG
RVIuCj4gCj4gUmV0dXJuIHRoZSBlcnJvciBmcm9tIHBsYXRmb3JtX2dldF9pcnEoKSBkaXJlY3Rs
eS4KPiAKPiBGaXhlczogY2QzM2M4MzA0NDhiICgibWVkaWE6IHJrdmRlYzogQWRkIHRoZSBya3Zk
ZWMgZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBOYXJhc2ltaGFyYW8gVmFkbGFtdWRpIDxhaG1p
c2FyYW5yYW9AZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JrdmRlYy9ya3ZkZWMuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYwo+IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLmMgaW5kZXgKPiAxZDFlOWJmZWY4ZTkuLjM3NjgzYTZi
YjQwZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRl
Yy9ya3ZkZWMuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVj
L3JrdmRlYy5jCj4gQEAgLTE4MTgsOCArMTgxOCw4IEBAIHN0YXRpYyBpbnQgcmt2ZGVjX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAl2YjJfZG1hX2NvbnRpZ19zZXRfbWF4
X3NlZ19zaXplKCZwZGV2LT5kZXYsIERNQV9CSVRfTUFTSygzMikpOwo+IAo+ICAJaXJxID0gcGxh
dGZvcm1fZ2V0X2lycShwZGV2LCAwKTsKPiAtCWlmIChpcnEgPD0gMCkKPiAtCQlyZXR1cm4gLUVO
WElPOwo+ICsJaWYgKGlycSA8IDApCj4gKwkJcmV0dXJuIGlycTsKPiAKPiAgCXJldCA9IGRldm1f
cmVxdWVzdF90aHJlYWRlZF9pcnEoJnBkZXYtPmRldiwgaXJxLCBOVUxMLAo+ICAJCQkJCXJrdmRl
Y19pcnFfaGFuZGxlciwgCklSUUZfT05FU0hPVCwKClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoICEg
QW5kIHNvcnJ5IGZvciB0aGUgSFRNTCBlbWFpbCBiZWZvcmUuIFNvIGZvciB0aGUgCnJlY29yZDoK
ClJldmlld2VkLWJ5OiBEZXRsZXYgQ2FzYW5vdmEgPGRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEu
Y29tPgoKLS0KRGV0bGV2LgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
