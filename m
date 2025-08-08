Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FC3C87FCB
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Aug 2025 06:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTqSmYSV7sgGeReP6l/t1k6VhvqWyG5auqu8UYa8Qpw=; b=Q2CjMKgp4YCgIr
	Bzn46YVt9t5O+i0x/UT8WhC/a8tqaqU/njzMBQOcV/IBWvkweI+7nPy2q6yJLLXDaCSt+6t/Zk3Na
	B/2aieJuDdLn0X0X+4UVu3Rzp8BTxbCKB3roUsq7IpXxrmkDQaycWiYrhTcbZYPlN7YjQJZBzhph+
	LZfcsNnkMKYFYbTTSAUeRoi/Bm1s87N8zTlbxcNk5Mac+EQQY3QeZY+glxY7t4eEI0j5ii0++YDp6
	TbOaUL347HZr9qn6jJsvvs8LUGNuG1uH70XI4MivI72kkSZ6o/GjzHbvmFOfXoeu2DftoOYKM6S+v
	96PmqNH39Rs7muM2mmZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGxq-0000000288o-3tRr;
	Fri, 08 Aug 2025 06:52:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGtM-000000027ms-20Pe;
	Fri, 08 Aug 2025 06:47:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DE17C5C10B5;
	Fri,  8 Aug 2025 06:47:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0032FC4CEED;
	Fri,  8 Aug 2025 06:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754635671;
	bh=AVCxwYMan6Uuj8doqg4vH3GRgUseViUWmTYBb11n0Lw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hPpimJOTeyRvYm2oRNURR0x6WRdbiro15bSBW1D9hCQqqcX8pKGhi4JlBtwOhAu4j
	 5ekrPl+Ry8MiVMls1x8H3sT9viIg0pxH76eYK1T0nfY7Ny0J+Se6SCTEZh0iGp3Xw7
	 5tBHMkT30q+C8T76fSr8EAgHdGacJLPE6LbZjSY5ks7p1f1Bz56keuokU1RCY9Q0cj
	 xKpuKSLKCGSG4kXmJsGeOeXODteHsiybJPt53E9+MyKknnFuPs4csa44xAGpVJU0ba
	 W6oSYHGPs+QlHGcZsHIh4RAmT6QKrF/4PBImyKPAosbzbOqGnB4+3c5+xmaHXmJWa5
	 SXIxEAUm3kyZw==
Date: Fri, 8 Aug 2025 08:47:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, 
	alberto.dassatti@heig-vd.ch, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,phy-ref-use-pad
Message-ID: <20250808-ubiquitous-persimmon-llama-ff350e@kuoka>
References: <20250806133824.525871-1-rick.wertenbroek@gmail.com>
 <20250806133824.525871-4-rick.wertenbroek@gmail.com>
 <20250807-inquisitive-speedy-rooster-0a8488@kuoka>
 <c86bcdf0-f692-4263-a597-f8e36a53e8d9@kernel.org>
 <CAAEEuhpHmW9hji91tbQ3MMhBZELCYc_vA+Ra3oC2W+Rf8LLC6w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAEEuhpHmW9hji91tbQ3MMhBZELCYc_vA+Ra3oC2W+Rf8LLC6w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_234752_595726_A5B06E92 
X-CRM114-Status: GOOD (  36.08  )
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

T24gVGh1LCBBdWcgMDcsIDIwMjUgYXQgMTA6NDc6MThBTSArMDIwMCwgUmljayBXZXJ0ZW5icm9l
ayB3cm90ZToKPiBPbiBUaHUsIEF1ZyA3LCAyMDI1IGF0IDk6NTXigK9BTSBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIDA3LzA4LzIwMjUgMDk6
NTQsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiA+IE9uIFdlZCwgQXVnIDA2LCAyMDI1
IGF0IDAzOjM4OjIzUE0gKzAyMDAsIFJpY2sgV2VydGVuYnJvZWsgd3JvdGU6Cj4gPiA+PiA+RnJv
bSB0aGUgUkszNTg4IFRlY2huaWNhbCBSZWZlcmVuY2UgTWFudWFsLCBQYXJ0MSwKPiA+ID4+IHNl
Y3Rpb24gNi4xOSBQQ0llM1BIWV9HUkYgUmVnaXN0ZXIgRGVzY3JpcHRpb246ICJyZWZfdXNlX3Bh
ZCIKPiA+ID4+Cj4gPiA+PiAiU2VsZWN0IHJlZmVyZW5jZSBjbG9jayBjb25uZWN0ZWQgdG8gcmVm
X3BhZF9jbGtfcC9yZWZfcGFkX2Nsa19tLgo+ID4gPj4gU2VsZWN0cyB0aGUgZXh0ZXJuYWwgcmVm
X3BhZF9jbGtfcCBhbmQgcmVmX3BhZF9jbGtfbSBpbnB1dHMgYXMgdGhlCj4gPiA+PiByZWZlcmVu
Y2UgY2xvY2sgc291cmNlIHdoZW4gYXNzZXJ0ZWQuIFdoZW4gZGUtYXNzZXJ0ZWQsIHJlZl9hbHRf
Y2xrX3AKPiA+ID4+IGFuZCByZWZfYWx0X2Nsa19tIGFyZSB0aGUgc291cmNlcyBvZiB0aGUgcmVm
ZXJlbmNlIGNsb2NrLiIKPiA+ID4+Cj4gPiA+PiBUaGUgaGFyZHdhcmUgcmVzZXQgdmFsdWUgZm9y
IHRoaXMgZmllbGQgaXMgMHgxIChlbmFibGVkKS4KPiA+ID4+IE5vdGUgdGhhdCB0aGlzIHJlZ2lz
dGVyIGZpZWxkIGlzIG9ubHkgYXZhaWxhYmxlIG9uIFJLMzU4OCwgbm90IG9uIFJLMzU2OC4KPiA+
ID4KPiA+ID4gVGhlbiB5b3UgbWlzcyByZXN0cmljdGluZyBpdCAoOmZhbHNlKSBpbiBvbmUgb2Yg
aWY6dGhlbjogYmxvY2tzLgo+ID4gPgo+ID4gPiBBbHNvLCBiaW5kaW5nIGNhbm5vdCBiZSBhZnRl
ciB0aGUgdXNlci4gWW91IG5lZWQgdG8gcmVvcmRlciBwYXRjaGVzLgo+ID4gPgo+ID4gPiAuLi4K
PiA+ID4KPiA+ID4+Cj4gPiA+PiArICByb2NrY2hpcCxwaHktcmVmLXVzZS1wYWQ6Cj4gPiA+PiAr
ICAgIGRlc2NyaXB0aW9uOiB3aGljaCBQSFkgc2hvdWxkIHVzZSB0aGUgZXh0ZXJuYWwgcGFkIGFz
IFBDSWUgcmVmZXJlbmNlIGNsb2NrLgo+ID4gPj4gKyAgICAgIDEgbWVhbnMgdXNlIHBhZCAoZGVm
YXVsdCksIDAgbWVhbnMgdXNlIGludGVybmFsIGNsb2NrIChQTExfUFBMTCkuCj4gPiA+Cj4gPiA+
IENhbid0IHlvdSBkZWR1Y2UgaXQgZnJvbSB0aGUgcHJlc2VuY2Ugb2YgY2xvY2sgaW5wdXRzPyBJ
T1csIGlmIHRoZQo+ID4gPiBjbG9ja3MgYXJlIHBoeXNpY2FsbHkgY29ubmVjdGVkLCBpcyBpdCBl
dmVuIHJlYXNvbmFibGUgb3IgcG9zc2libGUgdG8KPiA+ID4gdXNlIGludGVybmFsIGNsb2NrPwo+
IAo+IFRoYW5rIHlvdSBLcnp5c3p0b2YsCj4gQnV0IG5vLCBpZiB0aGVyZSBpcyBubyBjbG9jaywg
dGhlIGRyaXZlciBkZWFkbG9ja3MsIGl0IG5lZWRzIGEgY2xvY2sKPiB0byBwcm9iZSBjb3JyZWN0
bHkuCj4gCj4gV2hlbiB0aGVyZSBpcyBhIGNsb2NrIHBoeXNpY2FsbHkgY29ubmVjdGVkIG9uIHRo
ZSBwYWQsIHlvdSBjYW4gc3RpbGwKPiBjaG9vc2UgdG8gdXNlIGl0IG9yIHVzZSB0aGUgaW50ZXJu
YWwgY2xvY2ssIHRoaXMgaXMgbm8gcHJvYmxlbS4KCldoeSB3b3VsZCB1c2UgaW50ZXJuYWwgY2xv
Y2sgZm9yIHN1Y2ggY2FzZT8gSW4gZmV3IG90aGVyIGNhc2VzIHRoaXMKYXBwZWFyZWQgd2UgdXN1
YWx5bCB3ZXJlIHVzaW5nIHRoZSBwcmVzZW5jZSBvZiB0aGUgY2xvY2sgYXMgZGV0ZXJtaW5pbmcK
ZmFjdG9yLgoKPiBUaGUgcHJvYmxlbSBpcyB3aGVuIHlvdSBoYXZlIG5vIGNsb2NrIG9uIHRoZSBw
YWQgKGFzIGl0IGRlZmF1bHRzIHRvCj4gdXNpbmcgdGhlIHBhZCkgYW5kIHRoZSBsb2FkaW5nIHRo
ZSBkcml2ZXIgZGVhZGxvY2tzIHRoZSBzeXN0ZW0uLi4KClRoaXMgc291bmRzIGxpa2UgYSBkcml2
ZXIsIG5vdCBhIGJpbmRpbmcsIHByb2JsZW0uCgo+IAo+ID4gPgo+ID4gPj4gKyAgICAkcmVmOiAv
c2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzItYXJyYXkKPiA+ID4+ICsgICAg
bWluSXRlbXM6IDIKPiA+ID4+ICsgICAgbWF4SXRlbXM6IDIKPiA+ID4+ICsgICAgaXRlbXM6Cj4g
PiA+PiArICAgICAgbWluaW11bTogMAo+ID4gPj4gKyAgICAgIG1heGltdW06IDEKPiA+ID4KPiA+
ID4gTW9yZSBwcmVjaXNlOgo+ID4gPgo+ID4gPiBpdGVtczoKPiA+ID4gICAtIGRlc2NyaXB0aW9u
OiBQSFkwIHJlZmVyZW5jZSBjbG9jayBjb25maWcKPiA+ID4gICAtIGRlc2NyaXB0aW9uOiBQSFkx
IHJlZmVyZW5jZSBjbG9jayBjb25maWcKPiA+ID4gICBlbnVtOiBbIDAsIDEgXQo+ID4KPiA+IEVo
LCBubywgcmF0aGVyIGlmIHRoaXMgc3RheXMgYXMgaW50Ogo+ID4KPiA+ICAgICBpdGVtczoKPiA+
ICAgICAgIC0gZGVzY3JpcHRpb246IFBIWTAgcmVmZXJlbmNlIGNsb2NrIGNvbmZpZwo+ID4gICAg
ICAgICBlbnVtOiBbIDAsIDEgXQo+ID4gICAgICAgLSBkZXNjcmlwdGlvbjogUEhZMSByZWZlcmVu
Y2UgY2xvY2sgY29uZmlnCj4gPiAgICAgICAgIGVudW06IFsgMCwgMSBdCj4gPiAgICAgZGVmYXVs
dDogWyAxLCAxIF0KPiA+Cj4gPgo+ID4gPiBkZWZhdWx0OiBbIDEsIDEgXQo+ID4gPgo+ID4gPiBB
bnl3YXksIGRlZmF1bHQgMSwgMSBpcyBwcmV0dHkgbm9uLW9idmlvdXMsIHNvIHRoaXMgc2hvdWxk
IGJlIGp1c3QKPiA+ID4gbm9uLXVuaXF1ZS1zdHJpbmctYXJyYXkgKGFuZCBwcm9wZXJ0eSBzaG91
bGQgYmUgbGlrZQo+ID4gPiByb2NrY2hpcCxwaHktcmVmLWNsay1zb3VyY2Uvc2VsKS4KPiA+ID4K
PiA+ID4KPiA+ID4gQmVzdCByZWdhcmRzLAo+ID4gPiBLcnp5c3p0b2YKPiA+ID4KPiA+Cj4gPgo+
ID4gQmVzdCByZWdhcmRzLAo+ID4gS3J6eXN6dG9mCj4gCj4gSSBiYXNlZCBteSBwYXRjaCBvbiBw
YXRjaCA6Cj4gNDY0OTJkMTAwNjc2NjA3ODVhMDlkYjRjZTkyNDQ1NDUxMjZhMTdiOAo+IGR0LWJp
bmRpbmdzOiBwaHk6IHJvY2tjaGlwLHBjaWUzLXBoeTogYWRkIHJvY2tjaGlwLHJ4LWNvbW1vbi1y
ZWZjbGstbW9kZQo+IAo+IEFzIHRoZSBvcHRpb24gSSBhZGQgaXMgZXh0cmVtZWx5IHNpbWlsYXIs
IGl0IHNldHMgYSBmZWF0dXJlIGluIG9uZSBvZgo+IHRoZSBQSFkgcmVnaXN0ZXJzIGFuZCBvbmx5
IGFwcGxpZXMgdG8gUkszNTg4Lgo+IFRoYXQgaXMgd2h5IEkgdXNlZCB0aGUgc2FtZSBzdHlsZSBh
cyByb2NrY2hpcCxyeC1jb21tb24tcmVmY2xrLW1vZGUuCgpTbyB5b3Ugc2hvdWxkIGhhdmUgdXNl
ZCBmb3IgZXhhbXBsZSBzYW1lIHByb3BlcnR5LgoKPiAKPiBXb3VsZG4ndCBpdCBiZSBjb25mdXNp
bmcgb3IgYXQgbGVhc3QgaW5jb2hlcmVudCB0byB1c2UgZW51bSBmb3IKPiByb2NrY2hpcCxwaHkt
cmVmLXVzZS1wYWQgYnV0IG5vdCBmb3IgcngtY29tbW9uLXJlZmNsay1tb2RlID8KClNhbWUgaGFy
ZHdhcmUgcHJvcGVydGllcyBzaG91bGQgaGF2ZSBzYW1lIHByb3BlcnRpZXMgLSB0eXBlLCBuYW1l
IGFuZAptZWFuaW5nIC0gYnV0IHlvdSBkaWQgbm90IHJlLXVzZSBleGlzdGluZyBvbmUuIE1heWJl
IGl0IGlzIHRvbyBzcGVjaWZpYz8KCldlIGRvIG5vdCB3cml0ZSBwcm9wZXJ0aWVzIGZvciByZWdp
c3RlcnMsIGJ1dCBmb3IgaGFyZHdhcmUgKGxpa2UgU29DIG9yCmJvYXJkKSBjaGFyYWN0ZXJpc3Rp
Y3MuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
