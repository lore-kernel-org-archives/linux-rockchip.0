Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA83C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 02:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TjvC7ldTgmPnVrGw3ruMuKvUJczfk1S40Mw53folM6s=; b=ZH+0BIALycWkTz
	IK1m4DJWZbOgGZ5es7vjbpIP6q8A/HxxtzdAA1z57FeFNB4H5RDKsYPWIe4pWVyf6+LXnBVmUXIG8
	jvEj6zPGs25RGE0bLYKV47oXvw7Q1DD0e5g7s9TRBolSyyBDru8ZyhEp66XFn5liJqDV8+VQEhg8C
	iqhCf8GnZuFXx/vvzXm0/SeWkRxeCPrXf4Dx+9nT2tBvK2eEbMD0yo+xi4OG5+BoR93D6ToynXsdX
	XZpyLqYbl7/gI1NeHjAEe/qjabNtjucn1w0QuXUj0UxvkOGtgPf0jFBhKmCvLuQKy1vBJLPVHZq/1
	G3PVVY4gNqxXWTh+uGgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr4gE-00000000p42-2Qx6;
	Tue, 04 Aug 2026 02:14:58 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr4gC-00000000p3G-2wUP;
	Tue, 04 Aug 2026 02:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=T/VCzwTsflXecE/LA8NyIZCc4wUo9vJUkRVnEi64uVk=; b=1B
	zwMrQXY2R+8GeQDMzsLBwl6+lx+XH0qy31zRwG5Txtcd53Z/UlGiB6G+y5UhWYsL9szKklFS2hqpJ
	E36k88HZ7acZi6srmdwxRvrAT02FdtDrUWOIB+f7FBXIept5AilXRMX/CG37Nz9GwNDvmWkBfub4S
	UeDNHgYSFUZp1r4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wr4fn-00FtNy-Ck; Tue, 04 Aug 2026 04:14:31 +0200
Date: Tue, 4 Aug 2026 04:14:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: James Hilliard <james.hilliard1@gmail.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>,
	Richard Genoud <richard.genoud@bootlin.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com, mfd@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
Message-ID: <fa80d6f8-8ddf-48e1-a879-a70f228c79f9@lunn.ch>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com>
 <2c0210b3-2c68-41f1-aa33-3f1693454849@lunn.ch>
 <CADvTj4pfNFVGrQV86T7X+nZQYUamxEYLLWuxVXk=av0da_XocQ@mail.gmail.com>
 <CAGb2v67Wo+WG47jF_vBUOwv0Vw1SDygXMdBgpsy3R1AQ_LLfHw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67Wo+WG47jF_vBUOwv0Vw1SDygXMdBgpsy3R1AQ_LLfHw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_191456_736388_4E24921D 
X-CRM114-Status: GOOD (  18.09  )
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

T24gVHVlLCBBdWcgMDQsIDIwMjYgYXQgMTI6NTE6NTdBTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIFR1ZSwgQXVnIDQsIDIwMjYgYXQgMTI6NDXigK9BTSBKYW1lcyBIaWxsaWFyZAo+
IDxqYW1lcy5oaWxsaWFyZDFAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBNb24sIEF1ZyAz
LCAyMDI2IGF0IDc6MTjigK9BTSBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgo+
ID4gPgo+ID4gPiA+ICsgICAgICAgICAgICBldGhlcm5ldC1waHktY29udHJvbCB7Cj4gPiA+ID4g
KyAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIngtcG93ZXJzLGFjMjAwLWVwaHktY3RsIjsK
PiA+ID4gPiArICAgICAgICAgICAgICAgIG52bWVtLWNlbGxzID0gPCZlcGh5X2NhbGlicmF0aW9u
PjsKPiA+ID4gPiArICAgICAgICAgICAgICAgIG52bWVtLWNlbGwtbmFtZXMgPSAiY2FsaWJyYXRp
b24iOwo+ID4gPiA+ICsgICAgICAgICAgICAgICAgcGh5LW1vZGUgPSAicm1paSI7Cj4gPiA+ID4g
KyAgICAgICAgICAgIH07Cj4gPiA+Cj4gPiA+IFdoYXQgZG8geW91IG1lYW4gYnkgYW4gZXRoZXJu
ZXQgUEhZIGNvbnRyb2w/Cj4gPiA+Cj4gPiA+IEkgYXNzdW1lIHRoaXMgaXMgbm90IGFuIGFjdHVh
bCBFdGhlcm5ldCBQSFksIGJ1dCBzb21lIGNvbnRyb2wgbG9naWMKPiA+ID4gYXJvdW5kIGl0PyBX
aGVyZSBpcyB0aGUgZXRoZXJuZXQgUEhZIGl0c2VsZj8KPiA+Cj4gPiBDb3JyZWN0LCB0aGlzIGlz
IG5vdCB0aGUgRXRoZXJuZXQgUEhZIGl0c2VsZi4gSXQgaXMgdGhlIHBhY2thZ2Utc3BlY2lmaWMK
PiA+IHNpZGViYW5kIGNvbnRyb2wgYmxvY2sgdGhhdCBtdXN0IGJlIGNvbmZpZ3VyZWQgYmVmb3Jl
IHRoZSBub3JtYWwgQ2xhdXNlIDIyCj4gPiBQSFkgcmVnaXN0ZXJzIGJlY29tZSB1c2FibGUuIEZv
ciBBQzIwMCwgdGhpcyBjb250cm9sIGJsb2NrIGlzIGFjY2Vzc2VkCj4gPiB0aHJvdWdoIHRoZSBw
YXJlbnQgQUMyMDAgSTJDIHJlZ21hcC4gRm9yIEFDMzAwLCB0aGUgZXF1aXZhbGVudCBjb250cm9s
IGJsb2NrCj4gPiBpcyBhY2Nlc3NlZCB0aHJvdWdoIGEgc2VwYXJhdGUgbm9uLVBIWSBDbGF1c2Ug
MjIgYWRkcmVzcy4KPiAKPiBCYXNpY2FsbHksIGFsbCB0aGUgUEhZIGJlaGF2aW9yIHRoYXQgaXMg
bm9ybWFsbHkgY29uZmlndXJlZCB1c2luZyBzdHJhcHBpbmcKPiBwaW5zIG9uIGEgZGlzY3JldGUg
UEhZIGlzIGRvbmUgb3ZlciB0aGlzIEkyQyBjaGFubmVsLgoKVG8gbWUgdGhpcyBzaG91bGQgc3Rp
bGwgYmUgcGFydCBvZiB0aGUgUEhZIGRyaXZlciwgbm90IGEgc2VwYXJhdGUKZHJpdmVyLiBUaGUg
ZHJpdmVyIGRyaXZlcyB0aGUgaGFyZHdhcmUsIGl0IHNob3VsZCBkcml2ZSBhbGwgb2YgaXQsIGFs
bAppbiBvbmUgcGxhY2UuCgoJQW5kcmV3CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
