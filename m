Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6836C9831E
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 03:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x5YswZ6PASPO14PFyv3o8r+CQq0TiTevGN+ueNnB36Y=; b=SkRbaDEV+Mh1jN
	cKv4u1FoPbhAE7GI/gJS2tPqV3wkyv7lQB+aF0Kv+eICa8wuCfFGQen4Fw7HODewcwVo7clqbwcEG
	Mek2Mpl7xZ3qqd6svzfqHKa+P4R5jJdlYS9cq5U7E+aQDDIAx2W4kC1b2KO3P0cH9FRCiW1+DbnJW
	LN7oQqGMWHi00Ky+mELFHUS5FBBxk4RnD6TpArowV4nLl338QT1tgBYX3ELcPZBGRHrLoP3s9Qlr9
	kafbMnBbP3Qko1chwmp8WKGJ93RMMH5mmoipd5obZdLL7FEhOxwYo505RMUiyiz9Qo6ugR4igbmrw
	g0IvN1rG3rwXeqngESrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJAg-0000000EujM-28GH;
	Sat, 26 Sep 2026 03:33:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJAe-0000000Euiu-2ixz;
	Sat, 26 Sep 2026 03:33:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0E8E960136;
	Sat, 26 Sep 2026 03:33:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA58B1F000FF;
	Sat, 26 Sep 2026 03:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790393630;
	bh=jf1FH52jwHgmL5zPjI/lMbEvsc5J4y9mrndOtK0fvKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TPYWDtP0OrK+F8SdC2HWTJnV2b8oqaGUweRy3xPpc4tDcfq6EnyVNF+j/5lkEkXef
	 w4bnEjb2qPZtAFtCGuvLi0QxxwWfOD2LCVg6qaRyg1QaFDlYZYJkbyvQ8e8+cdyvX9
	 lx39p7JslJ6B4FZ9ntwMb6By7qjJPc8HXdB/Hhd3aq8a3tldQMztprMNFBwTyovcii
	 0PfwTh8OMFjNvL4coegGmIJbeYdUccEq2u4NBbvHvzp/2rK7w3z7oMNfEH0vO6wjfL
	 SdalEgR5RQW3nDTY9QYGCXzitRBNmHMYLsC58uaSyoYXc4A3d7ATGEUpCQCdF0hHuW
	 oVfdcFn7kwTVg==
Date: Sat, 26 Sep 2026 05:33:34 +0200
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
	devicetree@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v15 06/16] phy: rockchip: usbdp: Drop seamless DP takeover
Message-ID: <zuabgt3rv3bhpjxayb5rvdak6ocnigy6ip4avzkjo3lltwtjps@f3hc5lrqjj2t>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-6-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-6-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTNQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gUmlnaHQgbm93IHRoZSBEUk0gZHJpdmVycyBkbyBub3Qgc3VwcG9ydCBzZWFt
bGVzcyBEUCB0YWtlb3ZlciBhbmQgSSdtCj4gSSdtIG5vdCBhd2FyZSBvZiBhbnkgYm9vdGxvYWRl
ciBpbXBsZW1lbnRpbmcgdGhpcyBmZWF0dXJlIGVpdGhlci4KPiAKPiBJbiBhbnkgY2FzZSB0aGlz
IGZlYXR1cmUgd291bGQgYmUgbGltaXRlZCB0byBib2FyZHMgdXNpbmcgdGhlIFVTQkRQIFBIWQo+
IGZvciBhIERQIG9yIGVEUCBjb25uZWN0aW9uIGluc3RlYWQgb2YgdGhlIG1vcmUgY29tbW9ubHkg
VVNCLUMgY29ubmVjdG9yLgo+IFdpdGggVVNCLUMncyBEUCBBbHRNb2RlIGEgc2VhbWxlc3MgRFAg
dGFrZW92ZXIgcmVxdWlyZXMgaGFuZGluZyBvdmVyIHRoZQo+IHN0YXRlIG9mIHRoZSBUQ1BNIHN0
YXRlIG1hY2hpbmUgZnJvbSB0aGUgYm9vdGxvYWRlciB0byB0aGUga2VybmVsLiBUaGlzCj4gaW4g
dHVybiByZXF1aXJlcyBhIGh1Z2UgYW1vdW50IG9mIHdvcmsgdG8ga2VlcCB0aGUgc3RhdGUgbWFj
aGluZQo+IGltcGxlbWVudGF0aW9ucyBzeW5jaHJvbml6ZWQuIEl0J3MgdmVyeSB1bmxpa2VseSB3
ZSB3aWxsIHNlZSBzb21lYm9keQo+IGltcGxlbWVudGluZyB0aGF0IGluIHRoZSBmb3Jlc2VlYWJs
ZSBmdXR1cmUuCj4gCj4gQXMgdGhlIGN1cnJlbnQgY29kZSBpcyBvYnZpb3VzbHkgYnVnZ3kgYW5k
IHVudGVzdGVkLCBsZXQncyBzaW1wbHkgZHJvcAo+IHN1cHBvcnQgZm9yIHNlYW1sZXNzIERQIHRh
a2VvdmVyLiBJdCBjYW4gYmUgcmUtaW1wbGVtZW50ZWQgY2xlYW5seSBvbmNlCj4gc29tZWJvZHkg
YWRkcyBhbGwgbWlzc2luZyBiaXRzLgo+IAo+IEZpeGVzOiAyZjcwYmJkZGViNDUgKCJwaHk6IHJv
Y2tjaGlwOiBhZGQgdXNiZHAgY29tYm8gcGh5IGRyaXZlciIpCj4gUmVwb3J0ZWQtYnk6IFNhc2hp
a28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+Cj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1waHkvMjAyNjA2MTIxNjQxMDcuQzdEQjIxRjAwMEU5QHNtdHAua2VybmVsLm9y
Zy8KPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBP
cmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFz
dGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
