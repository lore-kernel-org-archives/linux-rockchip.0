Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3E14C47DD9
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 17:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8SOCjzllw3IwJl0UAYkHUeBn96pU0ZsolGO6pP/uY1o=; b=FoV3UU8xV/M2nP9c2UeFWFgoW1
	zpN0v/LA0Rq/VgjeCL6yn4G5h6qEbeMTQdbhRe1ZiX5vfDqdCpMZfPtamF0AVWdpCJ23tqtc9mH1R
	uQqMGPNEFTpVXFe2IHq2CdiNKThQp42JwFzxRLMkEB+nMPyqFQXqCbNcNMoVACqfZMhiX/H7sZFPY
	EPztYUncm91ET8weYILQMpM4eXGxQQ5RL+Q3h3Ady3wDmRzE93sSJmKj52x7vH4SMxqyPYvAVuOF3
	q5azbg0qAO1PevWvE4J4Xe26LIozbsCAoXlIyrsbkERMxyAuQJ4ZKTODt998K6HJx7/vNu/MIOL35
	rXKbgjCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRyAn-00DFXS-2C;
	Mon, 22 Jan 2024 17:33:25 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRyAi-00DFUj-2k;
	Mon, 22 Jan 2024 17:33:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1705944796;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mKbnuh2h0PgDQC33RKrscO7YxrGHfOAB3fAT8BQBrEE=;
	b=nPj3rQHgAr0Ii8SDx8QS8QRKwwrRLk/eHPSMua7vhZYj3qBZVLqwSw5jltWhLlVCP50RPA
	p5rQRwWF/VZY95QxUaGOWwznvQrLCaJrmo6mIkFi0MIR+/asO+qpxUWXUc9wYYEVP5JjXf
	VT7ftUqIUyWHjAbONtVFaN2HhdkLUbwD6FVAe79bLxxBAwLoqUBIGL7QHvTaP9rRi/UcVi
	JqwHeewzbdfQGamZmL0LVe74ri4pNa82dP8LK/pAplzpinI7qSCOCcIEIyoIX52jUxDSld
	Oy9uHI8JXfRVrhhG/MUki3/U9WDbD5GezpzNqUuZgxWPvMl4Igkd1inWvTPPCw==
Date: Mon, 22 Jan 2024 18:33:14 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <szucst@iit.uni-miskolc.hu>, Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Chris Morgan
 <macromorgan@hotmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable built-in thermal monitoring
 on rk3588
In-Reply-To: <CABjd4Yxw_wgjRRO12Zjy75=CA_uuucexVnhVRt3fURJFYQqYSw@mail.gmail.com>
References: <20240106222357.23835-1-alchark@gmail.com>
 <e0302da12345e5539583b2c96d747592@manjaro.org>
 <CABjd4Yw5wTLyK5OPw2S-ipPVCw7RTUeF2J0RgH-Vyis-ng8rTw@mail.gmail.com>
 <d7f2f25071a4d7c72bd286b11836dce7@manjaro.org>
 <CABjd4Yz11D8ThcT-oCWsQf9jL2idChFYSRYVVu3KNnzwoOwkKQ@mail.gmail.com>
 <f5c05015e042b11a51a9af26c35f18ed@manjaro.org>
 <CABjd4Yy91MAd2wALp4KQiEub9OyxU+MR+ti5KA_c+yvZT5xaqQ@mail.gmail.com>
 <81a5410c3dbedbd4fe9ce60ab236700c@manjaro.org>
 <CABjd4YwxoPrKRPmjn-eWsU1N5fXCjAbnRwfKD9DLKgeL2=vHrA@mail.gmail.com>
 <a15edb98c32ca79b75bd4eaf64734561@manjaro.org>
 <CABjd4Yxw_wgjRRO12Zjy75=CA_uuucexVnhVRt3fURJFYQqYSw@mail.gmail.com>
Message-ID: <c762d5d87189a77d62111b4f5a8c8166@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_093321_499394_E5AAA1EC 
X-CRM114-Status: GOOD (  30.69  )
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

T24gMjAyNC0wMS0yMiAxNToyMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gTW9uLCBKYW4g
MjIsIDIwMjQgYXQgMTE6NTfigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4g
Cj4gd3JvdGU6Cj4+IE9uIDIwMjQtMDEtMjIgMDg6MzYsIEFsZXhleSBDaGFya292IHdyb3RlOgo+
PiA+IE9uIE1vbiwgSmFuIDIyLCAyMDI0IGF0IDEwOjIy4oCvQU0gRHJhZ2FuIFNpbWljIDxkc2lt
aWNAbWFuamFyby5vcmc+IHdyb3RlOgo+PiA+PiBBcyBhIHN1Z2dlc3Rpb24sIGl0IHdvdWxkIGJl
IGdvb2QgdG8gdGVzdCB3aXRoIGEgY291cGxlIG9mIGRpZmZlcmVudAo+PiA+PiBmYW5zLCB0byBt
YWtlIHN1cmUgdGhhdCB0aGUgUFdNIHZhbHVlcyB3b3JrIHdlbGwgZm9yIG1vcmUgdGhhdCBvbmUg
ZmFuCj4+ID4+IG1vZGVsLiAgVGhlIFJvY2sgNUIgcmVxdWlyZXMgYSA1IFYgZmFuLCBpZiBJJ20g
bm90IG1pc3Rha2VuPwo+PiA+Cj4+ID4gSXQgaXMgNVYsIHllcy4gSSBvbmx5IGhhdmUgb25lIGZh
biB0byB0cnkgdGhvdWdoLCBhbmQgSSBzaW1wbHkgcmVsaWVkCj4+ID4gb24gdGhlIFBXTSB2YWx1
ZXMgdGhhdCBhcmUgYWxyZWFkeSBkZWZpbmVkIGluIHRoZSB1cHN0cmVhbQo+PiA+IHJrMzU4OC1y
b2NrLTViLmR0cy4gVGhleSBkb24ndCBsb29rIGlkZWFsIGZvciBteSBwYXJ0aWN1bGFyIGZhbiwK
Pj4gPiBiZWNhdXNlIHRoZSBsb3dlc3Qgbm9uLXplcm8gY29vbGluZyBzdGF0ZSBjdXJyZW50bHkg
dXNlcyBhIFBXTSB2YWx1ZQo+PiA+IG9mIDk1LCB3aGljaCBkb2Vzbid0IGFsd2F5cyBtYWtlIGl0
IHNwaW4gdXAuIEJ1dCBpbiB0aGUgZW5kIGl0IGRvZXNuJ3QKPj4gPiBzZWVtIHRvIG1hdHRlciB0
aGF0IG11Y2gsIGJlY2F1c2UgdGhhdCB0aW55IGZhbiBuZWVkcyB0byBzcGluIGF0IGZ1bGwKPj4g
PiAyNTUgd2hlbmV2ZXIgYWxsIGVpZ2h0IGNvcmVzIGFyZSBsb2FkZWQgKGFuZCBldmVuIHRoZW4g
aXQgY2FuIG9ubHkKPj4gPiBiYWxhbmNlIHRoZSB0ZW1wZXJhdHVyZSBhdCBhcm91bmQgNjAuNdCh
KSwgYW5kIHdoZW4gdGhlIGxvYWQgaXMgbGlnaHRlcgo+PiA+IChzdWNoIGFzIGR1cmluZyB2YXJp
b3VzIC4vY29uZmlndXJlIHJ1bnMpIGl0IGp1c3Qgc3dpdGNoZXMgb2ZmCj4+ID4gY29tcGxldGVs
eSBhcyB0aGUgdGVtcGVyYXR1cmUgZ29lcyBkb3duIHRvIDQ2QyBldmVuIHdpdGggdGhlIGZhbiBu
b3QKPj4gPiBzcGlubmluZy4KPj4gCj4+IEkgc2VlLCA1IFYgZmFucyB1bmZvcnR1bmF0ZWx5IGFy
ZW4ndCB2ZXJ5IGNvbW1vbi4gIEknbSBub3Qgc3VyZSB3aHkKPj4gUmFkeGEgb3B0ZWQgZm9yIDUg
ViB0aGVyZTsgIG1heWJlIHRoZSBnb2FsIHdhcyB0byB1c2UgUmFzcGJlcnJ5IFBpIDUgVgo+PiBm
YW5zLCBidXQgdXNpbmcgdGhvc2UgdGlueSBmYW5zIGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNlLCBJ
TUhPLgo+PiAKPj4gSSB0aGluayB5b3UgY2FuIGZyZWVseSBhZGp1c3QgdGhlIFBXTSB2YWx1ZXMg
YSBiaXQgdG8gbWFrZSB5b3VyIGZhbgo+PiBzdGFydCByZWxpYWJseSBhdCB0aGUgbG93ZXN0IHN0
YXRlLCByZWdhcmRsZXNzIG9mIGhvdyByYXJlbHkgdGhhdCAKPj4gc3RhdGUKPj4gd2lsbCBiZSB1
c2VkLiAgU2VlLCBpZiB5b3VyIGZhbiBkb2Vzbid0IHNwaW4gdXAgcmVsaWFibHkgd2l0aCB0aGUg
Cj4+IGN1cnJlbnQKPj4gbG93ZXN0IHN0YXRlLCBjaGFuY2VzIGZvciBvdGhlciBmYW4gbW9kZWxz
IG5vdCB0byBzcGluIHVwIGFyZSBxdWl0ZQo+PiBoaWdoLiAgSU9XLCBpdCdzIGJldHRlciB0byBw
bGF5IHNhZmUgdGhlcmUsIGlmIHlvdSBhZ3JlZS4KPj4gCj4+IFdoYXQga2luZCBvZiBoZWF0c2lu
ayBhcmUgeW91IHVzaW5nIHdpdGggeW91ciBSb2NrIDVCPyAgQWggeWVzLCBhbmQKPj4gd2hhdCdz
IHRoZSBhY3R1YWwgbW9kZWwgb2YgdGhlIGZhbiB5b3UncmUgdXNpbmc/Cj4gCj4gSSB1c2UgUmFk
eGEncyA0MDEyIGhlYXRzaW5rLWZhbiBhc3NlbWJseSB0aGF0IGNvbWVzIGFzIGFuIGFkZC1vbgo+
IG9wdGlvbiB3aGVuIGJ1eWluZyB0aGUgYm9hcmQgaXRzZWxmIGZyb20gQWxsbmV0LiBJIGd1ZXNz
IEknbGwgaW5jbHVkZQo+IHNsaWdodGx5IGFkanVzdGVkIFBXTSB2YWx1ZXMgaW4gdGhlIHJrMzU4
OC1yb2NrLTViLmR0cyBwYXRjaCB0byBiZXR0ZXIKPiByZXByZXNlbnQgbXkgZmFuJ3MgInByZWZl
cnJlZCIgcmFuZ2UgKGluIG15IGV4cGVyaWVuY2UgYSBQV00gdmFsdWUgb2YKPiBhcm91bmQgMTIw
IGlzIHRoZSByZWxpYWJsZSBsb3dlciBlbmQgLSBpdCB3b3VsZCBjb250aW51ZSBzcGlubmluZwo+
IGJlbG93IHRoYXQgcG9pbnQgYnV0IHdvbid0IGFsd2F5cyBzdGFydCB3aXRob3V0IGJlaW5nIHB1
c2hlZCBtYW51YWxseSkKClN1cmUsIGp1c3QgZ28gYWhlYWQuICBZb3UncmUgdXNpbmcgYW4gb2Zm
aWNpYWwgYWN0aXZlIGNvb2xpbmcgc29sdXRpb24KZm9yIHRoZSBSb2NrIDVCLCBzbyBhZGp1c3Rp
bmcgdGhlIFBXTSB2YWx1ZXMgYSBiaXQgdG8gbWFrZSB0aGUgZmFuIHN0YXJ0CnVwIHJlbGlhYmx5
IGlzIGV2ZW4gbW9yZSB3YXJyYW50ZWQuCgo+PiA+IEkgZG9uJ3QgY3VycmVudGx5IHVzZSB0aGUg
R1BVL05QVS9WUFUgdGhvdWdoIC0gbWF5YmUgdGhvc2Ugd291bGQKPj4gPiBwcm9kdWNlIG1vcmUg
bW9kZXJhdGUgbG9hZCB3aGljaCBjb3VsZCBiZW5lZml0IGZyb20gc3Bpbm5pbmcgdGhlIGZhbgo+
PiA+IGF0IG1lZGl1bSBzcGVlZHMuCj4+IAo+PiBQZXJoYXBzLCBidXQgaXQgd2lsbCBuZWVkIHRv
IGJlIHRlc3RlZCBhdCBzb21lIHBvaW50LiAgSGF2ZSB5b3UgdHJpZWQKPj4gbG9hZGluZyBvbmx5
IG9uZSBvciB0d28gQ1BVIGNvcmVzPwo+IAo+IEkgZG8gc2VlIHRoZSBmdWxsIHJhbmdlIG9mIFBX
TSB2YWx1ZXMgYmVpbmcgdXNlZCwgaW5jbHVkaW5nCj4gaW50ZXJtZWRpYXRlIG9uZXMuIEl0IGRv
ZXNuJ3QgZ28gemVybyB0byBoZXJvIDopIE15IHBvaW50IHdhcyBtb3JlCj4gYWJvdXQgdGhlIGRl
ZmF1bHQgZmFuIG5vdCBiZWluZyBzdXBlciBtaWdodHkgdnMuIHRoZSBmdWxsIHBhY2thZ2UKPiB0
aGVybWFsIG91dHB1dCwgd2hpY2ggd2lsbCBsaWtlbHkgbWVhbiB0aGF0IGludGVybWVkaWF0ZSB2
YWx1ZXMgYXJlCj4gcmFyZWx5IHVzZWQuIEJ1dCBJJ2xsIGRvdWJsZSBjaGVjayB3aXRoIG1vcmUg
dmFyaWVkIGxvYWRzIHRvIG1ha2Ugc3VyZQo+IGl0IGJlaGF2ZXMgaW4gYSBzZW5zaWJsZSB3YXkg
KGVzcGVjaWFsbHkgZ2l2ZW4gdGhhdCBJJ2xsIGJlIHRlc3RpbmcKPiBwdXJlbHkgaW50ZXJydXB0
LWRyaXZlbiBvcGVyYXRpb24gcGVyIERhbmllbCdzIGd1aWRhbmNlIGluIHRoZSBvdGhlcgo+IHN1
Yi10aHJlYWQpLgoKSSBzZWUsIHRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uIDopICBUaGUg
NDAxMiBmYW4gYW5kIGhlYXRzaW5rIHNlZW0KcmF0aGVyIHRpbnk7IFsxXSAgYSBtb3JlIGJlZWZ5
IGFzc2VtYmx5LCB3aXRoIG1vcmUgdGhlcm1hbCBtYXNzLCBsYXJnZXIKZmluIHN1cmZhY2UgYW5k
IGEgZmFuIHRoYXQgcHVzaGVzIGEgYml0IG1vcmUgYWlyIGFjcm9zcyBpdHMgUlBNIHJhbmdlLAp3
b3VsZCBwcm9iYWJseSByZXN1bHQgaW4gYSBub3RpY2VhYmx5IGJyb2FkZXIgdXNlIG9mIHRoZSBp
bnRlcm1lZGlhdGUKUFdNIHZhbHVlcy4KClsxXSAKaHR0cHM6Ly9zaG9wLmFsbG5ldGNoaW5hLmNu
L3Byb2R1Y3RzL2FjdGl2ZS1oZWF0LXNpbmstZm9yLXZpc2lvbmZpdmUtc2JjCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
