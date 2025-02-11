Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD814C0219B
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 13:02:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Na902eWSe5a+mzr8zK//8Yw5mFaSrQhOtkuCoF6ei8=; b=f+mYXtgX0eRgkp
	xeBzaSvIRci3zI2LPFsY91nXx2QeFP3A/g3Rp9hlLcnlFdYfSz87na8E1g5f4tguK9e48NSejOC+w
	l2rL98aoM2QfEBkUzHAZDc1w35SzBIYBP170uPvuYUUoVmMo0uPLUjhpKQ5JyJqP8XKhZuIG7o2PL
	UFoeLxy2AGnfdxIWUMyJ54atgwkWceek5TpfbPz3iJhXhEgkIBoBCInpLM8VmlQeL2T/EUBeWel7L
	wCrkXdv06V9LgjWRwxnlSLPSkxUIf1FClKgVGHHZs2pKe0oVXx9S7kkL7Nb9tx5qMthPvdu9DPB1D
	sjSRAw0F8nUdo9mxWFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thpuR-00000003sGj-2uNB;
	Tue, 11 Feb 2025 13:02:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thpHs-00000003kxP-3xlU;
	Tue, 11 Feb 2025 12:22:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 39729A402B0;
	Tue, 11 Feb 2025 12:21:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE2CC4CEDD;
	Tue, 11 Feb 2025 12:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739276567;
	bh=4K8z8+aPyeTQjXPiAwW/jC9wdrJjdLUvKNE1gq5BkA8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mQPvXg1KkJtQWn8OkwbQBFy4BC94aSKTUgHnrO12Ryg/0uJHHEzFeSZJq0ZIyYojX
	 vXmjhyNYsTC18XK+FTrxKfsCwD6k9nkDihstrcUbVec8YMM1PPyBQNI/fGTuDDq22m
	 554LY6+UBma+SrHeljagbISwqvOCy1xb3ZMSN4BmN2+y+tHiDiLdyXo66qFIBMzt3A
	 B+vlvUfGHlWfCtT8TGJ3VKLlvnDmRS4trFQRKv0pcNYZjoWR9Q1vXcnc2kbfwoiWhT
	 WERq9sapIx+PRz57TA7CMRRE7pk/jcijNb2SfikO8OtfqK+tIgsItctxlFzGcJq2JS
	 3efbYz6E7b5cQ==
Date: Tue, 11 Feb 2025 13:22:42 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Patrick Wildt <patrick@blueri.se>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, robin.murphy@arm.com
Subject: Re: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
Message-ID: <Z6tBElUDaPNgkaIf@ryzen>
References: <Z6pxme2Chmf3d3uK@windev.fritz.box>
 <25203566.ouqheUzb2q@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25203566.ouqheUzb2q@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_042249_108795_6B9C2C2A 
X-CRM114-Status: GOOD (  21.68  )
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

T24gVHVlLCBGZWIgMTEsIDIwMjUgYXQgMDg6NDA6MjVBTSArMDEwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gTW9udGFnLCAxMC4gRmVicnVhciAyMDI1LCAyMjozNzoyOSBNRVogc2Nocmll
YiBQYXRyaWNrIFdpbGR0Ogo+ID4gVGhlIFNNTVUgYXJjaGl0ZWN0dXJlIHJlcXVpcmVzIHdpcmVk
IGludGVycnVwdHMgdG8gYmUgZWRnZSB0cmlnZ2VyZWQsCj4gPiB3aGljaCBkb2VzIG5vdCBhbGln
biB3aXRoIHRoZSBEVCBkZXNjcmlwdGlvbiBmb3IgdGhlIFJLMzU4OC4gIFRoaXMgbGVhZHMKPiA+
IHRvIGludGVycnVwdCBzdG9ybXMsIGFzIHRoZSBTTU1VIGNvbnRpbnVlcyB0byBob2xkIHRoZSBw
aW4gaGlnaCBhbmQgb25seQo+ID4gcHVsbHMgaXQgZG93biBmb3IgYSBzaG9ydCBhbW91bnQgd2hl
biBpc3N1aW5nIGFuIElSUS4gIFVwZGF0ZSB0aGUgRFQKPiA+IGRlc2NyaXB0aW9uIHRvIGJlIGlu
IGxpbmUgd2l0aCB0aGUgc3BlYyBhbmQgcGVyY2VpdmVkIHJlYWxpdHkuCj4gPiAKPiAKPiBDYydl
ZCBOaWtsYXMKPiAKPiBUaGlzIHNob3VsZCBwcm9iYWJseSBhbHNvIGdldCBhCj4gCj4gRml4ZXM6
IGNkODFkM2EwNjk1YyAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgcmszNTg4IHBjaWUgYW5k
IHBocCBJT01NVXMiKQoKQWdyZWVkLgoKCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBQYXRyaWNrIFdp
bGR0IDxwYXRyaWNrQGJsdWVyaS5zZT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaSB8IDE2ICsrKysrKysrLS0tLS0tLS0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4gPiBpbmRleCA4
Y2ZhMzA4MzdjZTcuLjUyMGQwODE0YTRkZSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCj4gPiBAQCAtNTQ5LDEwICs1NDksMTAgQEAg
dXNiX2hvc3QyX3hoY2k6IHVzYkBmY2QwMDAwMCB7Cj4gPiAgCW1tdTYwMF9wY2llOiBpb21tdUBm
YzkwMDAwMCB7Cj4gPiAgCQljb21wYXRpYmxlID0gImFybSxzbW11LXYzIjsKPiA+ICAJCXJlZyA9
IDwweDAgMHhmYzkwMDAwMCAweDAgMHgyMDAwMDA+Owo+ID4gLQkJaW50ZXJydXB0cyA9IDxHSUNf
U1BJIDM2OSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+ID4gLQkJCSAgICAgPEdJQ19TUEkgMzcx
IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gPiAtCQkJICAgICA8R0lDX1NQSSAzNzQgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPiwKPiA+IC0JCQkgICAgIDxHSUNfU1BJIDM2NyBJUlFfVFlQRV9MRVZF
TF9ISUdIIDA+Owo+ID4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM2OSBJUlFfVFlQRV9FREdF
X1JJU0lORyAwPiwKPiA+ICsJCQkgICAgIDxHSUNfU1BJIDM3MSBJUlFfVFlQRV9FREdFX1JJU0lO
RyAwPiwKPiA+ICsJCQkgICAgIDxHSUNfU1BJIDM3NCBJUlFfVFlQRV9FREdFX1JJU0lORyAwPiwK
PiA+ICsJCQkgICAgIDxHSUNfU1BJIDM2NyBJUlFfVFlQRV9FREdFX1JJU0lORyAwPjsKPiA+ICAJ
CWludGVycnVwdC1uYW1lcyA9ICJldmVudHEiLCAiZ2Vycm9yIiwgInByaXEiLCAiY21kcS1zeW5j
IjsKPiA+ICAJCSNpb21tdS1jZWxscyA9IDwxPjsKPiA+ICAJfTsKPiA+IEBAIC01NjAsMTAgKzU2
MCwxMCBAQCBtbXU2MDBfcGNpZTogaW9tbXVAZmM5MDAwMDAgewo+ID4gIAltbXU2MDBfcGhwOiBp
b21tdUBmY2IwMDAwMCB7Cj4gPiAgCQljb21wYXRpYmxlID0gImFybSxzbW11LXYzIjsKPiA+ICAJ
CXJlZyA9IDwweDAgMHhmY2IwMDAwMCAweDAgMHgyMDAwMDA+Owo+ID4gLQkJaW50ZXJydXB0cyA9
IDxHSUNfU1BJIDM4MSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+ID4gLQkJCSAgICAgPEdJQ19T
UEkgMzgzIElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gPiAtCQkJICAgICA8R0lDX1NQSSAzODYg
SVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPiA+IC0JCQkgICAgIDxHSUNfU1BJIDM3OSBJUlFfVFlQ
RV9MRVZFTF9ISUdIIDA+Owo+ID4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM4MSBJUlFfVFlQ
RV9FREdFX1JJU0lORyAwPiwKPiA+ICsJCQkgICAgIDxHSUNfU1BJIDM4MyBJUlFfVFlQRV9FREdF
X1JJU0lORyAwPiwKPiA+ICsJCQkgICAgIDxHSUNfU1BJIDM4NiBJUlFfVFlQRV9FREdFX1JJU0lO
RyAwPiwKPiA+ICsJCQkgICAgIDxHSUNfU1BJIDM3OSBJUlFfVFlQRV9FREdFX1JJU0lORyAwPjsK
PiA+ICAJCWludGVycnVwdC1uYW1lcyA9ICJldmVudHEiLCAiZ2Vycm9yIiwgInByaXEiLCAiY21k
cS1zeW5jIjsKPiA+ICAJCSNpb21tdS1jZWxscyA9IDwxPjsKPiA+ICAJCXN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4gPiAKClBhdHJpY2ssIHRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoIQoKRldJVywgdGhl
eSBoYXZlIHRoZSBzYW1lIGJ1ZyBpbiBkb3duc3RyZWFtOgpodHRwczovL2dpdGh1Yi5jb20vcmFk
eGEva2VybmVsL2Jsb2IvbGludXgtNi4xLXN0YW4tcmtyNC4xL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy5kdHNpI0wyNzYxLUwyNzgzCgpIb3dldmVyLCB0aGUgUm9ja2NoaXAg
UENJZSBWaXJ0dWFsaXphdGlvbiBEZXZlbG9wZXIgR3VpZGUgY29ycmVjdGx5IGRlZmluZQp0aGUg
SVJRcyBhcyBlZGdlIHRyaWdnZXJlZDoKaHR0cHM6Ly9kbC5yYWR4YS5jb20vdXNlcnMvZGV2L1Jv
Y2tjaGlwX1BDSWVfVmlydHVhbGl6YXRpb25fRGV2ZWxvcGVyX0d1aWRlX0NOLnBkZgoKTG9va2lu
ZyBhdCB0aGUgQVJNIFNNTVV2MyBhcmNoaXRlY3R1cmUgc3BlY2lmaWNhdGlvbjoKIkFuIGltcGxl
bWVudGF0aW9uIG11c3Qgc3VwcG9ydCBvbmUgb2YsIG9yIG9wdGlvbmFsbHkgYm90aCBvZiwgd2ly
ZWQKaW50ZXJydXB0cyBhbmQgTVNJcy4gV2hldGhlciBhbiBpbXBsZW1lbnRhdGlvbiBzdXBwb3J0
cyBNU0lzIGlzIGRpc2NvdmVyYWJsZQpmcm9tIFNNTVVfSURSMC5NU0kgYW5kIFNNTVVfU19JRFIw
Lk1TSS4gQW4gaW1wbGVtZW50YXRpb24gbWlnaHQgc3VwcG9ydCB3aXJlZAppbnRlcnJ1cHQgb3V0
cHV0cyB0aGF0IGFyZSBlZGdlLXRyaWdnZXJlZC4gVGhlIGRpc2NvdmVyeSBvZiBzdXBwb3J0IGZv
ciB3aXJlZAppbnRlcnJ1cHRzIGlzIElNUExFTUVOVEFUSU9OIERFRklORUQuIgoKVGh1czoKUmV2
aWV3ZWQtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgoKCkhlaWtvLCB0aGlz
IHBhdGNoIHNob3VsZCBnbyB0byA2LjE0LgoKU2lkZSBub3RlOiBXZSBhbHNvIGhhdmUgYW5vdGhl
ciBTTU1VIHBhdGNoIHRoYXQgc2hvdWxkIGdvIHRvIDYuMTQ6Cmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwMjA3MTQzOTAwLjIwNDc5NDktMi1jYXNzZWxAa2VybmVs
Lm9yZy8KCgpLaW5kIHJlZ2FyZHMsCk5pa2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
