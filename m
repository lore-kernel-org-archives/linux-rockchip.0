Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67781C5AE49
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSJiBs7rLboJ4+0gRGB32Emuz61O00G3tuVpJjOHG9c=; b=rtJOLy3ugXu/OA
	+mNuGAR/KmXeKGyXf0yBxsoBjzlKszbBYc51PsTVqHRWcyKW+yvtoBxpgzQYLUlae3ahXENvVCEb3
	DGKZfTuypVtFyfYR9vKAU5e+G2zZagBPBSJDkCeQq3bc2VjYjBdYTbmnR5coAHEKFi7NXPfTgA/AE
	8zahRFKtpOhiePOX3AKGozA7/fl1dM//zm+qojxpBCT+RKrKBA3pP6dOs+QQgPCkNsRVexevLQCn5
	RFKcxtd/NszadOW65vCVSdvS3v445JttTfZxk8MH/RN6WdfhSKl/g0vOPlyhD9/+jKLI6yTdJN6Xy
	TIBOSawj9sL6XNjvh0YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtQtW-0000000BzoG-1nYD;
	Mon, 10 Aug 2026 14:22:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtQtU-0000000BzmS-0nzp;
	Mon, 10 Aug 2026 14:22:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GhwEdgw1eS6x2GnAB8+xUx5g7XCO3z3euQwzEiNsX54=; b=Rb+8A/uRKck+KYbV+gowS7WzxV
	DfEICFdVFXlH3BV2lGwqafae9rR5+A+KRKrVTEJdo2+Zm3iA6Fdl21Z7TOWoBrZfLf+ZEn5IQ/yEp
	qIq5ZiO4tPAejsEuF7uwHZ5jRqZysqLrDLRxwR8yw2AseH3jXNGY7ByFjYSAysWC4r/eEH5Qi3ygo
	w+ej4UMDyRImiJuhq2P6if1CHgXISymSHwK087IVmXKFxT8BvIGyFpmAoNbiruUlZQELi4DUAROcz
	eEiY1WpUPY9M18OZMd1vC3iMv2EwpyINY12xu0buLMQyVUZO9hQjfU6YjuyBugBqG14N0NmmZLLKC
	SEW/N98w==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@collabora.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v3] arm64: defconfig: enable Rockchip Multimedia drivers
Date: Mon, 10 Aug 2026 16:22:06 +0200
Message-ID: <7979630.8F6SAcFxjW@diego>
In-Reply-To: <63bbce33-9427-4585-a1bb-dc4af05e981f@kernel.org>
References: <20260808-rockchip-defconfig-additions-v3-1-0ed67877e94d@collabora.com>
 <5738059.NG923GbCHz@diego> <63bbce33-9427-4585-a1bb-dc4af05e981f@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_072224_246453_01BC8BF0 
X-CRM114-Status: GOOD (  17.97  )
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

QW0gTW9udGFnLCAxMC4gQXVndXN0IDIwMjYsIDA3OjQ3OjUyIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiAwOC8wOC8yMDI2IDE2
OjA2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+IEFtIFNhbXN0YWcsIDguIEF1Z3VzdCAyMDI2
LCAwMjo0MjoyNiBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFNlYmFzdGlh
biBSZWljaGVsOgo+ID4+IEVuYWJsZSBtdWx0aW1lZGlhIHJlbGF0ZWQgZHJpdmVycyB1c2VkIGJ5
IHRoZSBSYWR4YSBST0NLIDVCICh1c2VkIGFzIGFuCj4gPj4gZXhhbXBsZSwgdGhlIGNvbmZpZyBv
cHRpb25zIGFyZSByZWxldmFudCBmb3IgbW9zdCBSb2NrY2hpcCBSSzM1ODggYW5kCj4gPj4gUksz
NTc2IGJvYXJkcyksIHNvIHRoYXQgYWxsIGhhcmR3YXJlIGlzIHN1cHBvcnRlZCBieSB0aGUgZGVm
YXVsdCBjb25maWcuCj4gPj4KPiA+PiAgKiBTeW5vcHN5cyBNSVBJIENTSTJSWCAtIFJLMzU4OCBD
U0kyIENvbnRyb2xsZXIKPiA+PiAgKiBSS1ZERUMgLSBSSzM1ODgvUkszNTc2IHZpZGVvIGRlY29k
ZXIgZm9yIEguMjY0IGFuZCBILjI2NQo+ID4+ICAqIFNvbnkgSU1YNDE1IC0gU2Vuc29yIHVzZWQg
YnkgdGhlIFJhZHhhIENhbSA0SyBtb2R1bGUKPiA+PiAgKiBSb2NrZXQgLSBSSzM1ODggTlBVIGRy
aXZlcgo+ID4+ICAqIFZlcmlzaWxpY29uIElPTU1VIC0gSU9NTVUgdXNlZCBieSBSSzM1ODggQVYx
IHZpZGVvIGRlY29kZXIKPiA+PiAgKiBJbm5vc2lsaWNvbiBDU0kgRC1QSFkgLSBSSzM1ODggQ1NJ
IFBIWSAob25lIG9mIHRoZW0pCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiA+IAo+ID4gSSdtIG5vdCBz
dXJlIHdoYXQgdGhlIGFjdHVhbCBydWxlIGZvciBkZWZjb25maWcgY2hhbmdlcyBpcy4KPiA+IAo+
ID4gSW4gc29tZSBwYXN0IHRocmVhZCBJIHJlbWVtYmVyIChob3BlZnVsbHkgY29ycmVjdGx5KSBL
cnp5c3p0b2Ygc2F5aW5nCj4gPiB0aGF0IHRoZSBhcm02NCBkZWZjb25maWcgaXMgbm90IHN1cHBv
c2VkIHRvIGJlIGEgZGlzdHJvLWNvbmZpZywgc28KPiA+IGVuYWJsaW5nIGVhY2ggYW5kIGV2ZXJ5
IGRyaXZlciB3YXMgbm90IHRoZSBnb2FsLgo+ID4gCj4gPiBPbiB0aGUgb3RoZXIgaGFuZCwgaGUg
ZGlkIG5vdCByZXBlYXQgdGhhdCBpbiBoaXMgcmVwbHkgdG8geW91ciB2MSA7LSkgLgo+ID4gCj4g
PiBXZSdyZSBhdCAtcmM3IHRvbW9ycm93LCBzbyBpdCdkIGJlIDcuNCBtYXRlcmlhbCBhbnl3YXks
IHNvIGVub3VnaCB0aW1lCj4gPiB0byBnZXQgImNvbXBsYWludHMiIEkgZ3Vlc3MgOy0pIC4KPiAK
PiBJIGJlbGlldmUgZGVmY29uZmlnIGlzIHN0aWxsIG1vc3RseSBmb3IgdXMgYW5kIHRoZSBwYXRj
aCBmaXRzIHRoaXMKPiBwdXJwb3NlIC0geW91IG5lZWQgdGhlc2UgdG8gZnVsbHkgdXNlIG1lbnRp
b25lZCB1cHN0cmVhbSBoYXJkd2FyZS4KPiAKPiBJIGxlYXJudCB0aGF0IGZldyBkaXN0cm9zIChJ
IHRoaW5rIEZlZG9yYSkgdXNlIGRlZmNvbmZpZyBkaXJlY3RseQo+IGluc3RlYWQgb2YgY3VzdG9t
aXppbmcgaXQgbGlrZSBVYnVudHUgZG9lcywgc28gYW55d2F5IG1heWJlIHdlIHNob3VsZAo+IGVu
YWJsZSBldmVyeXRoaW5nIGZvciBnaXZlbiBoYXJkd2FyZS4KCnRoYW5rcyBhIGxvdCBmb3IgdGhl
IGNsYXJpZmljYXRpb24sIEknbGwgcm9sbCB3aXRoIHRoYXQgaW4gdGhlIGZ1dHVyZSA6LSkKCgpI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
