Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FA37C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 13:10:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EA7F5601FD
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 13:10:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EA7F5601FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=Huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/YAPOtyLSclnihplNMcDzUcbEf6mgjV0LBIEP1+q+w=; b=dhICM4tEA1E5ND
	Uj+VqWIgUS9yiqeWCgI/Iv7m7Q4aFf6JPLVm0412UJa0Bpgse80FRyQmjFNmS4YgsHL7AibbOQCC/
	Gm2BnvvZgyfDmnACKI3QtCXCXvpGGtA6Oc8l7pspHfI5qIbPiAK0U+6R25MwSpgIeWzHbo5VyXn2C
	8jKYynRFOcJETEiFEFdqgeudm0Lyzo4rbgKbky6C5Aa0UMCv+cmm4QKcfFOQjojcrdz2uC4LSB7wW
	5JAjFRLUxxoyeC+trL6Y6H6dGbwCq++hR/WMVOa+AvjDzSNWaByGftJrNi8t3u8rC6T55QQLl+Dn/
	waaLKL4dBDng2sHmrm7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAuBb-002sqS-V1; Tue, 03 Aug 2021 13:10:24 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAttp-002lJC-AD
 for linux-rockchip@lists.infradead.org; Tue, 03 Aug 2021 12:52:06 +0000
Received: from fraeml703-chm.china.huawei.com (unknown [172.18.147.226])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4GfFB83cX2z6GD14;
 Tue,  3 Aug 2021 20:51:44 +0800 (CST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 fraeml703-chm.china.huawei.com (10.206.15.52) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Tue, 3 Aug 2021 14:51:54 +0200
Received: from localhost (10.210.169.87) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Tue, 3 Aug 2021
 13:51:53 +0100
Date: Tue, 3 Aug 2021 13:51:24 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: David Wu <david.wu@rock-chips.com>
CC: Simon Xue <xxm@rock-chips.com>, Jonathan Cameron <jic23@kernel.org>,
 <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>, "Peter
 Meerwald-Stadler" <pmeerw@pmeerw.net>, <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: just get referenced voltage
 once at probe
Message-ID: <20210803135124.000072fe@Huawei.com>
In-Reply-To: <36f6284f-6bc9-d5a4-aac8-5db8b1ecaae1@rock-chips.com>
References: <20210802090929.37970-1-xxm@rock-chips.com>
 <20210802114222.00004f3d@Huawei.com>
 <36f6284f-6bc9-d5a4-aac8-5db8b1ecaae1@rock-chips.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.210.169.87]
X-ClientProxiedBy: lhreml714-chm.china.huawei.com (10.201.108.65) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_055201_750186_AB0AE734 
X-CRM114-Status: GOOD (  32.13  )
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
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCAzIEF1ZyAyMDIxIDExOjA5OjQ3ICswODAwCkRhdmlkIFd1IDxkYXZpZC53dUByb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cgo+IEhpIEpvbmF0aGFuLAo+IAo+INTaIDIwMjEvOC8yIM/Czuc2
OjQyLCBKb25hdGhhbiBDYW1lcm9uINC0tcA6Cj4gPiBPbiBNb24sIDIgQXVnIDIwMjEgMTc6MDk6
MjkgKzA4MDAKPiA+IFNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+ICAg
Cj4gPj4gRnJvbTogRGF2aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPgo+ID4+Cj4gPj4g
VGhlIHJlZmVyZW5jZWQgdm9sdGFnZSBpcyBub3QgY2hhbmdlZCBhZnRlciBpbml0aWF0aW9uLCBz
byBqdXN0IG9ubHkKPiA+PiBnZXQgcmVmZXJlbmNlZCB2b2x0YWdlIG9uY2UuICAKPiA+IEhpIERh
dmlkLAo+ID4gCj4gPiBJc24ndCB0aGlzIGFuIGV4dGVybmFsIHJlZmVyZW5jZSB2b2x0YWdlPyAg
SWYgc28gaG93IGRvIHlvdSBrbm93Cj4gPiBpdCBpcyBub3QgY2hhbmdlZCBhdCBydW50aW1lPyAg
SXQgbWlnaHQgYmUgdW5saWtlbHkgYW5kIG5vdCBoYXBwZW4KPiA+IG9uIHBhcnRpY3VsYXIgcGxh
dGZvcm1zLCBidXQgdGhhdCdzIG5vdCBoZSBzYW1lIGFzIHNheWluZyBpdCBjYW4gbmV2ZXIKPiA+
IGhhcHBlbi4gIENsZWFybHkgaXQncyByYWNleSBhbnl3YXkgaWYgdGhhdCBkb2VzIGhhcHBlbiwg
YnV0IHdlIGRlZmluaXRlbHkKPiA+IGRvbid0IGV4cGVjdCBmcmVxdWVudCB2b2x0YWdlIGNoYW5n
ZXMuCj4gPiAgIAo+IAo+IFRoZSBjdXJyZW50IHJlZ3VsYXRvciBpcyBub3QgY2hhbmdlZCBhbmQg
bm90IHN1YmplY3QgdG8gZXh0ZXJuYWwgCj4gY2hhbmdlcywgdGhpcyBjYW4gcmVkdWNlIHRoZSBn
ZXR0aW5nIHZvbHRhZ2UuIEFzc3VtaW5nIHRoYXQgdGhlcmUgd2lsbCAKPiBiZSBjaGFuZ2VzIGlu
IHRoZSBmdXR1cmUsIHdlIHRoZW4gYWRkIHRoZSBub3RpZnkgb2YgdGhlIHJlZ3VsYXRvciwgc28g
Cj4gdGhhdCB0aGUgdm9sdGFnZSBjaGFuZ2UgY2FuIGJlIG9idGFpbmVkLgoKSWYgdGhpcyBwYXRj
aCBhZGRlZCB0aGUgbm90aWZpZXIgdGhhdCB3b3VsZCBiZSBhIG5pY2Ugc29sdXRpb24sIGJ1dApy
aWdodCBub3cgaXQgcG90ZW50aWFsbHkgaW50cm9kdWNlZCBhIHJlZ3Jlc3Npb24uIFlvdSBoYXZl
IG1hZGUgbWUgYSBsaXR0bGUgY3VyaW91cy4uLgpBcmUgeW91IHNlZWluZyBhIHNpZ25pZmljYW50
IGNvc3QgdG8gcXVlcnlpbmcgdGhhdCByZWd1bGF0b3Igdm9sdGFnZT8KSWYgc28sIEknZCBpbWFn
aW5lIGl0J3MgYSBsYWNrIG9mIGNhY2hpbmcgaW4gdGhlIHJlZ3VsYXRvciBkcml2ZXIgb3Igc2lt
aWxhci4KU2NhbGUgcmVhZGJhY2sgdmlhIHN5c2ZzIHNob3VsZG4ndCBiZSBpbiBhIGZhc3QgcGF0
aCBhbnl3YXkuCgpZb3UgY2FuJ3QgZGVwZW5kIG9uIHdoYXQgYm9hcmRzIHRvZGF5IGRvLCBiZWNh
dXNlIHNvbWVvbmUgd2l0aCBhIGJvYXJkCmJ1aWx0IHRvbW9ycm93IG1heSB3ZWxsIHVzZSBhbiBv
bGQga2VybmVsIHdoaWNoIHN1cHBvcnRzIHRoZSB2b2x0YWdlCmNoYW5naW5nLCBhbmQgdGhlbiBz
ZWUgYSByZWdyZXNzaW9uIHdoZW4gdGhleSB1cGdyYWRlIHRvIHRoZSBrZXJuZWwKY29udGFpbmlu
ZyB0aGlzIHBhdGNoLgoKSm9uYXRoYW4KCj4gCj4gPiBKb25hdGhhbgo+ID4gICAKPiA+Pgo+ID4+
IFNpZ25lZC1vZmYtYnk6IFNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29tPgo+ID4+IFNpZ25l
ZC1vZmYtYnk6IERhdmlkIFd1IDxkYXZpZC53dUByb2NrLWNoaXBzLmNvbT4KPiA+PiAtLS0KPiA+
PiAgIGRyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyB8IDE2ICsrKysrKysrKy0tLS0t
LS0KPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
Cj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5j
IGIvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCj4gPj4gaW5kZXggZjNlYjhkMmU1
MGRjLi5jZDMzYzBiOWQzZWIgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL3JvY2tj
aGlwX3NhcmFkYy5jCj4gPj4gKysrIGIvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5j
Cj4gPj4gQEAgLTQ5LDYgKzQ5LDcgQEAgc3RydWN0IHJvY2tjaGlwX3NhcmFkYyB7Cj4gPj4gICAJ
c3RydWN0IGNsawkJKmNsazsKPiA+PiAgIAlzdHJ1Y3QgY29tcGxldGlvbgljb21wbGV0aW9uOwo+
ID4+ICAgCXN0cnVjdCByZWd1bGF0b3IJKnZyZWY7Cj4gPj4gKwlpbnQJCQl1dl92cmVmOwo+ID4+
ICAgCXN0cnVjdCByZXNldF9jb250cm9sCSpyZXNldDsKPiA+PiAgIAljb25zdCBzdHJ1Y3Qgcm9j
a2NoaXBfc2FyYWRjX2RhdGEgKmRhdGE7Cj4gPj4gICAJdTE2CQkJbGFzdF92YWw7Cj4gPj4gQEAg
LTEwNSwxMyArMTA2LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9zYXJhZGNfcmVhZF9yYXcoc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldiwKPiA+PiAgIAkJbXV0ZXhfdW5sb2NrKCZpbmRpb19kZXYt
Pm1sb2NrKTsKPiA+PiAgIAkJcmV0dXJuIElJT19WQUxfSU5UOwo+ID4+ICAgCWNhc2UgSUlPX0NI
QU5fSU5GT19TQ0FMRToKPiA+PiAtCQlyZXQgPSByZWd1bGF0b3JfZ2V0X3ZvbHRhZ2UoaW5mby0+
dnJlZik7Cj4gPj4gLQkJaWYgKHJldCA8IDApIHsKPiA+PiAtCQkJZGV2X2VycigmaW5kaW9fZGV2
LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHZvbHRhZ2VcbiIpOwo+ID4+IC0JCQlyZXR1cm4gcmV0Owo+
ID4+IC0JCX0KPiA+PiAtCj4gPj4gLQkJKnZhbCA9IHJldCAvIDEwMDA7Cj4gPj4gKwkJKnZhbCA9
IGluZm8tPnV2X3ZyZWYgLyAxMDAwOwo+ID4+ICAgCQkqdmFsMiA9IGNoYW4tPnNjYW5fdHlwZS5y
ZWFsYml0czsKPiA+PiAgIAkJcmV0dXJuIElJT19WQUxfRlJBQ1RJT05BTF9MT0cyOwo+ID4+ICAg
CWRlZmF1bHQ6Cj4gPj4gQEAgLTQxMCw2ICs0MDUsMTMgQEAgc3RhdGljIGludCByb2NrY2hpcF9z
YXJhZGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+PiAgIAkJcmV0dXJu
IHJldDsKPiA+PiAgIAl9Cj4gPj4gICAKPiA+PiArCWluZm8tPnV2X3ZyZWYgPSByZWd1bGF0b3Jf
Z2V0X3ZvbHRhZ2UoaW5mby0+dnJlZik7Cj4gPj4gKwlpZiAoaW5mby0+dXZfdnJlZiA8IDApIHsK
PiA+PiArCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJmYWlsZWQgdG8gZ2V0IHZvbHRhZ2VcbiIpOwo+
ID4+ICsJCXJldCA9IGluZm8tPnV2X3ZyZWY7Cj4gPj4gKwkJcmV0dXJuIHJldDsKPiA+PiArCX0K
PiA+PiArCj4gPj4gICAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGluZm8tPnBjbGspOwo+ID4+
ICAgCWlmIChyZXQgPCAwKSB7Cj4gPj4gICAJCWRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0
byBlbmFibGUgcGNsa1xuIik7ICAKPiA+IAo+ID4gCj4gPiAKPiA+ICAgCj4gCj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
