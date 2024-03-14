Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DBB5C54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Mar 2024 13:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOAxP8o91c5jHXTaQff52oHQixi05alp/juTfcKr7Ds=; b=YMysk2+HtJpCRO
	6VUkyqcBMlJkBlsTbTf/UcbazGgaSKHLtIrvupQ2hTcFVRWrBK7m/rxOUtBxSQRnBlKLSegmqNbv5
	P7sZeSj27lfx6w8/FZk4MTyqGqxYNFacxWmZc0GMcVj0MQG28yPz3t1wWORwH2i0fAlzqTJzvE1NB
	jI1FRG0PjqtLi7JtNfcrB9A6k7ZaAmHKDp1InvI46yChA4ykw6za7AI7P7YdyVuEU6qzQ3Y7YFd0v
	ruEPVin6GIDz64DouHPXVcS3hxitXR8wPsLF7/V1t7AAnVov95Ht3hhVZTYQInAVHZRPxmfr+RsSH
	+tlpM8XTMcijnuVVHThQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rklSd-0000000EUB5-30LR;
	Thu, 14 Mar 2024 13:49:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rklSa-0000000EUAB-1gA8;
	Thu, 14 Mar 2024 13:49:29 +0000
Received: from i53875a9e.versanet.de ([83.135.90.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rklSU-00048K-FK; Thu, 14 Mar 2024 14:49:22 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 =?utf-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: mithat.guner@xeront.com, erkin.bozoglu@xeront.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: set PHY address of MT7531 switch to 0x1f
Date: Thu, 14 Mar 2024 14:49:21 +0100
Message-ID: <48986334.fMDQidcC6G@diego>
In-Reply-To: <3eb63e39-c7f2-4411-bb84-e4c152be1f0c@arinc9.com>
References: <20240314-for-rockchip-mt7531-phy-address-v1-1-743b5873358f@arinc9.com>
 <4682635.taCxCBeP46@diego> <3eb63e39-c7f2-4411-bb84-e4c152be1f0c@arinc9.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240314_064928_663813_ADE42C5C 
X-CRM114-Status: GOOD (  19.76  )
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

SGV5LAoKQW0gRG9ubmVyc3RhZywgMTQuIE3DpHJ6IDIwMjQsIDEzOjM3OjE5IENFVCBzY2hyaWVi
IEFyxLFuw6cgw5xOQUw6Cj4gSGVsbG8gSGVpa28uCj4gCj4gT24gMTQuMDMuMjAyNCAxNTozMSwg
SGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBBbSBEb25uZXJzdGFnLCAxNC4gTcOkcnogMjAyNCwg
MTM6MjQ6MzUgQ0VUIHNjaHJpZWIgQXLEsW7DpyDDnE5BTCB2aWEgQjQgUmVsYXk6Cj4gPj4gRnJv
bTogQXLEsW7DpyDDnE5BTCA8YXJpbmMudW5hbEBhcmluYzkuY29tPgo+ID4+Cj4gPj4gVGhlIE1U
NzUzMSBzd2l0Y2ggbGlzdGVucyBvbiBQSFkgYWRkcmVzcyAweDFmIG9uIGFuIE1ESU8gYnVzLiBJ
J3ZlIGdvdCB0d28KPiA+PiBmaW5kaW5ncyB0aGF0IHN1cHBvcnQgdGhpcy4gVGhlcmUncyBubyBi
b290c3RyYXBwaW5nIG9wdGlvbiB0byBjaGFuZ2UgdGhlCj4gPj4gUEhZIGFkZHJlc3Mgb2YgdGhl
IHN3aXRjaC4gVGhlIExpbnV4IGRyaXZlciBoYXJkY29kZXMgMHgxZiBhcyB0aGUgUEhZCj4gPj4g
YWRkcmVzcyBvZiB0aGUgc3dpdGNoLiBTbyB0aGUgcmVnIHByb3BlcnR5IG9uIHRoZSBkZXZpY2Ug
dHJlZSBpcyBjdXJyZW50bHkKPiA+PiBpZ25vcmVkIGJ5IHRoZSBMaW51eCBkcml2ZXIuCj4gPj4K
PiA+PiBUaGVyZWZvcmUsIGRlc2NyaWJlIHRoZSBjb3JyZWN0IFBIWSBhZGRyZXNzIG9uIEJhbmFu
YSBQaSBCUEktUjIgUHJvIHRoYXQKPiA+PiBoYXMgdGhpcyBzd2l0Y2guCj4gPj4KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBBcsSxbsOnIMOcTkFMIDxhcmluYy51bmFsQGFyaW5jOS5jb20+Cj4gPiAKPiA+
IEZpeGVzOiBjMTgwNDQ2M2U1YzYgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIG10NzUzMSBk
c2Egbm9kZSB0byBCUEktUjItUHJvIGJvYXJkIikKPiAKPiBEbyBJIG5lZWQgdG8gcmVzdWJtaXQg
d2l0aCB0aGlzIGFkZGVkLCBvciB3b3VsZCB5b3UgYWRkIGl0IHdoaWxlIGFwcGx5aW5nCj4gdGhl
IHBhdGNoPwoKbm9wZSwgYWxsIGdvb2QuIGI0IGFtIHNob3VsZCBqdXN0IHBpY2sgdXAgdGhpcyB0
cmFpbGVyIHdoZW4gaXQgZG93bmxvYWRzCnRoZSBwYXRjaCBmcm9tIGxvcmUua2VybmVsLm9yZy4K
ClRoYXQncyB0aGUgcmVhc29uIEkgYWRkZWQgaXQgYXMgYSByZXBseSwgYXMgd2UncmUganVzdCBp
biB0aGUgbWlkZGxlIG9mIHRoZQptZXJnZSB3aW5kb3cgcmlnaHQgbm93LgoKSGVpa28KCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
