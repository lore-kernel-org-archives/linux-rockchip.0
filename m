Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B36C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 11:49:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E5D320729
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 11:49:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E5D320729
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L23lFReqI4sa6hN08yJDhDn5/FmrkvN0jBIVuOPtADQ=; b=NCWO4yJtkslTud881Ll5JL/OQS
	U6vpPoBPLZgmn63L6dtdIWFGsWEYrxFnVE/2bmmoExL4rultq58nJOsuNlXp5toi7ojVqHefw2bPl
	SPgRhffhz/LpFReX9DMD53nycjX6zHsQnoyW1RsCS2yCTlSK3xjFnawbHSCFF2Yg5P3OaVivm+ZYh
	dP73Iwlk8z8V9czy80Zq6m3M8E901iFmcw+VDvfymNAw4Ic0WMug/OrhAfSkWnKy1XoDUdPuBfAEF
	tT9M9SKqOg+MgF3lCYTui1MQWKaFB8IX9GCCkVi1rLHLida9Q02hLlKv+0DJpcCuXJWs2S0nD8oqy
	IrHNj62g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyvh2-0005eN-63; Mon, 11 Jan 2021 11:49:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyvgy-0005an-T9
 for linux-rockchip@lists.infradead.org; Mon, 11 Jan 2021 11:49:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id AD7F91F44D9B
Message-ID: <ef218bf2bd948961079237686b58a00ca1b125bf.camel@collabora.com>
Subject: Re: [PATCH] hantro: Format IOCTLs compliance fixes
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Ricardo Ribalda <ribalda@chromium.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Mon, 11 Jan 2021 08:48:46 -0300
In-Reply-To: <20210111113529.45488-1-ribalda@chromium.org>
References: <20210111113529.45488-1-ribalda@chromium.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_064901_125572_90E18F26 
X-CRM114-Status: GOOD (  15.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

SGkgUmljYXJkbywKCk9uIE1vbiwgMjAyMS0wMS0xMSBhdCAxMjozNSArMDEwMCwgUmljYXJkbyBS
aWJhbGRhIHdyb3RlOgo+IENsZWFyIHRoZSByZXNlcnZlZCBmaWVsZHMuCj4gCj4gRml4ZXM6Cj4g
wqAgZmFpbDogdjRsMi10ZXN0LWZvcm1hdHMuY3BwKDQ4Mik6IHBpeF9tcC5wbGFuZV9mbXRbMF0u
cmVzZXJ2ZWQgbm90IHplcm9lZAo+IHRlc3QgVklESU9DX1RSWV9GTVQ6IEZBSUwKPiDCoCBmYWls
OiB2NGwyLXRlc3QtZm9ybWF0cy5jcHAoNDgyKTogcGl4X21wLnBsYW5lX2ZtdFswXS5yZXNlcnZl
ZCBub3QgemVyb2VkCj4gdGVzdCBWSURJT0NfU19GTVQ6IEZBSUwKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBSaWNhcmRvIFJpYmFsZGEgPHJpYmFsZGFAY2hyb21pdW0ub3JnPgo+IC0tLQo+IMKgZHJpdmVy
cy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jIHwgNSArKysrKwo+IMKgMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFu
dHJvL2hhbnRyb192NGwyLmMKPiBpbmRleCBiNjY4YTgyZDQwYWQuLjliMzg0ZmJmZmM5MyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiAr
KysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwyLmMKPiBAQCAtMjM5
LDYgKzIzOSw3IEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQoY29uc3Qgc3RydWN0IGhhbnRy
b19jdHggKmN0eCwKPiDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZt
dCwgKnZwdV9mbXQ7Cj4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgY2FwdHVyZSA9IFY0TDJfVFlQRV9J
U19DQVBUVVJFKHR5cGUpOwo+IMKgwqDCoMKgwqDCoMKgwqBib29sIGNvZGVkOwo+ICvCoMKgwqDC
oMKgwqDCoGludCBpOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGNvZGVkID0gY2FwdHVyZSA9PSBj
dHgtPmlzX2VuY29kZXI7Cj4gwqAKPiBAQCAtMjkzLDYgKzI5NCwxMCBAQCBzdGF0aWMgaW50IGhh
bnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGl4X21wLT53aWR0aCAqIHBpeF9t
cC0+aGVpZ2h0ICogZm10LT5tYXhfZGVwdGg7Cj4gwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+ICvC
oMKgwqDCoMKgwqDCoGZvciAoaSA9IDA7IGkgPCBwaXhfbXAtPm51bV9wbGFuZXM7IGkrKykKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWVtc2V0KHBpeF9tcC0+cGxhbmVfZm10W2ld
LnJlc2VydmVkLCAwLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc2l6ZW9mKHBpeF9tcC0+cGxhbmVfZm10W2ldLnJlc2VydmVkKSk7Cj4gKwoKVGhpcyBsb29r
cyBsaWtlIHNvbWV0aGluZyB0aGF0IHNob3VsZCBiZSBoYW5kbGVkIGF0IHRoZSBjb3JlLApwcm9i
YWJseSBpbiBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmM6OnY0bF90cnlfZm10
KCkuCgpUaGFua3MsCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
