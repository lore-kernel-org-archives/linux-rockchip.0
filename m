Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 290EEC88E75
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jan 2026 09:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9l36fnLxLd9NPQOxo+SKsjdYiJWgvAzOQ/2an5cRhCc=; b=Ivi3H7AwGraKNp
	R5pcnVKBg0SUftW3lFXvN5wCueEPFzbhWfFe7L708sejKRRATQJW7gkhX8757rQSkBi4V8lkIUOV8
	wlOoIfWrv4ftnLsDvN9TbTdS98HdZ9t4gcEJjt0lfS4c1uEn0P/iLR1I6mrLIId6kryHyvrFkhQvV
	ZjBUw821q6XNImgByMQe3zFekWolSIpk8voi1Y/+KQ3XABnpXTq/+qdGjf4HwrY0rv1Trut8J3Tjk
	9Ln405VRvOUS1u/ZqpUPwtzZgE70RONs7e0Hs9TfmsIpmXg7k//06cE8LQmUH8F4pIzaJwAI4JJqH
	z7gRZbQW1hapnmWQOcmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIVf-0000000C9LY-2ysP;
	Mon, 26 Jan 2026 09:03:47 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkIVc-0000000C9L0-2IG9;
	Mon, 26 Jan 2026 09:03:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769418206; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Lfh/eRNm7h3SKUFm2ewA6a/EsO2tqg1/xGQ+4lMYt1NSSKBmFa5Yo7Y0T98Fohkna4IETqDWDFUGU6JlBuzIGWRBeTuXqaUcejl+G06NT+cw+t6j2WcgdhtNfuMC+98o5/k6OJ7PGTbF6LPRaZurovzQTNKEilwh54OxdWzw4rY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769418206; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Szw4w1kPWz+z204rfjqE2SzFPSa+7l4i9w+mPzkshVs=; 
	b=HS+DgwvModzf5uvt0IgC5Gzq2xsRBnKY56Vb9GkgQOvXigBYCvEjIyhhohOsVUeRg54tcKh2LemWXFt7OTcO7nM9qefvhFi2zh4+ucq4VEIfz4jS3e8SN/S8SaAKA763hppE4FRhgnPH47hdlrV1+Mr3ddwj6n/1mnbOzn7IPB4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769418206;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Szw4w1kPWz+z204rfjqE2SzFPSa+7l4i9w+mPzkshVs=;
	b=k+ETJadj+tQfi4J6Ht/P5SsTGGRtFvu9K2hXalxlFZNnQJSLk9grhNLWdip5NIwC
	S1UYSrbLFgKI/53E7laWLIsCv2TSNC8htoWjQHbF8dFzxz0r5xvbbY55GSGQlEzHUw8
	OyROJfVgetbJCMyPXxdlEpb+3AO+h+1jPwiALJGc=
Received: by mx.zohomail.com with SMTPS id 1769418204273347.0095929584735;
	Mon, 26 Jan 2026 01:03:24 -0800 (PST)
Message-ID: <8fd2c508-cbe9-4050-ba02-85b22fcff10d@collabora.com>
Date: Mon, 26 Jan 2026 10:03:19 +0100
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
 <b8f43fe8-3e07-4d98-a50d-817c31370710@collabora.com>
 <aXDL2JH_4RCDmAJv@willie-the-truck>
 <4b33b50f-f0c3-4db8-b394-dd2d4d6e3a55@collabora.com>
 <aXOsdlGMVzhHOrUr@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aXOsdlGMVzhHOrUr@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_010344_628242_04758DAB 
X-CRM114-Status: GOOD (  25.01  )
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

CkxlIDIzLzAxLzIwMjYgw6AgMTg6MTQsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gV2Vk
LCBKYW4gMjEsIDIwMjYgYXQgMDI6NTA6MThQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IExlIDIxLzAxLzIwMjYgw6AgMTM6NTEsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4+
PiBPbiBNb24sIEphbiAxOSwgMjAyNiBhdCAwMzowMzo0NFBNICswMTAwLCBCZW5qYW1pbiBHYWln
bmFyZCB3cm90ZToKPj4+Pj4+Pj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpb21tdV9vcHMgdnNp
X2lvbW11X29wcyA9IHsKPj4+Pj4+Pj4+PiArCS5pZGVudGl0eV9kb21haW4gPSAmdnNpX2lkZW50
aXR5X2RvbWFpbiwKPj4+Pj4+Pj4+PiArCS5yZWxlYXNlX2RvbWFpbiA9ICZ2c2lfaWRlbnRpdHlf
ZG9tYWluLAo+Pj4+Pj4+Pj4+ICsJLmRvbWFpbl9hbGxvY19wYWdpbmcgPSB2c2lfaW9tbXVfZG9t
YWluX2FsbG9jX3BhZ2luZywKPj4+Pj4+Pj4+PiArCS5vZl94bGF0ZSA9IHZzaV9pb21tdV9vZl94
bGF0ZSwKPj4+Pj4+Pj4+PiArCS5wcm9iZV9kZXZpY2UgPSB2c2lfaW9tbXVfcHJvYmVfZGV2aWNl
LAo+Pj4+Pj4+Pj4+ICsJLnJlbGVhc2VfZGV2aWNlID0gdnNpX2lvbW11X3JlbGVhc2VfZGV2aWNl
LAo+Pj4+Pj4+Pj4+ICsJLmRldmljZV9ncm91cCA9IGdlbmVyaWNfc2luZ2xlX2RldmljZV9ncm91
cCwKPj4+Pj4+Pj4+PiArCS5vd25lciA9IFRISVNfTU9EVUxFLAo+Pj4+Pj4+Pj4+ICsJLmRlZmF1
bHRfZG9tYWluX29wcyA9ICYoY29uc3Qgc3RydWN0IGlvbW11X2RvbWFpbl9vcHMpIHsKPj4+Pj4+
Pj4+PiArCQkuYXR0YWNoX2RldgkJPSB2c2lfaW9tbXVfYXR0YWNoX2RldmljZSwKPj4+Pj4+Pj4+
PiArCQkubWFwX3BhZ2VzCQk9IHZzaV9pb21tdV9tYXAsCj4+Pj4+Pj4+Pj4gKwkJLnVubWFwX3Bh
Z2VzCQk9IHZzaV9pb21tdV91bm1hcCwKPj4+Pj4+Pj4+PiArCQkuZmx1c2hfaW90bGJfYWxsCT0g
dnNpX2lvbW11X2ZsdXNoX3RsYl9hbGwsCj4+Pj4+Pj4+PiBUaGlzIGhhcyBubyBjYWxsZXJzIGFu
ZCBzbyB5b3VyIHVubWFwIHJvdXRpbmUgYXBwZWFycyB0byBiZSBicm9rZW4uCj4+Pj4+Pj4+IEl0
IGlzIGEgbGVmdG92ZXIgb2YgcHJldmlvdXMgYXR0ZW1wdCB0byBhbGxvdyB2aWRlbyBkZWNvZGVy
IHRvIGNsZWFuL2ZsdXNoCj4+Pj4+Pj4+IHRoZSBpb21tdSBieSB1c2luZyBhIGZ1bmN0aW9uIGZy
b20gdGhlIEFQSS4KPj4+Pj4+Pj4gTm93IGl0IGlzIHVzaW5nIHZzaV9pb21tdV9yZXN0b3JlX2N0
eCgpLgo+Pj4+Pj4+PiBJIHdoaWxlIHJlbW92ZSBpdCBpbiB2ZXJzaW9uIDEyLgo+Pj4+Pj4+IERv
bid0IHlvdSBzdGlsbCBuZWVkIHNvbWUgaW52YWxpZGF0aW9uIG9uIHRoZSB1bm1hcCBwYXRoPwo+
Pj4+Pj4gSW4gdnNpX2lvbW11X3VubWFwX2lvdmEoKSBwYWdlIGlzIGludmFsaWRlZCBieSBjYWxs
aW5nIHZzaV9ta19wdGVfaW52YWxpZCgpLgo+Pj4+PiBCdXQgdGhhdCBqdXN0IHdyaXRlcyBhbiBp
bnZhbGlkIGRlc2NyaXB0b3IgYW5kIGRvZXNuJ3QgYXBwZWFyIHRvIGludmFsaWRhdGUKPj4+Pj4g
dGhlIFRMQiBhdCBhbGwuCj4+Pj4+Cj4+Pj4+PiBUaGF0IGNsZWFyIEJJVCgwKSBzbyB0aGUgaGFy
ZHdhcmUga25vd3MgdGhlIHBhZ2UgaXMgaW52YWxpZC4KPj4+Pj4+IERvIEkgaGF2ZSBtaXNzIHNv
bWV0aGluZyBoZXJlID8KPj4+Pj4gWWVzLCB0aGUgVExCIHN0cnVjdHVyZSBuZWVkcyB0byBiZSBp
bnZhbGlkYXRlZCBzbyB0aGF0IHRoZSBwYWdlLXRhYmxlCj4+Pj4+IHdhbGtlciBzZWVzIHRoZSBu
ZXcgdmFsdWUgdGhhdCB5b3UgaGF2ZSB3cml0dGVuIGluIG1lbW9yeS4KPj4+Pj4KPj4+Pj4gVGhl
IHJvY2tjaGlwIGRyaXZlciBnZXRzIHRoaXMgY29ycmVjdC4uLgo+Pj4+IFJvY2tjaGlwIGhhcmR3
YXJlIGhhdmUgYSBaQVBfT05FX0xJTkUgcmVnaXN0ZXIgd2hpY2ggZGlkbid0IGV4aXN0IG9uIFZl
cmlzaWxpY29uCj4+Pj4gaGFyZHdhcmUuCj4+PiBQcmVzdW1hYmx5IHlvdSBoYXZlIHNvbWUgc29y
dCBvZiBWZXJpc2lsaWNvbiBkYXRhc2hlZXQgb3IgZG93bnN0cmVhbSBkcml2ZXIKPj4+IGZyb20g
d2hpY2ggeW91IGNhbiBpbmZlciB0aGUgVExCIGludmFsaWRhdGlvbiBydW5lcz8KPj4gSSBoYXZl
IG9ubHkgdGhpcyBkb3duc3RyZWFtIGRyaXZlcjoKPj4gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tj
aGlwLWxpbnV4L2tlcm5lbC9ibG9iL2RldmVsb3AtNi4xL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAt
aW9tbXUtYXYxZC5jCj4+IE5vIGRhdGFzaGVldC4uLgo+Pgo+Pj4+IEkgaGF2ZSB0cmllZCB0byB1
c2UgVlNJX01NVV9CSVRfRkxVU0ggb24gVlNJIGRyaXZlciBhZnRlciB1bm1hcHBpbmcgaW92YQo+
Pj4+IGJ1dCBpdCBkb2Vzbid0IHdvcmsuCj4+PiBXaGF0IGRvIHlvdSBtZWFuIGJ5ICJkb2Vzbid0
IHdvcmsiPyBJZiBpdCB3b3JrcyB3aXRob3V0IGRvaW5nIGFueQo+Pj4gaW52YWxpZGF0aW9uIGF0
IGFsbCwgdGhlbiBpdCdzIHZlcnkgcGVjdWxpYXIgdGhhdCBhZGRpbmcgdGhlIGludmFsaWRhdGlv
bgo+Pj4gd291bGQgaW50cm9kdWNlIGlzc3Vlcy4KPj4gSSBtZWFuIFZTSV9NTVVfQklUX0ZMVVNI
IHJlZ2lzdGVyIGNhbid0IGJlIHVzZWQgdG8gaW52YWxpZCB0aGUgVExCLgo+PiBJIHRoaW5rIHRo
ZSBoYXJkd2FyZSBpdGVyYXRlcyBvdmVyIHRoZSBwYWdlcyB0YWJsZXMgaW4gbWVtb3J5IGFuZAo+
PiBjaGVjayB0aGUgdmFsaWQvaW52YWxpZCBiaXQuCj4gSSBiZXQgaXQgZG9lc24ndDogdGhhdCB3
b3VsZCBiZSBob3JyaWJsZSBmb3IgcGVyZm9ybWFuY2UuCj4KPiBUaGUgaGFyZHdhcmUgY2xlYXJs
eSBoYXMgVExCIGludmFsaWRhdGlvbiBzdXBwb3J0LCBhcyB0aGUgZG93bnN0cmVhbSBkcml2ZXIK
PiB0aGF0IHlvdSBsaW5rZWQgYWJvdmUgaW1wbGVtZW50cyBhdjFfaW9tbXVfZmx1c2hfdGxiX2Fs
bCgpIHRvIHBva2UgaXQuCj4gSWYgdGhlIGhhcmR3YXJlIGhhcyBhIFRMQiwgdGhlbiB1bm1hcHBp
bmcgYSBwYWdlLXRhYmxlIG1lYW5zIHlvdSBuZWVkIHRvOgo+Cj4gMS4gQ2xlYXIgdGhlIHZhbGlk
IGJpdCBmcm9tIHRoZSBkZXNjcmlwdG9yIGluIG1lbW9yeQo+IDIuIEhhdmUgc29tZSBzb3J0IG9m
IG1lbW9yeSBiYXJyaWVyCj4gMy4gSW52YWxpZGF0ZSB0aGUgVExCCj4gNC4gV2FpdCBmb3IgdGhl
IGludmFsaWRhdGlvbiB0byBjb21wbGV0ZQoKVGhhdCBleGFjdGx5IHdoYXQgSSBoYWQgdHJpZWQg
dG8gZG8gYnkgY2FsbGluZyB2c2lfaW9tbXVfZmx1c2hfdGxiX2FsbCgpIChtaW51eCB0aGUgbG9j
aykKYWZ0ZXIgY2FsbGluZyB2c2lfaW9tbXVfdW5tYXBfaW92YSgpIGluIHZzaV9pb21tdV91bm1h
cCgpIGJ1dCB0aGF0IGRvZXNuJ3Qgd29yawphbmQgZXZlbiBtYWtlIHRoZSBzeXN0ZW0gY3Jhc2gg
c29tZXRpbWVzLgoKQmVuamFtaW4KCj4KPiBBbGwgSU9NTVVzIHRlbmQgdG8gd29yayBsaWtlIHRo
YXQgYW5kIEkgZG9uJ3QgdGhpbmsgdGhpcyBvbmUgaXMgYW55Cj4gZGlmZmVyZW50Lgo+Cj4gV2ls
bAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
