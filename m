Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEB36C5DF70
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 09:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sytqCsTIwRsGYTGdoUarvBP1x0UUHApd2DMTe6Du3gA=; b=ViuSaRVoiGuWHo
	1/Sb974zNNpteJ62eQYzGSTLnqSrLpsuxGByX5BZRq7S95BXBKusrSW+0AHBE0r18wgYlHNMNaKiU
	tlLCwJpHt92++Vwyr3UjzcMQcN/YJRJ25MMuCKZBXS+jdw4iTDJPA20r/1FhY38C23GgyWJE6pZl2
	p6gjfGbI2hJF8dZKc5bFPrtgFGi+8YUkfceeKdiNypgaM1s0HHgcQuf51AM8BSpsDenWgx4sbVX0v
	RsZBh2xMbs6fjyUUp9sF7Ks+7iDYFNNqdBV2QZLlX3SC9o0SqFv+tGOrI7tGTMo9SOUatko5oC4Iu
	bQunpz68F6/EtsJUw4Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwG6M-00000007cPy-3O7T;
	Tue, 18 Aug 2026 09:27:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwG6L-00000007cP0-0kpI;
	Tue, 18 Aug 2026 09:27:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EA5194365B;
	Tue, 18 Aug 2026 09:27:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 807891F00A3D;
	Tue, 18 Aug 2026 09:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787045240;
	bh=pCAeP45dNHcS3g9M4gwt3hWaJQOzRtTIoJ9n13+qIfo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FXKhSwse5JpUIXXbguePgh5Q4+Wjri1Bk6ZOg8YeaYZemFTg1obCHqVZG2uPbI1Ea
	 zi6eiRfzz5dqkwzZpjf4gRxD5f5DD4tKT/8aBvA4zmkDWwV/BbCO6tOlMONcexyKou
	 g0AfU95Db6jL5E0+9H2sBm2hLkTjUPYtCpN2td0tzyqpLwNaB1ECxjqkGFQ5mWelvw
	 Xn4jH5f6IvgGaQt51GRfoklu1XNSBevKtjELBHLNMiK0+s0c8cIBJ83EHhbHk6IPpk
	 RVz8GwpdEeLJfzDAaR/JqoUfwUQwZRHwbqldpRS7P93yPKEivpwLdNxzy9R/QKCC+L
	 oll2GRe8z2ltQ==
Date: Tue, 18 Aug 2026 11:27:07 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org, linux-usb@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
	William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v14 00/38] phy: rockchip: usbdp: Clean up the mess
Message-ID: <h54c2hrcsv3zjzzgojzf5sjmu3vtpobz6rwloam5kp7mwqqn3n@bqjnlellvnz6>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com>
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

T24gVGh1LCBBdWcgMTMsIDIwMjYgYXQgMTA6NTE6NDNQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhpcyBzZXJpZXMgZG9lcyBhIG1ham9yIG92ZXJoYXVsIG9mIHRoZSBSb2Nr
Y2hpcCBVU0JEUCBkcml2ZXIuIFRoZQo+IGluaXRpYWwgbWFpbiBnb2FsIHdhcyB0byBhZGQgVVNC
LUMgRFAgQWx0TW9kZSBzdXBwb3J0IHRvIHRoZSBSSzM1NzYKPiBhbmQgUkszNTg4IGFuZCB0aGlz
IHNlcmllcyBzdGlsbCBwcmVwYXJlcyB0aGUgUEhZIGRyaXZlciBmb3IgZXhhY3RseQo+IHRoYXQu
IEJ1dCBpbiBhZGRpdGlvbiB0byB0aGF0IEkgdW5jb3ZlcmVkIGEgaHVnZSBhbW91bnQgb2YgaXNz
dWVzLAo+IHRoYXQgYXJlIGZpeGVkIGFsb25nIHRoZSB3YXkuIFNvbWUgb2YgdGhlIG1vcmUgaW50
ZXJlc3Rpbmcgb25lcyBhcmU6Cj4gCj4gICogQ3VycmVudGx5IHRoZSBkcml2ZXIgbWlnaHQgdHJp
Z2dlciBhIGZhdGFsIFNFcnJvciBvbiBVU0ItQyBob3RwbHVnLAo+ICAgIHNpbmNlIHJlLWluaXRp
YWxpemluZyB0aGUgUEhZIHN0b3BzIHRoZSBjbG9ja3MgZ29pbmcgdG8gRFdDMy4gSWYKPiAgICB0
aGUgRFdDMyBkcml2ZXIgdHJpZXMgdG8gYWNjZXNzIGl0cyByZWdpc3RlcnMgYXQgdGhlIHNhbWUg
dGltZSB0aGUKPiAgICBzeXN0ZW0gd2lsbCBjcmFzaC4KPiAgKiBUaGUgRFdDMyBoYXJkd2FyZSBj
YW4gZ2V0IGludG8gYSBidWdneSBzdGF0ZSB3aGVuIHRoZSBQSFkgaXMKPiAgICBkaXNhYmxlZCwg
d2hpY2ggcmVzdWx0cyBpbiB0aGUgUEhZIG5vdCBjb21pbmcgdXAgcHJvcGVybHkgYWdhaW4uCj4g
ICogU3dpdGhjaW5nIHRoZSBVU0ItQyBjb25uZWN0b3Igb3JpZW50YXRpb24gZHVyaW5nIGhvdHBs
dWcgYnJlYWtzCj4gICAgVVNCMyBzcGVlZCwgYXMgdGhlIFBIWSBpcyBub3QgYmVpbmcgcmUtaW5p
dGlhbGl6ZWQuCj4gICogVGhlIGNvZGUgYWx3YXlzIGVuYWJsZXMgRFAgbW9kZSB3aGVuIFVTQi1D
IGlzIGludm9sdmVkLgo+ICAqIFRoZSBkcml2ZXIgaGFzIHNvbWUgbG9ja2luZyBpc3N1ZXMgdW5j
b3ZlcmVkIGJ5IFNhc2hpa28uCj4gCj4gSW4gYWRkaXRpb24gdG8gdGhlc2UgYmlnZ2VyIG9uZXMs
IFNhc2hpa28gYWxzbyBmb3VuZCBhIGJ1bmNoIG9mCj4gbWlub3IgcHJvYmxlbXMsIHdoaWNoIGFy
ZSBtb3N0bHkgaGFybWxlc3MsIGJ1dCB3ZXJlIGZpeGVkIHdoaWxlCj4gZ29pbmcgYXQgaXQuCj4g
CgozOCBwYXRjaGVzIGZvciBhIHNpbmdsZSBzZXJpZXMgaXMgdG9vIG11Y2ggdG8gcmV2aWV3LiBQ
bGVhc2UgY29uc2lkZXIgc3BsaXR0aW5nCml0IHVwIGludG8gbXVsdGlwbGUgc2VyaWVzIG5vdCBl
eGNlZWRpbmcgfjEwIHBhdGNoZXMgcGVyIHNlcmllcy4gVGhhbmtzIQoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
