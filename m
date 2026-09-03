Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6BC0C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 06:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbsbFMn7nyCPGRvg6QOilsftzuPHCYllaQhVzQaMllU=; b=enWtGcuKS5E/gk
	FLi1umAkS7ENqyNnMNehZ8mquA/cMz4UqjahAoYdkBffUnDVRtH/slikNk0k2MB9xxfsE7FPK0h8g
	OObYbAttOKIthrICgel4SgX7pPPArhLuzzmWQ9PQKHzGJv4PZc9qA0GZSBMR5eLPnYRNJCtUzOGcn
	Rwnro23x+tQbgI86+Ewn4P4euHsBP5nRbbC7K1X1brZqJMnkN8wxq/1jLydVyI7KUa2ZY0rB/fq+9
	N1RJAzvzuVP1/k+34tvpRosJTPmD2kCWwpfIZNglZGc4aDQQaZNZ13CVK6R6wtzXUvJhDdR15l/KG
	cY81e2+wEmvlSmKRKfww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21KF-0000000GW7b-1HWp;
	Thu, 03 Sep 2026 06:53:31 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21KD-0000000GW7D-1jph;
	Thu, 03 Sep 2026 06:53:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788418401; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SwgiiL7JypWIcPRqpcIVFPijZn6LNlJb5JT651HfJXHRVp0sfftjdzP6qJnUkT2ZtKgf7lLltTrGx5NzfMQCPoI4U0RfufFl4Dn7O5iBpMC3SaRmwt7HRi9JT4Gm8c4GvFfmAbD+wjXI28vbpexbMXJnZvPVsdRq5C4xkA1QjsQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788418401; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BcAgh7yeDVgqAgxkootRruKaN/q5Ils7BQ1JU/M50TM=; 
	b=CW2uhRYNkjJBqMi7CSiTP0LI2Y+5nWDCLMzzQmxoAf5xX9SJ6SsiKPmGK5hXolf2EW86uueYO8+wJRS1tR2kwo7c7AAd4d/rhFXj743LZoZtdBDEopgKbkoAa1RARJUnJg+xW/xO7KGaXSB5Ql3gvMnfI26JW6QYeZDshbd0jO4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788418401;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=BcAgh7yeDVgqAgxkootRruKaN/q5Ils7BQ1JU/M50TM=;
	b=GiiQIUm+kTc1zufpfzm3a783q/nodFXeyKBnykl2in6effSR2lI3Ebs/7X3qt5DE
	cETFVm/zRy/JQIoPtMsyqcXHtKTKkUySfF1KqggFvkorYmaAPLkWOnrgN3Yenq75a6j
	xi56h2wekD/k0KhEPYGf+89YJ698PHg1QhBPrTzI=
Received: by mx.zohomail.com with SMTPS id 1788418400533958.155498276706;
	Wed, 2 Sep 2026 23:53:20 -0700 (PDT)
Message-ID: <922a07e5-cd6c-432b-947a-21a2d026720c@collabora.com>
Date: Thu, 3 Sep 2026 08:53:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/9] media: verisilicon: rockchip: reject AV1 frames
 exceeding the tile capacity
To: Michael Bommarito <michael.bommarito@gmail.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Kees Cook <kees@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
 <20260617021906.2746743-8-michael.bommarito@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260617021906.2746743-8-michael.bommarito@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_235329_479665_D8AB6EA2 
X-CRM114-Status: GOOD (  21.08  )
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

CkxlIDE3LzA2LzIwMjYgw6AgMDQ6MTksIE1pY2hhZWwgQm9tbWFyaXRvIGEgw6ljcml0wqA6Cj4g
cm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X3RpbGVfaW5mbygpIGluZGV4ZXMgdGhlIHRpbGUg
Z3JvdXAgZW50cnkKPiBhcnJheSBieSB0aWxlMSAqIHRpbGVfY29scyArIHRpbGUwLCByZWFkaW5n
IHVwIHRvIHRpbGVfY29scyAqIHRpbGVfcm93cwo+IGVudHJpZXMsIGxheXMgb3V0IG9uZSBkZXNj
cmlwdG9yIHBlciB0aWxlIGluIHRoZSBBVjFfTUFYX1RJTEVTIHRpbGVfaW5mbwo+IGJ1ZmZlciwg
YW5kIHByb2dyYW1zIHRoZSByZWFsIHRpbGVfY29scyAvIHRpbGVfcm93cyBpbnRvIHRoZSBoYXJk
d2FyZS4KPgo+IFRoZSB0aWxlIGdyb3VwIGVudHJ5IGNvbnRyb2wgaXMgYSBkeW5hbWljIGFycmF5
IHNpemVkIHRvIHRoZSBudW1iZXIgb2YKPiBlbnRyaWVzIHVzZXJzcGFjZSBzdWJtaXR0ZWQsIGlu
ZGVwZW5kZW50IG9mIHRpbGVfY29scyAvIHRpbGVfcm93cywgc28gYQo+IGZyYW1lIHRoYXQgY2xh
aW1zIG1vcmUgdGlsZXMgdGhhbiBlbnRyaWVzIHJlYWRzIHBhc3QgdGhlIGFycmF5LiBBIGZyYW1l
Cj4gdGhhdCBjbGFpbXMgbW9yZSB0aGFuIEFWMV9NQVhfVElMRVMgdGlsZXMgYWxzbyBsZWF2ZXMg
dGhlIGhhcmR3YXJlCj4gcHJvZ3JhbW1lZCBmb3IgbW9yZSB0aWxlcyB0aGFuIHRoZSBkZXNjcmlw
dG9yIGJ1ZmZlciBob2xkcy4KPgo+IFJlamVjdCBib3RoIGluIHByZXBhcmVfcnVuKCk6IHRpbGVf
Y29scyAqIHRpbGVfcm93cyBtdXN0IG5vdCBleGNlZWQgdGhlCj4gc3VibWl0dGVkIGVudHJ5IGNv
dW50IG9yIEFWMV9NQVhfVElMRVMuIFRoZSBlbnRyeSBjb3VudCBpcyByZWFkIHZpYQo+IHY0bDJf
Y3RybF9maW5kKCkgKGN0cmwtPmVsZW1zKS4gVGhpcyBtaXJyb3JzIHRoZSBib3VuZCB0aGUgbWVk
aWF0ZWsgQVYxCj4gZGVjb2RlciBhbHJlYWR5IGVuZm9yY2VzLgo+Cj4gRml4ZXM6IDcyN2E0MDA2
ODZhMiAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIFJvY2tjaGlwIEFWMSBkZWNvZGVyIikKPiBB
c3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1vcHVzLTQtOAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hh
ZWwgQm9tbWFyaXRvIDxtaWNoYWVsLmJvbW1hcml0b0BnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cgo+IC0t
LQo+ICAgLi4uL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMgIHwgMjUg
KysrKysrKysrKysrKysrKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gaW5kZXgg
ZmQwMGRiZDc5ZmU0Ni4uMDBhYTU2NmE0Y2NkYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMKPiArKysg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19h
djFfZGVjLmMKPiBAQCAtNDMxLDIwICs0MzEsMzkgQEAgc3RhdGljIGludCByb2NrY2hpcF92cHU5
ODFfYXYxX2RlY19wcmVwYXJlX3J1bihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+ICAgewo+ICAg
CXN0cnVjdCBoYW50cm9fYXYxX2RlY19od19jdHggKmF2MV9kZWMgPSAmY3R4LT5hdjFfZGVjOwo+
ICAgCXN0cnVjdCBoYW50cm9fYXYxX2RlY19jdHJscyAqY3RybHMgPSAmYXYxX2RlYy0+Y3RybHM7
Cj4gKwljb25zdCBzdHJ1Y3QgdjRsMl9hdjFfdGlsZV9pbmZvICp0aWxlX2luZm87Cj4gKwlzdHJ1
Y3QgdjRsMl9jdHJsICp0Z2U7Cj4gKwl1MzIgbnVtX3RpbGVzOwo+ICAgCj4gICAJY3RybHMtPnNl
cXVlbmNlID0gaGFudHJvX2dldF9jdHJsKGN0eCwgVjRMMl9DSURfU1RBVEVMRVNTX0FWMV9TRVFV
RU5DRSk7Cj4gICAJaWYgKFdBUk5fT04oIWN0cmxzLT5zZXF1ZW5jZSkpCj4gICAJCXJldHVybiAt
RUlOVkFMOwo+ICAgCj4gLQljdHJscy0+dGlsZV9ncm91cF9lbnRyeSA9Cj4gLQkgICAgaGFudHJv
X2dldF9jdHJsKGN0eCwgVjRMMl9DSURfU1RBVEVMRVNTX0FWMV9USUxFX0dST1VQX0VOVFJZKTsK
PiAtCWlmIChXQVJOX09OKCFjdHJscy0+dGlsZV9ncm91cF9lbnRyeSkpCj4gKwl0Z2UgPSB2NGwy
X2N0cmxfZmluZCgmY3R4LT5jdHJsX2hhbmRsZXIsCj4gKwkJCSAgICAgVjRMMl9DSURfU1RBVEVM
RVNTX0FWMV9USUxFX0dST1VQX0VOVFJZKTsKPiArCWlmIChXQVJOX09OKCF0Z2UpKQo+ICAgCQly
ZXR1cm4gLUVJTlZBTDsKPiArCWN0cmxzLT50aWxlX2dyb3VwX2VudHJ5ID0gdGdlLT5wX2N1ci5w
Owo+ICAgCj4gICAJY3RybHMtPmZyYW1lID0gaGFudHJvX2dldF9jdHJsKGN0eCwgVjRMMl9DSURf
U1RBVEVMRVNTX0FWMV9GUkFNRSk7Cj4gICAJaWYgKFdBUk5fT04oIWN0cmxzLT5mcmFtZSkpCj4g
ICAJCXJldHVybiAtRUlOVkFMOwo+ICAgCj4gKwkvKgo+ICsJICogcm9ja2NoaXBfdnB1OTgxX2F2
MV9kZWNfc2V0X3RpbGVfaW5mbygpIGluZGV4ZXMgdGhlIHRpbGUgZ3JvdXAKPiArCSAqIGVudHJ5
IGFycmF5IGJ5IHRpbGUxICogdGlsZV9jb2xzICsgdGlsZTAsIHNvIGl0IHJlYWRzIHVwIHRvCj4g
KwkgKiB0aWxlX2NvbHMgKiB0aWxlX3Jvd3MgZW50cmllcywgYW5kIGxheXMgb3V0IG9uZSBkZXNj
cmlwdG9yIHBlciB0aWxlCj4gKwkgKiBpbiB0aGUgQVYxX01BWF9USUxFUyB0aWxlX2luZm8gYnVm
ZmVyIHdoaWxlIHByb2dyYW1taW5nIHRoZSByZWFsCj4gKwkgKiB0aWxlIGdlb21ldHJ5IGludG8g
dGhlIGhhcmR3YXJlLiBSZWplY3QgYSBmcmFtZSB0aGF0IGNsYWltcyBtb3JlCj4gKwkgKiB0aWxl
cyB0aGFuIHVzZXJzcGFjZSBzdWJtaXR0ZWQsIG9yIG1vcmUgdGhhbiB0aGUgaGFyZHdhcmUgdGls
ZQo+ICsJICogYnVmZmVyIGhvbGRzLCBzbyB0aGUgcmVhZCBzdGF5cyBpbiBib3VuZHMgYW5kIHRo
ZSBwcm9ncmFtbWVkCj4gKwkgKiBnZW9tZXRyeSBtYXRjaGVzIHRoZSBkZXNjcmlwdG9ycyB3cml0
dGVuLgo+ICsJICovCj4gKwl0aWxlX2luZm8gPSAmY3RybHMtPmZyYW1lLT50aWxlX2luZm87Cj4g
KwludW1fdGlsZXMgPSAodTMyKXRpbGVfaW5mby0+dGlsZV9jb2xzICogdGlsZV9pbmZvLT50aWxl
X3Jvd3M7Cj4gKwlpZiAobnVtX3RpbGVzID4gdGdlLT5lbGVtcyB8fCBudW1fdGlsZXMgPiBBVjFf
TUFYX1RJTEVTKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiAgIAljdHJscy0+ZmlsbV9ncmFp
biA9Cj4gICAJICAgIGhhbnRyb19nZXRfY3RybChjdHgsIFY0TDJfQ0lEX1NUQVRFTEVTU19BVjFf
RklMTV9HUkFJTik7Cj4gICAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
