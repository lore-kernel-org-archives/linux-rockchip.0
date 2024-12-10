Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B38E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 13:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qpWQxpLB8HEEMAkYowd35TssT1a1laI4gJO9S3YxKCY=; b=xBuyteDwYcCW0/4N+ZMQ4RPEn7
	IXcsgQr3cCL3bnRfKQPjBm2wmedRyf08ArzwVXjXUGSgErYF8QiCnWmL9T2OWWaydZpV9Q+ZFrLzj
	lkMpal0t6pEvRXRd1xZ1oKbvvB4I1kJzEIC+IwP5vaaIJRF2pkjGSNruPhInCA3/qthaQkIrlogf6
	LL/jriMnIBcygy/0m7Rj8u/B3z947SMeb8yrV6yW+q7oPhLew9ckd/sNEXX8ZGIoRowHcXGnTmNEb
	smlhpVqy4GcwLZWdzr5QSOC0hWRa2yOJfNwU+YXQyhAfyo5v5qjdRPitnlkIFlTer+ID42DXnBkPW
	1mMPLaFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0YF-0000000BcJ8-3DNo;
	Tue, 10 Dec 2024 13:45:23 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0XB-0000000BcAB-3rja;
	Tue, 10 Dec 2024 13:44:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733838255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HR985HiE65wAXM9O8QvXvTA1gJ8FNQIGOl/hU7K0iww=;
	b=XFWjja7yGGHwKBg/bK2+h1h7SVh2fqrDrWxnE+tVJmxaRVJsqLZ3mtiwtJY3S2u7Z6nKni
	bROXKcLWiD3kioD0yKVuF2TCPoCBR9+cXomUeftaxuwCex6/Y/dgyuAi8TeqGax9dwu438
	rG6imA1HJIVtI7w/34QtStg9qUmod9UIuXm0LRhyS4NB8lE3OdlYk5U0MhYBvn93AReZnI
	oZyJGqmJuQ6eEHbVQ/hplsYZz3OWa6Zt/GoaYA/ImRmI2sNDZIsjGjPoaS4ds1gu56WQTz
	nsERVgGNpU2+SLEOWl468F+JYzPjJzuBxgZ1P/ycA6PDNX/FRoUqg+d9tJ+cqw==
Date: Tue, 10 Dec 2024 14:44:14 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <didi.debian@cknow.org>, Johan Jonker <jbx6244@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 6/6] arm64: dts: rockchip: Remove address aligned beats
 from rk3328-roc
In-Reply-To: <CAMdYzYpj3d7Rq0O0QjV4r6HEf_e07R0QAhPT2NheZdQV3TnQ6g@mail.gmail.com>
References: <20241210013010.81257-1-pgwipeout@gmail.com>
 <20241210013010.81257-7-pgwipeout@gmail.com>
 <2b68c2dd3618e5904a4eac1ec87d29a7@manjaro.org>
 <CAMdYzYpj3d7Rq0O0QjV4r6HEf_e07R0QAhPT2NheZdQV3TnQ6g@mail.gmail.com>
Message-ID: <6453e714b2a48572ff1e57cd74b0f6d3@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_054418_252540_A837D3C1 
X-CRM114-Status: GOOD (  29.52  )
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

SGVsbG8gUGV0ZXIsCgpPbiAyMDI0LTEyLTEwIDEyOjI5LCBQZXRlciBHZWlzIHdyb3RlOgo+IE9u
IFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDU6NDXigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5q
YXJvLm9yZz4gCj4gd3JvdGU6Cj4+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLiAgUGxlYXNlLCBzZWUg
c29tZSBjb21tZW50cyBiZWxvdy4KPj4gCj4+IE9uIDIwMjQtMTItMTAgMDI6MzAsIFBldGVyIEdl
aXMgd3JvdGU6Cj4+ID4gU2luY2UgY29tbWl0IDhhNDY5ZWUzNTYwNiAoImFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBBZGQgdHhwYmwgbm9kZSBmb3IKPj4gPiBSSzMzOTkvUkszMzI4IiksIHRoZSBzbnBz
LGFhbCwgc25wcyx0eHBibCwgYW5kIHNucHMscnhwYmwgbm9kZXMgaGF2ZQo+PiA+IGJlZW4gdW5u
ZWNlc3NhcnkgaW4gdGhlIHNlcGFyYXRlIGRldmljZSB0cmVlcy4gVGhlcmUgaXMgYWxzbyBhCj4+
ID4gcGVyZm9ybWFuY2UgbG9zcyB0byB1c2luZyBzbnBzLGFhbC4gUmVtb3ZlIHRoZXNlIGZyb20g
dGhlIHJrMzMyOC1yb2MKPj4gPiBkZXZpY2UgdHJlZS4KPj4gPgo+PiA+IFNpZ25lZC1vZmYtYnk6
IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4+ID4KPj4gPiAtLS0KPj4gPgo+PiA+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2MuZHRzaSB8IDMgLS0tCj4+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4+ID4gYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2MuZHRzaQo+PiA+IGluZGV4IDY5ODQz
ODdmZjhiMy4uMGQ0NzZjYzIxNDRkIDEwMDY0NAo+PiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzMjgtcm9jLmR0c2kKPj4gPiBAQCAtMTU1LDEyICsxNTUsOSBAQCAmZ21h
YzJpbyB7Cj4+ID4gICAgICAgcGh5LW1vZGUgPSAicmdtaWkiOwo+PiA+ICAgICAgIHBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4+ID4gICAgICAgcGluY3RybC0wID0gPCZyZ21paW0xX3BpbnM+
Owo+PiA+IC0gICAgIHNucHMsYWFsOwo+PiAKPj4gSHVoLCBJIHNlZSB0aGF0IHF1aXRlIGEgZmV3
IFJLMzMyOCBib2FyZCBkdHMgZmlsZXMgc3BlY2lmeQo+PiB0aGUgc25wcyxhYWwgbm9kZS4gIEkg
d29uZGVyIHdhcyBpdCBhICJjYXJnbyBjdWx0IiBhcHByb2FjaAo+PiBhdCBwbGF5LCA6KSBvciB3
YXMgdGhlcmUgc29tZSByZWFsIG5lZWQgZm9yIGl0Pwo+PiAKPj4gQWN0dWFsbHksIEkgc2VlIG5v
dyB0aGF0IHlvdSBhZGRlZCBzbnBzLGFhbCB0byByazMzMjgtcm9jLQo+PiBjYy5kdHMgaW4gdGhl
IGNvbW1pdCAzOTNmMzg3NWMzODUgKCJhcm02NDogZHRzOiByb2NrY2hpcDoKPj4gaW1wcm92ZSBy
azMzMjgtcm9jLWNjIHJnbWlpIHBlcmZvcm1hbmNlLiIpLCBzbyBJIGd1ZXNzIHRoYXQKPj4geW91
ciBmdXJ0aGVyIHJlc2VhcmNoIGFuZCB0ZXN0aW5nIHNob3dlZCB0aGF0IGl0IGFjdHVhbGx5Cj4+
IGlzbid0IG5lZWRlZCBmb3IgRXRoZXJuZXQgc3RhYmlsaXR5Pwo+PiAKPj4gPiAgICAgICBzbnBz
LHJlc2V0LWdwaW8gPSA8JmdwaW8xIFJLX1BDMiBHUElPX0FDVElWRV9MT1c+Owo+PiA+ICAgICAg
IHNucHMscmVzZXQtYWN0aXZlLWxvdzsKPj4gPiAgICAgICBzbnBzLHJlc2V0LWRlbGF5cy11cyA9
IDwwIDEwMDAwIDUwMDAwPjsKPj4gPiAtICAgICBzbnBzLHJ4cGJsID0gPDB4ND47Cj4+ID4gLSAg
ICAgc25wcyx0eHBibCA9IDwweDQ+Owo+PiAKPj4gVW5sZXNzIEknbSBtaXNzaW5nIHNvbWV0aGlu
ZywgdGhlIGNvbW1pdCA4YTQ2OWVlMzU2MDYgKCJhcm02NDoKPj4gZHRzOiByb2NrY2hpcDogQWRk
IHR4cGJsIG5vZGUgZm9yIFJLMzM5OS9SSzMzMjgiKSBkb2Vzbid0IGFkZAo+PiB0aGUgc25wcyxy
eHBibCBub2RlIHRvIHRoZSBSSzMzMjggU29DIGR0c2ksIGFuZCB0aGUgcmVzcGVjdGl2ZQo+PiBk
cml2ZXIgZG9lcyBub3RoaW5nIGFib3V0IGl0IHdoZW4gdGhlIHNucHMsdHhwYmwgbm9kZSBpcyBm
b3VuZC4KPj4gCj4+IFRob3VnaCwgSSBzZWUgdGhhdCByazMzMjgtcm9jay1waS1lLmR0cyBpcyB0
aGUgb25seSBvdGhlcgo+PiBSSzMzMjggYm9hcmQgZHRzIGZpbGUgdGhhdCBzcGVjaWZpZXMgdGhl
IHNucHMscnhwYmwgbm9kZSwgc28KPj4gaXQgc2VlbXMgdGhhdCByZW1vdmluZyB0aGUgc25wcyxy
eHBibCBub2RlIGhlcmUgc2hvdWxkIGJlIHNhZmUsCj4+IGVzcGVjaWFsbHkgYmVjYXVzZSBpdCB3
YXMgeW91IHdobyBhZGRlZCBpdCBpbiB0aGUgc2FtZSBjb21taXQKPj4gbWVudGlvbmVkIGFib3Zl
LiAgSWYgdGhlcmUgd2VyZSBzb21lIFNvQy1sZXZlbCBpc3N1ZXMsIGFsbAo+PiBSSzMzMjggYm9h
cmRzIHdvdWxkJ3ZlIG5lZWRlZCBpdC4KPiAKPiBHb29kIE1vcm5pbmcsCj4gCj4gWW91J2xsIG5v
dGljZSB0aGUgYXV0aG9yIG9mIHRoYXQgcGF0Y2ggd2FzIG1lLiBTZXR0aW5nIGFhbCwgdHhwYmws
IGFuZAo+IHJ4cGJsIHdhcyB0aGUgb3JpZ2luYWwgZml4IEkgY2FtZSB1cCB3aXRoIGZvciB0aGUg
cmszMzI4LCB3aGljaCBJCj4gYXBwbGllZCB0byB0aGUgb25seSBib2FyZCBJIGhhZC4gU29tZW9u
ZSBlbHNlIGxhdGVyIG9uIGlzb2xhdGVkIGl0Cj4gc3BlY2lmaWNhbGx5IGlzb2xhdGVkIGl0IHRv
IGp1c3QgdGhlIHR4cGJsIGFuZCBhcHBsaWVkIGl0IHRvIGJvdGggdGhlCj4gcmszMzI4IGFuZCBy
azMzOTkgZGlyZWN0bHkuCj4gCj4gVGhpcyB3YXMganVzdCBzb21ldGhpbmcgdGhhdCB3YXMgbGVm
dCBoYW5naW5nIGFmdGVyIHRoYXQgcmVzdWx0Lgo+IAo+IExvb2tpbmcgYXQgaG93IHJrMzU2eCB3
YXMgZG9uZSwgSSBzdXNwZWN0IHRoZXJlJ3MgYW4gZXZlbiBtb3JlIGVsZWdhbnQKPiBzb2x1dGlv
bi4gSG93ZXZlciBJIGRvbid0IGhhdmUgdGhlIGRlZXAgbGV2ZWwga25vd2xlZGdlIG5vcgo+IGRv
Y3VtZW50YXRpb24gdG8gaW1wbGVtZW50IGl0LgoKU3VyZSwgSSBub3RpY2VkIHRoYXQgeW91IGF1
dGhvcmVkIHRoZSBvcmlnaW5hbCBFdGhlcm5ldCBzdGFiaWxpdHkKZml4LiA6KSAgV2l0aCBhbGwg
dGhpcyBpbiBtaW5kLCBwbGVhc2UgZmVlbCBmcmVlIHRvIGluY2x1ZGUKClJldmlld2VkLWJ5OiBE
cmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KCmFuZCBJJ2xsIHByZXBhcmUgYSBwYXRj
aCBvciB0d28gdGhhdCBjbGVhbiB1cCBhbnkgYW5kIGFsbCBsZWZ0b3ZlcnMKaW4gb3RoZXIgYm9h
cmQgZHRzKGkpIGZpbGVzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
