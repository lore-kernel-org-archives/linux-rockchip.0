Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E460310F995A
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 17:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RAV5nqKk3JzqMRn9hH4erqjEkGYXTkoz1mBHoG9Jb4=; b=OpYkTAXBUm0W86
	AO0hRAxKJKvoGpFfRADE/dc6GTe37XlW8+67+p5M0zpJkLLJL2LuzdkxfxM7iQ2/biNfb/cyvxNWE
	NlZLSXyasAcmc2kFH0+yGlUC0b1SPlEF/m0mfGKOn+2I1Um6lubePYb3aISMaqLq9HOgJjBCbBQCE
	fPb/YVAPmjoJVf6D+E3Jr4IyZa7UqY8+p4K8K/FDXoGmsevBJpBiIbmAwIZYoFqUgomXq+uaBlB4E
	22+8/ORbOrytJUQs8PiaW3fZoxwtblgO3yyAYwk0nBHHn86igeEy/rBqJb0nMTsLIUdMZftbSfPLS
	SRLSL1Fjny5g3HBuQrnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAWRi-000000099qN-3tED;
	Wed, 08 Apr 2026 17:12:06 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAWRe-000000099pn-2WKN;
	Wed, 08 Apr 2026 17:12:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1775668295; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=e4N/JLlRUOlFB2xo44u+ZMYrcs3vP2PA7vnWC39SX9oJjS7XD9B1DsLowD8Klz2MonLxa0npqMlnQ4TFq08Swn+qaYBZ/Z4/RJegWcCzwX3JRlA6xWTQd72F3XfN5qMyTKELXbuyfL/1M+kDr8nGh8KcHRxmiEWFe6XYlBErgRo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1775668295; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=sw4U23/BDwEzAjGcSXxTAe0SH3ZOEZ4VKUIAWOe/H1U=; 
	b=j3Od4SUlU0DrvH1qRlTCzUjMI/8SjwhNgIQkD5kttdpfFVC3zhrCX3eFh1LajHHRypMaEWLmNjaSfKZIiHGSctMaXBy3dWlyfuyTiqI3T4pxQkVARXDgNUVcZIEpxeiZ/zvGJcXQqmV282UoRl0fyJDZec3AbX5xrLFp12ze5B8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1775668295;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=sw4U23/BDwEzAjGcSXxTAe0SH3ZOEZ4VKUIAWOe/H1U=;
	b=NSpC7zR+KQtQ2vtE01p5tHBEBvVjOqX5MjwAWa8KLwwQwsbmfVUHJFofvbe5MY7X
	yuubN5SQLs89CcIZWfk68D/FJ/O+hZQkrM5XOkXH+rErpkACUV/JKQLtC1oUmrVcZQl
	nNhXC4mw4Yh6rkUAwJF0MCB9HCkCxaaSasMXEb4I=
Received: by mx.zohomail.com with SMTPS id 1775668294549723.4122281165437;
	Wed, 8 Apr 2026 10:11:34 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Rob Herring <robh@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: input: adc-keys: allow linux,input-type
 property
Date: Wed, 08 Apr 2026 19:11:19 +0200
Message-ID: <4589987.mvXUDI8C0e@workhorse>
In-Reply-To: <adaJOEZHHmvZM_cB@google.com>
References: <20251215-rock4d-audio-v2-0-82a61de39b4c@collabora.com>
 <20251217133440.GA724723-robh@kernel.org> <adaJOEZHHmvZM_cB@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_101202_704142_0884BAAE 
X-CRM114-Status: GOOD (  33.32  )
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

T24gV2VkbmVzZGF5LCA4IEFwcmlsIDIwMjYgMTg6NTk6MDggQ2VudHJhbCBFdXJvcGVhbiBTdW1t
ZXIgVGltZSBEbWl0cnkgVG9yb2tob3Ygd3JvdGU6Cj4gT24gV2VkLCBEZWMgMTcsIDIwMjUgYXQg
MDc6MzQ6NDBBTSAtMDYwMCwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gPiBPbiBXZWQsIERlYyAxNywg
MjAyNSBhdCAwMTo1Nzo0NlBNICswMTAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3JvdGU6Cj4gPiA+
IE9uIFdlZG5lc2RheSwgMTcgRGVjZW1iZXIgMjAyNSAwOTozMToxNSBDZW50cmFsIEV1cm9wZWFu
IFN0YW5kYXJkIFRpbWUgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiA+ID4gPiBPbiBNb24s
IERlYyAxNSwgMjAyNSBhdCAwMToyOToyOVBNICswMTAwLCBOaWNvbGFzIEZyYXR0YXJvbGkgd3Jv
dGU6Cj4gPiA+ID4gPiBhZGMta2V5cywgdW5saWtlIGdwaW8ta2V5cywgZG9lcyBub3QgYWxsb3cg
bGludXgsaW5wdXQtdHlwZSBhcyBhIHZhbGlkCj4gPiA+ID4gPiBwcm9wZXJ0eS4gVGhpcyBtYWtl
cyBpdCBpbXBvc3NpYmxlIHRvIG1vZGVsIGRldmljZXMgdGhhdCBoYXZlIEFEQyBpbnB1dHMKPiA+
ID4gPiA+IHRoYXQgc2hvdWxkIGdlbmVyYXRlIHN3aXRjaCBldmVudHMuCj4gPiA+ID4gCj4gPiA+
ID4gVGhlIHNvbHV0aW9uIGlzIHRvIHVzZSB1bmV2YWx1YXRlZFByb3BzIGluc3RlYWQsIHdoaWNo
IGFsc28gYWxsb3dzCj4gPiA+ID4gZHJvcHBpbmcgb3RoZXIgcHJvcGVydGllcy4KPiA+ID4gPiAK
PiA+ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+ID4gS3J6eXN6dG9mCj4gPiA+ID4gCj4gPiA+ID4g
Cj4gPiA+IAo+ID4gPiBIaSBLcnp5c3p0b2YsCj4gPiA+IAo+ID4gPiB0byB1bmRlcnN0YW5kIHRo
ZSBtb3RpdmF0aW9uIGJlaGluZCB0aGlzIHN1Z2dlc3Rpb24gY29ycmVjdGx5Ogo+ID4gPiBhcmUg
dGhlICJsaW51eCwiIHZlbmRvciBwcmVmaXhlZCBwcm9wZXJ0aWVzLCBlc3BlY2lhbGx5IHdpdGgg
cmVnYXJkcwo+ID4gPiB0byBrZXkgY29kZXMsIGdlbmVyYWxseSBhIGJpdCBvZiBhIHRob3JuIGlu
IHRoZSBzaWRlIG9mIERUIGJpbmRpbmdzCj4gPiA+IG1haW50YWluZXJzPwo+ID4gCj4gPiBOb3Qg
cmVhbGx5LiBNb3N0IGhhdmUgZXhpc3RlZCBmb3IgZGVjYWRlcy4gTmV3IG9uZXMgZ2V0IGV4dHJh
IHNjcnV0aW55IAo+ID4gYW5kIG9mdGVuIGVuZCB1cCBkcm9wcGluZyB0aGUgbGludXggcHJlZml4
Lgo+ID4gCj4gPiA+IEknZCBpbWFnaW5lIHNvIHNpbmNlIHRoZXkgdGVjaG5pY2FsbHkgdGllIHRo
ZSBEVCB0byBhIHNwZWNpZmljIE9TCj4gPiA+IGtlcm5lbCAodGhvdWdoIG9mIGNvdXJzZSwgb3Ro
ZXJzIGFyZSBmcmVlIHRvIHRyYW5zbGF0ZSB0aG9zZSBrZXkKPiA+ID4gY29kZXMpLiBBbmQgdGhl
IHdob2xlIGlkZWEgb2YgY29uZmlndXJpbmcgd2hpY2ggY29kZSBpcyBlbWl0dGVkCj4gPiA+IGZy
b20gc29tZXRoaW5nIGlzIGJhc2ljYWxseSBhYnVzaW5nIERUIGZvciBjb25maWd1cmluZyBzb2Z0
d2FyZQo+ID4gPiByYXRoZXIgdGhhbiBkZXNjcmliaW5nIGhhcmR3YXJlLgo+ID4gPiAKPiA+ID4g
SSdtIG1haW5seSBpbnRlcmVzdGVkIGJlY2F1c2UgdGhpcyBpcyBhIHRob3VnaHQgdGhhdCBoYXMg
YmVlbiBpbgo+ID4gPiB0aGUgYmFjayBvZiBteSBtaW5kIGZvciBhIHdoaWxlIG5vdywgYW5kIEkn
bSBjdXJpb3VzIGlmIHRoZSBEVAo+ID4gPiBiaW5kaW5nIG1haW50YWluZXJzIGhhcHBlbiB0byBo
YXZlIGFycml2ZWQgYXQgdGhlIHNhbWUgaW1wYXNzw6ksCj4gPiA+IHdoZXJlIGxpbnV4LGlucHV0
LXR5cGUgZXQgYWwgYWJ1c2UgdGhlIERUIG1vZGVsIGZvciBzb21ldGhpbmcgd2UKPiA+ID4gd291
bGQgdGVsbCBhbnkgb3RoZXIgdmVuZG9yIG5vdCB0byBhYnVzZSBpdCBmb3IsIGJ1dCBubyBiZXR0
ZXIKPiA+ID4gc29sdXRpb24gZXhpc3RzIHJpZ2h0IG5vdyB0byBhY2hpZXZlIHRoZSBzYW1lIHRo
aW5nLgo+ID4gCj4gPiBOb3Qgc3VyZSB3aGF0IHRoZSBCU0RzIGRvIGhlcmUuIEl0J3MgbmV2ZXIg
Y29tZSB1cCB0aGF0IEkgcmVtZW1iZXIuIEJlc3QgCj4gPiBJIGNhbiB0ZWxsIGlzIHRoZXkganVz
dCBtYWtlIGl0IGEgdXNlcnNwYWNlIHByb2JsZW0uIFNvIGV2ZXJ5IHBvc3NpYmxlIAo+ID4ga2V5
Ym9hcmQgbmVlZHMgYSBrZXltYXAgZmlsZS4gVGhvdWdoIEknbSBub3Qgc3VyZSBob3cgdGhhdCB3
b3VsZCB3b3JrIAo+ID4gd2l0aCBHUElPIGtleXMgYXMgeW91IGRvbid0IHJlYWxseSBoYXZlIGEg
c2NhbiBjb2RlLgo+IAo+IElzIHRoZXJlIGFuIHVwZGF0ZSBmb3IgdGhpcyBiaW5kaW5nIG9yIHNo
b3VsZCBJIGFwcGx5IHRoZSBjdXJyZW50Cj4gdmVyc2lvbj8gSSBhbSBPSyB3aXRoIHRoZSBkcml2
ZXIgY2hhbmdlcy4uLgo+IAo+IFRoYW5rcy4KPiAKPiAKCkkgd2lsbCBzZW5kIGEgbmV3IHZlcnNp
b24gdGhhdCBkb2Vzbid0IGFkZCB0aGUgcHJvcGVydHkgYnV0IGFsbG93cwp1bmV2YWx1YXRlZFBy
b3BzIGluc3RlYWQuIFRoYW5rcyBmb3IgcmVtaW5kaW5nIG1lLgoKS2luZCByZWdhcmRzLApOaWNv
bGFzIEZyYXR0YXJvbGkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
