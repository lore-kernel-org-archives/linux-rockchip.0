Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F70FC98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 04:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKLfVMfp0MpEILhSbV08czNYwEgFJ5PgF9tDqg2i8lQ=; b=kBznbygurHfF/v
	8NfunZvWXw7dBc0V17AG2JxJMgx5rg7sYs99I6053KSLXPLkpoahsQXStYH+DP5uTviMWLMFA1IXq
	CC65a8idWcXYomvFhbHgW5Gadm9zn6lteCGaXgZH0l2yYNSuwgVZf0+u9+vdMx0cNniv9oLpXH5rT
	q9caawJqlPeIbtadx0hsjYEdL+tVgUmzIqKaqMoGvuoVEbtRB9kEggmN6G09qho9H4qDGvY58swvB
	+eEAkMmKrAMR/u/Kxy10R1zbCpZ+y0CLX/m3S2gJWL97ffcq5/9T2Ranmt+TmwB5vN2VjxyFOv74g
	ju1W2EB94kpiX2tHXBPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJaS-0000000EvX9-0Ity;
	Sat, 26 Sep 2026 04:00:32 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJaQ-0000000EvWb-2xyL;
	Sat, 26 Sep 2026 04:00:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7578E42E54;
	Sat, 26 Sep 2026 04:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22E2D1F000FF;
	Sat, 26 Sep 2026 04:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395230;
	bh=F4UBu+84T6JxlOLmyooaE0xl3mvL4E80lscJeguyt6k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bHyOVuAicfEfvrD5EUPlf+cLfE0R3n65imqvZRIrKibD9xfPaWgQKyDPj8o9ohuMQ
	 24JOK8xUwECa7WcNSUGcwSvEKFGDiOKLurxtI7OdzW4J2wsJ47QOFm7vK4MYOvIfsj
	 Lu8En2Q7VGyNOEj15L3JAlPTlYVBWbDoapq1Unl939ES4M+mzsnwn4wF7LqO6Wn4gC
	 p9zbwFfMf7DYDysh6WwF+fAz6CHIRvdswaTZZL09aYXnEES10FucKNhz/azJQ2O590
	 A7qtBRWZQQDXTdvvKZd6Xml4UfxhC074q4UGR0MHetrgzGJlGI1XPj2j9300UinqZN
	 sXibrWe5Gxs6w==
Date: Sat, 26 Sep 2026 06:00:08 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v15 09/16] phy: rockchip: usbdp: Fix LFPS detect
 threshold control
Message-ID: <wnpn67manvymzrkqcnfvemhu32ifycldjgb4gvx2fvpfvayayv@zdeb2caeykxj>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-9-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-9-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTZQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gRnJvbTogV2lsbGlhbSBXdSA8d2lsbGlhbS53dUByb2NrLWNoaXBzLmNvbT4K
PiAKPiBBY2NvcmRpbmcgdG8gdGhlIExGUFMgVHggTG93IFBvd2VyL0xGUFMgUnggRGV0ZWN0IFRo
cmVzaG9sZCBbMV0sCj4gdGhlIGRldmljZSB1bmRlciB0ZXN0KERVVCkgbXVzdCBub3QgcmVzcG9u
ZCBpZiBMRlBTIGJlbG93IHRoZQo+IG1pbmltdW0gTEZQUyBSeCBEZXRlY3QgVGhyZXNob2xkIDEw
MG1WLiBUZXN0IGZhaWwgb24gUm9ja2NoaXAKPiBwbGF0Zm9ybXMsIGJlY2F1c2UgdGhlIGRlZmF1
bHQgTEZQUyBkZXRlY3QgdGhyZXNob2xkIGlzIHNldCB0bwo+IDY1bVYuCj4gCj4gVGhlIFVTQkRQ
IFBIWSBMRlBTIGRldGVjdCB0aHJlc2hvbGQgdm9sdGFnZSBjb3VsZCBiZSBzZXQgdG8KPiAzMG1W
IH4gMTQwbVYsIGFuZCBzaW5jZSB0aGVyZSBjb3VsZCBiZSAxMC0yMCUgUFZUIHZhcmlhdGlvbiwK
PiB3ZSBzZXQgTEZQUyBkZXRlY3QgdGhyZXNob2xkIHZvbHRhZ2UgdG8gMTEwbVYuCj4gCj4gWzFd
IGh0dHBzOi8vY29tcGxpYW5jZS51c2Iub3JnL3Jlc291cmNlcy9MRlBTX1J4X1R4X0xvd19Qb3dl
cl9Db21wbGlhbmNlX1VwZGF0ZV9SZXY1LnBkZgo+IAo+IFNpZ25lZC1vZmYtYnk6IFdpbGxpYW0g
V3UgPHdpbGxpYW0ud3VAcm9jay1jaGlwcy5jb20+Cj4gW1Rha2VuIG92ZXIgZnJvbSByb2NrY2hp
cCdzIGtlcm5lbCB0cmVlOyB0aGUgcmVnaXN0ZXJzIGFyZSBub3QgZGVzY3JpYmVkCj4gaW4gdGhl
IFRSTV0KPiBSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFy
by5vcmc+Cj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+
ICMgT3JhbmdlIFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxz
ZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4g
U2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1h
bmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
