Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B1CD597C1
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 00:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gaHlVIIw/JrHHa2MEyMNVnDAxNqhWa0N+MIuTdUaW+A=; b=GkSMkt0SjwE7lHiC5GQmfyW4PQ
	A6cwdfiGoAI+xQtvwOC9OHFoy6YW/DCIEYnN1AxZ++ZrWGmvogfbQCWSX2acNv+aq/Us9v9EO4T/i
	XZrcLvXtGHP0vOvSNuFA5NI8TsKQQziGRzLXqMPkqLq2oIA0FmztDbI7dQmw+DGfliJKJ9MLHELAT
	5uIqXVOmvQRGINdSXKtDd8uaaEMkMGhC7/4FnvVNepFPJ6GJyYQOLVQKt3Aolu77/jOEN/FLznJ6x
	VoDEZfsC1VWWlqSJwWqSV5fu4hpab9E5EuQmfpuqeI7XXSlSg1eNka9WK5ABOEq79LqOJ/lH7mAlj
	9AlQ1LDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB1Hu-00000005PfD-3aCE;
	Wed, 13 Nov 2024 00:31:14 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB0GJ-00000005HN0-3P8t;
	Tue, 12 Nov 2024 23:25:33 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731453929;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jfGfhX/60wKOjIGQemt3Pw+kuswpotS/o+x+NvMi1fw=;
	b=sZivjMBQomCGF+mskHkPDQfwxXTIBR89ZtoMiCh4EHKlRR1+DgLwnLx+w0EpZ15f+Q5Qc5
	klc3ywdOgC6vmMAUIliO1ONW3C+WYt515DFfSZ0lPNuyXsZDq/Slm9w6lnxT93JrdVQcDM
	eU13jNq4Va+AoUcu0klIUARwUEAmy7H93xPZZU+Lu8/0u8F4u/V7mHncCgPbgs6kQs8z4C
	pk0azoAb59HhToAAvFJBlt/3xb9ApT2go8i2F4h8NoOfIVGa72+ja66WCKyRosTB/V2039
	Nb8D7D6d60xJ7VTPhZ1Si0yn5BNSeoDuAQgEfl2WnzJQfT8OfJZEKGUiijxgTw==
Date: Wed, 13 Nov 2024 00:25:28 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@linux.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki
 <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Enable UART8 on rock-3b
In-Reply-To: <CA+GksrJjDPve29Vh7ZFhM+JFp058xmXZAPeuLuFth7v=JeiH2w@mail.gmail.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-4-tszucs@linux.com>
 <4ba81dfa-f276-4e05-b46b-92f50dbcfcc4@kwiboo.se>
 <CA+GksrJLpeU8x-kjR1Ng3ySf+giiufCsJuBssng9qoX1PjAunA@mail.gmail.com>
 <9330ebb370780c001fd2aaee49aec9e8@manjaro.org>
 <CA+GksrJjDPve29Vh7ZFhM+JFp058xmXZAPeuLuFth7v=JeiH2w@mail.gmail.com>
Message-ID: <0eb19e4daf2cdf3d4a04935876c3d3b0@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_152532_159646_4C372FDB 
X-CRM114-Status: GOOD (  21.46  )
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

SGVsbG8gVGFtYXMsCgpPbiAyMDI0LTExLTEyIDIyOjA0LCBUYW3DoXMgU3rFsWNzIHdyb3RlOgo+
IE9uIFR1ZSwgTm92IDEyLCAyMDI0IGF0IDQ6MDfigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gCj4gd3JvdGU6Cj4+IFBsZWFzZSBjb3JyZWN0IG1lIGlmIEknbSB3cm9uZywg
YnV0IGlzbid0IHRoaXMgVUFSVCBzdXBwb3NlZCB0byBiZQo+PiB1c2VkIGZvciB0aGUgQmx1ZXRv
b3RoIHBhcnQgb2YgYW4gU0RJTyBXaUZpICsgQmx1ZXRvb3RoIG1vZHVsZSwgaW4KPj4gZm9ybSBv
ZiBhIG5vbi1zdGFuZGFyZCBNLjIgbW9kdWxlIHRoYXQgUmFkeGEgc2VsbHM/Cj4gCj4gVUFSVDgg
aXMgc3VwcG9zZWQgdG8gYmUgdXNlZCBmb3IgYW55IHJhZGlvIG1vZHVsZSBjb25uZWN0ZWQgdG8g
dGhlIE0yRQo+IGNvbm5lY3Rvci4KPiBJdCB3aWxsIHR5cGljYWxseSBiZSByZXNwb25zaWJsZSBm
b3IgQmx1ZXRvb3RoIG9yIEJMRSBidXQgaXQgY291bGQgYmUKPiA4MDIuMTUuNCBvciB3aGF0ZXZl
ci4gSW4gYW55IGNhc2UsIGFsbCB3YW50aW5nIHRvIHVzZSBpdCB3aWxsIG5lZWQgdGhlCj4gdWFy
dDggbm9kZSBlbmFibGVkLgoKSSBzZWUsIGJ1dCBJJ20gc3RpbGwgZ3Vlc3Npbmcgd2hhdCdzIHRo
ZSBhY3R1YWwgdXNlIG9mIGVuYWJsaW5nIHRoZQpVQVJUOCB3aGVuIGl0IHdpbGwgcmVtYWluIHBy
ZXR0eSBtdWNoIHVzZWxlc3Mgd2l0aG91dCB0aGUgYWRkaXRpb25hbApEVCBjb25maWd1cmF0aW9u
LCBzdWNoIGFzIGluIHRoZSBXaUZpK0JsdWV0b290aCBEVCBvdmVybGF5IHRoYXQgSm9uYXMKc2Vu
dCBhIGJpdCBlYXJsaWVyPwoKSSB0aGluayB0aGF0IHRoZSBVQVJUOCBzaG91bGQgYmUgZW5hYmxl
ZCB0b2dldGhlciB3aXRoIHNvbWV0aGluZyB0aGF0CmFjdHVhbGx5IG1ha2VzIHVzZSBvZiBpdCwg
d2hpY2ggaW4gdGhpcyBjYXNlIHVuZm9ydHVuYXRlbHkgY2Fubm90IGJlCmF1dG9tYXRpY2FsbHkg
ZGV0ZWN0ZWQgYW5kIGNvbmZpZ3VyZWQsIHNvIGl0IGJlbG9uZ3MgdG8gYSBEVCBvdmVybGF5LgpJ
J2xsIGdldCBiYWNrIHRvIHRoaXMgaW4gbXkgbmV4dCByZXNwb25zZS4KCj4+IFdpdGggdGhhdCBp
biBtaW5kLCBJIHNlZSB2ZXJ5IGxpdHRsZSBzZW5zZSBpbiBqdXN0IGVuYWJsaW5nIHRoZSBVQVJU
LAo+PiB3aXRob3V0IGRlZmluaW5nIHRoZSBlbnRpcmUgQmx1ZXRvb3RoIGludGVyZmFjZSwgd2hp
Y2ggQUZBSUsgcHJvZHVjZXMKPiAKPiBEZWZpbmluZyBhIGJsdWV0b290aCBub2RlIHdvdWxkIGhh
cmR3aXJlIGlkaW9zeW5jcmFzaWVzIG9mIGEgZ2l2ZW4KPiByYWRpbyBtb2R1bGUncyBCbHVldG9v
dGggY29yZS4gU3VyZSB5b3UgY291bGQgYWRkIGEgc2xlZXAgY2xvY2ssIGFsbAo+IGtpbmQgb2Yg
c2lkZWJhbmQgc2lnbmFscyBmb3Igd2FrZXVwcywgcmVzZXQsIHBvd2VyIGRvd24sIGV0Yy4gQnV0
IGhleSwKPiBzb21lIHdpbGwgdXNlIHRoZW0sIHNvbWUgd29uJ3QuIEkgdGhpbmsgaXQncyB1bmRl
c2lyYWJsZSBhbmQKPiB1bm5lY2Vzc2FyeS4gWW91IGNhbiBoY2lhdHRhY2ggZnJvbSBoZXJlIGFu
ZCBtb3N0IHdpbGwgd29yayBqdXN0IGxpa2UKPiB0aGF0LiBUaWdodGVyIGludGVncmF0aW9uIG9y
IGFueXRoaW5nIHNwZWNpYWwsIG1vZHVsZSBzcGVjaWZpYyBvbiB0b3AKPiBzaG91bGQgYmUgaGFu
ZGxlZCBpbmRpdmlkaWFsbHksIG9uIGEgY2FzZS1ieS1jYXNlIGJhc2lzLiBUaGlzIGlzIGEgZGV2
Cj4gYm9hcmQgYWZ0ZXIgYWxsLiBJIHNheSB0cmljayBvZiBhbGwgdHJhZGVzLgo+IAo+PiBuYXN0
eSBsb29raW5nIGVycm9yIG1lc3NhZ2VzIGluIHRoZSBrZXJuZWwgbG9nIHdoZW4gdGhlcmUncyBh
Y3R1YWxseQo+PiBub3RoaW5nIGNvbm5lY3RlZCB0byB0aGUgVUFSVC4KPiAKPiBNeSBkbWVzZyBp
cyBjbGVhbiBhcyBhIHdoaXN0bGUKPiByb290QHJvY2stM2I6fiMgZG1lc2cgfCBncmVwIC1FICdm
ZTZjMDAwMHx0dHlTMCcKPiBbICAgIDAuMzQ0ODE4XSBmZTZjMDAwMC5zZXJpYWw6IHR0eVMwIGF0
IE1NSU8gMHhmZTZjMDAwMCAoaXJxID0gMjYsCj4gYmFzZV9iYXVkID0gMTUwMDAwMCkgaXMgYSAx
NjU1MEEKPiBXaGF0IGtpbmQgb2YgbmFzdHkgZXJyb3JzIGRvIHlvdSByZWNhbGw/CgpUaG9zZSB3
b3VsZCBiZSB0aGUga2VybmVsIGVycm9yIG1lc3NhZ2VzIHByb2R1Y2VkIHdpdGggdGhlIEJsdWV0
b290aApEVCBjb25maWd1cmF0aW9uIGluIHBsYWNlLCBidXQgd2l0aCBubyBTRElPIG1vZHVsZSBp
bnN0YWxsZWQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
