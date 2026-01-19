Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D930D29C2D
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 14:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=On55DOA7dfgGwLiJzVd9hikbq7SN6qnXx7skvIMNmH8=; b=NODX9YJapHiZCS
	qNVyuU4dTyY9Iofpeyxxe4lktGuYkSzt9gwCxLMcl5yEoKC+YLDpU6DC3bye9OGEHgOCyfccdnYLn
	+rtuC1ojWHrzDx+sSzUy69DkaujoAFHVGWlS1S40hrkZdxEZLyM1rt794W5NZrCllqHf1v6jvPC7i
	l56B6oj6eU3bM/m7DFikiWjsXejCbfhAsFdwyYZGWooPw7YIN5/ShFuRxvPwsRgPabDcdbkrsvsl9
	Ld8gEoQuosH98mSjufaKX9+bKOCzV3f3ViO920kwjXrXA6V1YV5qIqOQ6IHx/8v5VbKp0r5KjfjCF
	Y0kxNmBcE2iixqfc+yUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhprW-00000002DRQ-0fTC;
	Mon, 19 Jan 2026 14:04:10 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhprS-00000002DQX-3uLx;
	Mon, 19 Jan 2026 14:04:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768831430; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OtWYQut6leSWPEL7MijwgiwtnBCxJ1c6iM9L4KAFpH8/HU16Hirz7V7wVjgQqm8Mi1j0hpX/vEu2QEQJrCpjkSIDzGwpXYEd7yT+P3zcj3P4B3OFFnL5HIwOsp1ltkVHZ3MtLg7cxbCzG1faZ6j+Tom/sX2PfiDmlkrbZKqLiE4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768831430; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=q62aMHmAxbn1lufZfZAjq5qpqwqeRKoV0pt8VHtML4U=; 
	b=VodykyzYLP8iNG4jjO6iCA5x48oeK+d//LgOhvHxgg4A9NadNsC2pxoHcsSPHjaiYSk0bhEn/sSVKHg9UzjTDq7vtBCGGfRwy0wdIsMD0R9oyLAR7uqMr2cM7I6p3aTIlDx9LjGy0MCJFdptYB38QM3uC9W6Yam4m7v1Xpnih9g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768831430;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=q62aMHmAxbn1lufZfZAjq5qpqwqeRKoV0pt8VHtML4U=;
	b=gh5Q6yQsaf2If7qeHRFmZm12lFFILlQp0LA9EDdG/bj2FvfqEKmIr1T2dBRqxkUc
	fXH18IRmY4pSWVLU/FrKZzEH1n6ZxyZ/I9IxCwJ3Y0BkZBKGkxOzKrJm6Y3/BAYabHJ
	O0QfYmGv8Le3T1BuLfigtAEQeLYJP3ByA7YMmyfQ=
Received: by mx.zohomail.com with SMTPS id 1768831429842878.6665974799806;
	Mon, 19 Jan 2026 06:03:49 -0800 (PST)
Message-ID: <b8f43fe8-3e07-4d98-a50d-817c31370710@collabora.com>
Date: Mon, 19 Jan 2026 15:03:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/7] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <20260107101005.84039-1-benjamin.gaignard@collabora.com>
 <20260107101005.84039-4-benjamin.gaignard@collabora.com>
 <aWZui-rn5RDPwpEO@willie-the-truck>
 <68a49f8b-178c-4fa2-b4a9-315ad602271d@collabora.com>
 <aWeTQ50DOtntcniN@willie-the-truck>
 <db0950f1-b357-47c2-9829-e33262ab456d@collabora.com>
 <aW4kb5EbxbrhTOxK@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aW4kb5EbxbrhTOxK@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_060407_045281_CAE2B560 
X-CRM114-Status: GOOD (  26.20  )
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

CkxlIDE5LzAxLzIwMjYgw6AgMTM6MzIsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gV2Vk
LCBKYW4gMTQsIDIwMjYgYXQgMDI6MTA6NDhQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IExlIDE0LzAxLzIwMjYgw6AgMTM6NTksIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4+
PiBPbiBUdWUsIEphbiAxMywgMjAyNiBhdCAwNToyNTozOFBNICswMTAwLCBCZW5qYW1pbiBHYWln
bmFyZCB3cm90ZToKPj4+PiBMZSAxMy8wMS8yMDI2IMOgIDE3OjEwLCBXaWxsIERlYWNvbiBhIMOp
Y3JpdMKgOgo+Pj4+PiBIaSBCZW5qYW1pbiwKPj4+Pj4KPj4+Pj4gVGhhbmtzIGZvciBwb3N0aW5n
IGEgdjExLgo+Pj4+Pgo+Pj4+PiBPbiBXZWQsIEphbiAwNywgMjAyNiBhdCAxMTowOTo1M0FNICsw
MTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4+Pj4+IFRoZSBWZXJpc2lsaWNvbiBJT01N
VSBoYXJkd2FyZSBibG9jayBjYW4gYmUgZm91bmQgaW4gY29tYmluYXRpb24KPj4+Pj4+IHdpdGgg
VmVyaXNpbGljb24gaGFyZHdhcmUgdmlkZW8gY29kZWNzIChlbmNvZGVycyBvciBkZWNvZGVycykg
b24KPj4+Pj4+IGRpZmZlcmVudCBTb0NzLgo+Pj4+Pj4gRW5hYmxlIGl0IHdpbGwgYWxsb3cgdXMg
dG8gdXNlIG5vbiBjb250aWd1b3VzIG1lbW9yeSBhbGxvY2F0b3JzCj4+Pj4+PiBmb3IgVmVyaXNp
bGljb24gdmlkZW8gY29kZWNzLgo+Pj4+Pj4gSWYgYm90aCBkZWNvZGVyIGFuZCB0aGlzIGlvbW11
IGRyaXZlciBhcmUgY29tcGlsZWQgaGFzIG1vZHVsZXMKPj4+Pj4+IHRoZXJlIGlzIHVuZGVmaW5l
ZCBzeW1ib2xlcyBpc3N1ZXMgc28gdGhpcyBpb21tdSBkcml2ZXIgY291bGQKPj4+Pj4+IG9ubHkg
YmUgY29tcGlsZWQgaGFzIGJ1aWx0LWluLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+Pj4+Pj4g
LS0tCj4+Pj4+PiBjaGFuZ2VzIGluIHZlcnNpb24gMTE6Cj4+Pj4+PiAtIEZpeCBkZXBlbmRlbmN5
IGlzc3VlIHdoZW4gZGVjb2RlciBkcml2ZXIgaXMgYnVpbGQgYXMgbW9kdWxlLgo+Pj4+Pj4KPj4+
Pj4+ICAgICBkcml2ZXJzL2lvbW11L0tjb25maWcgICAgIHwgIDExICsKPj4+Pj4+ICAgICBkcml2
ZXJzL2lvbW11L01ha2VmaWxlICAgIHwgICAxICsKPj4+Pj4+ICAgICBkcml2ZXJzL2lvbW11L3Zz
aS1pb21tdS5jIHwgODA4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+
Pj4+PiAgICAgaW5jbHVkZS9saW51eC92c2ktaW9tbXUuaCB8ICAyMSArCj4+Pj4+PiAgICAgNCBm
aWxlcyBjaGFuZ2VkLCA4NDEgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4gICAgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jCj4+Pj4+PiAgICAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGluY2x1ZGUvbGludXgvdnNpLWlvbW11LmgKPj4+Pj4gQmFzZWQgb24geW91ciByZXBseSB0
byB2OToKPj4+Pj4KPj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzBlZmY4YjFhLWM0
NWYtNDdiMS1hODcxLTU5ZjRhMDEwMWYwZkBjb2xsYWJvcmEuY29tLwo+Pj4+Pgo+Pj4+PiBJIHRv
b2sgYW5vdGhlciBsb29rIGF0IHRoaXMgdG8gc2VlIHdoZXRoZXIgaXQgaGFkIGNoYW5nZWQgc2ln
bmlmaWNhbnRseQo+Pj4+PiBmcm9tIHY2IHdoZW4gY29tcGFyZWQgdG8gdGhlIHJvY2tjaGlwIGRy
aXZlci4gU2FkbHksIHRoZXkgc3RpbGwgbG9vawo+Pj4+PiB2ZXJ5IHNpbWlsYXIgdG8gbWUgYW5k
IEkgY29udGludWUgdG8gc3VzcGVjdCB0aGF0IHRoZSBoYXJkd2FyZSBpcyBhCj4+Pj4+IGRlcml2
YXRpdmUuIEkgcmVhbGx5IGRvbid0IHVuZGVyc3RhbmQgd2h5IGhhdmluZyBhIHNoYXJlZCBpbXBs
ZW1lbnRhdGlvbgo+Pj4+PiBvZiB0aGUgZGVmYXVsdCBkb21haW4gb3BzIGlzIGRpZmZpY3VsdCBv
ciBjb250cm92ZXJzaWFsLiBIYXZlIHlvdSB0cmllZAo+Pj4+PiB0byB3cml0ZSBpdD8KPj4+Pj4K
Pj4+Pj4gSG93ZXZlciwgZ2l2ZW4gdGhhdCBub2JvZHkgZnJvbSB0aGUgUm9ja2NoaXAgc2lkZSBo
YXMgY29udHJpYnV0ZWQgdG8gdGhlCj4+Pj4+IGRpc2N1c3Npb24gYW5kIHlvdSBjbGFpbSB0aGF0
IHRoaXMgaXMgYSBkaXN0aW5jdCBwaWVjZSBvZiBJUCwgSSBkb24ndAo+Pj4+PiB3YW50IHRvIGJs
b2NrIHRoZSBtZXJnaW5nIG9mIHRoZSBkcml2ZXIgYnkgbGVhdmluZyB0aGUgY29udmVyc2F0aW9u
Cj4+Pj4+IGhhbmdpbmcuCj4+Pj4+Cj4+Pj4+IFRoZXJlIGlzIHN0aWxsIG9uZSB0aGluZyBJIGRv
bid0IHVuZGVyc3RhbmQgKHdoaWNoLCBhbXVzaW5nbHksIHRoZQo+Pj4+PiByb2NrY2hpcCBkcml2
ZXIgZG9lc24ndCBzZWVtIHRvIHN1ZmZlciBmcm9tKToKPj4+Pj4KPj4+Pj4+ICtzdGF0aWMgdm9p
ZCB2c2lfaW9tbXVfZmx1c2hfdGxiX2FsbChzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4pCj4+
Pj4+PiArewo+Pj4+Pj4gKwlzdHJ1Y3QgdnNpX2lvbW11X2RvbWFpbiAqdnNpX2RvbWFpbiA9IHRv
X3ZzaV9kb21haW4oZG9tYWluKTsKPj4+Pj4+ICsJc3RydWN0IGxpc3RfaGVhZCAqcG9zOwo+Pj4+
Pj4gKwl1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4+Pj4gKwo+Pj4+Pj4gKwlzcGluX2xvY2tfaXJx
c2F2ZSgmdnNpX2RvbWFpbi0+bG9jaywgZmxhZ3MpOwo+Pj4+Pj4gKwo+Pj4+Pj4gKwlsaXN0X2Zv
cl9lYWNoKHBvcywgJnZzaV9kb21haW4tPmlvbW11cykgewo+Pj4+Pj4gKwkJc3RydWN0IHZzaV9p
b21tdSAqaW9tbXU7Cj4+Pj4+PiArCQlpbnQgcmV0Owo+Pj4+Pj4gKwo+Pj4+Pj4gKwkJaW9tbXUg
PSBsaXN0X2VudHJ5KHBvcywgc3RydWN0IHZzaV9pb21tdSwgbm9kZSk7Cj4+Pj4+PiArCQlyZXQg
PSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGlvbW11LT5kZXYpOwo+Pj4+Pj4gKwkJaWYgKHJl
dCA8IDApCj4+Pj4+PiArCQkJY29udGludWU7Cj4+Pj4+PiArCj4+Pj4+PiArCQlzcGluX2xvY2so
JmlvbW11LT5sb2NrKTsKPj4+Pj4+ICsKPj4+Pj4+ICsJCXdyaXRlbChWU0lfTU1VX0JJVF9GTFVT
SCwgaW9tbXUtPnJlZ3MgKyBWU0lfTU1VX0ZMVVNIX0JBU0UpOwo+Pj4+Pj4gKwkJd3JpdGVsKDAs
IGlvbW11LT5yZWdzICsgVlNJX01NVV9GTFVTSF9CQVNFKTsKPj4+Pj4+ICsKPj4+Pj4+ICsJCXNw
aW5fdW5sb2NrKCZpb21tdS0+bG9jayk7Cj4+Pj4+PiArCQlwbV9ydW50aW1lX3B1dF9hdXRvc3Vz
cGVuZChpb21tdS0+ZGV2KTsKPj4+Pj4+ICsJfQo+Pj4+Pj4gKwo+Pj4+Pj4gKwlzcGluX3VubG9j
a19pcnFyZXN0b3JlKCZ2c2lfZG9tYWluLT5sb2NrLCBmbGFncyk7Cj4+Pj4+PiArfQo+Pj4+PiBb
Li4uXQo+Pj4+Pgo+Pj4+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW9tbXVfb3BzIHZzaV9pb21t
dV9vcHMgPSB7Cj4+Pj4+PiArCS5pZGVudGl0eV9kb21haW4gPSAmdnNpX2lkZW50aXR5X2RvbWFp
biwKPj4+Pj4+ICsJLnJlbGVhc2VfZG9tYWluID0gJnZzaV9pZGVudGl0eV9kb21haW4sCj4+Pj4+
PiArCS5kb21haW5fYWxsb2NfcGFnaW5nID0gdnNpX2lvbW11X2RvbWFpbl9hbGxvY19wYWdpbmcs
Cj4+Pj4+PiArCS5vZl94bGF0ZSA9IHZzaV9pb21tdV9vZl94bGF0ZSwKPj4+Pj4+ICsJLnByb2Jl
X2RldmljZSA9IHZzaV9pb21tdV9wcm9iZV9kZXZpY2UsCj4+Pj4+PiArCS5yZWxlYXNlX2Rldmlj
ZSA9IHZzaV9pb21tdV9yZWxlYXNlX2RldmljZSwKPj4+Pj4+ICsJLmRldmljZV9ncm91cCA9IGdl
bmVyaWNfc2luZ2xlX2RldmljZV9ncm91cCwKPj4+Pj4+ICsJLm93bmVyID0gVEhJU19NT0RVTEUs
Cj4+Pj4+PiArCS5kZWZhdWx0X2RvbWFpbl9vcHMgPSAmKGNvbnN0IHN0cnVjdCBpb21tdV9kb21h
aW5fb3BzKSB7Cj4+Pj4+PiArCQkuYXR0YWNoX2RldgkJPSB2c2lfaW9tbXVfYXR0YWNoX2Rldmlj
ZSwKPj4+Pj4+ICsJCS5tYXBfcGFnZXMJCT0gdnNpX2lvbW11X21hcCwKPj4+Pj4+ICsJCS51bm1h
cF9wYWdlcwkJPSB2c2lfaW9tbXVfdW5tYXAsCj4+Pj4+PiArCQkuZmx1c2hfaW90bGJfYWxsCT0g
dnNpX2lvbW11X2ZsdXNoX3RsYl9hbGwsCj4+Pj4+IFRoaXMgaGFzIG5vIGNhbGxlcnMgYW5kIHNv
IHlvdXIgdW5tYXAgcm91dGluZSBhcHBlYXJzIHRvIGJlIGJyb2tlbi4KPj4+PiBJdCBpcyBhIGxl
ZnRvdmVyIG9mIHByZXZpb3VzIGF0dGVtcHQgdG8gYWxsb3cgdmlkZW8gZGVjb2RlciB0byBjbGVh
bi9mbHVzaAo+Pj4+IHRoZSBpb21tdSBieSB1c2luZyBhIGZ1bmN0aW9uIGZyb20gdGhlIEFQSS4K
Pj4+PiBOb3cgaXQgaXMgdXNpbmcgdnNpX2lvbW11X3Jlc3RvcmVfY3R4KCkuCj4+Pj4gSSB3aGls
ZSByZW1vdmUgaXQgaW4gdmVyc2lvbiAxMi4KPj4+IERvbid0IHlvdSBzdGlsbCBuZWVkIHNvbWUg
aW52YWxpZGF0aW9uIG9uIHRoZSB1bm1hcCBwYXRoPwo+PiBJbiB2c2lfaW9tbXVfdW5tYXBfaW92
YSgpIHBhZ2UgaXMgaW52YWxpZGVkIGJ5IGNhbGxpbmcgdnNpX21rX3B0ZV9pbnZhbGlkKCkuCj4g
QnV0IHRoYXQganVzdCB3cml0ZXMgYW4gaW52YWxpZCBkZXNjcmlwdG9yIGFuZCBkb2Vzbid0IGFw
cGVhciB0byBpbnZhbGlkYXRlCj4gdGhlIFRMQiBhdCBhbGwuCj4KPj4gVGhhdCBjbGVhciBCSVQo
MCkgc28gdGhlIGhhcmR3YXJlIGtub3dzIHRoZSBwYWdlIGlzIGludmFsaWQuCj4+IERvIEkgaGF2
ZSBtaXNzIHNvbWV0aGluZyBoZXJlID8KPiBZZXMsIHRoZSBUTEIgc3RydWN0dXJlIG5lZWRzIHRv
IGJlIGludmFsaWRhdGVkIHNvIHRoYXQgdGhlIHBhZ2UtdGFibGUKPiB3YWxrZXIgc2VlcyB0aGUg
bmV3IHZhbHVlIHRoYXQgeW91IGhhdmUgd3JpdHRlbiBpbiBtZW1vcnkuCj4KPiBUaGUgcm9ja2No
aXAgZHJpdmVyIGdldHMgdGhpcyBjb3JyZWN0Li4uCgpSb2NrY2hpcCBoYXJkd2FyZSBoYXZlIGEg
WkFQX09ORV9MSU5FIHJlZ2lzdGVyIHdoaWNoIGRpZG4ndCBleGlzdCBvbiBWZXJpc2lsaWNvbgpo
YXJkd2FyZS4KSSBoYXZlIHRyaWVkIHRvIHVzZSBWU0lfTU1VX0JJVF9GTFVTSCBvbiBWU0kgZHJp
dmVyIGFmdGVyIHVubWFwcGluZyBpb3ZhCmJ1dCBpdCBkb2Vzbid0IHdvcmsuClNvIGZhciBjYWxs
aW5nIGRtYV9zeW5jX3NpbmdsZV9mb3JfZGV2aWNlKCkgc2VlbXMgdG8gYmUgZW5vdWdoIHRvIG1h
a2UgaW9tbXUKYW5kIHZpZGVvIGRlY29kZXIgd29yayB0b2dldGhlci4KClJlZ2FyZHMsCkJlbmph
bWluCgo+IFdpbGwKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
