Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749EFC5DF94
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 10:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/vGXo19KFn/l6b5nSkIIY9e1M4yOeFEHhkmZmhw9Kg=; b=EHCJXoaU+DRtZj
	VR5UI+NQmkAicpbq+PqrcHv2xE4ZRXozVHt5nTZNOk0grK7gDGkZSvzoCCYerJrhloEfBSQpwro1z
	Q2X8X7bvskTHnkLIXtLZdsJZuQfUKxPU7uWKVKP7EgMwzQTPyt8spG3Cf8rryS1i2sjodYviOdnSa
	6xb8pc585SKBJN1QF0K05fbebCO6I/ls7z1K32bNhwt9xm0lFg7PXUQknUgC8pQIbvFKO6Cg3Aozb
	JnggqY6/9fwLK+hd/HQnOl+SlaZ8lSIZYXb9uBK/zTpcAQ+mtq0eMIvG8SDbBOZMIxKupo3c+Mjfp
	7Yve9gamP4KCE6tM+4Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRml-0000000GNrp-0Hkb;
	Mon, 24 Aug 2026 10:20:11 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyRmf-0000000GNqP-2gz9;
	Mon, 24 Aug 2026 10:20:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1787566799; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MjlXq010zON+lhCukkiDKvUkuY8wnt1XnNGvuBKXbURyCVOL4FS47MC31P2QnjSKZiE9XZk7xLR9OrxBjSn3LT8druCQf9oql09xzqfsBSiDVniQXQAyvZcRvGGnOcMeg05nSqfdkPkyOiSm8rt/tTYj0Y6tQZoC+oqmm+EZELA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1787566799; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=kP4bmdXmXS3DS6R8vDn0Rac2upM01LYINyBFr62ugPo=; 
	b=meWbWJYT3NkBsUR8+RQuHM6446urMJohtPi8nJNa1x5wjk2gP2zBi5aZE0RxlhHBJlTyoa0KNtHsZ852hObqb4DnFF0MFpXVGXGAF4jhrwpgAwSdPqd36RVojLhEi9RB7j6Umf9oQrkdI5z4VHqSoK09e8ccvhqiYiU9ogFhTXk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1787566799;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=kP4bmdXmXS3DS6R8vDn0Rac2upM01LYINyBFr62ugPo=;
	b=MXQa01zm9fNrYBbSS58u6mFLXD0DDjh4TsB9mkoL/a4eWFlrcAV7CdIMyGm4Ta4L
	47ISE3IjNS2kQidHF7n+t6Gr6zZkSiYGGKqtlxxg8XtFc9iDdd4vw1WZ0wPQM0DuIvR
	tjbdt+3rPSrCfAVH8tWkEjKFyUN96qb5A5NhZ77A=
Received: by mx.zohomail.com with SMTPS id 1787566797597783.6306751888679;
	Mon, 24 Aug 2026 03:19:57 -0700 (PDT)
Message-ID: <e6e917df-21d8-4641-9116-64fac30b8f63@collabora.com>
Date: Mon, 24 Aug 2026 12:19:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] media: verisilicon: Allow the EOS event to be
 subscribed
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260824-rk3588-jpegdec-v1-0-180a30a2852d@pengutronix.de>
 <20260824-rk3588-jpegdec-v1-3-180a30a2852d@pengutronix.de>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260824-rk3588-jpegdec-v1-3-180a30a2852d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_032006_375092_568E7CBF 
X-CRM114-Status: GOOD (  22.87  )
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

CkxlIDI0LzA4LzIwMjYgw6AgMDg6MzksIFNhc2NoYSBIYXVlciBhIMOpY3JpdMKgOgo+IGhhbnRy
byBxdWV1ZXMgYSBWNEwyX0VWRU5UX0VPUyBpbiB0aHJlZSBwbGFjZXMuICB2aWRpb2NfZW5jb2Rl
cl9jbWQoKQo+IHNlbmRzIGl0IHdoZW4gYSBWNEwyX0VOQ19DTURfU1RPUCBoYXMgZHJhaW5lZCB0
aGUgZW5jb2RlcjoKPgo+IAlpZiAoZWMtPmNtZCA9PSBWNEwyX0VOQ19DTURfU1RPUCAmJgo+IAkg
ICAgdjRsMl9tMm1faGFzX3N0b3BwZWQoY3R4LT5maC5tMm1fY3R4KSkKPiAJCXY0bDJfZXZlbnRf
cXVldWVfZmgoJmN0eC0+ZmgsICZoYW50cm9fZW9zX2V2ZW50KTsKPgo+IGhhbnRyb19idWZfcXVl
dWUoKSBzZW5kcyBpdCBmb3IgYSBjYXB0dXJlIGJ1ZmZlciBxdWV1ZWQgYWZ0ZXIgdGhlIGxhc3QK
PiBvbmUsIGFuZCBoYW50cm9fc3RvcF9zdHJlYW1pbmcoKSB3aGVuIHRoZSBvdXRwdXQgcXVldWUg
c3RvcHMgd2hpbGUKPiBkcmFpbmluZy4KPgo+IE5vIGFwcGxpY2F0aW9uIGNhbiBhc2sgZm9yIGFu
eSBvZiB0aGVtLiAgVGhlIGlvY3RsIG9wcyBvZmZlcgo+Cj4gCS52aWRpb2Nfc3Vic2NyaWJlX2V2
ZW50ID0gdjRsMl9jdHJsX3N1YnNjcmliZV9ldmVudCwKPgo+IGFuZCB2NGwyX2N0cmxfc3Vic2Ny
aWJlX2V2ZW50KCkgb25seSBrbm93cyBhYm91dCBWNEwyX0VWRU5UX0NUUkwsIHNvCj4gVklESU9D
X1NVQlNDUklCRV9FVkVOVCBmb3IgVjRMMl9FVkVOVF9FT1MgZmFpbHMgd2l0aCAtRUlOVkFMIGFu
ZCB0aGUKPiBxdWV1ZWQgZXZlbnRzIGFyZSBkcm9wcGVkIG9uIHRoZSBmbG9vci4gIEFuIGFwcGxp
Y2F0aW9uIGZvbGxvd2luZyB0aGUKPiBkcmFpbiBzZXF1ZW5jZSBpbiB0aGUgc3RhdGVmdWwgZW5j
b2RlciBkb2N1bWVudGF0aW9uIGhhcyB0byBmYWxsIGJhY2sgdG8KPiBWNEwyX0JVRl9GTEFHX0xB
U1QsIHdoaWNoIGhhbnRybyBkb2VzIHNldCwgc28gdGhpcyBoYXMgZ29uZSB1bm5vdGljZWQuCj4K
PiBEaXNwYXRjaCBvbiB0aGUgZXZlbnQgdHlwZSBhbmQgaGFuZCBWNEwyX0VWRU5UX0VPUyB0bwo+
IHY0bDJfZXZlbnRfc3Vic2NyaWJlKCksIHRoZSB3YXkgY29kYS1jb21tb24uYyBkb2VzLiAgRXZl
cnl0aGluZyBlbHNlCj4ga2VlcHMgZ29pbmcgdG8gdGhlIGNvbnRyb2wgaGFuZGxlci4KPgo+IFY0
TDJfRVZFTlRfU09VUkNFX0NIQU5HRSBpcyBkZWxpYmVyYXRlbHkgbm90IGFkZGVkLCBoYW50cm8g
bmV2ZXIgc2VuZHMKPiBvbmUuCj4KPiBGaXhlczogZGFmMzk5OWMxMmRjICgibWVkaWE6IGhhbnRy
bzogSW1wbGVtZW50IHN1cHBvcnQgZm9yIGVuY29kZXIgY29tbWFuZHMiKQo+IEFzc2lzdGVkLWJ5
OiBDbGF1ZGU6Y2xhdWRlLW9wdXMtNQo+IFNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5o
YXVlckBwZW5ndXRyb25peC5kZT4KClJldmlld2VkLWJ5IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyB8IDEzICsrKysrKysrKysrKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gaW5kZXgg
ODNhZjlmYTFjZTk0OS4uOWUxOWRhZmZlMDA3NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiArKysgYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiBAQCAtNzY1LDYgKzc2NSwxNyBA
QCBzdGF0aWMgaW50IHZpZGlvY19lbmNvZGVyX2NtZChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAq
cHJpdiwKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW50IGhhbnRyb19zdWJz
Y3JpYmVfZXZlbnQoc3RydWN0IHY0bDJfZmggKmZoLAo+ICsJCQkJICBjb25zdCBzdHJ1Y3QgdjRs
Ml9ldmVudF9zdWJzY3JpcHRpb24gKnN1YikKPiArewo+ICsJc3dpdGNoIChzdWItPnR5cGUpIHsK
PiArCWNhc2UgVjRMMl9FVkVOVF9FT1M6Cj4gKwkJcmV0dXJuIHY0bDJfZXZlbnRfc3Vic2NyaWJl
KGZoLCBzdWIsIDAsIE5VTEwpOwo+ICsJZGVmYXVsdDoKPiArCQlyZXR1cm4gdjRsMl9jdHJsX3N1
YnNjcmliZV9ldmVudChmaCwgc3ViKTsKPiArCX0KPiArfQo+ICsKPiAgIGNvbnN0IHN0cnVjdCB2
NGwyX2lvY3RsX29wcyBoYW50cm9faW9jdGxfb3BzID0gewo+ICAgCS52aWRpb2NfcXVlcnljYXAg
PSB2aWRpb2NfcXVlcnljYXAsCj4gICAJLnZpZGlvY19lbnVtX2ZyYW1lc2l6ZXMgPSB2aWRpb2Nf
ZW51bV9mcmFtZXNpemVzLAo+IEBAIC03ODcsNyArNzk4LDcgQEAgY29uc3Qgc3RydWN0IHY0bDJf
aW9jdGxfb3BzIGhhbnRyb19pb2N0bF9vcHMgPSB7Cj4gICAJLnZpZGlvY19yZW1vdmVfYnVmcyA9
IHY0bDJfbTJtX2lvY3RsX3JlbW92ZV9idWZzLAo+ICAgCS52aWRpb2NfZXhwYnVmID0gdjRsMl9t
Mm1faW9jdGxfZXhwYnVmLAo+ICAgCj4gLQkudmlkaW9jX3N1YnNjcmliZV9ldmVudCA9IHY0bDJf
Y3RybF9zdWJzY3JpYmVfZXZlbnQsCj4gKwkudmlkaW9jX3N1YnNjcmliZV9ldmVudCA9IGhhbnRy
b19zdWJzY3JpYmVfZXZlbnQsCj4gICAJLnZpZGlvY191bnN1YnNjcmliZV9ldmVudCA9IHY0bDJf
ZXZlbnRfdW5zdWJzY3JpYmUsCj4gICAKPiAgIAkudmlkaW9jX3N0cmVhbW9uID0gdjRsMl9tMm1f
aW9jdGxfc3RyZWFtb24sCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
