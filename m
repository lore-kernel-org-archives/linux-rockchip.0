Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C23EC77B7D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xO41Lw0Umv/B7uNYBnv9yfYh+/o03R6hJV3y5QL1nTc=; b=Ty/gXC3p401Bqz
	OZAVZUDXf0T2FS1IoGFiJ2VxB/Ydqb+36IRSVeQ2p7JL4Xq93v1DgmNoKVk1i8BOswLUyT7k+YyMS
	+nd3UBnRtTuYhXtb0lebUcRoO1Ws7GoImBNYmguzN06NU5uUgkzdaXNFwSVgMXjmJ4A6wG932K8pX
	b/pL5VCaxgvuipIFRLpAqBBmQuDtX65H1+yr1HGqY7c9Urpv41/EnMOYUy5ygmYKnCMR5avsP22TT
	Y1ShXXrYatAFGDmO/bzIWnpUqhekSlHCyBvis1VnpTnb7behoAeDxawQoDaUBvNkTT+5pRy3A0sWZ
	cSAKRguOp5IRqjw/YL+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZu7-002X1p-2d;
	Mon, 15 May 2023 15:14:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZu4-002X1F-3A
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:14:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 331A4625FC;
	Mon, 15 May 2023 15:14:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B330C433EF;
	Mon, 15 May 2023 15:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684163663;
	bh=dE9YnPR26TNYmLFla4WyHsacrUjsXOOYKfAvHIZPxD4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Muf2RtzLigRmySKrBo1rC1ATbp4a9sHIS7us2BeTmWNFtyFUafw+ZWb6YgvT5hPWE
	 NZdAx7ZwkdGW11Oaa1/vH4DrVqohKppNleAyNpG7Mu6DRwk+O50eoZFc9Dgoxc611U
	 sshpGPLrcYGA7hO+3nLctgQ4oTw1du64yxbC+WyOxRG7Gg3F0k3WSGB7uHxpi8dYmh
	 jLQqtUH6XgYXW+PzQpQlEbYeaaE2JQTOdbMnXMoNWDDsnoX9CnjuOFdhSrooJd/pg8
	 0W35R7ECcxRueaMpbysJSiXRZgB9fzArYgVzPGZVWtz4R6F6Ns1rDpstGkcPvh0oJY
	 eu3yoJdUSkK4g==
Date: Mon, 15 May 2023 16:14:16 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 01/14] clk: RK808: reduce 'struct rk808' usage
Message-ID: <20230515151416.GM10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_081425_083580_2862EF50 
X-CRM114-Status: GOOD (  12.99  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFJlZHVjZSB1
c2FnZSBvZiAnc3RydWN0IHJrODA4JyAoZHJpdmVyIGRhdGEgb2YgdGhlIHBhcmVudCBNRkQpLCBz
bwo+IHRoYXQgb25seSB0aGUgY2hpcCB2YXJpYW50IGZpZWxkIGlzIHN0aWxsIGJlaW5nIGFjY2Vz
c2VkIGRpcmVjdGx5Lgo+IFRoaXMgYWxsb3dzIHJlc3RydWN0dXJpbmcgdGhlIE1GRCBkcml2ZXIg
dG8gc3VwcG9ydCBTUEkgYmFzZWQKPiBQTUlDcy4KPiAKPiBBY2tlZC1ieTogU3RlcGhlbiBCb3lk
IDxzYm95ZEBrZXJuZWwub3JnPgo+IFRlc3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGlkaS5k
ZWJpYW5AY2tub3cub3JnPiAjIFJvY2s2NCwgUXVhcnR6NjQgTW9kZWwgQSArIEIKPiBUZXN0ZWQt
Ynk6IFZpbmNlbnQgTGVnb2xsIDx2aW5jZW50LmxlZ29sbEBnbWFpbC5jb20+ICMgUGluZTY0IFF1
YXJ0elBybzY0Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5y
ZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvY2xrL2Nsay1yazgwOC5jIHwg
MzQgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MKCi0tIApM
ZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
