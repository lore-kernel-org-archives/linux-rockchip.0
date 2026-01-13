Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD30D2F340
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 16:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OVudKTesx/fBqImfpCH0GNnq+HlqjLq0Yc1fxVNhn/Y=; b=o7XQ0FpWgXKFG4
	VnedT6uE8SbAjeUgmOg4OmfK4J2jKnwL+u8Z3l8NndzBos0Qk8N7spVdphwYr7pDSn7SLCnn6i9A5
	Qad8EdcKX4ow0IuSnXOtT0LxSJwgCtTubaUMzCQDb4rxi8jbAli49egJC6pb0nHMkvRW+i8Yd6vru
	i9vQuwg3p7DZNE6Yj8UFoz3+SgRGdMcsxdblD+f6XEeiKzbzsaM22qmlPjOvuYyRsLCShtbue+GJ9
	R2U4ez+QN4vHk2Ch6+PjOJ7KH+4BBL75j4g42y+Eg0q19aI2vfJekVytoSe/zDq0TaDNHWblI6FyY
	d1xbUjv5Y2U1BfZmpCmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfhDX-00000007T4f-38rn;
	Tue, 13 Jan 2026 16:26:03 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfhDU-00000007T2x-1scU;
	Tue, 13 Jan 2026 16:26:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768321546; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=DLH1LzOnCusazCYXX75NuMLJP83JxGsgedB7KGa2sOKG+ZQh30Ix6X7QNmnVES7B4DAWPiylYujhrPJE9ePCwSkntdEA5nL1CVKVfteb1RaoOj1wF2i9iVWdBt5d3+qpkgc3kik760CsUjrhjGNU/rcCApQeFD8K33jsNJx3dpY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768321546; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=8MTiHfloStfO84sC7uhvGAOAjhnPQBxw01aUbUwJ3uE=; 
	b=SIsa1Y1QhTpfxhlrqSjL11vkUWAxF4a14NFrBtl6MFGqPyH+MBBvJ1Pq0koF5F3ZfIv9DRZV/OGVvAP6TphHRk/eY/Nxj3li1dCQKtyGDIZPNXrrMsAcaK8AFQByg4q3VTz2Nn+c++AEG3M962pc0JuQ7h+kt4LacuI63sX/hVU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768321546;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=8MTiHfloStfO84sC7uhvGAOAjhnPQBxw01aUbUwJ3uE=;
	b=bFsn/J3vxgypV86zjeTIuOFJba9OL7HTRMgwvfjDsAWBPlJqF5E9KD/xVc6mLg/A
	z699RwO9we9zu32cwiVCaTr0RyW756EanyoVO6BITFHOkh7cbSZHv6VO63qwc4PN1T8
	v4A4I79/8OHgO7pEwg7pT5zNNzTrbj1vp17KxPV4=
Received: by mx.zohomail.com with SMTPS id 1768321544021680.0980354267477;
	Tue, 13 Jan 2026 08:25:44 -0800 (PST)
Message-ID: <68a49f8b-178c-4fa2-b4a9-315ad602271d@collabora.com>
Date: Tue, 13 Jan 2026 17:25:38 +0100
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
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aWZui-rn5RDPwpEO@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_082600_536142_27D81A2B 
X-CRM114-Status: GOOD (  28.22  )
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

CkxlIDEzLzAxLzIwMjYgw6AgMTc6MTAsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gSGkgQmVu
amFtaW4sCj4KPiBUaGFua3MgZm9yIHBvc3RpbmcgYSB2MTEuCj4KPiBPbiBXZWQsIEphbiAwNywg
MjAyNiBhdCAxMTowOTo1M0FNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4gVGhl
IFZlcmlzaWxpY29uIElPTU1VIGhhcmR3YXJlIGJsb2NrIGNhbiBiZSBmb3VuZCBpbiBjb21iaW5h
dGlvbgo+PiB3aXRoIFZlcmlzaWxpY29uIGhhcmR3YXJlIHZpZGVvIGNvZGVjcyAoZW5jb2RlcnMg
b3IgZGVjb2RlcnMpIG9uCj4+IGRpZmZlcmVudCBTb0NzLgo+PiBFbmFibGUgaXQgd2lsbCBhbGxv
dyB1cyB0byB1c2Ugbm9uIGNvbnRpZ3VvdXMgbWVtb3J5IGFsbG9jYXRvcnMKPj4gZm9yIFZlcmlz
aWxpY29uIHZpZGVvIGNvZGVjcy4KPj4gSWYgYm90aCBkZWNvZGVyIGFuZCB0aGlzIGlvbW11IGRy
aXZlciBhcmUgY29tcGlsZWQgaGFzIG1vZHVsZXMKPj4gdGhlcmUgaXMgdW5kZWZpbmVkIHN5bWJv
bGVzIGlzc3VlcyBzbyB0aGlzIGlvbW11IGRyaXZlciBjb3VsZAo+PiBvbmx5IGJlIGNvbXBpbGVk
IGhhcyBidWlsdC1pbi4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiBjaGFuZ2VzIGluIHZlcnNp
b24gMTE6Cj4+IC0gRml4IGRlcGVuZGVuY3kgaXNzdWUgd2hlbiBkZWNvZGVyIGRyaXZlciBpcyBi
dWlsZCBhcyBtb2R1bGUuCj4+Cj4+ICAgZHJpdmVycy9pb21tdS9LY29uZmlnICAgICB8ICAxMSAr
Cj4+ICAgZHJpdmVycy9pb21tdS9NYWtlZmlsZSAgICB8ICAgMSArCj4+ICAgZHJpdmVycy9pb21t
dS92c2ktaW9tbXUuYyB8IDgwOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+PiAgIGluY2x1ZGUvbGludXgvdnNpLWlvbW11LmggfCAgMjEgKwo+PiAgIDQgZmlsZXMgY2hh
bmdlZCwgODQxIGluc2VydGlvbnMoKykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9p
b21tdS92c2ktaW9tbXUuYwo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3Zz
aS1pb21tdS5oCj4gQmFzZWQgb24geW91ciByZXBseSB0byB2OToKPgo+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8wZWZmOGIxYS1jNDVmLTQ3YjEtYTg3MS01OWY0YTAxMDFmMGZAY29sbGFi
b3JhLmNvbS8KPgo+IEkgdG9vayBhbm90aGVyIGxvb2sgYXQgdGhpcyB0byBzZWUgd2hldGhlciBp
dCBoYWQgY2hhbmdlZCBzaWduaWZpY2FudGx5Cj4gZnJvbSB2NiB3aGVuIGNvbXBhcmVkIHRvIHRo
ZSByb2NrY2hpcCBkcml2ZXIuIFNhZGx5LCB0aGV5IHN0aWxsIGxvb2sKPiB2ZXJ5IHNpbWlsYXIg
dG8gbWUgYW5kIEkgY29udGludWUgdG8gc3VzcGVjdCB0aGF0IHRoZSBoYXJkd2FyZSBpcyBhCj4g
ZGVyaXZhdGl2ZS4gSSByZWFsbHkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgaGF2aW5nIGEgc2hhcmVk
IGltcGxlbWVudGF0aW9uCj4gb2YgdGhlIGRlZmF1bHQgZG9tYWluIG9wcyBpcyBkaWZmaWN1bHQg
b3IgY29udHJvdmVyc2lhbC4gSGF2ZSB5b3UgdHJpZWQKPiB0byB3cml0ZSBpdD8KPgo+IEhvd2V2
ZXIsIGdpdmVuIHRoYXQgbm9ib2R5IGZyb20gdGhlIFJvY2tjaGlwIHNpZGUgaGFzIGNvbnRyaWJ1
dGVkIHRvIHRoZQo+IGRpc2N1c3Npb24gYW5kIHlvdSBjbGFpbSB0aGF0IHRoaXMgaXMgYSBkaXN0
aW5jdCBwaWVjZSBvZiBJUCwgSSBkb24ndAo+IHdhbnQgdG8gYmxvY2sgdGhlIG1lcmdpbmcgb2Yg
dGhlIGRyaXZlciBieSBsZWF2aW5nIHRoZSBjb252ZXJzYXRpb24KPiBoYW5naW5nLgo+Cj4gVGhl
cmUgaXMgc3RpbGwgb25lIHRoaW5nIEkgZG9uJ3QgdW5kZXJzdGFuZCAod2hpY2gsIGFtdXNpbmds
eSwgdGhlCj4gcm9ja2NoaXAgZHJpdmVyIGRvZXNuJ3Qgc2VlbSB0byBzdWZmZXIgZnJvbSk6Cj4K
Pj4gK3N0YXRpYyB2b2lkIHZzaV9pb21tdV9mbHVzaF90bGJfYWxsKHN0cnVjdCBpb21tdV9kb21h
aW4gKmRvbWFpbikKPj4gK3sKPj4gKwlzdHJ1Y3QgdnNpX2lvbW11X2RvbWFpbiAqdnNpX2RvbWFp
biA9IHRvX3ZzaV9kb21haW4oZG9tYWluKTsKPj4gKwlzdHJ1Y3QgbGlzdF9oZWFkICpwb3M7Cj4+
ICsJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4gKwo+PiArCXNwaW5fbG9ja19pcnFzYXZlKCZ2c2lf
ZG9tYWluLT5sb2NrLCBmbGFncyk7Cj4+ICsKPj4gKwlsaXN0X2Zvcl9lYWNoKHBvcywgJnZzaV9k
b21haW4tPmlvbW11cykgewo+PiArCQlzdHJ1Y3QgdnNpX2lvbW11ICppb21tdTsKPj4gKwkJaW50
IHJldDsKPj4gKwo+PiArCQlpb21tdSA9IGxpc3RfZW50cnkocG9zLCBzdHJ1Y3QgdnNpX2lvbW11
LCBub2RlKTsKPj4gKwkJcmV0ID0gcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldChpb21tdS0+ZGV2
KTsKPj4gKwkJaWYgKHJldCA8IDApCj4+ICsJCQljb250aW51ZTsKPj4gKwo+PiArCQlzcGluX2xv
Y2soJmlvbW11LT5sb2NrKTsKPj4gKwo+PiArCQl3cml0ZWwoVlNJX01NVV9CSVRfRkxVU0gsIGlv
bW11LT5yZWdzICsgVlNJX01NVV9GTFVTSF9CQVNFKTsKPj4gKwkJd3JpdGVsKDAsIGlvbW11LT5y
ZWdzICsgVlNJX01NVV9GTFVTSF9CQVNFKTsKPj4gKwo+PiArCQlzcGluX3VubG9jaygmaW9tbXUt
PmxvY2spOwo+PiArCQlwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZChpb21tdS0+ZGV2KTsKPj4g
Kwl9Cj4+ICsKPj4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZ2c2lfZG9tYWluLT5sb2NrLCBm
bGFncyk7Cj4+ICt9Cj4gWy4uLl0KPgo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpb21tdV9vcHMg
dnNpX2lvbW11X29wcyA9IHsKPj4gKwkuaWRlbnRpdHlfZG9tYWluID0gJnZzaV9pZGVudGl0eV9k
b21haW4sCj4+ICsJLnJlbGVhc2VfZG9tYWluID0gJnZzaV9pZGVudGl0eV9kb21haW4sCj4+ICsJ
LmRvbWFpbl9hbGxvY19wYWdpbmcgPSB2c2lfaW9tbXVfZG9tYWluX2FsbG9jX3BhZ2luZywKPj4g
Kwkub2ZfeGxhdGUgPSB2c2lfaW9tbXVfb2ZfeGxhdGUsCj4+ICsJLnByb2JlX2RldmljZSA9IHZz
aV9pb21tdV9wcm9iZV9kZXZpY2UsCj4+ICsJLnJlbGVhc2VfZGV2aWNlID0gdnNpX2lvbW11X3Jl
bGVhc2VfZGV2aWNlLAo+PiArCS5kZXZpY2VfZ3JvdXAgPSBnZW5lcmljX3NpbmdsZV9kZXZpY2Vf
Z3JvdXAsCj4+ICsJLm93bmVyID0gVEhJU19NT0RVTEUsCj4+ICsJLmRlZmF1bHRfZG9tYWluX29w
cyA9ICYoY29uc3Qgc3RydWN0IGlvbW11X2RvbWFpbl9vcHMpIHsKPj4gKwkJLmF0dGFjaF9kZXYJ
CT0gdnNpX2lvbW11X2F0dGFjaF9kZXZpY2UsCj4+ICsJCS5tYXBfcGFnZXMJCT0gdnNpX2lvbW11
X21hcCwKPj4gKwkJLnVubWFwX3BhZ2VzCQk9IHZzaV9pb21tdV91bm1hcCwKPj4gKwkJLmZsdXNo
X2lvdGxiX2FsbAk9IHZzaV9pb21tdV9mbHVzaF90bGJfYWxsLAo+IFRoaXMgaGFzIG5vIGNhbGxl
cnMgYW5kIHNvIHlvdXIgdW5tYXAgcm91dGluZSBhcHBlYXJzIHRvIGJlIGJyb2tlbi4KCkl0IGlz
IGEgbGVmdG92ZXIgb2YgcHJldmlvdXMgYXR0ZW1wdCB0byBhbGxvdyB2aWRlbyBkZWNvZGVyIHRv
IGNsZWFuL2ZsdXNoCnRoZSBpb21tdSBieSB1c2luZyBhIGZ1bmN0aW9uIGZyb20gdGhlIEFQSS4K
Tm93IGl0IGlzIHVzaW5nIHZzaV9pb21tdV9yZXN0b3JlX2N0eCgpLgpJIHdoaWxlIHJlbW92ZSBp
dCBpbiB2ZXJzaW9uIDEyLgoKVGhhbmtzIGZvciB5b3VyIHJldmlldy4KQmVuamFtaW4KCj4KPiBX
aWxsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
