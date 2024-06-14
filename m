Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81577C27C75
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 12:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4DvqIeS5UYQDylZOwlTvejUxdHWOUEbBsc3QhHpQ8U=; b=ar99a6UXKL6vaJ
	jQq3JLVUumzTQ4/gkTVSc8YUJnBLObQNXZjwBa5Ts9VI8WWxxrzDKMZAza9Cn67d3/86gVr7gd2td
	Id1CzQHRdMla7JqL8Ca57iI3mrnuuKGtOe+ecTgzPyV9+7EXOqoh3J4TKaFLDLiRUcelc6i7vaRI4
	BtWL37madgY35vOlbeO5rxubZnGJw65dR6N2pjuSLRuveiAr4eXUSH3fPtEMbN2Knk2s+z++JnDb6
	dN+uDvw2aLuk8FQ6iYF58+krca7n653nP8Maib0A6K6h3D5KRNw8YVyOUyLSq3TUSkojGlLgQU7K2
	Q/ei/ReBrDRWNPX8xmJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5id-00000002grh-02En;
	Fri, 14 Jun 2024 12:07:47 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI5iX-00000002gpH-3SF0;
	Fri, 14 Jun 2024 12:07:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E093AFEC;
	Fri, 14 Jun 2024 05:08:00 -0700 (PDT)
Received: from [10.57.71.136] (unknown [10.57.71.136])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3DBB43F64C;
	Fri, 14 Jun 2024 05:07:32 -0700 (PDT)
Message-ID: <3516994c-7b06-4409-b9a9-975b9f7a60eb@arm.com>
Date: Fri, 14 Jun 2024 13:07:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] iommu/rockchip: Attach multiple power domains
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
 <20240612-6-10-rocket-v1-2-060e48eea250@tomeuvizoso.net>
 <ffviz6ak6qsn2reg5y35aerzy7wxfx6fzix6xjyminbhfcguus@clszdjakdcjd>
 <CAAObsKCx+r5UuESnrPem1Rb1-BF4i8FVwu6uozWhABOWoq+M4Q@mail.gmail.com>
 <CAAObsKChaBZ2C5ezWsiZ_LoN6R2HFhFA9=UNSRYB6cyeo-jreg@mail.gmail.com>
 <vmgk4wmlxbsb7lphq2ep3xnxx3mbv6e6lecihtftxoyp5lidvy@mectcwirrlek>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <vmgk4wmlxbsb7lphq2ep3xnxx3mbv6e6lecihtftxoyp5lidvy@mectcwirrlek>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_050741_973504_13B05FC4 
X-CRM114-Status: GOOD (  25.46  )
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

T24gMjAyNC0wNi0xMyAxMDozOCBwbSwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gSGksCj4g
Cj4gT24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMTE6MzQ6MDJBTSBHTVQsIFRvbWV1IFZpem9zbyB3
cm90ZToKPj4gT24gVGh1LCBKdW4gMTMsIDIwMjQgYXQgMTE6MjTigK9BTSBUb21ldSBWaXpvc28g
PHRvbWV1QHRvbWV1dml6b3NvLm5ldD4gd3JvdGU6Cj4+PiBPbiBUaHUsIEp1biAxMywgMjAyNCBh
dCAyOjA14oCvQU0gU2ViYXN0aWFuIFJlaWNoZWwKPj4+IDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xs
YWJvcmEuY29tPiB3cm90ZToKPj4+PiBPbiBXZWQsIEp1biAxMiwgMjAyNCBhdCAwMzo1Mjo1NVBN
IEdNVCwgVG9tZXUgVml6b3NvIHdyb3RlOgo+Pj4+PiBJT01NVXMgd2l0aCBtdWx0aXBsZSBiYXNl
IGFkZHJlc3NlcyBjYW4gYWxzbyBoYXZlIG11bHRpcGxlIHBvd2VyCj4+Pj4+IGRvbWFpbnMuCj4+
Pj4+Cj4+Pj4+IFRoZSBiYXNlIGZyYW1ld29yayBvbmx5IHRha2VzIGNhcmUgb2YgYSBzaW5nbGUg
cG93ZXIgZG9tYWluLCBhcyBzb21lCj4+Pj4+IGRldmljZXMgd2lsbCBuZWVkIGZvciB0aGVzZSBw
b3dlciBkb21haW5zIHRvIGJlIHBvd2VyZWQgb24gaW4gYSBzcGVjaWZpYwo+Pj4+PiBvcmRlci4K
Pj4+Pj4KPj4+Pj4gVXNlIGEgaGVscGVyIGZ1bmN0aW9uIHRvIHN0YWJsaXNoIGxpbmtzIGluIHRo
ZSBvcmRlciBpbiB3aGljaCB0aGV5IGFyZQo+Pj4+PiBpbiB0aGUgRFQuCj4+Pj4+Cj4+Pj4+IFRo
aXMgaXMgbmVlZGVkIGJ5IHRoZSBJT01NVSB1c2VkIGJ5IHRoZSBOUFUgaW4gdGhlIFJLMzU4OC4K
Pj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogVG9tZXUgVml6b3NvIDx0b21ldUB0b21ldXZpem9z
by5uZXQ+Cj4+Pj4+IC0tLQo+Pj4+Cj4+Pj4gVG8gbWUgaXQgbG9va3MgbGlrZSB0aGlzIGlzIG11
bHRpcGxlIElPTU1Vcywgd2hpY2ggc2hvdWxkIGVhY2ggZ2V0Cj4+Pj4gdGhlaXIgb3duIG5vZGUu
IEkgZG9uJ3Qgc2VlIGEgZ29vZCByZWFzb24gZm9yIG1lcmdpbmcgdGhlc2UKPj4+PiB0b2dldGhl
ci4KPj4+Cj4+PiBJIGhhdmUgbWFkZSBxdWl0ZSBhIGZldyBhdHRlbXB0cyBhdCBzcGxpdHRpbmcg
dGhlIElPTU1VcyBhbmQgYWxzbyB0aGUKPj4+IGNvcmVzLCBidXQgSSB3YXNuJ3QgYWJsZSB0byBn
ZXQgdGhpbmdzIHdvcmtpbmcgc3RhYmx5LiBUaGUgVFJNIGlzCj4+PiByZWFsbHkgc2NhbnQgYWJv
dXQgaG93IHRoZSA0IElPTU1VIGluc3RhbmNlcyByZWxhdGUgdG8gZWFjaCBvdGhlciwgYW5kCj4+
PiB3aGF0IHRoZSBmb3VydGggb25lIGlzIGZvci4KPj4+Cj4+PiBHaXZlbiB0aGF0IHRoZSB2ZW5k
b3IgZHJpdmVyIHRyZWF0cyB0aGVtIGFzIGEgc2luZ2xlIElPTU1VIHdpdGggZm91cgo+Pj4gaW5z
dGFuY2VzIGFuZCB3ZSBkb24ndCBoYXZlIGFueSBpbmZvcm1hdGlvbiBvbiB0aGVtLCBJIHJlc2ln
bmVkIG15c2VsZgo+Pj4gdG8ganVzdCBoYXZlIHRoZW0gYXMgYSBzaW5nbGUgZGV2aWNlLgo+Pj4K
Pj4+IEkgd291bGQgbG92ZSB0byBiZSBwcm92ZWQgd3JvbmcgdGhvdWdoIGFuZCBmaW5kIGEgd2F5
IGZvIGdldHRpbmcKPj4+IHRoaW5ncyBzdGFibHkgYXMgZGlmZmVyZW50IGRldmljZXMgc28gdGhl
eSBjYW4gYmUgcG93ZXJlZCBvbiBhbmQgb2ZmCj4+PiBhcyBuZWVkZWQuIFdlIGNvdWxkIHNhdmUg
cXVpdGUgc29tZSBjb2RlIGFzIHdlbGwuCj4+Cj4+IEZXSVcsIGhlcmUgYSBmZXcgd2F5cyBob3cg
SSB0cmllZCB0byBzdHJ1Y3R1cmUgdGhlIERUIG5vZGVzLCBub25lIG9mCj4+IHRoZXNlIHdvcmtl
ZCByZWxpYWJseToKPj4KPj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3RvbWV1L2xp
bnV4Ly0vYmxvYi82LjEwLXJvY2tldC1tdWx0aXBsZS1kZXZpY2VzLXBvd2VyL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpP3JlZl90eXBlPWhlYWRzI0wxMTYzCj4+IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8tL2Jsb2IvNi4xMC1yb2Nr
ZXQtc2NoZW1hLXN1Ym5vZGVzLy9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMu
ZHRzaT9yZWZfdHlwZT1oZWFkcyNMMTE2Mgo+PiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvdG9tZXUvbGludXgvLS9ibG9iLzYuMTAtcm9ja2V0LW11bHRpcGxlLWRldmljZXMvL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpP3JlZl90eXBlPWhlYWRzI0wxMTYz
Cj4+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy90b21ldS9saW51eC8tL2Jsb2IvNi4x
MC1yb2NrZXQtbXVsdGlwbGUtaW9tbXVzLy9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OHMuZHRzaT9yZWZfdHlwZT1oZWFkcyNMMjY2OQo+Pgo+PiBJIGNhbiB2ZXJ5IHdlbGwgaW1h
Z2luZSBJIG1pc3NlZCBzb21lIHdheSBvZiBnZXR0aW5nIHRoaXMgdG8gd29yaywgYnV0Cj4+IGZv
ciBldmVyeSBhdHRlbXB0LCB0aGUgZG9tYWlucywgaW9tbXVzIGFuZCBjb3JlcyB3ZXJlIHJlc3Vt
ZWQgaW4KPj4gZGlmZmVyZW50IG9yZGVycyB0aGF0IHByZXN1bWFibHkgY2F1c2VkIHByb2JsZW1z
IGR1cmluZyBjb25jdXJyZW50Cj4+IGV4ZWN1dGlvbiBmbyB3b3JrbG9hZHMuCj4+Cj4+IFNvIEkg
ZmVsbCBiYWNrIHRvIHdoYXQgdGhlIHZlbmRvciBkcml2ZXIgZG9lcywgd2hpY2ggd29ya3MgcmVs
aWFibHkKPj4gKGJ1dCBhbGwgY29yZXMgaGF2ZSB0byBiZSBwb3dlcmVkIG9uIGF0IHRoZSBzYW1l
IHRpbWUpLgo+IAo+IE1oLiBUaGUgIjYuMTAtcm9ja2V0LW11bHRpcGxlLWlvbW11cyIgYnJhbmNo
IHNlZW1zIHdyb25nLiBUaGVyZSBpcwo+IG9ubHkgb25lIGlvbW11IG5vZGUgaW4gdGhhdC4gSSB3
b3VsZCBoYXZlIGV4cGVjdGVkIGEgdGVzdCB3aXRoCj4gCj4gcmtubiB7Cj4gICAgICAvLyBjb21i
aW5lZCBkZXZpY2UKPiAKPiAgICAgIGlvbW11cyA9IDwmaW9tbXUxPiwgPCZpb21tdTI+LCAuLi47
Cj4gfTsKPiAKPiBPdGhlcndpc2UgSSB0aGluayBJIHdvdWxkIGdvIHdpdGggdGhlIHNjaGVtYS1z
dWJub2RlcyB2YXJpYW50LiBUaGUKPiBkcml2ZXIgY2FuIGluaXRpYWxseSB3YWxrIHRocm91Z2gg
dGhlIHN1Yi1ub2RlcyBhbmQgY29sbGVjdCB0aGUKPiByZXNvdXJjZXMgaW50byB0aGUgbWFpbiBk
ZXZpY2UsIHNvIG9uIHRoZSBkcml2ZXIgc2lkZSBub3RoaW5nIHdvdWxkCj4gcmVhbGx5IGNoYW5n
ZS4gQnV0IHRoYXQgaGFzIGEgY291cGxlIG9mIGFkdmFudGFnZXM6Cj4gCj4gMS4gRFQgYW5kIERU
IGJpbmRpbmcgYXJlIGVhc2llciB0byByZWFkCj4gMi4gSXQncyBzaW1pbGFyIHRvIGUuZy4gQ1BV
IGNvcmVzIGVhY2ggaGF2aW5nIHRoZWlyIG93biBub2RlCj4gMy4gRWFzeSB0byBleHRlbmQgdG8g
bW9yZSBjb3JlcyBpbiB0aGUgZnV0dXJlCj4gNC4gVGhlIGtlcm5lbCBjYW4gZWFzaWx5IHN3aXRj
aCB0byBwcm9wZXIgcGVyLWNvcmUgZGV2aWNlIG1vZGVsIHdoZW4KPiAgICAgdGhlIHByb2JsZW0g
aGFzIGJlZW4gaWRlbnRpZmllZAoKSXQgYWxzbyB3b3VsZCBzZWVtIHRvIHBlcm1pdCBkZXNjcmli
aW5nIGFuZCBhc3NvY2lhdGluZyB0aGUgcGVyLWNvcmUgCklPTU1VcyBpbmRpdmlkdWFsbHkgLSBh
cGFydCBmcm9tIGNvcmUgMCdzIGFwcGFyZW50IGNvdXBsaW5nIHRvIHdoYXRldmVyIApzaGFyZWQg
InVuY29yZSIgc3R1ZmYgZXhpc3RzIGZvciB0aGUgd2hvbGUgdGhpbmcsIGZyb20gdGhlIGRpc3Rp
bmN0IApjbG9ja3MsIGludGVycnVwdHMsIHBvd2VyIGRvbWFpbnMgZXRjLiBsaW5pbmcgdXAgd2l0
aCBlYWNoIGNvcmUgSSdkIApndWVzcyB0aG9zZSBJT01NVXMgYXJlIG5vdCBpbnRlcnJlbGF0ZWQg
dGhlIHNhbWUgd2F5IHRoZSBJU1AncyAKcmVhZC93cml0ZSBJT01NVXMgYXJlICh3aGljaCB3YXMg
dGhlIG1haW4ganVzdGlmaWNhdGlvbiBmb3IgYWRvcHRpbmcgdGhlIAptdWx0aXBsZS1yZWcgZGVz
aWduIG9yaWdpbmFsbHkgdnMuIGRpc3RpbmN0IERUIG5vZGVzIGxpa2UgRXh5bm9zIGRvZXMpLiAK
SG93ZXZlciwgcHJhY3RpY2FsbHkgdGhhdCB3b3VsZCByZXF1aXJlIHRoZSBkcml2ZXIgdG8gYXQg
bGVhc3QgcG9wdWxhdGUgCnBlci1jb3JlIGNoaWxkIGRldmljZXMgdG8gbWFrZSBETUEgQVBJIG9y
IElPTU1VIEFQSSBtYXBwaW5ncyB3aXRoLCBzaW5jZSAKd2UgY291bGRuJ3Qgc3ByZWFkIHRoZSAi
Y29sbGVjdCB0aGUgcmVzb3VyY2VzIiB0cmljayBpbnRvIHRob3NlIApzdWJzeXN0ZW1zIGFzIHdl
bGwuCgpUaGFua3MsClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
