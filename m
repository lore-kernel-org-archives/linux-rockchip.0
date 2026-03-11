Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A82691125857
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 17:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qD70RRldsdLWzDtCyK9Zr4fAfT4bCfwZk6i8+XOTFN4=; b=pq7W0bgiUXmO45
	LoUURZ0qRPUMq3qH7/YdsD3Oq5sMylAPFkszp1H/LwbRmQ+3xbWeZ1R4w3SZTmJ/OMnnTFLiRbvEX
	Dsa/LrkuQDD3zHNLHcD4LLBIpsn5vzXMyXNliPV3OQo1PkgLvJVJA4EbbuGNWy8OM8K54c3z8NM3U
	Wvo7onN2u1+p20ZyxKrbVBXnZTvAq161JhEE7z/2ogNjfN1w5PWJY0F9gpbIzXPbcFjBZpCKQEdom
	/26mBVZE+9eREr9R55gJ5VUc3HXS8ZpzxbCFR0WONBflFuTRbD5Kzvzp7mt3s9rDylh3dX1GJX27+
	gOkMP7ziQkdrKMQhnlgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0NCN-0000000C1I7-1F8n;
	Wed, 11 Mar 2026 17:18:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0NCK-0000000C1HV-1tGk
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 17:18:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C07E54452E
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 17:18:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89823C2BCB7
	for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 17:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773249495;
	bh=OE84FjPfiUkC8JcC39aOGaWlIrdgv9W7fbDtR0GeE+o=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=q95qr3S+CbvJ29vl+vCJ4t5jUwTLKQmLtHRx0KuH+kfcxcNXDI/Kx7KK0W2ctTRvm
	 ObqE98GetffbgSX0p/OL7dDHRFg3sANFe+F4Ww+iz7Oj9C99hvDTRbzxlJhkJoFll+
	 iwzVIi1ExaQmkr1+idbtxyjbBUxztnp+DboifD2PVEN72tfcmt4OIeah8kMk2chvFL
	 /zSHtr90oK1vhfakVS0BhYgIvWzbgQO7dRpJrb6apCy7M8HbqijRMf106nUwRuClYJ
	 mdSWB0AiDOaDZjjKIHiPc5Ylv8kd9O7cnpFj3diJ5g9DgZfWUxNU4DF1q/fOKgF47O
	 ggal+Xagy0rwA==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-38a2a59baa6so1477041fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 10:18:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWRJDTzW5ScM0U8MOz5EZXSM5a7dpp5Haw4mqux9CZ51VrEbqfewJK5Rnk/G7svlTihWvapN7/5ril144hJ7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz01Be0IqpCGz6Xzhv0drrUwmpT+zguOkXwJVM2x5RJuVqoDIj/
	GijiPzLbaqN31EACe8M+zxOzrb8nTAOufdgk63dHc/pNvpD3omXcNSIlLlHdQ20dz4eSVF/1w6m
	mYndTK9PwcRsfzTGriH80wuKFnKk814Vq1xxJT1RBrg==
X-Received: by 2002:a05:651c:1604:b0:38a:957:a125 with SMTP id
 38308e7fff4ca-38a67e1ba60mr11617111fa.18.1773249494042; Wed, 11 Mar 2026
 10:18:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260311-qcom-sa8255p-emac-v8-0-58227bcf1018@oss.qualcomm.com>
 <20260311-qcom-sa8255p-emac-v8-2-58227bcf1018@oss.qualcomm.com> <abGizL-uYnahlcEt@shell.armlinux.org.uk>
In-Reply-To: <abGizL-uYnahlcEt@shell.armlinux.org.uk>
From: Bartosz Golaszewski <brgl@kernel.org>
Date: Wed, 11 Mar 2026 18:18:00 +0100
X-Gmail-Original-Message-ID: <CAMRc=MdOXz6a4+-xNfmHD9insd+UcyF9xvZim7DtptKOj9B70Q@mail.gmail.com>
X-Gm-Features: AaiRm52Tw2Qo9qa62t56mCoewk4vwmQ4zN4g67WY5ySxyBb-ueDnRqCKEIOABSM
Message-ID: <CAMRc=MdOXz6a4+-xNfmHD9insd+UcyF9xvZim7DtptKOj9B70Q@mail.gmail.com>
Subject: Re: [PATCH net-next v8 2/6] net: stmmac: qcom-ethqos: use generic
 device properties
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Vinod Koul <vkoul@kernel.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, 
	Fabio Estevam <festevam@gmail.com>, Jan Petrous <jan.petrous@oss.nxp.com>, s32@nxp.com, 
	Romain Gantois <romain.gantois@bootlin.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Maxime Ripard <mripard@kernel.org>, 
	Christophe Roullier <christophe.roullier@foss.st.com>, Radu Rendec <rrendec@redhat.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Drew Fustini <dfustini@tenstorrent.com>, 
	linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org, 
	linux-mips@vger.kernel.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	sophgo@lists.linux.dev, linux-riscv@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_101816_557147_F66BB396 
X-CRM114-Status: GOOD (  17.01  )
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgNjoxNOKAr1BNIFJ1c3NlbGwgS2luZyAoT3JhY2xlKQo8
bGludXhAYXJtbGludXgub3JnLnVrPiB3cm90ZToKPgo+IE9uIFdlZCwgTWFyIDExLCAyMDI2IGF0
IDA2OjAzOjM3UE0gKzAxMDAsIEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBC
YXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPgo+
ID4gSW4gb3JkZXIgdG8gZHJvcCB0aGUgZGVwZW5kZW5jeSBvbiBDT05GSUdfT0YsIGNvbnZlcnQg
YWxsIGRldmljZSBwcm9wZXJ0eQo+ID4gZ2V0dGVycyBmcm9tIE9GLXNwZWNpZmljIHRvIGdlbmVy
aWMgZGV2aWNlIHByb3BlcnRpZXMgYW5kIHN0b3AgcHVsbGluZwo+ID4gaW4gYW55IGxpbnV4L29m
Lmggc3ltYm9scy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
YXJ0b3N6LmdvbGFzemV3c2tpQGxpbmFyby5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6
IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQG9zcy5xdWFsY29tbS5jb20+Cj4KPiBQ
bGVhc2UgcG9zdHBvbmUgdGhpcyBmb3IgdGhlIHRpbWUgYmVpbmcgLSBJJ20gdHJ5aW5nIHRvIGdl
dCBzdG1tYWMncwo+IHBhaW4taW4tdGhlLWFyc2UgUENTIHN1cHBvcnQgc29ydGVkLCBhbmQgSSd2
ZSBwYXRjaCBzZXJpZXMgb3V0IHRoZXJlCj4gYW5kIHBlbmRpbmcgdGhhdCBtYWtlIGEgbGFyZ2Ug
bnVtYmVyIG9mIGNoYW5nZXMgdG8gdGhpcyBkcml2ZXIuIFRoaXMKPiBpcyBsaWtlbHkgdG8gY29u
ZmxpY3Qgd2l0aCBteSB3b3JrLgo+Cj4gSSdtIGxpbWl0ZWQgYnkgdGhlIHJhdGUgYXQgd2hpY2gg
cGF0Y2hlcyBjYW4gYmUgYXBwbGllZCB0byBuZXQtbmV4dAo+IGFuZCB0aGUgcmF0ZSBhdCB3aGlj
aCBNb2hkIGNhbiBwcm92aWRlIG1lIGZlZWRiYWNrLiBPbiB0aGF0LCBJIG5vdGljZQo+IHlvdSBo
YXZlbid0IENjJ2QgTW9oZCB3aG8gaXMgbm93IGluIE1BSU5UQUlORVJTIGZvciBxY29tLWV0aHFv
cy4KPgoKRG8gdGhlc2UgdHdvIGNoYW5nZXNldHMgaW50ZXJhY3Qgd2l0aCBlYWNoIG90aGVyIGEg
bG90PyBEbyB5b3UgaGF2ZSBhCldJUCBicmFuY2ggSSBjb3VsZCB0YWtlIGEgbG9vayBhdD8gVGhp
cyBoYXMgYmVlbiBwb3N0LXBvbmVkIHNldmVyYWwKdGltZXMgYWxyZWFkeSwgdGhlcmUgYWx3YXlz
IHNlZW0gdG8gYmUgc29tZSBuZXcgY2hhbmdlcyBjb21pbmcgaW4uIDovCgpCYXJ0CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
