Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AD73606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 18:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PoP5bjyJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BD2aCl8r
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9z+44ya2PKmvgCWykZjKSuModuj78sSzNR3z7Rg2bMk=; b=PoP5bjyJX74dOE32fEsND9cuY7
	Mpdfj5+Z54lkbaF2FmZfRYKPEMSn26DpIe8HT44hxE+VaJZnwRWO8f1TbHbmdWMOjwWvDqzgMTpyQ
	V3KTMavJvRjplpkg4aY9OkdzAKEf+58C0jFwph62h6knf/Nt7gst9d7/Ox3Y72aus10lCCwpfp5Og
	zNMja6KHJmKMK+5MueGbazTmhO9zjRaAmtopr7uVFN5dWmbhFnyWPgwkhwSue06syGg9BJnFZgr70
	pR9PW3lGTHWtkHoGx+wELjLK33brB6XZ8FMpMIIsTkRbx/WBbXaNHry3t7a8/J2XGRh47shcAEd3Q
	llBiqQ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP28X-0000000A7mz-0QHy;
	Thu, 05 Nov 2026 18:24:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP28N-0000000A7kw-3MgI;
	Thu, 05 Nov 2026 18:24:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3383F41B3A;
	Thu,  5 Nov 2026 18:24:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5C4E1F00919;
	Thu,  5 Nov 2026 18:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793903063;
	bh=cjUElBqzPluT7QSjt/7lModkJ2Ig4dFvcYSz+eg2RbU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=BD2aCl8ryPB4H4ifilP0HoKNxJrE3LkzDcHnc1GOhqqO09ag549Bc6WQDr5ixwtS8
	 zkyMJkM9JwQ62U/YHXrczFfQ6L0mWX5u67BFPPe2elik8/x/0otCRECNlx6FLnOJtw
	 GQ6eUI8iYMkN+re4rVqNG2LZ9wnG1lWgTK4Q2EuGFc/P2poedu5vTRLq8XNFK2U0yR
	 4XTrfa2AKVSgz7Cx0/OqJqptghvWSLDYxND7Of6dlboNOaRVRgPGu1knF54Ykc7sh/
	 tuuVC+LvthIg1J11BJp5xuGAYjDxPNnTsHT3UpynFhly7WBkbWugbX4l1ZR5mT/E32
	 051o+m+YKGn+g==
Message-ID: <b865a3ef-3a69-4bc0-be25-29d3ddfb3385@kernel.org>
Date: Thu, 5 Nov 2026 19:24:15 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: PCI: rockchip,rk3399-pcie: Add PERST#
 inactive delay properties
To: =?UTF-8?Q?Enrique_Hern=C3=A1ndez_Bello?= <ehbello@gmail.com>
Cc: shawn.lin@rock-chips.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, bhelgaas@google.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, dlemoal@kernel.org, iav@iav.lv,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261104215848.2087944-1-ehbello@gmail.com>
 <20261104215848.2087944-2-ehbello@gmail.com>
 <20261105-exuberant-finch-of-domination-3fbd6c@quoll>
 <20261105174042.2307139-1-ehbello@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <20261105174042.2307139-1-ehbello@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMDUvMTEvMjAyNiAxODo0MCwgRW5yaXF1ZSBIZXJuw6FuZGV6IEJlbGxvIHdyb3RlOgo+IE9u
IFRodSwgTm92IDA1LCAyMDI2LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBWZW5kb3Ig
ZHJpdmVyIGRvZXMgbm90IG1hdHRlciwgaXQgaXMgYW50aXBhdHRlcm4uIERvIG5vdCBtZW50aW9u
IGl0IGhlcmUKPj4gYXMgcmVhc29uIHRvIGRvIHN1Y2ggY2hhbmdlLgo+Pgo+PiBObyBuZWVkIHRv
IHJlcGVhdCB0aGUgZGlmZi4KPiAKPiBVbmRlcnN0b29kLCBib3RoIGdvIGluIHRoZSBuZXh0IHZl
cnNpb24uCj4gCj4+IHVzIG9yIG1zPwo+IAo+IG1zLiBUaGUgMCBjYXNlIGlzIGJhZGx5IHdvcmRl
ZDogdGhlIGRyaXZlciBuZXZlciBob2xkcyBQRVJTVCMgZm9yIGxlc3MKPiB0aGFuIDEwMCB1cywg
d2hhdGV2ZXIgdGhlIHZhbHVlLCBhbmQgMCBqdXN0IGVuZHMgdXAgYXQgdGhhdCBmbG9vci4gSSB3
aWxsCj4gZGVzY3JpYmUgdGhlIGZsb29yIGluc3RlYWQgb2YgZ2l2aW5nIDAgYSBtZWFuaW5nIG9m
IGl0cyBvd24uCj4gCj4+IFdoYXQgaXMgdGhlIG5hdHVyZSBvZiB0aGlzIHRpbWluZz8gMTAwIG1z
IGlzIGEgbG90LiBBcmUgeW91IHN1cmUgeW91IGFyZQo+PiBub3QgZGVzY3JpYmluZyBSQyBkZWxh
eSAod2UgaGF2ZSBiaW5kaW5ncyBmb3IgdGhhdCBhbHJlYWR5KQo+IAo+IFRoZSAxMDAgbXMgaXMg
bm90IHNvbWV0aGluZyB0aGUgYm9hcmQgbmVlZHMuIEl0IGlzIHRoZSBkcml2ZXIncyBjdXJyZW50
Cj4gd2FpdCwgVF9QVlBFUkwgZnJvbSB0aGUgQ0VNIHNwZWMsIGFwcGxpZWQgb24gZXZlcnkgYm9h
cmQuIEJlY2F1c2UgUEVSU1QjCj4gaXMgYWxyZWFkeSBhc3NlcnRlZCB3aGVuIHRoYXQgd2FpdCBz
dGFydHMsIGl0IGlzIGFsc28gdGhlIHdpZHRoIG9mIHRoZQo+IHJlc2V0IHB1bHNlLgo+IAo+IE9u
IG15IGJvYXJkIChST0NLIFBpIDRDKSB0aGUgc2xvdCBzdXBwbHkgaXMgcmVndWxhdG9yLWFsd2F5
cy1vbiwgc28gcG93ZXIKPiBoYXMgYmVlbiBzdGFibGUgZm9yIHNlY29uZHMgYmVmb3JlIHByb2Jl
IGFuZCB0aGVyZSBpcyBub3RoaW5nIGxlZnQgdG8KPiBzZXR0bGUuIFRoZSBwcm9ibGVtIGdvZXMg
dGhlIG90aGVyIHdheTogdGhlIEpNQjU4NSBiZWhpbmQgaXQgc3RvcHMKClNvIG1heWJlIHRoYXQn
cyBKTUI1ODUgaXNzdWU/IEFyZ3VtZW50cyBzbyBmYXIgYXJlIHJhdGhlciBhZ2FpbnN0CmNvbnRy
b2xsZXItYmFzZWQgcHJvcGVydHkuCgo+IGFuc3dlcmluZyBjb25maWd1cmF0aW9uIHJlYWRzIHdo
ZW4gaXQgaXMgaGVsZCBpbiByZXNldCB0aGF0IGxvbmcuIEEgd2FpdAo+IG9mIDAgdG8gMTUgbXMg
ZW51bWVyYXRlZCAxNyB0aW1lcyBvdXQgb2YgMTcsIDIwIG1zIG9uY2Ugb3V0IG9mIDMsIGFuZAo+
IDEwMCBtcyBuZXZlciBpbiA1LiBTbyB0aGUgYm9hcmQgbmVlZHMgYSBzaG9ydGVyIHZhbHVlLCBu
b3QgYSBsb25nZXIgb25lLgo+IEkgZG8gbm90IGtub3cgd2h5IHRoaXMgZW5kcG9pbnQgYmVoYXZl
cyB0aGlzIHdheS4KPiAKPiBXaGljaCBiaW5kaW5nIGRpZCB5b3UgaGF2ZSBpbiBtaW5kIGZvciB0
aGUgUkMgZGVsYXk/IElmIGFuIGV4aXN0aW5nIG9uZQo+IGZpdHMsIEkgd291bGQgcmF0aGVyIHVz
ZSBpdC4KClRoZSBSQyBkZWxheSBiaW5kaW5nLCBncGlvLWRlbGF5LgoKPiAKPiBJIGFsc28gcGxh
biB0byBkcm9wIHJvY2tjaGlwLHMyci1wZXJzdC1pbmFjdGl2ZS1tcywgc2luY2UgaXQgZGVzY3Jp
YmVzCj4gYW4gT1MgcG93ZXIgc3RhdGUgcmF0aGVyIHRoYW4gdGhlIGhhcmR3YXJlLgo+IAo+IFRo
YW5rcywKPiBFbnJpcXVlCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
