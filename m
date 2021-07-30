Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE7A4C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 13:29:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4E6C603E7
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 13:29:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B4E6C603E7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ei0Wlj8z1flROox4P8kJqxFuTQYxd80FvoScPibraoo=; b=rIK5gIBkV2I5Oig8TnmxOEw0gM
	Lbyavt5R65pvsH6ppuP9E8RqqH9D2LqBhIRPp+77Kr4c8e8nX2iduYlaV2Cj3hUjRblhxEhGmJQ37
	b/jZBKdi5ewn0T4bB8GypebI3HxxSMr1BCFuo80wf9ZJcscwNG/cOCda1TBkOOHzsYztco1i4R/uW
	Ddnv8VVJYNqHcmqrxjXGgLznWs+AQ1HpHNQZxiyTd4lLqhEZM1MzOoqaaW4uQjTtqXsLiFM2Hy+zj
	VEV91bU044Aq1iRb+q+VmFC94rrA3ALPHTz+85Wdlygokk1Q+7MxrRNFCYAQoX7Dt8I8u//YTIrAX
	f6MZO/CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9SZt-008mSo-W0; Fri, 30 Jul 2021 13:29:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9SZg-008mQs-Nq; Fri, 30 Jul 2021 13:29:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47C766D;
 Fri, 30 Jul 2021 06:29:15 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03EC73F70D;
 Fri, 30 Jul 2021 06:29:12 -0700 (PDT)
Subject: Re: [PATCH v7 3/4] iommu: rockchip: Add internal ops to handle
 variants
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, joro@8bytes.org,
 will@kernel.org, robh+dt@kernel.org, xxm@rock-chips.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
References: <20210525121551.606240-1-benjamin.gaignard@collabora.com>
 <20210525121551.606240-4-benjamin.gaignard@collabora.com>
 <c6175f3d-a324-9fb5-bd39-cfe0447ee5e7@collabora.com>
 <3544194.oiGErgHkdL@diego> <06cdd178-66af-9ff7-5100-3da4e901040f@arm.com>
 <4ad13d07-85d3-390d-123c-a7ed47056385@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e2b35346-6135-2841-25b2-765278710aa0@arm.com>
Date: Fri, 30 Jul 2021 14:29:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <4ad13d07-85d3-390d-123c-a7ed47056385@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_062916_916754_88B095B8 
X-CRM114-Status: GOOD (  27.98  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMS0wNy0zMCAxMzo1MiwgRGFmbmEgSGlyc2NoZmVsZCB3cm90ZToKPiAKPiAKPiBPbiAy
OS4wNy4yMSAxODo1OCwgUm9iaW4gTXVycGh5IHdyb3RlOgo+PiBPbiAyMDIxLTA3LTI5IDE3OjA4
LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEhpIERhZm5hLAo+Pj4KPj4+IEFtIERvbm5lcnN0
YWcsIDI5LiBKdWxpIDIwMjEsIDE3OjU5OjI2IENFU1Qgc2NocmllYiBEYWZuYSBIaXJzY2hmZWxk
Ogo+Pj4+IE9uIDI1LjA1LjIxIDE0OjE1LCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+Pj4g
QEAgLTg3OSw3ICs4OTUsNyBAQCBzdGF0aWMgaW50IHJrX2lvbW11X2VuYWJsZShzdHJ1Y3Qgcmtf
aW9tbXUgKmlvbW11KQo+Pj4+PiDCoMKgwqDCoMKgwqAgZm9yIChpID0gMDsgaSA8IGlvbW11LT5u
dW1fbW11OyBpKyspIHsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmtfaW9tbXVfd3JpdGUo
aW9tbXUtPmJhc2VzW2ldLCBSS19NTVVfRFRFX0FERFIsCj4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmtfZG9tYWluLT5kdF9kbWEpOwo+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJrX29wcy0+ZG1hX2FkZHJfZHRlKHJrX2RvbWFp
bi0+ZHRfZG1hKSk7Cj4+Pj4KPj4+PiBIaSwKPj4+PiBUaGlzIGlzIG5vdCByZWxhdGVkIHRvIHRo
YXQgcGF0Y2gsIEkgd2FzIHdvbmRyaW5nIHdoeSBhcmUgYWxsIG1tdSAKPj4+PiBkZXZpY2VzIGlu
aXRpYWxpemVkCj4+Pj4gd2l0aCB0aGUgc2FtZSBkdF9kbWE/Cj4+Pj4gSSBzZWUgZm9yIGV4YW1w
bGUgdGhhdCB0aGUgaXNwMF9tbXUgaW4gcmszMzk5LmR0c2kgaGFzIHR3byAKPj4+PiByZXNvdXJj
ZXMuIENhbid0IGVhY2ggcmVzb3VyY2UKPj4+PiBiZSBpbml0aWFsaXplZCB3aXRoIGRpZmZlcmVu
dCBkdF9kbWEgYW5kIHRoaXMgd2F5IHRoZXJlIGFyZSB0d28gZHQgCj4+Pj4gdGFibGVzIGluc3Rl
YWQgb2YgdGhlIHR3byBtbXVzIHBvaW50aW5nCj4+Pj4gdG8gdGhlIHNhbWUgZHQgdGFibGUuCj4+
Pgo+Pj4gbWF5YmUKPj4+IGdpdCBsb2cgLTEgY2Q2NDM4YzVmODQ0NjY5MWFmYTQ4MjlmZTFhOWQ3
YjY1NjIwNGYxMQo+Pj4KPj4+ICJpb21tdS9yb2NrY2hpcDogUmVjb25zdHJ1Y3QgdG8gc3VwcG9y
dCBtdWx0aSBzbGF2ZXMKPj4+IFRoZXJlIGFyZSBzb21lIElQcywgc3VjaCBhcyB2aWRlbyBlbmNv
ZGVyL2RlY29kZXIsIGNvbnRhaW5zIDIgc2xhdmUgCj4+PiBpb21tdXMsCj4+PiBvbmUgZm9yIHJl
YWRpbmcgYW5kIHRoZSBvdGhlciBmb3Igd3JpdGluZy4gVGhleSBzaGFyZSB0aGUgc2FtZSBpcnEg
YW5kCj4+PiBjbG9jayB3aXRoIG1hc3Rlci4KPj4+IFRoaXMgcGF0Y2ggcmVjb25zdHJ1Y3RzIHRv
IHN1cHBvcnQgdGhpcyBjYXNlIGJ5IG1ha2luZyB0aGVtIHNoYXJlIHRoZSAKPj4+IHNhbWUKPj4+
IFBhZ2UgRGlyZWN0b3J5LCBQYWdlIFRhYmxlcyBhbmQgZXZlbiB0aGUgcmVnaXN0ZXIgb3BlcmF0
aW9ucy4KPj4+IFRoYXQgbWVhbnMgZXZlcnkgaW5zdHJ1Y3Rpb24gdG8gdGhlIHJlYWRpbmcgTU1V
IHJlZ2lzdGVycyB3b3VsZCBiZQo+Pj4gZHVwbGljYXRlZCB0byB0aGUgd3JpdGluZyBNTVUgYW5k
IHZpY2UgdmVyc2EuIgo+Pgo+PiBSaWdodC4gSW4gdGhlb3J5IHdlICpjb3VsZCogbWFpbnRhaW4g
YSBzZXBhcmF0ZSBwYWdldGFibGUgZm9yIGVhY2ggCj4+IElPTU1VIGluc3RhbmNlLCBidXQgaXQg
d291bGQganVzdCBsZWFkIHRvIGEgbG9hZCBvZiBjb21wbGV4aXR5IGFuZCAKPj4gb3ZlcmhlYWQu
IEZvciBhIG1hcCByZXF1ZXN0LCB3ZSdkIGhhdmUgdG8gZG8gZXh0cmEgd29yayB0byBkZWNpZGUg
Cj4+IHdoaWNoIHRhYmxlKHMpIG5lZWQgbW9kaWZ5aW5nLCBhbmQgZHVwbGljYXRlIGFsbCB0aGUg
d29yayBvZiB0aGUgCj4+IGFjdHVhbCBtYXBwaW5nIGlmIGl0J3MgbW9yZSB0aGFuIG9uZS4gRm9y
IGFuIHVubWFwIHJlcXVlc3QsIHdlJ2QgaGF2ZSAKPj4gbm8gY2hvaWNlIGJ1dCB0byB3YWxrICph
bGwqIHRoZSB0YWJsZXMgYmFja2luZyB0aGF0IGRvbWFpbiB0byBmaWd1cmUgCj4+IG91dCB3aGlj
aCAoaWYgYW55KSBhY3R1YWxseSBoYWQgaXQgbWFwcGVkIGluIHRoZSBmaXJzdCBwbGFjZS4KPj4K
Pj4gR2l2ZW4gdGhhdCB3ZSBhbHJlYWR5IGhhdmUgZGlzdGluY3QgcmVhZCBhbmQgd3JpdGUgcGVy
bWlzc2lvbnMgZm9yIAo+PiBtYXBwaW5ncyB3aXRoaW4gYSBzaW5nbGUgdGFibGUsIHRoZXJlJ3Mg
bm90IGV2ZW4gYW55IGZ1bmN0aW9uYWwgCj4+IGJlbmVmaXQgdGhhdCBjb3VsZCBiZSBnYWluZWQg
aW4gdGhpcyBjYXNlIChhbmQgaW4gdGhlIG1vcmUgZ2VuZXJhbCAKPj4gY2FzZSB3aGVyZSB0aGUg
ZGV2aWNlIG1pZ2h0IGVtaXQgYWxsIGtpbmRzIG9mIHRyYW5zYWN0aW9ucyBmcm9tIGFsbCAKPj4g
aXRzIGludGVyZmFjZXMgeW91J2QgaGF2ZSB0byBtYWludGFpbiBpZGVudGljYWwgbWFwcGluZ3Mg
Zm9yIGFsbCBpdHMgCj4+IElPTU1VcyBhbnl3YXkpLiBTYXZpbmcgbWVtb3J5IGFuZCBjb2RlIGNv
bXBsZXhpdHkgYnkgcGh5c2ljYWxseSAKPj4gc2hhcmluZyBvbmUgcGFnZXRhYmxlIGFuZCBub3Qg
d29ycnlpbmcgYWJvdXQgdHJ5aW5nIHRvIGRvIHNlbGVjdGl2ZSAKPj4gVExCIG1haW50ZW5hbmNl
IGlzIGEgYmlnZ2VyIHdpbiB0aGFuIGFueXRoaW5nIGVsc2UgY291bGQgYmUuCj4+Cj4+IFJvYmlu
Lgo+IAo+IEhpLCBJIGp1c3QgdHJ5IHRvIHVuZGVyc3RhbmQgaG93IHRoaXMgaW9tbXUgaGFyZHdh
cmUvc29mdHdhcmUgd29ya3MuIEkgCj4gaGF2ZSB0d28gcXVlc3Rpb25zLAo+IAo+IDEuIFNvIHdl
IGN1cnJlbnRseSBtaXNzIGEgcG90ZW50aWFsIG1hcHBpbmcgb2YgdGhlIGhhcmR3YXJlIHJpZ2h0
PyBJIAo+IG1lYW4gLCBlYWNoIG1tdSBjYW4gbWFwIDEwMjQqMTAyNCo0SyA9IDRHIGFkZHJlc3Nl
cywgc28gdHdvIG1tdXMgY2FuIAo+IHBvdGVudGlhbGx5IG1hcCA4Ry4gQnV0IHNpbmNlCj4gd2Ug
c2V0IHRoZW0gdG8gaWRlbnRpY2FsIHZhbHVlcywgd2UgY2FuIG1hcCBvbmx5IHVwIHRvIDRHLgoK
Tm90IHF1aXRlLiBXZSBoYXZlIDRHQiBvZiBhZGRyZXNzIHNwYWNlIGluIHdoaWNoIHJlYWQgdHJh
bnNhY3Rpb24gCm9wZXJhdGUsIGFuZCA0R0Igb2YgYWRkcmVzcyBzcGFjZSBpbiB3aGljaCB3cml0
ZSB0cmFuc2FjdGlvbnMgb3BlcmF0ZSwgCmJ1dCBpdCdzIGhvcGVmdWxseSBvYnZpb3VzIHdoeSB0
aG9zZSBhcmUgbm90IGludGVyY2hhbmdlYWJsZS4gClRlY2huaWNhbGx5IHlvdSAqY291bGQqIG1h
cCBhIHBpZWNlIG9mIHBoeXNpY2FsIG1lbW9yeSB0byBiZSByZWFkIGFuZCAKd3JpdHRlbiB2aWEg
ZGlmZmVyZW50IHZpcnR1YWwgYWRkcmVzc2VzLCBidXQgeW91IGNvdWxkIGRvIHRoYXQgd2l0aCAK
cGVybWlzc2lvbnMgaW4gYSBzaW5nbGUgdGFibGUgYW55d2F5LCBhbmQgbW9zdGx5IGl0IHdvdWxk
IGp1c3QgYnJlYWsgYW55IApkZXZpY2Ugd2hpY2ggZXhwZWN0cyBhIHNpbmdsZSBidWZmZXIgYWRk
cmVzcyB0byBib3RoIHJlYWQgYW5kIHdyaXRlLgoKPiAyLiBXaGF0IGlzIHRoZSBiZW5lZml0IG9m
IHNldHRpbmcgYWxsIG1tdXMgaWYgdGhleSBhcmUgYWxsIHNldCB0byB0aGUgCj4gc2FtZSB2YWx1
ZXM/IENhbid0IHdlIGp1c3Qgd29yayB3aXRoIHRoZSBmaXJzdCBtbXUgbGlrZSBpdCB3YXMgZG9u
ZSAKPiBiZWZvcmUgdGhhdCBwYXRjaAo+IGNkNjQzOGM1Zjg0NDY2OTFhZmE0ODI5ZmUxYTlkN2I2
NTYyMDRmMTEKClRoZSBoYXJkd2FyZSBoYXMgdHdvIHBoeXNpY2FsIGludGVyZmFjZXMgdGhyb3Vn
aCB3aGljaCBpdCBpc3N1ZXMgCnRyYW5zYWN0aW9ucyAtIGlmIHdlIG9ubHkgcHJvZ3JhbSB0aGUg
SU9NTVUgb24gb25lIG9mIHRob3NlIGludGVyZmFjZXMsIApkaWZmZXJlbnQgdHJhbnNhY3Rpb25z
IHdpbGwgaGF2ZSBpbmNvbnNpc3RlbnQgdmlld3Mgb2YgbWVtb3J5IGFzIGFib3ZlLCAKYW5kIHRo
ZSBkZXZpY2Ugd2lsbCBwcm9iYWJseSBub3QgZnVuY3Rpb24gY29ycmVjdGx5LgoKQmVmb3JlIHRo
YXQgcGF0Y2gsIHRoZSBjYXNlcyB3aGVyZSBqdXN0IHRoZSAiZmlyc3QiIE1NVSB3YXMgcHJvZ3Jh
bW1lZCAKd2VyZSB0aGUgb25lcyB3aGVyZSBpdCB3YXMgYWxzbyB0aGUgb25seSBNTVUsIGFzIHRo
ZXkgc3RpbGwgYXJlLiBUaGUgCklPTU1VcyBmb3IgdGhlc2UgbXVsdGktaW50ZXJmYWNlIGRldmlj
ZXMgd2VyZW4ndCBlbmFibGVkIGF0IGFsbCBiZWNhdXNlIAppdCB3b3VsZCBoYXZlIGp1c3QgYnJv
a2VuIHRoaW5ncy4KClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
