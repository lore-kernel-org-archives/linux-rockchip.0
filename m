Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C08DBC021BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Yjdk7UXBOP4b+INiqC18oE2U+q1SxtdrZ4rHs0zevs=; b=AaeYaFLBShJIRG
	q5VjRnFOgHb5mxbHYq//Ej8qb7M9/u/D0PUpIO7kR/gjFR1/iZdwaVGXE3lAFKAz+bAF/w44IU6eg
	kRn9d1YzA5UD56Dmf4DWG+Sh4xXTNHUpVwhpSYWMU4TgCLD4pdOE5++i3w/D3SefUVj09E8qCyWdz
	UiuPrIOBJUbxCkmfTRm53LJeshiQu/aW4r5+ru3xMg+B5ij3bglbnegi2Tath3zzg+FDgvVnBv3YV
	35tuwuW2Eafx/tXgDpaabDHBbSBdo5O+UQu2WVxUq2feMLU7UO2kj8R+nYHE8stpjILOtER0eLwzU
	4VPvuP8a+wJT/wWMJuiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnCfN-00000002rMX-0SkE;
	Wed, 26 Feb 2025 08:21:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnCRn-00000002oe0-08Pq;
	Wed, 26 Feb 2025 08:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=RTPCL3bJ22/BfZ0DYy+zPJ2HcQNthlLl55iYHSsXgf4=; b=fRP53DWuVGxiOES0oTWTWO40pa
	aQbMHORaTsVwKaFQnsDdyAO6FV5Pu5jiMrr6lVAfy2+Z3UOfhrHVSanu++BR3slgsrN7yXB4UkSWy
	X2auVT4MHLTC5wBWSrl9he6ntyojDcxdf/j9XUfVnAXBuihGbjgOTsNK39VVVp07tVTJExZ7NYjrk
	jj6pmdh4BqDYXpMB/3bfEcArywK1xToNDaMt+RHVjZzC8v2fKkg34zKyGcre3Rxcj+8j2Puc865/O
	g618ljGYIwK4KWm9Rw9H5xVn1imt6Nmhl6t80evJ8MwT+4pUXVPvr8yIIh8k6Wmcm93lFBLtGi0KK
	KjqbuwqA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnCRk-0004zD-A4; Wed, 26 Feb 2025 09:07:12 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>,
 Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add usb typec host support to
 rk3588-jaguar
Date: Wed, 26 Feb 2025 09:07:11 +0100
Message-ID: <1952248.GKX7oQKdZx@diego>
In-Reply-To: <18716872.sWSEgdgrri@diego>
References: <20250218211044.2256762-1-heiko@sntech.de>
 <c50c6053-4569-44b0-943d-5450960be147@cherry.de> <18716872.sWSEgdgrri@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_000715_090876_EDB9D16E 
X-CRM114-Status: GOOD (  30.21  )
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

QW0gRnJlaXRhZywgMjEuIEZlYnJ1YXIgMjAyNSwgMjI6NTM6MjAgTUVaIHNjaHJpZWIgSGVpa28g
U3TDvGJuZXI6Cj4gQW0gRnJlaXRhZywgMjEuIEZlYnJ1YXIgMjAyNSwgMTc6NDM6MDggTUVaIHNj
aHJpZWIgUXVlbnRpbiBTY2h1bHo6Cj4gPiBIaSBIZWlrbywKPiA+IAo+ID4gT24gMi8xOC8yNSAx
MDoxMCBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiA+IEZyb206IEhlaWtvIFN0dWVibmVy
IDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gPiA+IAo+ID4gPiBKYWd1YXIgaGFzIHR3byB0
eXBlLWMgcG9ydHMgY29ubmVjdGVkIHRvIGZ1c2IzMDIgY29udHJvbGxlcnMgdGhhdCBjYW4KPiA+
ID4gd29yayBib3RoIGluIGhvc3QgYW5kIGRldmljZSBtb2RlIGFuZCBjYW4gYWxzbyBydW4gaW4g
ZGlzcGxheS1wb3J0Cj4gPiA+IGFsdG1vZGUuCj4gPiA+IAo+ID4gPiBXaGlsZSB0aGVzZSBwb3J0
cyBjYW4gd29yayBpbiBkdWFsLXJvbGUgZGF0YSBtb2RlLCB0aGV5IGRvIG5vdCBzdXBwb3J0Cj4g
PiA+IHBvd2VyaW5nIHRoZSBkZXZpY2UgaXRzZWxmIGFzIHBvd2VyLXNpbmsuIFRoaXMgY2F1c2Vz
IGlzc3VlcyBiZWNhdXNlCj4gPiA+IHRoZSBjdXJyZW50IGluZnJhc3RydWN0dXJlIGRvZXMgbm90
IGNvcGUgd2VsbCB3aXRoIGR1YWwtcm9sZSBkYXRhCj4gPiA+IHdpdGhvdXQgZHVhbC1yb2xlIHBv
d2VyLgo+ID4gPiAKPiA+ID4gU28gYWRkIHRoZSBuZWNlc3Nhcnkgbm9kZXMgZm9yIHRoZSB0eXBl
LWMgY29udHJvbGxlcnMgYXMgd2VsbAo+ID4gPiBhcyBlbmFibGUgdGhlIHJlbGV2YW50IGNvcmUg
dXNiIG5vZGVzLCBidXQgbGltaXQgdGhlIG1vZGUgdG8gaG9zdC1tb2RlCj4gPiA+IGZvciBub3cg
dW50aWwgd2UgZmlndXJlIG91dCBkZXZpY2UgbW9kZS4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gPiAKPiA+IFdo
aWxlIHRoZSBVU0IgZnVuY3Rpb25hbGl0eSBkb2VzIHdvcmsgZm9yIGJvdGggcG9ydHMsIGFuZCB0
aGUgCj4gPiBvcmllbnRhdGlvbiBpcyBwcm9wZXJseSByZXBvcnRlZCwgaXQgc2VlbXMgbGlrZSB0
aGVyZSBtYXkgYmUgc29tZSBpc3N1ZSAKPiA+IHdpdGggaG93IHRoZSBQSFkgb3IgY29udHJvbGxl
ciBpbnRlcmFjdHMgd2l0aCB0aGF0IGluZm8gYmVjYXVzZSBJIGRvIG5vdCAKPiA+IGdldCBVU0Iz
IHNwZWVkcyB3aGVuIHRoZSBkZXZpY2UgaXMgaW5zZXJ0ZWQgaW4gcmV2ZXJzZSBvcmllbnRhdGlv
biwgCj4gPiB3aGlsZSBJIGRvIHdoZW4gaXQncyBpbiBub3JtYWwgb3JpZW50YXRpb24uCj4gCj4g
SSd2ZSB0ZXN0ZWQgYm90aCBwb3J0cyBhbmQgc2F3IHRoZSBpc3N1ZSB0b28uCj4gSW50ZXJlc3Rp
bmdseSBvbiB0aGUgdXNiZHAtcGh5IHNpZGUsIG9yaWVudGF0aW9uIGRldGVjdGlvbiBzZWVtcyBj
b3JyZWN0Cj4gYW5kIGFsc28gdGhlIHNidSBwaW5zIGFyZSBzZXQgYWNjb3JkaW5nbHkuCj4gCj4g
Cj4gPiBJIGFzc3VtZSB0aGF0J3MgdGhlIGNhc2UgZm9yIHRoZSBSb2NrIDUgSVRYIGFuZCBPcmFu
Z2UgUGkgNSsgYXMgd2VsbCBhbmQgCj4gPiBwcm9iYWJseSBoYXMgbm90aGluZyB0byBkbyB3aXRo
IHRoZSBEVD8KPiA+IAo+ID4gU2hvdWxkIHdlIGdvIHN0aWxsIGdvIG9uIHdpdGggdHJ5aW5nIHRv
IG1lcmdlIHRoaXMgcGF0Y2gga25vd2luZyB0aGF0PyBJIAo+ID4gbWVhbiBVU0IyIGlzIHN0aWxs
IGJldHRlciB0aGFuIG5vIFVTQiBhdCBhbGwgOikKPiA+IAo+ID4gK0NjIENoZW4tWXUsIG93bmVy
IG9mIGFuIE9yYW5nZSBQaSA1Kywgd2hvIG1heSBiZSBhYmxlIHRvIGNvbmZpcm0gdGhlIAo+ID4g
aXNzdWUgaXMgd2lkZXNwcmVhZC4KCkZvciByZWZlcmVuY2UsIGFmdGVyIGRpZ2dpbmcgYXJvdW5k
IEkgZm91bmQgb3V0IHRoYXQgdGhlIHVzYmRwLXBoeSBkb2VzIG5vdApoYW5kbGUgdGhlIG9yaWVu
dGF0aW9uIGNvcnJlY3RseSBidXQgcmVsaWVzIG9uIHNwZWNpZmljIGJlaGF2aW91ciBvZiB0aGUg
ZHdjMwpjb250cm9sbGVyIChzdXNwZW5kaW5nIGJldHdlZW4gdW5wbHVnIGFuZCBwbHVnaW4pLgoK
dXNiZHAtcGh5IHNlcmllcyBmaXhpbmcgdGhhdCBpcyBpbgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC8yMDI1MDIyNTE4NDUxOS4zNTg2OTI2LTEtaGVpa29Ac250ZWNoLmRl
LwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
