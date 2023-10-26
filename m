Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F95C25B48
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 21:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c6/54nXswztr/BQ932quUyAm787fXtwkKX9N4A5FVM=; b=TQ+43rTAyYjfGy
	Y6GOY5I6N2Z9HF/cUVkAR9bOAqQDE/xHO+08Ip7Dm8UgeYXCTi/F5BFTGwnaj71p8sw/tpcT+Q15h
	IZF7bk7O1i+9Mt87sYcDN0KRzaYVEk3Z9CrodeEqjnMGfrHZq5owbUiCZUx3lD1ZQggrKH7BjT7s+
	A6L9Xw8s0TCVZ3pD2M9q8Ik7g9jf2GqjHIzfrRf3yEHCTT+coMEfHIB7wDXMDXdoqFF1VUzBv6mM7
	8fj+aHUIkTe8oMBE2GdWZRi+3hGDbR09NqxUPbmdoEsLR20gQrNR7OMSTgGIg87gWZCQBjNJEruOi
	BSwn9rHI4Yf08y6Jc3hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7vR-00FBAy-1O;
	Thu, 26 Oct 2023 21:29:57 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7vO-00FB97-1E;
	Thu, 26 Oct 2023 21:29:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C4E5DCE0CF0;
	Thu, 26 Oct 2023 21:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E515EC433C8;
	Thu, 26 Oct 2023 21:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698355787;
	bh=+YN2wOtRkIWdM84iVFF3QLRFT0RlayTMutqyrR645Ug=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=YigZCOfaYFjhOlTe0VXDV9sMkkTwtrgGZL7mV5vejHxUIMuz7sG3CWmWA1b05pFQM
	 ZAzBHz2izg0P8TKDSS2cZxc6b7orMYYCnbIHdnquWwKa0UmlkiKBXixkaS7V0B7QpC
	 7GhrTOMQekPtI3WMy8bTUSRfuPeVkqLmBoGfpBaeJ+qWR3S/6OKX7oEwbtAbv6fzie
	 cd8/hr5kQhkEep5DEZURwbDz6AoVCtpVjbYSSqNUow8ThN8PK+VkR5Vmh0KnhNx5ZC
	 dDIm0lna8pups1MNtMevU0uuhlDhvf7qn9S0pV3BSwCTX0ghs+v23tZHzXjOPlXqVG
	 1aP6DsTkSXvYQ==
Message-ID: <c7508360d19fd20d398a43b62fbc2d93.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <ac6f04ef-97b1-3dd9-a086-772a10f0a66b@rock-chips.com>
References: <20231018070144.8512-1-zhangqing@rock-chips.com> <b0af9e04bafb07e8a73e8f242a4ff556.sboyd@kernel.org> <20231025194849.4esjw4w2trgalp55@mercury.elektranox.org> <dc96dc36c6df1d3bfa3006298e353f39.sboyd@kernel.org> <ac6f04ef-97b1-3dd9-a086-772a10f0a66b@rock-chips.com>
Subject: Re: [PATCH v4 0/4] rockchip: add GATE_LINK
From: Stephen Boyd <sboyd@kernel.org>
Cc: conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, huangtao@rock-chips.com, andy.yan@rock-chips.com
To: Sebastian Reichel <sebastian.reichel@collabora.com>, zhangqing <zhangqing@rock-chips.com>
Date: Thu, 26 Oct 2023 14:29:44 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_142954_596074_25088A47 
X-CRM114-Status: GOOD (  20.16  )
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

UXVvdGluZyB6aGFuZ3FpbmcgKDIwMjMtMTAtMjUgMTk6MjU6NDMpCj4gCj4g5ZyoIDIwMjMvMTAv
MjYgNTo0MCwgU3RlcGhlbiBCb3lkIOWGmemBkzoKPiA+IFF1b3RpbmcgU2ViYXN0aWFuIFJlaWNo
ZWwgKDIwMjMtMTAtMjUgMTI6NDg6NDkpCj4gPj4gSGVsbG8gU3RlcGhlbiwKPiA+Pgo+ID4+IE9u
IE1vbiwgT2N0IDIzLCAyMDIzIGF0IDA2OjQ3OjE3UE0gLTA3MDAsIFN0ZXBoZW4gQm95ZCB3cm90
ZToKPiA+Pj4gUXVvdGluZyBFbGFpbmUgWmhhbmcgKDIwMjMtMTAtMTggMDA6MDE6NDApCj4gPj4+
PiBSZWNlbnQgUm9ja2NoaXAgU29DcyBoYXZlIGEgbmV3IGhhcmR3YXJlIGJsb2NrIGNhbGxlZCBO
YXRpdmUgSW50ZXJmYWNlCj4gPj4+PiBVbml0IChOSVUpLCB3aGljaCBnYXRlcyBjbG9ja3MgdG8g
ZGV2aWNlcyBiZWhpbmQgdGhlbS4gVGhlc2UgZWZmZWN0aXZlbHkKPiA+Pj4+IG5lZWQgdHdvIHBh
cmVudCBjbG9ja3MuCj4gPj4+PiBVc2UgR0FURV9MSU5LIHRvIGhhbmRsZSB0aGlzLgo+ID4+PiBX
aHkgY2FuJ3QgcG0gY2xrcyBiZSB1c2VkIGhlcmU/IFRoZSBxY29tIGNsayBkcml2ZXIgaGFzIGJl
ZW4gZG9pbmcgdGhhdAo+ID4+PiBmb3Igc29tZSB0aW1lIG5vdy4KPiA+Pj4KPiA+Pj4gICAkIGdp
dCBncmVwIHBtX2Nsa19hZGQgLS0gZHJpdmVycy9jbGsvcWNvbS8KPiA+PiBNYXliZSBJJ20gbWlz
dGFrZW4sIGJ1dCBhcyBmYXIgYXMgSSBjYW4gdGVsbCB0aGlzIGlzIGFkZGluZyB0aGUKPiA+PiBk
ZXBlbmRlbmN5IG9uIGNvbnRyb2xsZXIgbGV2ZWwgYW5kIG9ubHkgd29ya3MgYmVjYXVzZSBRdWFs
Y29tbQo+ID4+IGhhcyBtdWx0aXBsZSBzZXBhcmF0ZSBjbG9jayBjb250cm9sbGVycy4gSW4gdGhl
IFJvY2tjaGlwIGRlc2lnbgo+ID4+IHRoZXJlIGlzIG9ubHkgb25lIHBsYXRmb3JtIGRldmljZS4K
PiA+Pgo+ID4+IE5vdGUsIHRoYXQgdGhlIG9yaWdpbmFsIGRvd25zdHJlYW0gY29kZSBmcm9tIFJv
Y2tjaGlwIGFjdHVhbGx5IHVzZWQKPiA+PiBwbV9jbGsgaW5mcmFzdHJ1Y3R1cmUgYnkgbW92aW5n
IHRoZXNlIGNsb2NrcyB0byBzZXBhcmF0ZSBwbGF0Zm9ybQo+ID4+IGRldmljZXMuIEkgY2hhbmdl
ZCB0aGlzIHdoZW4gdXBzdHJlYW1pbmcgdGhlIGNvZGUsIHNpbmNlIHRoYXQgbGVha3MKPiA+PiBp
bnRvIERUIGFuZCBmcm9tIERUIHBvaW50IG9mIHZpZXcgdGhlcmUgc2hvdWxkIGJlIG9ubHkgb25l
IGNsb2NrCj4gPj4gY29udHJvbGxlci4KPiA+Pgo+ID4gV2h5IGNhbid0IHRoZSByb2NrY2hpcCBk
cml2ZXIgYmluZCB0byBhIHNpbmdsZSBkZXZpY2Ugbm9kZSBhbmQgbWFrZQo+ID4gc3ViLWRldmlj
ZXMgZm9yIGVhY2ggY2xrIGRvbWFpbiBhbmQgcmVnaXN0ZXIgY2xrcyBmb3IgdGhvc2U/IE1heWJl
IGl0Cj4gPiBjYW4gdXNlIHRoZSBhdXhpbGlhcnkgZHJpdmVyIGluZnJhc3RydWN0dXJlIHRvIGRv
IHRoYXQ/Cj4gCj4gT3B0aW9uIDE6Cj4gCj4gVXNlIHRoZSBjdXJyZW50IHBhdGNoIHRvIGFkYXB0
IHRoZSBHQVRFX0xJTksgdHlwZSB1cHN0cmVhbS4KPiAKPiBUaGUgcmVhbCBmdW5jdGlvbiBvZiBH
QVRFX0xJTksgaXMgaW1wbGVtZW50ZWTjgIIKPiAKPiBKdXN0IHRvIGltcHJvdmUgYW5kIGFkYXB0
IHRoZSBleGlzdGluZyBmZWF0dXJlcyBvbiB1cHN0cmVhbS4KPiAKPiAKPiBPcHRpb24gMjoKPiAK
PiBXaGF0IHdlIHVzZSBvbiBvdXIgaW50ZXJuYWwgYnJhbmNoZXMgYXJlOgoKRG9lcyB0aGlzIHJl
cXVpcmUgRFQgY2hhbmdlcz8gSWYgc28sIGl0J3MgYSBub24tc3RhcnRlci4gV2h5IGNhbid0CmF1
eGlsaWFyeSBkZXZpY2VzIGJlIHVzZWQ/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
