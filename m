Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C756FC98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 04:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAWMY1XFiDfIqbvU2wcCUmNBSikvF/5YU+EP7TAZp5Y=; b=AYipA4CP6n8WGh
	gu5KnYaKbcHAoD5I/9UYMy3F+xPS7lUSko8mOHMnaoz9QL0MA+6Lg3dLnetOwrW2k7vuz/eT9NEdc
	KH+72wACzErosEDRWGbLTuy65mNxlBoyjBLFc0rsR/Bv4i/h/6Ghu7z39ZJUQu2INMtKEhaJwdtTe
	y0yeSV6cYkghtVxNyKav81Ik7lRCezoEA5sioUNnAWJ3yE6Wd92CHkX0DradBjC0Ew6zPaMIHjHzX
	kYPlmY1B6CAFBGAv0X2GTDgP5iMRgxYZ0vAHb5yhxdzCyfh8veHaFJsBhtD5SsVtlR/L2MqD6NhsK
	c2DpElohXosSnSolcF3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJbW-0000000Evgw-1hno;
	Sat, 26 Sep 2026 04:01:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJbV-0000000Evg8-0HGX;
	Sat, 26 Sep 2026 04:01:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 23F1F6022C;
	Sat, 26 Sep 2026 04:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F42C1F000FF;
	Sat, 26 Sep 2026 04:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395295;
	bh=ym8bShvMR0/XgGYUzNS+yMcBMiYlCn28ZC+AfCdVr0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=F47S8sH7mkF/YnJgEU4cNr1xfbihtqSoERgC6ZEC8e3qRLo9ytzfkp+TZKVkzQbs8
	 p7gXRgSPajgC+2NJIRFLLL4ENaulWZR8HqVvNRMeW1kcIbN1smf/Bc4p3ma5+E3ro1
	 NDrTD4pb5zQDdwLwljeeqza578DuNYzY3C4C6l7PDFlBTM0QujnFBd2XoU4yZgYl9i
	 LyVpO3SYd0BjZMyb6hPCocAVHGh08GsXjZqLFr5QBo/5G1GQHftoQmBVLWlO1ybpjp
	 8Zj6tLtuVKk0MdCMnGyxOR/XqPC4GEZQu5yxopY8mz4BIhDUqdDmfxve90DBY0nQ7f
	 rjIq+Q0MIw+iA==
Date: Sat, 26 Sep 2026 06:01:16 +0200
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
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 10/16] phy: rockchip: usbdp: Add missing mode_change
 update
Message-ID: <grlhnslyhggwmajaxrtkdlbbvjlylk5bckwmao2bo42xgebtth@k3rptwhxyuzp>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-10-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-10-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTdQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gcmtfdWRwaHlfc2V0X3R5cGVjX2RlZmF1bHRfbWFwcGluZygpIHVwZGF0ZXMg
dGhlIGF2YWlsYWJsZSBtb2RlcywKPiBidXQgZG9lcyBub3Qgc2V0IHRoZSBtb2RlX2NoYW5nZSBh
cyByZXF1aXJlZC4gVGhpcyByZXN1bHRzIGluCj4gbWlzc2luZyByZS1pbml0aWFsaXphdGlvbiBh
bmQgdGh1cyBub24td29ya2luZyBEaXNwbGF5UG9ydC4KPiAKPiBGaXggdGhpcyBpc3N1ZSBieSBp
bnRyb2R1Y2luZyBhIG5ldyBoZWxwZXIgdG8gdXBkYXRlIHRoZSBhdmFpbGFibGUKPiBtb2Rlcy4K
PiAKPiBSZXZpZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ryb25nQGxpbmFyby5v
cmc+Cj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMg
T3JhbmdlIFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2Fk
aGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkK
Ci0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+N
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
