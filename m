Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38FD0C83F17
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 12:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YZ1egNRy3slDaZDK86tGQkh6rPxI8w+R1e9N706U48=; b=I5yFgGMz4tTfRs
	Ue5HVq1Vansa3VJOKnVfrzQea559mWNiOxMyyQutHPrFSC6ZFBsQI6luiXjumXW1+07PDJSmZPhjH
	YAGnK3yjyDapgJsmttNIXkG4w3VZkhwYV0Z0Ka14SHFCmw9iIt9TqQsQ7GuF8dJ5G55Pft1YCTOs3
	6rEw+ocHM2AVbwaZHoozWzOTGUvxj1fkZjFSVCPlvja05gJYkNMOb7/RUZ+BVOOSplw6C59IHbx8H
	xFrnZannPetmZIPb0eQnAvmTmHtl2JQa7Kaf4pMTRSzOTa5pS8IG9qRbGPz8xrbcvbZxz2y2+OYxv
	oRBU80qqhfejK+0bQERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uckgI-0000000CddH-2JQD;
	Fri, 18 Jul 2025 12:59:18 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uckdo-0000000CdEP-3wS7;
	Fri, 18 Jul 2025 12:56:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5049B15A1;
	Fri, 18 Jul 2025 05:56:34 -0700 (PDT)
Received: from [10.57.1.4] (unknown [10.57.1.4])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B98733F6A8;
	Fri, 18 Jul 2025 05:56:38 -0700 (PDT)
Message-ID: <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
Date: Fri, 18 Jul 2025 13:56:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, nicolas.dufresne@collabora.com,
 jgg@ziepe.ca, iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
 <aHozv0NG1OBlAH6c@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <aHozv0NG1OBlAH6c@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_055645_059058_B964C9B0 
X-CRM114-Status: GOOD (  18.02  )
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

T24gMjAyNS0wNy0xOCAxMjo0NSBwbSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4gT24gTW9uLCBKdWwg
MTQsIDIwMjUgYXQgMDQ6NTY6NTNQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+
IExlIDE0LzA3LzIwMjUgw6AgMTQ6MDgsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4+PiBPbiBU
aHUsIEp1bCAxMCwgMjAyNSBhdCAxMDoyNDo0NEFNICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4+PiArLyogdnNpIGlvbW11IHJlZ3MgYWRkcmVzcyAqLwo+Pj4+ICsjZGVmaW5lIFZT
SV9NTVVfQ09ORklHMV9CQVNFCQkJMHgxYWMKPj4+PiArI2RlZmluZSBWU0lfTU1VX0FIQl9FWENF
UFRJT05fQkFTRQkJMHgzODAKPj4+PiArI2RlZmluZSBWU0lfTU1VX0FIQl9DT05UUk9MX0JBU0UJ
CTB4Mzg4Cj4+Pj4gKyNkZWZpbmUgVlNJX01NVV9BSEJfVExCX0FSUkFZX0JBU0VfTF9CQVNFCTB4
MzhDCj4+Pj4gKwo+Pj4+ICsvKiBNTVUgcmVnaXN0ZXIgb2Zmc2V0cyAqLwo+Pj4+ICsjZGVmaW5l
IFZTSV9NTVVfRkxVU0hfQkFTRQkJMHgxODQKPj4+PiArI2RlZmluZSBWU0lfTU1VX0JJVF9GTFVT
SAkJQklUKDQpCj4+Pj4gKwo+Pj4+ICsjZGVmaW5lIFZTSV9NTVVfUEFHRV9GQVVMVF9BRERSCQkw
eDM4MAo+Pj4+ICsjZGVmaW5lIFZTSV9NTVVfU1RBVFVTX0JBU0UJCTB4Mzg0CS8qIElSUSBzdGF0
dXMgKi8KPj4+PiArCj4+Pj4gKyNkZWZpbmUgVlNJX01NVV9CSVRfRU5BQkxFCQlCSVQoMCkKPj4+
PiArCj4+Pj4gKyNkZWZpbmUgVlNJX01NVV9PVVRfT0ZfQk9VTkQJCUJJVCgyOCkKPj4+PiArLyog
SXJxIG1hc2sgKi8KPj4+PiArI2RlZmluZSBWU0lfTU1VX0lSUV9NQVNLCQkweDcKPj4+PiArCj4+
Pj4gKyNkZWZpbmUgVlNJX0RURV9QVF9BRERSRVNTX01BU0sJCTB4ZmZmZmZmYzAKPj4+PiArI2Rl
ZmluZSBWU0lfRFRFX1BUX1ZBTElECQlCSVQoMCkKPj4+PiArCj4+Pj4gKyNkZWZpbmUgVlNJX1BB
R0VfREVTQ19MT19NQVNLCQkweGZmZmZmMDAwCj4+Pj4gKyNkZWZpbmUgVlNJX1BBR0VfREVTQ19I
SV9NQVNLCQlHRU5NQVNLX1VMTCgzOSwgMzIpCj4+Pj4gKyNkZWZpbmUgVlNJX1BBR0VfREVTQ19I
SV9TSElGVAkJKDMyIC0gNCkKPj4+IEhvdyBkb2VzIHRoaXMgcGFnZS10YWJsZSBmb3JtYXQgcmVs
YXRlIHRvIHRoZSBvbmUgc3VwcG9ydGVkIGFscmVhZHkgYnkKPj4+IHJvY2tjaGlwLWlvbW11LmM/
IEZyb20gYSBxdWljayBnbGFuY2UsIEkgc3VzcGVjdCB0aGlzIGlzIGEgZGVyaXZhdGl2ZQo+Pj4g
YW5kIHNvIGlkZWFsbHkgd2UnZCBiZSBhYmxlIHRvIGhhdmUgYSBjb21tb24gaW1wbGVtZW50YXRp
b24gb2YgdGhlCj4+PiBwYWdlLXRhYmxlIGNvZGUgd2hpY2ggY2FuIGJlIHVzZWQgYnkgYm90aCBv
ZiB0aGUgZHJpdmVycy4KPj4+Cj4+PiBTaW1pbGFybHk6Cj4+Cj4+IE5vIHRoZXkgY29tZXMgZnJv
bSBkaWZmZXJlbnQgSVAgcHJvdmlkZXJzLCB0aGlzIG9uZSBpcyBmcm9tIFZlcmlzaWxpY29uLgo+
PiBJIGFncmVlIHRoZXkgbG9va3MgdmVyeSBzaW1pbGFyIGFuZCBteSBmaXJzdCBhdHRlbXB0IHdh
cyB0byBhZGQgaXQgaW50bwo+PiByb2NrY2hpcC1pb21tdSBjb2RlIGJ1dCB3aGVuIGRvaW5nIGl0
IEkgcmVhbGl6ZSB0aGF0IHJlZ2lzdGVycyBhZGRyZXNzZXMKPj4gd2hlcmUgYWxsIGRpZmZlcmVu
dCBzbyBJIGhhZCB0byBjb2RlIGFsbCB0aGUgZnVuY3Rpb25zIHR3aWNlLgo+IAo+IFVuZGVyc3Rv
b2QsIGFuZCBJJ20gbm90IHN1Z2dlc3RpbmcgdG8gbWVyZ2UgdGhlIGRyaXZlcnMgb3IgdHJ5IHRv
Cj4gY29uc29saWRhdGUgdGhlIHJlZ2lzdGVyIGxheW91dHMuIFdoYXQgSSBfYW1fIHNheWluZyBp
cyB0aGF0IHRoZQo+IGluLW1lbW9yeSBwYWdlLXRhYmxlIGZvcm1hdCBzaG91bGQgYmUgZmFjdG9y
ZWQgb3V0IGluIGEgd2F5IHRoYXQgY2FuCj4gYmUgcmV1c2VkIGJ5IHRoZSB0d28gZHJpdmVycyBh
bmQgYWxzbyB0aGF0IHNvbWUgb2YgdGhlIGxvZ2ljIChhcyBoaWdobGlnaHRlZAo+IGJ5IHZzaV9p
b21tdV9kb21haW5fZnJlZSgpKSBpcyBwcmFjdGljYWxseSBpZGVudGljYWwgYmV0d2VlbiB0aGUg
ZHJpdmVycwo+IGFuZCBzaG91bGQgYWxzbyBiZSBzaGFyZWQuCgpBbGwgdGhleSByZWFsbHkgaGF2
ZSBpbiBjb21tb24gaXMgdGhhdCB0aGV5J3JlIDItbGV2ZWwgZm9ybWF0cyB3aXRoIAozMi1iaXQg
UFRFcyBhbmQgMTAgYml0cyBwZXIgbGV2ZWwgKGFzIGlzIHRlZ3JhLXNtbXUgdG9vKS4gVGhlIHBl
cm1pc3Npb24gCmVuY29kaW5ncyBoYXZlIHNvbWUgb3ZlcmxhcCBidXQgYXJlIG5vdCBmdWxseSBl
cXVpdmFsZW50LiBDcnVjaWFsbHksIHRoZSAKc2NoZW1lcyBmb3IgcGFja2luZyA+MzItYml0IFBB
cyBpbnRvIFBURXMgYXJlIGluY29tcGF0aWJseSBkaWZmZXJlbnQsIHNvIAppZiB5b3UncmUgcmVh
bGx5IGtlZW4gdG8gZ2VuZXJpY2lzZSB0aGluZ3MgdG8gKnRoYXQqIGV4dGVudCwgdGhhdCdzIHdo
YXQgCkphc29uJ3MgYWxyZWFkeSB3b3JraW5nIG9uLgoKQXMgZm9yIGRvbWFpbl9mcmVlLCB5b3Ug
Y291bGQgYXJndWUgdGhhdCBpdCBhbHNvIGxvb2tzIGJhc2ljYWxseSB0aGUgCnNhbWUgYXMgZXh5
bm9zX2lvbW11X2RvbWFpbl9mcmVlKCksIGJlY2F1c2UgYXQgdGhlIGVuZCBvZiB0aGUgZGF5LCAK
dGhlcmUncyBvbmx5IHNvIG1hbnkgd2F5cyB0byBmcmVlIGEgMi1sZXZlbCBwYWdldGFibGUsIGFu
ZCBpdCdzIGF0IGxlYXN0IApiZXR0ZXIgdGhhbiB3aGF0LCBzYXksIHN1bjUwaSwgb21hcCBvciB0
ZWdyYSBhcmUgZG9pbmcgKG9yIHJhdGhlciwgbm90IApkb2luZy4uLikKCkNoZWVycywKUm9iaW4u
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
