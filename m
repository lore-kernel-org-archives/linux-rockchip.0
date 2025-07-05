Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BD01C8303C
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jul 2025 10:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvJTi1I8fR964Zktv/+19OuZDWca/AyVoQvUnKy5xfQ=; b=q5Anx+K+SrA17Z
	v10pkr1Qlsft0fyL7suucHXvNlfewuvEbFq02kwjAS/JN9od8uR8FWvrBbMEP36ds0x2rAj4H3xoI
	fth22ruxEllBgNmSbNGGc97HAelPWCs6e2kcRRFmuvPOufy+uzXDAqR3LtW+9I14l06bnZFamyeZB
	PQV/tTSH0vHFchlSQzkJTUG3fLGmBBgkF+R4JAyl45v7mUVRT1x3byrcRsdvcsGWuuHZthuATfa4r
	2TVFrZNRzNLKKvvcK5vDANd+3F2nMJT5+jtBMU3CAxcbMiaNWwcHkm5DOJZj8QiZsNVw2/S+PDMEu
	NMnPOAByuV1+aFGgVE2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXznU-0000000GO5T-1Kdy;
	Sat, 05 Jul 2025 10:07:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXzl0-0000000GNf7-3uho;
	Sat, 05 Jul 2025 10:04:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1751709851; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=XuHk2ri8GSG4lBxChP/+R6h/v0JjJM7fresgHKd0dLQn7uzcCA0hY+emJrQhYBCdOSc1ZM+3CQfTZ51403WyvoVQyaVlV8C1KuhVhrRyyQ/q4h6xdYleLuY9wCU4wCYYQKmDFDpn+onBU63L3ZpmEm2vlSZtRNA8gRSK7vxB068=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1751709851; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=RviDwvDQqjYXFY5scaKMdpbhX+ttH9CgIKwYVhmfk4c=; 
	b=GpxsAABxo7BDZ6TD42gmws+/uPa4EuRGWNAbg3Rha+bP6/vul0ntR2oOKCf9Be0LOVfVit1MF1q+uARLbBFIGS8RsjHocvx/pdESm12H9czkFj+qz7IaymK1tkvgqkmSBVqs4fYBu49sGBPo9FF28P+l2nOlkgWBPwD7Ve9VFXw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1751709851;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=RviDwvDQqjYXFY5scaKMdpbhX+ttH9CgIKwYVhmfk4c=;
	b=Z5qpHdf60CuJzdWjIWkZgUznVTXkHbdc/Pd/98TEepfRGmwJBpxsOnPmOJd4VJcM
	gvGlpvMDBtOfKFQsL2IIU4x5AjB+k/uBMIE2mos1U25Y8u2LY+n3gClKyXzFeaUFYfS
	LrwqKZSuON4ppy5BZR7SqslbdI6ChRjO+DRCEjWs=
Received: by mx.zohomail.com with SMTPS id 1751709849751114.53291093115388;
	Sat, 5 Jul 2025 03:04:09 -0700 (PDT)
Message-ID: <62cead85-2d50-45f1-8020-7aea77f6833b@collabora.com>
Date: Sat, 5 Jul 2025 12:04:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] iommu: Add verisilicon IOMMU driver
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250623153931.158765-1-benjamin.gaignard@collabora.com>
 <20250623153931.158765-4-benjamin.gaignard@collabora.com>
 <20250704175425.GM904431@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250704175425.GM904431@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250705_030431_049950_3C514BC3 
X-CRM114-Status: GOOD (  19.52  )
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

CkxlIDA0LzA3LzIwMjUgw6AgMTk6NTQsIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IE1vbiwgSnVuIDIzLCAyMDI1IGF0IDA1OjM5OjI3UE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJk
IHdyb3RlOgo+PiBUaGUgVmVyaXNpbGljb24gSU9NTVUgaGFyZHdhcmUgYmxvY2sgY2FuIGJlIGZv
dW5kIGluIGNvbWJpbmF0aW9uCj4+IHdpdGggVmVyaXNpbGljb24gaGFyZHdhcmUgdmlkZW8gY29k
ZWNzIChlbmNvZGVycyBvciBkZWNvZGVycykgb24KPj4gZGlmZmVyZW50IFNvQ3MuCj4+IEVuYWJs
ZSBpdCB3aWxsIGFsbG93IHVzIHRvIHVzZSBub24gY29udGlndW91cyBtZW1vcnkgYWxsb2NhdG9y
cwo+PiBmb3IgVmVyaXNpbGljb24gdmlkZW8gY29kZWNzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBC
ZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0t
Cj4+IGNoYW5nZSBpbiB2ZXJzaW9uIDQ6Cj4+IC0gS2NvbmZpZyBkZXBlbmRlbmNpZXMKPj4gLSBG
aXggdGhlIHJlbWFya3MgZG9uZSBieSBKYXNvbiBhbmQgUm9iaW46IGxvY2tpbmcsIGNsb2Nrcywg
bWFjcm9zCj4+ICAgIHByb2JpbmcsIHBtX3J1bnRpbWUsIGF0b21pYyBhbGxvY2F0aW9uLgo+IEl0
IGJyb2FkbHkgc2VlbXMgT0sgdG8gbWUKPgo+IFRob3VnaCBJIGRpZCBub3RpY2UgdGhpczoKPgo+
PiArc3RhdGljIHN0cnVjdCBpb21tdV9kb21haW4gKnZzaV9pb21tdV9kb21haW5fYWxsb2NfcGFn
aW5nKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gK3sKPj4gKwlzdHJ1Y3QgdnNpX2lvbW11ICppb21t
dSA9IGRldl9pb21tdV9wcml2X2dldChkZXYpOwo+PiArCXN0cnVjdCB2c2lfaW9tbXVfZG9tYWlu
ICp2c2lfZG9tYWluOwo+PiArCj4+ICsJdnNpX2RvbWFpbiA9IGt6YWxsb2Moc2l6ZW9mKCp2c2lf
ZG9tYWluKSwgR0ZQX0tFUk5FTCk7Cj4+ICsJaWYgKCF2c2lfZG9tYWluKQo+PiArCQlyZXR1cm4g
TlVMTDsKPj4gKwo+PiArCXZzaV9kb21haW4tPmlvbW11ID0gaW9tbXU7Cj4gU28gd2Ugc3RvcmUg
dGhlIGlvbW11IGluIHRoZSBkb21haW4/IEFuZCB1c2UgdGhlIGlvbW11LT5sb2NrIGFsbCBvdmVy
Cj4gdGhlIHBsYWNlCj4KPj4gK3N0YXRpYyBpbnQgdnNpX2lvbW11X2F0dGFjaF9kZXZpY2Uoc3Ry
dWN0IGlvbW11X2RvbWFpbiAqZG9tYWluLAo+PiArCQkJCSAgIHN0cnVjdCBkZXZpY2UgKmRldikK
Pj4gK3sKPj4gKwlzdHJ1Y3QgdnNpX2lvbW11ICppb21tdSA9IGRldl9pb21tdV9wcml2X2dldChk
ZXYpOwo+PiArCXN0cnVjdCB2c2lfaW9tbXVfZG9tYWluICp2c2lfZG9tYWluID0gdG9fdnNpX2Rv
bWFpbihkb21haW4pOwo+PiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+ICsJaW50IHJldCA9IDA7
Cj4+ICsKPj4gKwlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KGlvbW11LT5kZXYpOwo+
PiArCWlmIChyZXQgPCAwKQo+PiArCQlyZXR1cm4gcmV0Owo+PiArCj4+ICsJc3Bpbl9sb2NrX2ly
cXNhdmUoJmlvbW11LT5sb2NrLCBmbGFncyk7Cj4+ICsJLyogaW9tbXUgYWxyZWFkeSBhdHRhY2hl
ZCAqLwo+PiArCWlmIChpb21tdS0+ZG9tYWluID09IGRvbWFpbikKPj4gKwkJZ290byB1bmxvY2s7
Cj4gQnV0IGhlcmUgd2UgZG9uJ3QgY2hlY2sgdGhhdCB0aGUgZG9tYWluIG1hdGNoZXMgdGhlIGlv
bW11IG9mIGRldi4KPgo+IFRoaXMgc2VlbXMgYSBiaXQgd2VpcmQgdG8gbWUsIEkgZGlkbid0IHF1
aXRlIGdldCB3aHkgdGhlIGRvbWFpbiB1c2VzCj4gaW9tbXUtPmxvY2sgaW5zdGVhZCBvZiBqdXN0
IGhhdmluZyBpdHMgb3duIHBlci1kb21haW4gbG9jaz8KPgo+IEJ1dCBpZiBpdCBkb2VzIHVzZSBp
b21tdS0+bG9jayB0aGVuIHRoaXMgZG9lcyBuZWVkIHRvIHByZXZlbnQgdXNpbmcKPiBkb21haW5z
IHdpdGggdGhlIHdyb25nIGlvbW11IGJlY2F1c2UgdGhlIGFsc28gdXNlIHRoZSB3cm9uZyBsb2Nr
IGFuZAo+IHRoZW4gdGhpczoKCkkgd291bGQgbGlrZSB0byBhdm9pZCB0aGF0IGJ1dCBtYXliZSBh
IHN0YXRpYyBzcGlubG9jayBjYW4gc29sdmUgdGhhdCBwcm9ibGVtID8KClJlZ2FyZHMsCkJlbmph
bWluCgo+Cj4+ICsKPj4gKwl2c2lfaW9tbXVfZW5hYmxlKGlvbW11LCBkb21haW4pOwo+PiArCWxp
c3RfYWRkX3RhaWwoJmlvbW11LT5ub2RlLCAmdnNpX2RvbWFpbi0+aW9tbXVzKTsKPiBJcyBub3Qg
c2FmZT8KPgo+IEphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
