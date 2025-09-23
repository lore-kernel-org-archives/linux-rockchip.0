Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 898D3CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 12:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtPSiCUr1QS8nkd6BeBb7k8SZMyXMEX6ngHfGYnmzfo=; b=iYq10V3nUfmE3k
	9GlzNRla97vd4YRPkWb1dnjQVijXtoH1TiYAPbakle+KhOMvfwq5/qoXNK8LEMaNiUwKuQdCBOY6Q
	U5m4bqwC+utoPRBBbsAF6Lv+f9mGvvoWxjD0e6u3Y/u/X0fx3NCUWfEHSo9keuug73ipITp8cn1cT
	W8Y90uCyPcWqxTNo2pL6rbkYMClo3K53akL+gNx2ac80lzp5d3eFeKOxjl/Z1yKwzrfdGxfDpYRJa
	hl9WukvoMhnlyVvv2I0EcewTRsot+3zktZYwj5+baUQII+wzx+K3U0wmXa63c90j48AJnuqpiWEMF
	Bxe6efAeqqdDqb48WmDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v12c5-0000000DOQq-0vV3;
	Tue, 23 Sep 2025 12:59:21 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v12c3-0000000DOQI-1FX9;
	Tue, 23 Sep 2025 12:59:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1758632349; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=k77UMTqJmyi8O2nA3KoHvI57c+HosSCH1Ou1azWNffy5QGBUVWBFfnUTRIKg2OucpjN6cryQXnnv/w3wgZZfNlcQnH23adjIZLPnXDqtE5xORsTdEhyRoIL0TNZOUIjqQAoZdlpoYt89q5NXnv27KS5QHmBWz6Ez+1Q3BOKo0U0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1758632349; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Ld3Mu+4XpQpKlmKIXgeP8nj7CXPhFkTiSv19YHU59YY=; 
	b=UcnwX4r1Ey2xc0knJtxLtzXrvxy5450xHhK8Jijj7jNBE+3rYoI6t5eK/U+c/RiyIP37dw5/ezIQlZSWTSX3+4808C9wtZZYSoQBnpApQSAaPF/UMZPK+HgcYUDitWGUERqQBO2JFMSUC34pvkCqCSeU8lUFbrWoo46fHnHhUMo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1758632349;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Ld3Mu+4XpQpKlmKIXgeP8nj7CXPhFkTiSv19YHU59YY=;
	b=NoeKJXxzjZdD3HeMVr6Mp/cAvuNvpqqh0GE1nkkH/QFwH7kNl7xPsiKXvqO6p6SZ
	4bbk62KQykKq0giD054Vju1jY9a/7PP3VBh2gV0bLItoJe0u2KaaXCT2WLH76NHMpsS
	UnWThL1mSnpE6k0a5VJ2LXxsSp7tsY2Ja49Olu1s=
Received: by mx.zohomail.com with SMTPS id 1758632346474290.83340183401606;
	Tue, 23 Sep 2025 05:59:06 -0700 (PDT)
Message-ID: <aafd2f8d-be8e-4929-a21c-c8f066e2f6f1@collabora.com>
Date: Tue, 23 Sep 2025 14:59:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: verisilicon: Protect G2 HEVC decoder against
 invalid DPB index
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Hans Verkuil <hverkuil@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Stable@vger.kernel.org
References: <20250922-imx8mq-hantro-g2-hang-v1-0-67d00eb6a548@collabora.com>
 <20250922-imx8mq-hantro-g2-hang-v1-2-67d00eb6a548@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250922-imx8mq-hantro-g2-hang-v1-2-67d00eb6a548@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_055919_401984_B3B85BC1 
X-CRM114-Status: GOOD (  19.18  )
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

CkxlIDIyLzA5LzIwMjUgw6AgMjA6NDMsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBG
aXggdGhlIEhhbnRybyBHMiBIRVZDIGRlY29kZXIgc28gdGhhdCB3ZSB1c2UgRFBCIGluZGV4IDAg
d2hlbmV2ZXIgYQo+IG5pbnZhbGlkIGluZGV4IGlzIHJlY2VpdmVkIGZyb20gdXNlciBzcGFjZS4g
VGhpcyBwcm90ZWN0cyB0aGUgaGFyZHdhcmUKPiBmcm9tIGRvaW5nIGZhdWx0eSBtZW1vcnkgYWNj
ZXNzIHdoaWNoIHRoZW4gbGVhZHMgdG8gYnVzIGVycm9ycy4KPgo+IFRvIGJlIG5vdGVkIHRoYXQg
d2hlbiBhIHJlZmVyZW5jZSBpcyBtaXNzaW5nLCB1c2Vyc3BhY2Ugc3VjaCBhcyBHU3RyZWFtZXIK
PiBwYXNzZXMgYW4gaW52YWxpZCBEUEIgaW5kZXggb2YgMjU1LiBUaGlzIGlzc3VlIHdhcyBmb3Vu
ZCBieSBzZWVraW5nIHRvIGEKPiBDUkEgcGljdHVyZSB1c2luZyBHU3RyZWFtZXIuIFRoZSBmcmFt
ZXdvcmsgaXMgY3VycmVudGx5IG1pc3NpbmcgdGhlIGNvZGUKPiB0byBza2lwIG92ZXIgUkFTTCBw
aWN0dXJlcyBwbGFjZWQgYWZ0ZXIgdGhlIENSQS4gVGhpcyBzaXR1YXRpb24gY2FuIGFsc28KPiBv
Y2N1ciB3aGlsZSBkb2luZyBsaXZlIHN0cmVhbWluZyBvdmVyIGxvc3N5IHRyYW5zcG9ydC4KPgo+
IEZpeGVzOiBjYjVkZDVhMGZhNTE4ICgibWVkaWE6IGhhbnRybzogSW50cm9kdWNlIEcyL0hFVkMg
ZGVjb2RlciIpCj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZy
ZXNuZUBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX2hldmNfZGVjLmMgfCAxNSArKysrKysrKysrKysr
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2cyX2hldmNfZGVjLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19nMl9oZXZjX2RlYy5jCj4gaW5kZXggZjA2NjYzNmU1NmY5ODU2MGQ5YjFjNTAzNjY5MWUzYzM0
ZGQxM2IxZi4uZThjMmU4MzM3OWRlZjUzY2U3ZmQ4NmQ2OTI5ZWQ0ZjVlMGRiMDY4ZSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZj
X2RlYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
ZzJfaGV2Y19kZWMuYwo+IEBAIC0yODMsNiArMjgzLDE1IEBAIHN0YXRpYyB2b2lkIHNldF9wYXJh
bXMoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAgIAloYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcy
X2FwZl90aHJlc2hvbGQsIDgpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB1MzIgZ2V0X2RwYl9pbmRl
eChjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2hldmNfZGVjb2RlX3BhcmFtcyAqZGVjb2RlX3BhcmFt
cywKPiArCQkJIGNvbnN0IHUzMiBpbmRleCkKPiArewo+ICsJaWYgKGluZGV4ID4gZGVjb2RlX3Bh
cmFtcy0+bnVtX2FjdGl2ZV9kcGJfZW50cmllcykKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlyZXR1
cm4gaW5kZXg7Cj4gK30KPiArCj4gICBzdGF0aWMgdm9pZCBzZXRfcmVmX3BpY19saXN0KHN0cnVj
dCBoYW50cm9fY3R4ICpjdHgpCj4gICB7Cj4gICAJY29uc3Qgc3RydWN0IGhhbnRyb19oZXZjX2Rl
Y19jdHJscyAqY3RybHMgPSAmY3R4LT5oZXZjX2RlYy5jdHJsczsKPiBAQCAtMzU1LDggKzM2NCwx
MCBAQCBzdGF0aWMgdm9pZCBzZXRfcmVmX3BpY19saXN0KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgp
Cj4gICAJCWxpc3QxW2orK10gPSBsaXN0MVtpKytdOwo+ICAgCj4gICAJZm9yIChpID0gMDsgaSA8
IFY0TDJfSEVWQ19EUEJfRU5UUklFU19OVU1fTUFYOyBpKyspIHsKPiAtCQloYW50cm9fcmVnX3dy
aXRlKHZwdSwgJnJlZl9waWNfcmVnczBbaV0sIGxpc3QwW2ldKTsKPiAtCQloYW50cm9fcmVnX3dy
aXRlKHZwdSwgJnJlZl9waWNfcmVnczFbaV0sIGxpc3QxW2ldKTsKPiArCQloYW50cm9fcmVnX3dy
aXRlKHZwdSwgJnJlZl9waWNfcmVnczBbaV0sCj4gKwkJCQkgZ2V0X2RwYl9pbmRleChkZWNvZGVf
cGFyYW1zLCBsaXN0MFtpXSkpOwo+ICsJCWhhbnRyb19yZWdfd3JpdGUodnB1LCAmcmVmX3BpY19y
ZWdzMVtpXSwKPiArCQkJCSBnZXRfZHBiX2luZGV4KGRlY29kZV9wYXJhbXMsIGxpc3QxW2ldKSk7
Cj4gICAJfQo+ICAgfQo+ICAgCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
