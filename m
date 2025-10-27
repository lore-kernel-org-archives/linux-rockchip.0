Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74225CCF9E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 16:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5+QY4XZDHzVoef5Fy+3Z+OOXMIBFk4CCSatSV6WS6Y=; b=LqcXlq+UNAWVtS
	4WQ3hHi14hIMes6+4LH12y4qS2YRr+L93iv61cMyYwa3ZJP+BbxsQbb7tKYyxYXWTs80h8wb7/iHO
	aZQaUqkNpNA9BRcQ/uHVsz8G4iy2VLEqEWYsODL7CPJornVTlwlJk/ixPyhUiLXO/gDZRF6tl358G
	/KKrFnjstg2CZ6g7134clVQJ+ipmctuidk1NBu75cFQ8poAmiiP2CtYd+K1XcI0E0uUSTLS76p0tr
	yBW2IJyI2IyUv0nWFBU89RsItCtgcQkD6X8IIMhaOoWeaB+QK7zwMFq1VqPCZTSdSjNSL0fJ98hkM
	o5k2pGv/dkAT01+wgF4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQNE-0000000EMOu-00Pt;
	Mon, 27 Oct 2025 16:47:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQNB-0000000EMOS-2Q6Z;
	Mon, 27 Oct 2025 16:47:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=6VropRRCJmyIDE6mt2lFPIyoGvs5jUPiwexBau4cLyg=; b=KPaZUyTDWThc0N7lTe/ONzVw0U
	ESn0Fa6QH5v87GZZ6plLOs7iA7tv/CUYy9djvkl2fnDloFoe5XRpSU0oqtSxWZBW3XR+URwVte/2W
	R+4WTo3iZ5QT7ZsKeBkIdwb5ie0EX5kP4jhA/BenkUcwqSW4ck1YTKiP84kcIOraRifLEta7N3662
	QuNhAZVmwpnU9K1Fx7IP0pQ2d+3QPicBeyuOxKh8yAH/UzJhaFKJxtIr4TafFrRR5ZklGk/kmC7N6
	O7kf9O2sGUHubyFX814JIxD4jFmdOjQPXJoIzAOZHSO2Gzri8pUkiRzSKE0i08NtNlxmPEAIZ2IHS
	BMfhM9tA==;
Received: from i53875be3.versanet.de ([83.135.91.227] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vDQMx-0002Ep-6h; Mon, 27 Oct 2025 17:46:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <diederik@cknow-tech.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Diederik de Haas <diederik@cknow-tech.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Harmonize regulator formatting for Pine64
 rk3566 devices
Date: Mon, 27 Oct 2025 17:46:54 +0100
Message-ID: <5054965.31r3eYUQgx@phil>
In-Reply-To: <DDSFVM1TXN8C.3JNX2M8XX04IF@cknow-tech.com>
References: <20251026153805.107774-1-diederik@cknow-tech.com>
 <DDSFVM1TXN8C.3JNX2M8XX04IF@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_094709_641205_9F3804F1 
X-CRM114-Status: GOOD (  24.10  )
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

QW0gU29ubnRhZywgMjYuIE9rdG9iZXIgMjAyNSwgMTg6NDQ6NDIgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBEaWVkZXJpayBkZSBIYWFzOgo+IE9uIFN1biBPY3QgMjYsIDIw
MjUgYXQgNDozNyBQTSBDRVQsIERpZWRlcmlrIGRlIEhhYXMgd3JvdGU6Cj4gPiBUaGUgcmVndWxh
dG9yIG5vZGUgcHJvcGVydGllcyBpbiBQaW5lNjQgcmszNTY2IGRldmljZXMgd2VyZSBmb3JtYXR0
ZWQKPiA+IHJhdGhlciBpbmNvbnNpc3RlbnRseS4gVG8gbmFtZSBhIGZldzoKPiA+IC0gJ25hbWUn
IHdhcyBzb21ldGltZXMgcHV0IGF0IHRoZSB0b3Agb2YgdGhlIGxpc3QsIHdoaWxlIGF0IG90aGVy
IHRpbWVzCj4gPiAgIGl0IHdhcyAobW9zdGx5KSBzb3J0ZWQgaW4gYWxwaGFiZXRpY2FsIG9yZGVy
Cj4gPiAtICdhbHdheXMtb24nIGFuZCAnYm9vdC1vbicgd2VyZSBzb21ldGltZXMgYXQgdGhlIHRv
cCBvZiB0aGUgbGlzdCwKPiA+ICAgc29tZXRpbWVzIG5vdAo+ID4gLSAnc3RhdGUtbWVtJyBub2Rl
cyBzb21ldGltZXMgaGFkIGEgcHJlY2VkaW5nIGJsYW5rIGxpbmUsIGFzIHRoZXkKPiA+ICAgc2hv
dWxkLCBidXQgc29tZXRpbWVzIG5vdAo+ID4gLSBvdGhlciBwcm9wZXJ0aWVzIHNlZW0gdG8gaGF2
ZSBiZWVuIGFkZGVkIHRvIHRoZSBlbmQgb2YgdGhlIGxpc3QsIG5vdAo+ID4gICBpbiB0aGVpciBh
bHBoYWJldGljYWwvbmF0dXJhbCBvcmRlcgo+ID4KPiA+IFNvIGhhcm1vbml6ZSB0aGUgZm9ybWF0
dGluZyBieSBtYWtpbmcgYWxsIHByb3BlcnRpZXMgc29ydGVkCj4gPiBhbHBoYWJldGljYWxseS9u
YXR1cmFsbHkuIEFuZCBoYXJtb25pemUgdGhlIGZvcm1hdHRpbmcgb2YgdGhlCj4gPiAnc3RhdGUt
bWVtJyBub2RlcyBzbyB0aGV5IGFsbCBoYXZlIGEgcHJlY2VkaW5nIGJsYW5rIGxpbmUuIFdoaWxl
IGF0IGl0LAo+ID4gYWxzbyBmaXggMiBpbmNvcnJlY3RseSBpbmRlbnRlZCBub2Rlcy4KPiA+Cj4g
PiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gCj4gSSBqdXN0IGZvdW5kIHNvbWUgYWRkaXRpb25h
bCBvbmVzLgo+IElmIHRoZXNlIGNoYW5nZXMgYXJlIGNvbnNpZGVyZWQgT0sgKGluIHByaW5jaXBs
ZSksIHRoZW4gSSdsbCBzZW5kIGEgdjIKPiBhdCBzb21lIHBvaW50LgoKT3JpZ2luYWxseSwgSSBh
bHdheXMgbGlrZWQgcmVndWxhdG9yLW5hbWUgdG8gYmUgb24gdG9wLCBpZGVudGlmeWluZwp0aGUg
cmVndWxhdG9yLCBzaW1pbGFyIHRvIGhvdyBjb21wYXRpYmxlIHdvcmtzLgoKQnV0IEkgZG8gaGF2
ZSB0byBjb25jZWRlIHRoYXQgdGhpcyBpcyBqdXN0IGFub3RoZXIgInNwZWNpYWwtY2FzZSIgb2YK
c3R5bGUtcHJlZmVyZW5jZSwgdGhhdCBtYWtlcyBpdCBoYXJkZXIgdG8gZXhwbGFpbiB0aGluZ3Mg
dG8gcGVvcGxlCmFuZCBpbiB0aGUgZW5kIHdlIHNob3VsZCBqdXN0IGZvbGxvdyB0aGUgZG9jdW1l
bnRlZCBzb3J0aW5nLCB3aXRob3V0CnRyaWJhbCBrbm93bGVkZ2UgOi0pIC4KCgpUaGUgb3RoZXIg
aXNzdWUgd2l0aCBtb3Zpbmcgc3R1ZmYgYXJvdW5kIGlzLCB0aGF0IGl0IG1ha2VzIGl0IGhhcmRl
cgp0byBmb2xsb3cgZ2l0IGhpc3RvcnksIGJlY2F1c2UgZ2l0IGJsYW1lIHRoZW4gcmVwb3J0cyB0
aGUgc29ydC1jb21taXQuCgoKSSBndWVzcyBpdCBpcyBvayBmb3IgaW5kaXZpZHVhbCBmaWxlcywg
c29tZW9uZSBkb2VzIHRha2UgY2FyZSBvZiwKbGlrZSBEaWVkZXJpayBmb3IgdGhlIFBpbmV0YWIs
IGJ1dCBwbGVhc2UgZG9uJ3Qgc3RhcnQgcmVzb3J0aW5nIGFsbCB0aGUKZXhpc3RpbmcgZGV2aWNl
dHJlZXMgOi0pIC4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
