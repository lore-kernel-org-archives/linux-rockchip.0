Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2249AC43602
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 18:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTJIFQNdDC4v4WnEbs84DM1ifig8BDxHZYOK16g7ImY=; b=F8tDQVCNFsJMHA
	UBijN3pXE2YiNw3Go8F32nf2dtv6fuTPb4+EtcXLm+VaKktZ8Ex660WMD7bw3bLTCwOXkk5iL/qLS
	j0d66eY003yrF22Y4eUo3XMOHwd5/8QfV3AVk2Y7ymi+3Vvp/cgLsPHn90DiQVsh9Q3249gdZ8KkH
	jyxHmWBztERyYJDUVMn3FHkpat7PXtfVt85iEK6uMnzkUUlKg/vCffa8SzfZY+oyFXcDIJ724psCO
	BVRGBW5y4a5QC3yV4w68A6yC6c/QN3ooSTSSh3JpwqgSdwZAgtcHGDXmrUu4aV6kksq8BBay7xsvW
	vHQwfVUd1FHeBMasQmIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whASb-0000000FdXf-0CFY;
	Tue, 07 Jul 2026 18:23:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whASV-0000000FdWk-1bvn;
	Tue, 07 Jul 2026 18:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9JLJ0FpKM3qj52tf+7FbBXdfMaILfM/b7TzkNMXuLMs=; b=CGltUv6A8vNWyR6tnpsfe2ZOCQ
	JsAUW8Wrl8Jf6IDsfJvhIElhExWMpJ/Z/8WxZq5M/BwokI+6YCXoLZnwQzy0tJIEMX5AVoFVcAWml
	suUNS8GcSbCu+pd/KrNtbYBThifK89bbiGtIoSiKifux/D54RU999mk60Dh9Ujgv+gH6ZJQ7+STlE
	4jXjFZT3GSEnJwLEtDjDrNGMdZBBjJpb/4NI6T3V4nz9WK16fMb0Ys3Dm/LnwElUMW09UZWl+teC6
	U8S7EjJOwr0pjZHRAxncYs6FBeirD8AV7F6ABn6pXAEP1XuvC8EQ0pkRnjqgHn42p8hOBxaWNcVxE
	SCcwBPiw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: Hrushiraj Gandhi <hrushirajg23@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Tue, 07 Jul 2026 20:23:47 +0200
Message-ID: <14045151.uLZWGnKmhe@phil>
In-Reply-To: <20260707160354.GB3176120-robh@kernel.org>
References: <20260608060940.52549-1-hrushirajg23@gmail.com>
 <178301901903.3838694.3276523670393868229.b4-ty@sntech.de>
 <20260707160354.GB3176120-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_112352_026298_D848BD12 
X-CRM114-Status: GOOD (  16.35  )
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

QW0gRGllbnN0YWcsIDcuIEp1bGkgMjAyNiwgMTg6MDM6NTQgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBSb2IgSGVycmluZzoKPiBPbiBUaHUsIEp1bCAwMiwgMjAyNiBhdCAw
OTowNDo1NVBNICswMjAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+IAo+ID4gT24gTW9uLCAw
OCBKdW4gMjAyNiAxMTozOTozOCArMDUzMCwgSHJ1c2hpcmFqIEdhbmRoaSB3cm90ZToKPiA+ID4g
VGhpcyBzZXJpZXMgYWRkcyBpbml0aWFsIGRldmljZSB0cmVlIHN1cHBvcnQgZm9yIHRoZSBWaWNo
YXJhayBBeG9uCj4gPiA+IHNpbmdsZS1ib2FyZCBjb21wdXRlciwgd2hpY2ggaXMgYmFzZWQgb24g
dGhlIFJvY2tjaGlwIFJLMzU4OCBTb0MuCj4gPiA+IAo+ID4gPiBUaGUgVmljaGFyYWsgQXhvbiBp
cyBhIGZlYXR1cmUtcmljaCBTQkMgdGFyZ2V0aW5nIGRldmVsb3BlciBhbmQgZW1iZWRkZWQKPiA+
ID4gdXNlIGNhc2VzLiBJdCBzaGlwcyB3aXRoOgo+ID4gPiAKPiA+ID4gICAtIFJvY2tjaGlwIFJL
MzU4OCAoNHggQ29ydGV4LUE3NiArIDR4IENvcnRleC1BNTUpCj4gPiA+ICAgLSBSSzgwNiBQTUlD
IHByb3ZpZGluZyBhbGwgU29DIHBvd2VyIGRvbWFpbnMKPiA+ID4gICAtIGVNTUMgNS4xIChvbi1i
b2FyZCkgYW5kIG1pY3JvU0Qgc2xvdAo+ID4gPiAgIC0gR2lnYWJpdCBFdGhlcm5ldCB2aWEgUkdN
SUkgKFJUTDgyMTFGKQo+ID4gPiAgIC0gRHVhbCBIRE1JIDIuMSBvdXRwdXQgYW5kIG9uZSBIRE1J
IDIuMCBpbnB1dCAocmVjZWl2ZXIpCj4gPiA+ICAgLSBQQ0llIDMuMCB4NCBhbmQgdHdvIFBDSWUg
Mi4wIHNsb3RzCj4gPiA+ICAgLSBTQVRBIDMuMAo+ID4gPiAgIC0gVVNCIDIuMCBob3N0IHBvcnRz
IChFSENJL09IQ0kpCj4gPiA+ICAgLSBOWFAgUENBOTU1NCBJL08gZXhwYW5kZXIgZm9yIHN0YXR1
cyBMRURzCj4gPiA+ICAgLSBIYW95dSBIWU04NTYzIFJUQwo+ID4gPiAKPiA+ID4gWy4uLl0KPiA+
IAo+ID4gQXBwbGllZCwgdGhhbmtzIQo+ID4gCj4gPiBbMS8yXSBkdC1iaW5kaW5nczogYXJtOiBy
b2NrY2hpcDogYWRkIFZpY2hhcmFrIEF4b24gYm9hcmQKPiA+ICAgICAgIGNvbW1pdDogZTAwMDhi
MTA4YWFmOGM1YWEyMjkzMGIyY2VhZGY4Zjg5NDU2MmFjYgo+ID4gWzIvMl0gYXJtNjQ6IGR0czog
cm9ja2NoaXA6IGFkZCBWaWNoYXJhayBBeG9uIGJvYXJkCj4gPiAgICAgICBjb21taXQ6IGUwOGMz
Mzg5Yzc4ZGJlZmQzMWE1N2RmODgwN2NmNTdlZjZmM2M5YjEKPiAKPiBCb3RoIGhhdmUgaXNzdWVz
IGFuZCBzaG91bGQgYmUgZHJvcHBlZC4KCkkndmUgZHJvcHBlZCBib3RoIHRoZSBBeG9uIGFzIHdl
bGwgYXMgdGhlIFZhYW1hbjIgYm9hcmQgZnJvbSB0aGUKc2FtZSB2ZW5kb3Igbm93LgoKVGhlIHdo
b2xlIHRoaW5nIGlzIGNvbmZ1c2luZy4KCkkgc2hvdWxkJ3ZlIGNhdWdodCB0aGUgcGluY3RybCBp
c3N1ZSwgYW5kIGRvIHJlbWVtYmVyIHJ1bm5pbmcgYSBkdGJzY2hlY2sKb24gYXQgbGVhc3Qgb25l
IFZjaGFyYWsgYm9hcmQgLSBidXQgdGhhdCBtdXN0IGhhdmUgYmVlbiB0aGUgVmFhbWFuMiBib2Fy
ZApiZWNhdXNlIHRoZXJlIHRoZSBwbWljIGZ1bGxmaWxscyB0aGUgYmluZGluZyAoYW5kIGdlbmVy
YWwgc2V0dXAgb2Ygb3RoZXIKcmszNTg4IGJvYXJkcykuCgpUaGUgdmVuZG9yLXByZWZpeCBpcyBt
aXNzaW5nIGluZGVlZC4gSSBmb3VuZCBlYXJsaWVyIHZlcnNpb25zIG9mIHRoZQp2ZXJzaW9uLWF2
YWxhbmNoZSBoYWQgaXQsIHVwIHVudGlsIHY2IFswXSAuIFRob3VnaCBJIGhhdmVuJ3QgZmlndXJl
ZCBvdXQKeWV0IHdoeSBpdCB3YXMgbG9zdC4KCkhlbmNlIEkgZHJvcHBlZCBib3RoIGJvYXJkcy4K
CgpIcnVzaGlyYWo6IHBsZWFzZSBzdGFydCBhbmV3IHdpdGggYm90aCBib2FyZHMuCgpCdXQgaW5j
bHVkZSBhbGwgdGhlIHRhZ3MgeW91IHJlY2VpdmVkIGluIHByZXZpb3VzIHZlcnNpb25zLgoKCkhl
aWtvCgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjYwNjAx
MTYyMTQzLjE3MDAzMC0yLWhydXNoaXJhamcyM0BnbWFpbC5jb20vCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
