Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 773E2CD98E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 08:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0PUd+6J8+O8qe+GpBkJx5mXuDSn9XZThqlVuu6nRF0=; b=x+DYzw3WXZ/xPo
	t5CtcD4dXTDv7bPnOqlGMKpRG9DnLs3MIG4UQT7LNPyG2RmMdalrBtfUqoXI94EAVcbU7pzBEa/aE
	1faLDcD9S/geYJyEvK6kmi+W850SrogoGTfpuuJ6gyqY5uNB3IgaIVsmXGUNviNFypfOJuiK/+KCf
	5hQkbjoTlpVToOTAMqu/6CtPuyepzuCB5DlEVq/CO6ZZawDE9J+Rwjl/X+uIxZNEv3Bq5WBVtDpjV
	eO0OAHIDQ50HyYoQ+UdGJmGrjcSOUOM92rJZp0MRvXv/UYAE0+LsTshV1vi/AuIHmzKQ/LASkv4II
	tJf8WAQTwDftHZEX0u4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2dr-0000000DrR7-0o61;
	Mon, 15 Jun 2026 08:25:59 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ2do-0000000DrQD-49EA;
	Mon, 15 Jun 2026 08:25:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781511953;
	bh=kAmC+E/8rBpCeZR6wivIKX8D5/vOqrGWaZb2OhFQpCk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PdOQj2g1PcKrwOWHwIY18Ry4zrb3hNuk3RhYQ6sthcj12/lfB7x+zAx7clsFsMoO2
	 0eLrpTd/IC+gv7ARznPw6IG/IPvlCUYEWfcrpShYe2LYEhHRgGi+bDpE07eTqbqMx6
	 wnSwMZZg5TWP5Gb7o6lvHLaVxq1kwzcSfGb8pLtGUDMK+Ta0cIpXhZeS57F4IlssVM
	 vgiHDM72D1OAfJNJZlGqcETBQ/fRMQDkSEUYF879iE3U9RHJl9FQi1YIayLB+buehD
	 9Lo8O9Ly5z/QtWFsvCnHpNlZzADswyWydVyAD6RosVtOnWL9jPdX36Ry5NZsjbHvNd
	 dN/9YE7w19J8Q==
Received: from [100.64.1.43] (unknown [100.64.1.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7713E17E03CE;
	Mon, 15 Jun 2026 10:25:53 +0200 (CEST)
Message-ID: <cf38fbb9-a17c-4297-a696-2efa199afcbb@collabora.com>
Date: Mon, 15 Jun 2026 10:25:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] media: verisilicon: rockchip: bound VPU981 AV1
 tile loop and guard divisor
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
References: <20260614155609.3107600-1-michael.bommarito@gmail.com>
 <20260614155609.3107600-5-michael.bommarito@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260614155609.3107600-5-michael.bommarito@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_012557_183600_B28F61D2 
X-CRM114-Status: GOOD (  19.60  )
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

CkxlIDE0LzA2LzIwMjYgw6AgMTc6NTYsIE1pY2hhZWwgQm9tbWFyaXRvIGEgw6ljcml0wqA6Cj4g
cm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X3RpbGVfaW5mbygpIGRpdmlkZXMgY29udGV4dF91
cGRhdGVfdGlsZV9pZCBieQo+IHRpbGVfaW5mby0+dGlsZV9jb2xzIGFuZCB3cml0ZXMgb25lIGRl
c2NyaXB0b3IgcGVyIHRpbGUgaW50byB0aGUgdGlsZV9pbmZvCj4gRE1BIGJ1ZmZlciwgc2l6ZWQg
Zm9yIEFWMV9NQVhfVElMRVMuIHRpbGVfY29scyAvIHRpbGVfcm93cyBjb21lIHN0cmFpZ2h0Cj4g
ZnJvbSB0aGUgYml0c3RyZWFtOyByZWplY3QgYSB6ZXJvIGNvbHVtbiBvciByb3cgY291bnQgYW5k
IGJvdW5kIHRoZSBncmlkIHRvCj4gQVYxX01BWF9USUxFUyBzbyB0aGUgZGl2aXNpb24gaXMgc2Fm
ZSBhbmQgdGhlIHdyaXRlcyBzdGF5IGluIHRoZSBidWZmZXIuCj4KPiBGaXhlczogNzI3YTQwMDY4
NmEyICgibWVkaWE6IHZlcmlzaWxpY29uOiBBZGQgUm9ja2NoaXAgQVYxIGRlY29kZXIiKQo+IFNp
Z25lZC1vZmYtYnk6IE1pY2hhZWwgQm9tbWFyaXRvIDxtaWNoYWVsLmJvbW1hcml0b0BnbWFpbC5j
b20+Cj4gQXNzaXN0ZWQtYnk6IENsYXVkZTpjbGF1ZGUtb3B1cy00LTgKPiAtLS0KPiAgIC4uLi92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jICB8IDI5ICsrKysrKysrKysr
KystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IGluZGV4IGU0ZTIxYWQzNzMy
MzMuLjcxZDJlZjcyYzQ0MDIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4g
QEAgLTU3OCwyMSArNTc4LDMyIEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3ZwdTk4MV9hdjFfZGVj
X3NldF90aWxlX2luZm8oc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAgIAljb25zdCBzdHJ1Y3Qg
djRsMl9hdjFfdGlsZV9pbmZvICp0aWxlX2luZm8gPSAmY3RybHMtPmZyYW1lLT50aWxlX2luZm87
Cj4gICAJY29uc3Qgc3RydWN0IHY0bDJfY3RybF9hdjFfdGlsZV9ncm91cF9lbnRyeSAqZ3JvdXBf
ZW50cnkgPQo+ICAgCSAgICBjdHJscy0+dGlsZV9ncm91cF9lbnRyeTsKPiAtCWludCBjb250ZXh0
X3VwZGF0ZV95ID0KPiAtCSAgICB0aWxlX2luZm8tPmNvbnRleHRfdXBkYXRlX3RpbGVfaWQgLyB0
aWxlX2luZm8tPnRpbGVfY29sczsKPiAtCWludCBjb250ZXh0X3VwZGF0ZV94ID0KPiAtCSAgICB0
aWxlX2luZm8tPmNvbnRleHRfdXBkYXRlX3RpbGVfaWQgJSB0aWxlX2luZm8tPnRpbGVfY29sczsK
PiAtCWludCBjb250ZXh0X3VwZGF0ZV90aWxlX2lkID0KPiAtCSAgICBjb250ZXh0X3VwZGF0ZV94
ICogdGlsZV9pbmZvLT50aWxlX3Jvd3MgKyBjb250ZXh0X3VwZGF0ZV95Owo+ICsJdW5zaWduZWQg
aW50IHRpbGVfY29scywgdGlsZV9yb3dzOwo+ICsJaW50IGNvbnRleHRfdXBkYXRlX3ksIGNvbnRl
eHRfdXBkYXRlX3gsIGNvbnRleHRfdXBkYXRlX3RpbGVfaWQ7Cj4gICAJdTggKmRzdCA9IGF2MV9k
ZWMtPnRpbGVfaW5mby5jcHU7Cj4gICAJc3RydWN0IGhhbnRyb19kZXYgKnZwdSA9IGN0eC0+ZGV2
Owo+ICAgCWludCB0aWxlMCwgdGlsZTE7Cj4gICAKPiArCS8qIEd1YXJkIHRoZSBkaXZpc29yIGFu
ZCBib3VuZCB0aGUgZ3JpZCB0byB0aGUgdGlsZV9pbmZvIGJ1ZmZlci4gKi8KPiArCXRpbGVfY29s
cyA9IHRpbGVfaW5mby0+dGlsZV9jb2xzOwo+ICsJdGlsZV9yb3dzID0gdGlsZV9pbmZvLT50aWxl
X3Jvd3M7Cj4gKwlpZiAoIXRpbGVfY29scyB8fCAhdGlsZV9yb3dzKQo+ICsJCXJldHVybjsKCk5B
Q0sKYmVjYXVzZSB5b3UgY29tcGxldGVseSBpZ25vcmUgaG93IHRoZXNlIHZhbHVlcyBhcmUgdXNl
ZCBsYXRlciBpbiB0aGlzIGZ1bmN0aW9uCnRvIHNldCByZWdpc3RlcnMuCgo+ICsJaWYgKHRpbGVf
Y29scyAqIHRpbGVfcm93cyA+IEFWMV9NQVhfVElMRVMpIHsKPiArCQl0aWxlX2NvbHMgPSBtaW5f
dCh1bnNpZ25lZCBpbnQsIHRpbGVfY29scywgQVYxX01BWF9USUxFUyk7Cj4gKwkJdGlsZV9yb3dz
ID0gbWluX3QodW5zaWduZWQgaW50LCB0aWxlX3Jvd3MsCj4gKwkJCQkgIEFWMV9NQVhfVElMRVMg
LyB0aWxlX2NvbHMpOwo+ICsJfQo+ICsKCkl0IGlzbid0IHBvc3NpYmxlIHRvIHJlY29tcHV0ZSB0
aWxlX2NvbHMgYW5kIHRpbGVfcm93cyBsaWtlIHRoYXQuClBsZWFzZSBhZGQgdGhpcyBjaGVjayBp
biB2YWxpZGF0ZV9hdjFfdGlsZV9pbmZvKCkuCgo+ICsJY29udGV4dF91cGRhdGVfeSA9IHRpbGVf
aW5mby0+Y29udGV4dF91cGRhdGVfdGlsZV9pZCAvIHRpbGVfY29sczsKPiArCWNvbnRleHRfdXBk
YXRlX3ggPSB0aWxlX2luZm8tPmNvbnRleHRfdXBkYXRlX3RpbGVfaWQgJSB0aWxlX2NvbHM7Cj4g
Kwljb250ZXh0X3VwZGF0ZV90aWxlX2lkID0gY29udGV4dF91cGRhdGVfeCAqIHRpbGVfcm93cyAr
IGNvbnRleHRfdXBkYXRlX3k7CgpUbyBmaXggdGhlIHBvc3NpYmxlIGRpdmlzaW9uIGJ5IHplcm86
IGluaXRpYWxpemUgdGhlIHZhcmlhYmxlIHRvIHplcm8gd2hlbiBkZWNsYXJlIHRoZW0KYW5kIG9u
bHkgZG8gdGhlIGRpdmlzaW9uIGlmIHRpbGVfY29scyBpc24ndCB6ZXJvLgoKVGhhbmtzLApCZW5q
YW1pbgoKPiArCj4gICAJbWVtc2V0KGRzdCwgMCwgYXYxX2RlYy0+dGlsZV9pbmZvLnNpemUpOwo+
ICAgCj4gLQlmb3IgKHRpbGUwID0gMDsgdGlsZTAgPCB0aWxlX2luZm8tPnRpbGVfY29sczsgdGls
ZTArKykgewo+IC0JCWZvciAodGlsZTEgPSAwOyB0aWxlMSA8IHRpbGVfaW5mby0+dGlsZV9yb3dz
OyB0aWxlMSsrKSB7Cj4gLQkJCWludCB0aWxlX2lkID0gdGlsZTEgKiB0aWxlX2luZm8tPnRpbGVf
Y29scyArIHRpbGUwOwo+ICsJZm9yICh0aWxlMCA9IDA7IHRpbGUwIDwgdGlsZV9jb2xzOyB0aWxl
MCsrKSB7Cj4gKwkJZm9yICh0aWxlMSA9IDA7IHRpbGUxIDwgdGlsZV9yb3dzOyB0aWxlMSsrKSB7
Cj4gKwkJCWludCB0aWxlX2lkID0gdGlsZTEgKiB0aWxlX2NvbHMgKyB0aWxlMDsKPiAgIAkJCXUz
MiBzdGFydCwgZW5kOwo+ICAgCQkJdTMyIHkwID0KPiAgIAkJCSAgICB0aWxlX2luZm8tPmhlaWdo
dF9pbl9zYnNfbWludXNfMVt0aWxlMV0gKyAxOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
