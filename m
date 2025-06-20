Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EBA3C7115D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 10:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSnnwUPF3GDNhjHoFkWO9ic62X9m6obfKz2scpo+5QE=; b=nKkyJA8ROX0LIS
	qSnJmH1uPs6BZ1VX1glOPyEeQ6aZH/D2vvxIApNCcSZbymgY6s7Z7SpwB05nFfkFjI8WVNJsJY1t9
	ulEhxFAfCtEntk4a/jaqQgjO2madNqeb31x2acrmb6O9o5oEGKc40mPXpkh23d6YBQuAjexNXGHO0
	805bfdsuy/IXAqjQLM81DqqbkHjYJ+Xku2jkG+xG+MoKZkOPgq7fYbc+ko59iYnDxeVxLdB3SVaf9
	ZsccpBFLtsg9cFPBf72pr6Hc0X/QjzzpVHq10QxlCORmTHJRMkuqcnKVk6qZaGkd8zdqH0q4UTFzL
	z4MDUTV0E05welnG3DGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYmf-0000000FJPe-1Ss3;
	Fri, 20 Jun 2025 10:15:45 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSXZg-0000000F8WR-2q6Y;
	Fri, 20 Jun 2025 08:58:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750409876; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Mq3qTKsL5r1KYcnnjvTDAVHYvEnt0aED5H4duJSo8Gy3Y4nAktucNzBe6vU584JxxysFh6zFY+1XBQzt8Wxfuj+0Hf9MlqPJ46hnJKtxB+O7iAk5ZbbuCwyIf4ZyKe3tJ7++JEAO/O6TAK1u9fXinPeYZPL8l25i4m9zkaZEJds=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750409876; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tzBawclOe43ERcZy7J4jDWUUu+0y9y9V1OwtTyJQ2WE=; 
	b=D/fZcV0UdEQw+4qwX4OqmMXSs0MvYyzyvYX5wxA4GQ3P4vWtjPs/S8479qdqXGVzGGHWeJA1AFeimwwgoJCP0VEX27zqV5szIQYGNZLe00Uo+LNJ2nNUeN8Pkjm2uKHMDh0eR0NNGjWvjV9Cb+V/YJANaFNiQS7sM4X9LAidunc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750409876;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=tzBawclOe43ERcZy7J4jDWUUu+0y9y9V1OwtTyJQ2WE=;
	b=bwu7KTuZfvrC6M7JAww+/apj+S39B/ZUCQlkizCi0hoEqEvcD8DWsicieWYggztI
	L0Z+CZATiGgkNIGp9rJCu9TLMH9CVWL+zFBlj2KqZGvg1h4NLCsim1UcT4BCWj/Bvu5
	7d3ebBG98Fdlk5gIDwlxGSW9js6BXjudO5fcdcqk=
Received: by mx.zohomail.com with SMTPS id 1750409873940494.49871510642583;
	Fri, 20 Jun 2025 01:57:53 -0700 (PDT)
Message-ID: <e034a111-93eb-42e8-a533-46553b4f5588@collabora.com>
Date: Fri, 20 Jun 2025 10:57:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] iommu: Add verisilicon IOMMU driver
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-4-benjamin.gaignard@collabora.com>
 <20250619134752.GB1643390@ziepe.ca>
 <073ffe14-d631-4a4f-8668-ddeb7d611448@collabora.com>
 <20250619165928.GA10257@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250619165928.GA10257@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_015816_787695_D2BD7831 
X-CRM114-Status: GOOD (  27.87  )
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

CkxlIDE5LzA2LzIwMjUgw6AgMTg6NTksIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IFRodSwgSnVuIDE5LCAyMDI1IGF0IDA2OjI3OjUyUE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJk
IHdyb3RlOgo+PiBMZSAxOS8wNi8yMDI1IMOgIDE1OjQ3LCBKYXNvbiBHdW50aG9ycGUgYSDDqWNy
aXTCoDoKPj4+IFVnaC4gVGhpcyBpZ25vcmVzIHRoZSBnZnAgZmxhZ3MgdGhhdCBhcmUgcGFzc2Vk
IGludG8gbWFwIGJlY2F1c2UgeW91Cj4+PiBoYXZlIHRvIGZvcmNlIGF0b21pYyBkdWUgdG8gdGhl
IHNwaW5sb2NrIHRoYXQgc2hvdWxkbid0IGJlIHRoZXJlIDooCj4+PiBUaGlzIG1lYW5zIGl0IGRv
ZXMgbm90IHNldCBHRlBfS0VSTkVMX0FDQ09VTlQgd2hlbiByZXF1aXJlZC4gSXQgd291bGQKPj4+
IGJlIGJldHRlciB0byBjb250aW51ZSB0byB1c2UgdGhlIHBhc3NlZCBpbiBHRlAgZmxhZ3MgYnV0
IG92ZXJyaWRlIHRoZW0KPj4+IHRvIGF0b21pYyBtb2RlLgo+PiBJIHdpbGwgYWRkIGEgZ2ZwX3Qg
cGFyYW1ldGVyIGFuZCB1c2UgaXQgbGlrZSB0aGF0Ogo+PiBwYWdlX3RhYmxlID0gaW9tbXVfYWxs
b2NfcGFnZXNfc3ooZ2ZwIHwgR0ZQX0FUT01JQyB8IEdGUF9ETUEzMiwgU1BBR0VfU0laRSk7Cj4g
VGhpcyB3aWxsIG9yIHRvZ2V0aGVyIEdGUF9BVE9NSUMgYW5kIEdGUF9LRVJORUwsIEkgZG9uJ3Qg
dGhpbmsgdGhhdAo+IHdvcmtzLi4KCkkgaGF2ZSB0ZXN0IGl0LCBJIGRvbid0IHNlZSBjb25mbGlj
dHMgb3IgZXJyb3JzLiBXaGF0IHdvcnJpZXMgeW91ID8KCj4KPj4+PiArc3RhdGljIGludCB2c2lf
aW9tbXVfYXR0YWNoX2RldmljZShzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sCj4+Pj4gKwkJ
CQkgICBzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+Pj4gK3sKPj4+PiArCXN0cnVjdCB2c2lfaW9tbXUg
KmlvbW11ID0gZGV2X2lvbW11X3ByaXZfZ2V0KGRldik7Cj4+Pj4gKwlzdHJ1Y3QgdnNpX2lvbW11
X2RvbWFpbiAqdnNpX2RvbWFpbiA9IHRvX3ZzaV9kb21haW4oZG9tYWluKTsKPj4+PiArCXVuc2ln
bmVkIGxvbmcgZmxhZ3M7Cj4+Pj4gKwlpbnQgcmV0Owo+Pj4+ICsKPj4+PiArCWlmIChXQVJOX09O
KCFpb21tdSkpCj4+Pj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4+Pj4gKwo+Pj4+ICsJLyogaW9tbXUg
YWxyZWFkeSBhdHRhY2hlZCAqLwo+Pj4+ICsJaWYgKGlvbW11LT5kb21haW4gPT0gZG9tYWluKQo+
Pj4+ICsJCXJldHVybiAwOwo+Pj4+ICsKPj4+PiArCXJldCA9IHZzaV9pb21tdV9pZGVudGl0eV9h
dHRhY2goJnZzaV9pZGVudGl0eV9kb21haW4sIGRldik7Cj4+Pj4gKwlpZiAocmV0KQo+Pj4+ICsJ
CXJldHVybiByZXQ7Cj4+PiBIdXJtLCB0aGlzIGlzIGFjdHVhbGx5IHF1aXRlIGJhZCwgbm93IHRo
YXQgaXQgaXMgY2xlYXIgdGhlIEhXIGlzIGluIGFuCj4+PiBpZGVudGl0eSBtb2RlIGl0IGlzIGFj
dHVhbGx5IGEgc2VjdXJpdHkgcHJvYmxlbSBmb3IgVkZJTyB0byBzd2l0Y2ggdGhlCj4+PiB0cmFu
c2xhdGlvbiB0byBpZGVudGl0eSBkdXJpbmcgYXR0YWNoX2RldmljZS4gSSdkIHJlYWxseSBwcmVm
ZXIgbmV3Cj4+PiBkcml2ZXJzIGRvbid0IG1ha2UgdGhpcyBtaXN0YWtlLgo+Pj4KPj4+IEl0IHNl
ZW1zIHRoZSBtYWluIHRoaW5nIG1vdGl2YXRpbmcgdGhpcyBpcyB0aGUgZmFjdCBhIGxpbmtlZCBs
aXN0IGhhcwo+Pj4gb25seSBhIHNpbmdsZSBpb21tdS0+bm9kZSBzbyB5b3UgY2FuJ3QgYXR0YWNo
IHRoZSBpb21tdSB0byBib3RoIHRoZQo+Pj4gbmV3L29sZCBkb21haW4gYW5kIGF0b21pY2FsbHkg
dXBkYXRlIHRoZSBwYWdlIHRhYmxlIGJhc2UuCj4+Pgo+Pj4gSXMgaXQgcG9zc2libGUgZm9yIHRo
ZSBIVyB0byBkbyBhIGJsb2NraW5nIGJlaGF2aW9yPyBUaGF0IHdvdWxkIGJlIGFuCj4+PiBlYXN5
IGZpeC4uIFlvdSBzaG91bGQgYWx3YXlzIGJlIGFibGUgdG8gZm9yY2UgdGhpcyBieSBhbGxvY2F0
aW5nIGEKPj4+IHNoYXJlZCB0b3AgcGFnZSB0YWJsZSBsZXZlbCBkdXJpbmcgcHJvYmUgdGltZSBh
bmQgbWFraW5nIGl0IGVudGlyZWx5Cj4+PiBlbXB0eSB3aGlsZSBzdGF5aW5nIGFsd2F5cyBpbiB0
aGUgcGFnaW5nIG1vZGUuIE1heWJlIHRoZXJlIGlzIGEgbGVzcwo+Pj4gZXhwZW5zaXZlIHdheS4K
Pj4+Cj4+PiBPdGhlcndpc2UgeW91IHByb2JhYmx5IGhhdmUgd29yayBtb3JlIGxpa2UgdGhlIG90
aGVyIGRyaXZlcnMgYW5kCj4+PiBhbGxvY2F0ZSBhIHN0cnVjdCBmb3IgZWFjaCBhdHRhY2htZW50
IHNvIHlvdSBjYW4gaGF2ZSB0aGUgaW9tbXUKPj4+IGF0dGFjaGVkIHR3byBkb21haW5zIGR1cmlu
ZyB0aGUgc3dpdGNoIG92ZXIgYW5kIG5ldmVyIGRyb3AgdG8gYW4KPj4+IGlkZW50aXR5IG1vZGUu
Cj4+IEkgd2lsbCByZW1vdmUgdGhlIHN3aXRjaCB0byBpZGVudGl0eSBkb21haW4gYW5kIGl0IHdp
bGwgd29ya3MgZmluZS4KPiBZb3UnbGwgbG9vc2UgaW52YWxpZGF0aW9ucy4uCj4KPiBNYXliZSB0
aGUgZWFzaWVzdCB0aGluZyBpcyB0byBzcXVpc2ggdnNpX2lvbW11X2VuYWJsZSgpIGFuZCByZW9y
Z2FuaXplCj4gaXQgc28gdGhhdCB0aGUgc3BpbmxvY2sgaXMgaGVsZCBhY3Jvc3MgdGhlIHJlZ2lz
dGVyIHByb2dyYW1taW5nIGFuZAo+IHRoZW4geW91IGNhbiBhdG9taWNhbGx5IHVuZGVyIHRoZSBs
b2NrIGNoYW5nZSB0aGUgcmVnaXN0ZXJzIGFuZCBjaGFuZ2UKPiB0aGUgbGlua2VkIGxpc3QuIFRo
ZSByZWdpc3RlciB3cml0ZSBjYW5ub3QgZmFpbCBzbyB0aGlzIGlzIGZpbmUuCj4KPiBUaGlzIHNo
b3VsZCBwcm9iYWJseSBhbHNvIGZsdXNoIHRoZSBpb3RsYiBpbnNpZGUgdGhlIGxvY2suCgpJIHdp
bGwgdHJ5IHRvIHN1bW1hcml6ZToKaW4gdnNpX2lvbW11X2F0dGFjaF9kZXZpY2UoKSBJIHNob3Vs
ZDoKLSB0YWtlIHRoZSBsb2NrCi0gZG8gbm90aGluZyBpZiB0aGUgZG9tYWluIGlzIHRoZSBzYW1l
LgotIGlmIGlvbW11IGlzIHVzZWQgKGllIHBvd2VyZWQgdXApOgogICAtIHVwZGF0ZSB0aGUgcmVn
aXN0ZXJzIHRvIGVuYWJsZSB0aGUgaW9tbXUKICAgLSBmbHVzaAogICAtIHVwZGF0ZSB0aGUgbGlu
ayBsaXN0Ci0gdXBkYXRlIGlvbW11LT5kb21haW4KLSByZWxlYXNlIHRoZSBsb2NrCgppbiB2c2lf
aW9tbXVfaWRlbnRpdHlfYXR0YWNoKCkgSSBzaG91bGQ6Ci0gdGFrZSB0aGUgbG9jawotIGRvIG5v
dGhpbmcgaWYgdGhlIGRvbWFpbiBpcyB0aGUgc2FtZS4KLSBpZiBpb21tdSBpcyB1c2VkIChpZSBw
b3dlcmVkIHVwKToKICAgLSBkaXNhYmxlIHRoZSBpb21tdQogICAtIHJlbW92ZSB0aGUgbm9kZSBm
cm9tIHRoZSBsaXN0Ci0gdXBkYXRlIGlvbW11LT5kb21haW4KLSByZWxlYXNlIHRoZSBsb2NrCgp2
c2lfaW9tbXVfc3VzcGVuZCgpIGFuZCB2c2lfaW9tbXVfcmVzdW1lKCkgd2lsbCBhbHNvIGhhdmUg
dG8gdGFrZSB0aGUgbG9jawpiZWZvcmUgY2FsbGluZyB2c2lfaW9tbXVfZGlzYWJsZSgpIGFuZCB2
c2lfaW9tbXVfZW5hYmxlKCkuCgpzb3VuZCBnb29kIGZvciB5b3UgPwoKRG8gSSBoYXZlIHRvIHN3
aXRjaCB0byBpZGVudGl0eSBkb21haW4gaW4gdnNpX2lvbW11X2F0dGFjaF9kZXZpY2UoKQpiZWZv
cmUgYXBwbHlpbmcgdGhlIHJlcXVlc3RlZCBkb21haW4gPwoKUmVnYXJkcywKQmVuamFtaW4KCj4K
Pj4+IFdoaWNoIHdpbGwgY2F1c2UgdGhlIGNvcmUgY29kZSB0byBhdXRvbWF0aWNhbGx5IHJ1biB0
aHJvdWdoIHRvCj4+PiB2c2lfaW9tbXVfZGlzYWJsZSgpIHByaW9yIHRvIGNhbGxpbmcgdnNpX2lv
bW11X3JlbGVhc2VfZGV2aWNlKCksIHdoaWNoCj4+PiB3aWxsIGF2b2lkIFVBRiBwcm9ibGVtcy4K
Pj4+Cj4+PiBBbHNvLCBzaG91bGQgdGhlIHByb2JlIGZ1bmN0aW9ucyBiZSBkb2luZyBzb21lIGtp
bmQgb2YgdmFsaWRhdGlvbiB0aGF0Cj4+PiB0aGVyZSBpcyBvbmx5IG9uZSBzdHJ1Y3QgZGV2aWNl
IGF0dGFjaGVkPwo+PiB3aGljaCBraW5kIG9mIHZhbGlkYXRpb24gPwo+IFRoYXQgb25seSBvbmUg
ZGV2aWNlIHByb2JlZCB0byB0aGUgaW9tbXU/Cj4KPiBKYXNvbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
