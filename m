Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4499EC76196
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 13:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzmivAWvnETwMfZNos9+uSe/CqnMlCQNxF33r3upu0w=; b=tZuFjiR2jESs3h
	Eq3cMuARkH1+M8fcPsztQUnucA8rHVza+NLdte5AUfD8zMYGq8WAePerZbwqCJxSnbWW2bWT/AvuX
	yyJxQeqopmQsJo9A2v/FAEgRT4dXDxVZwCGVF0v/YjNUF98ay+ko3+DgSANv619nKpg9xuqf6FJW9
	9Oij/hKmhZAPBe7OVzrAh+UL9/tzeYf39oyONOKo/veuKPEMiR+U7olhA28bSqvhw6F3MevF3sBzG
	nhWI2kyrGF5qQgn6mTkzvAWZF+ORjsLUwdG+nikFpt8sxX5xAvinxEXr5ooMY6xa0g3LhEfUGN3J4
	YIRm6+hWLEkmvbSPtkXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhPi-004U03-3D;
	Fri, 24 Mar 2023 13:25:03 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfhPb-004Tx5-2R;
	Fri, 24 Mar 2023 13:24:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5A6111FB;
	Fri, 24 Mar 2023 06:25:35 -0700 (PDT)
Received: from [10.1.28.32] (e122027.cambridge.arm.com [10.1.28.32])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 742EC3F766;
	Fri, 24 Mar 2023 06:24:49 -0700 (PDT)
Message-ID: <859ef16c-bf31-78f2-f3df-cf0ff9493b3c@arm.com>
Date: Fri, 24 Mar 2023 13:24:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] iommu/rockchip: Add missing set_platform_dma_ops
 callback
Content-Language: en-GB
To: Baolu Lu <baolu.lu@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>,
 Joerg Roedel <joro@8bytes.org>, Jason Gunthorpe <jgg@ziepe.ca>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20230324111127.221640-1-steven.price@arm.com>
 <8fda817c-98e7-1988-325d-52d09f3e61a8@linux.intel.com>
From: Steven Price <steven.price@arm.com>
In-Reply-To: <8fda817c-98e7-1988-325d-52d09f3e61a8@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_062455_887951_13AD1C7C 
X-CRM114-Status: GOOD (  18.86  )
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

T24gMjQvMDMvMjAyMyAxMzoxNiwgQmFvbHUgTHUgd3JvdGU6Cj4gT24gMjAyMy8zLzI0IDE5OjEx
LCBTdGV2ZW4gUHJpY2Ugd3JvdGU6Cj4+IFNpbWlsYXIgdG8gZXh5bm9zLCB3ZSBuZWVkIGEgc2V0
X3BsYXRmb3JtX2RtYV9vcHMoKSBjYWxsYmFjayBmb3IgcHJvcGVyCj4+IG9wZXJhdGlvbiBvbiBB
Uk0gMzIgYml0IGFmdGVyIHJlY2VudCBjaGFuZ2VzIGluIHRoZSBJT01NVSBmcmFtZXdvcmsKPj4g
KGRldGFjaCBvcHMgcmVtb3ZhbCkuIEJ1dCBhbHNvIHRoZSB1c2Ugb2YgYSBOVUxMIGRvbWFpbiBp
cyBjb25mdXNpbmcuCj4+Cj4+IFJld29yayB0aGUgY29kZSB0byBoYXZlIGEgc2luZ2xldG9uIHJr
X2lkZW50aXR5X2RvbWFpbiB3aGljaCBpcyBhc3NpZ25lZAo+PiB0byBkb21haW4gd2hlbiB1c2lu
ZyBhbiBpZGVudGl0eSBtYXBwaW5nIHJhdGhlciB0aGFuICJkZXRhY2hpbmciLiBUaGlzCj4+IG1h
a2VzIHRoZSBjb2RlIGVhc2llciB0byByZWFzb24gYWJvdXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IFN0ZXZlbiBQcmljZSA8c3RldmVuLnByaWNlQGFybS5jb20+Cj4+IC0tLQo+PiBDaGFuZ2VzIHNp
bmNlIHYxWzFdOgo+Pgo+PiDCoCAqIFJld29ya2VkIHRoZSBjb2RlIHRvIGF2b2lkIGEgTlVMTCBk
b21haW4sIGluc3RlYWQgYSBzaW5nbGV0b24KPj4gwqDCoMKgIHJrX2lkZW50aXR5X2RvbWFpbiBp
cyB1c2VkIGluc3RlYWQuIFRoZSAnZGV0YWNoJyBsYW5ndWFnZSBpcyBubwo+PiDCoMKgwqAgbG9u
Z2VyIHVzZWQuCj4+Cj4+IFsxXQo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjMwMzE1
MTY0MTUyLjMzMzI1MS0xLXN0ZXZlbi5wcmljZSU0MGFybS5jb20KPj4KPj4gwqAgZHJpdmVycy9p
b21tdS9yb2NrY2hpcC1pb21tdS5jIHwgNTAgKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPj4g
Yi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPj4gaW5kZXggZjMwZGIyMmVhNWQ3Li40
Mzc1NDEwMDQ5OTQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUu
Ywo+PiArKysgYi9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPj4gQEAgLTEyNCw2ICsx
MjQsNyBAQCBzdHJ1Y3QgcmtfaW9tbXVkYXRhIHsKPj4gwqAgwqAgc3RhdGljIHN0cnVjdCBkZXZp
Y2UgKmRtYV9kZXY7Cj4+IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmtfaW9tbXVfb3BzICpya19v
cHM7Cj4+ICtzdGF0aWMgc3RydWN0IGlvbW11X2RvbWFpbiBya19pZGVudGl0eV9kb21haW47Cj4+
IMKgIMKgIHN0YXRpYyBpbmxpbmUgdm9pZCBya190YWJsZV9mbHVzaChzdHJ1Y3QgcmtfaW9tbXVf
ZG9tYWluICpkb20sCj4+IGRtYV9hZGRyX3QgZG1hLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgY291bnQpCj4+IEBAIC05ODAsMjYgKzk4MSwy
NyBAQCBzdGF0aWMgaW50IHJrX2lvbW11X2VuYWJsZShzdHJ1Y3QgcmtfaW9tbXUgKmlvbW11KQo+
PiDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+IMKgIH0KPj4gwqAgLXN0YXRpYyB2b2lkIHJrX2lv
bW11X2RldGFjaF9kZXZpY2Uoc3RydWN0IGlvbW11X2RvbWFpbiAqZG9tYWluLAo+PiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2UgKmRldikKPj4gK3N0
YXRpYyBpbnQgcmtfaW9tbXVfaWRlbnRpdHlfYXR0YWNoKHN0cnVjdCBpb21tdV9kb21haW4KPj4g
KmlkZW50aXR5X2RvbWFpbiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBkZXZpY2UgKmRldikKPj4gwqAgewo+PiDCoMKgwqDCoMKgIHN0cnVjdCBya19p
b21tdSAqaW9tbXU7Cj4+IC3CoMKgwqAgc3RydWN0IHJrX2lvbW11X2RvbWFpbiAqcmtfZG9tYWlu
ID0gdG9fcmtfZG9tYWluKGRvbWFpbik7Cj4+ICvCoMKgwqAgc3RydWN0IHJrX2lvbW11X2RvbWFp
biAqcmtfZG9tYWluOwo+PiDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+IMKgwqDC
oMKgwqAgaW50IHJldDsKPj4gwqAgwqDCoMKgwqDCoCAvKiBBbGxvdyAndmlydHVhbCBkZXZpY2Vz
JyAoZWcgZHJtKSB0byBkZXRhY2ggZnJvbSBkb21haW4gKi8KPj4gwqDCoMKgwqDCoCBpb21tdSA9
IHJrX2lvbW11X2Zyb21fZGV2KGRldik7Cj4+IMKgwqDCoMKgwqAgaWYgKCFpb21tdSkKPj4gLcKg
wqDCoMKgwqDCoMKgIHJldHVybjsKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+
PiArCj4+ICvCoMKgwqAgcmtfZG9tYWluID0gdG9fcmtfZG9tYWluKGlvbW11LT5kb21haW4pOwo+
PiDCoCDCoMKgwqDCoMKgIGRldl9kYmcoZGV2LCAiRGV0YWNoaW5nIGZyb20gaW9tbXUgZG9tYWlu
XG4iKTsKPj4gwqAgLcKgwqDCoCAvKiBpb21tdSBhbHJlYWR5IGRldGFjaGVkICovCj4+IC3CoMKg
wqAgaWYgKGlvbW11LT5kb21haW4gIT0gZG9tYWluKQo+PiAtwqDCoMKgwqDCoMKgwqAgcmV0dXJu
Owo+PiArwqDCoMKgIGlmIChpb21tdS0+ZG9tYWluID09IGlkZW50aXR5X2RvbWFpbikKPj4gK8Kg
wqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCAtwqDCoMKgIGlvbW11LT5kb21haW4gPSBOVUxM
Owo+PiArwqDCoMKgIGlvbW11LT5kb21haW4gPSBpZGVudGl0eV9kb21haW47Cj4gCj4gV2hlcmUg
ZGlkIGlkZW50aXR5X2RvbWFpbiBjb21lIGZyb20/IElzIGl0IHJrX2lkZW50aXR5X2RvbWFpbj8K
Ckl0J3MgYSBwYXJhbWV0ZXIgb2YgdGhlIGZ1bmN0aW9uLiBJbiB0aGUgY2FzZSBvZiB0aGUgY2Fs
bCBpbgpya19pb21tdV9hdHRhY2hfZGV2aWNlKCkgdGhlbiwgeWVzLCBpdCdzIHJrX2lkZW50aXR5
X2RvbWFpbi4gQnV0IHRoaXMKZnVuY3Rpb24gaXMgYWxzbyB0aGUgImF0dGFjaF9kZXYiIGNhbGxi
YWNrIG9mICJya19pZGVudGl0eV9vcHMiLgoKSSdsbCBhZG1pdCB0aGlzIGlzIGNhcmdvLWN1bHRl
ZCBmcm9tIEphc29uJ3MgZXhhbXBsZToKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWlv
bW11L1pCbmVmN2c3R0N4b2dQTnpAemllcGUuY2EvCgpTdGV2ZQoKPiBCZXN0IHJlZ2FyZHMsCj4g
YmFvbHUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
