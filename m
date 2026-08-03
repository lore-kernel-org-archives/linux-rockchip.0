Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27D1FC55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 16:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqpLri1ek3Rh+AynziAfzBmNT3XrXPaHgwoAp72SVHw=; b=EyWSjCX0x5S93A
	RAHdKR4s4E7d6DAkSDda8bjn6IIDlIJc6Xsn3fEG4bNmkcrsztbwKb3Kh9MTKyfi4LLcld+QqX2qR
	4Mol2igmkxgxyVAhQ+/S9XG7lgg0oKSRkm96LuadkQ3EIKfaiTC0xAyW2zzIoZfFzbabMXyJfnfe1
	um+wV/V30mzQW9Bv6WzqN/4otvEOoy2mu1OKGuXDSphcj9EJsCX3RzQZr2oweRgj7OeQ6E1Qx7sYM
	zTlcEolarvZkmXxbeTkKRmR0zLdhuz05Iymuym/TPH1Kv3d9LGpvkiknzVZkIL43qb3i1DXeL1cPj
	rSsHHb6CRSVD5ABK8++w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvtd-000000009Pb-3lrC;
	Mon, 03 Aug 2026 16:52:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvtd-000000009PG-2YAE
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 16:52:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ED6A960A81
	for <linux-rockchip@lists.infradead.org>; Mon,  3 Aug 2026 16:52:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A49541F00A3E
	for <linux-rockchip@lists.infradead.org>; Mon,  3 Aug 2026 16:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785775932;
	bh=ktJ1TUfqLx16vP/MAvZ075WUJwVncZtbcK2MP7W0fJA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=W4ObqZm1721yih5Cc72KTg1SNORcLauLEAeTR/pQvfulljFV1MY786WAqOG+xn40r
	 Nm6krj9Zt3xk+1UjcfnwqMXNgD5eKdkTOopLe6stmk4hDhhDo+pnbC9woAg+LNhCEU
	 rfOXG8bFLRNqvzlg52wWAsCZKeZXzzsFdGKuftIB4RdoErFBA6IpAs8GvfEfVtD0yT
	 DhNz6Rmwo19vJ3v461khXi2B3D+UUxZ8Sr0FXMUTiYY9fXY8So5/RbjYmIoC3rlDmt
	 zeYYhcpO9uCkfPhrdg0r6h8cpqA0QbjEIp0DoSaTgZbDBaLOxjRM7OGX/eWpQiklrP
	 fO7+/JOLtU5hA==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5b0117dda13so3429482e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 09:52:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rpwf0oswxN/iew4MADM4+/8KIGTSugRsFho1WqTtoe9fPivVoddBSDurseZhGWLGxz057rZZ30wn/xIvl/Djw==@lists.infradead.org
X-Gm-Message-State: AOJu0YySND3I34uoDJLWh8e3KnZaw4y0LZXSXjSZL0t8SlfyDPreIzeS
	UvlOrH6axHsNVgUHAnX2LLCHkgPzbKwsrCullv3z8BczicqLGaLzRVufkKRS65ChteL8j3MMkgA
	3nle9FHuePRebXNbw872XRzjN9nq9tJA=
X-Received: by 2002:ac2:5218:0:b0:5b2:9c0e:a2d9 with SMTP id
 2adb3069b0e04-5b2e4f9dd16mr1400790e87.65.1785775931139; Mon, 03 Aug 2026
 09:52:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com>
 <2c0210b3-2c68-41f1-aa33-3f1693454849@lunn.ch> <CADvTj4pfNFVGrQV86T7X+nZQYUamxEYLLWuxVXk=av0da_XocQ@mail.gmail.com>
In-Reply-To: <CADvTj4pfNFVGrQV86T7X+nZQYUamxEYLLWuxVXk=av0da_XocQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Aug 2026 00:51:57 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Wo+WG47jF_vBUOwv0Vw1SDygXMdBgpsy3R1AQ_LLfHw@mail.gmail.com>
X-Gm-Features: AUfX_my4aoD19Jk3-8CcfeDfaoI0T_9zWEBW-1SE8UXOLwMz9Yfo_iLW9hIPcwI
Message-ID: <CAGb2v67Wo+WG47jF_vBUOwv0Vw1SDygXMdBgpsy3R1AQ_LLfHw@mail.gmail.com>
Subject: Re: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Andre Przywara <andre.przywara@arm.com>, Richard Genoud <richard.genoud@bootlin.com>, 
	Maxime Ripard <mripard@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBBdWcgNCwgMjAyNiBhdCAxMjo0NeKAr0FNIEphbWVzIEhpbGxpYXJkCjxqYW1lcy5o
aWxsaWFyZDFAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgQXVnIDMsIDIwMjYgYXQgNzox
OOKAr0FNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gd3JvdGU6Cj4gPgo+ID4gPiArICAg
ICAgICAgICAgZXRoZXJuZXQtcGh5LWNvbnRyb2wgewo+ID4gPiArICAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAieC1wb3dlcnMsYWMyMDAtZXBoeS1jdGwiOwo+ID4gPiArICAgICAgICAgICAg
ICAgIG52bWVtLWNlbGxzID0gPCZlcGh5X2NhbGlicmF0aW9uPjsKPiA+ID4gKyAgICAgICAgICAg
ICAgICBudm1lbS1jZWxsLW5hbWVzID0gImNhbGlicmF0aW9uIjsKPiA+ID4gKyAgICAgICAgICAg
ICAgICBwaHktbW9kZSA9ICJybWlpIjsKPiA+ID4gKyAgICAgICAgICAgIH07Cj4gPgo+ID4gV2hh
dCBkbyB5b3UgbWVhbiBieSBhbiBldGhlcm5ldCBQSFkgY29udHJvbD8KPiA+Cj4gPiBJIGFzc3Vt
ZSB0aGlzIGlzIG5vdCBhbiBhY3R1YWwgRXRoZXJuZXQgUEhZLCBidXQgc29tZSBjb250cm9sIGxv
Z2ljCj4gPiBhcm91bmQgaXQ/IFdoZXJlIGlzIHRoZSBldGhlcm5ldCBQSFkgaXRzZWxmPwo+Cj4g
Q29ycmVjdCwgdGhpcyBpcyBub3QgdGhlIEV0aGVybmV0IFBIWSBpdHNlbGYuIEl0IGlzIHRoZSBw
YWNrYWdlLXNwZWNpZmljCj4gc2lkZWJhbmQgY29udHJvbCBibG9jayB0aGF0IG11c3QgYmUgY29u
ZmlndXJlZCBiZWZvcmUgdGhlIG5vcm1hbCBDbGF1c2UgMjIKPiBQSFkgcmVnaXN0ZXJzIGJlY29t
ZSB1c2FibGUuIEZvciBBQzIwMCwgdGhpcyBjb250cm9sIGJsb2NrIGlzIGFjY2Vzc2VkCj4gdGhy
b3VnaCB0aGUgcGFyZW50IEFDMjAwIEkyQyByZWdtYXAuIEZvciBBQzMwMCwgdGhlIGVxdWl2YWxl
bnQgY29udHJvbCBibG9jawo+IGlzIGFjY2Vzc2VkIHRocm91Z2ggYSBzZXBhcmF0ZSBub24tUEhZ
IENsYXVzZSAyMiBhZGRyZXNzLgoKQmFzaWNhbGx5LCBhbGwgdGhlIFBIWSBiZWhhdmlvciB0aGF0
IGlzIG5vcm1hbGx5IGNvbmZpZ3VyZWQgdXNpbmcgc3RyYXBwaW5nCnBpbnMgb24gYSBkaXNjcmV0
ZSBQSFkgaXMgZG9uZSBvdmVyIHRoaXMgSTJDIGNoYW5uZWwuCgo+IFRoZSBhY3R1YWwgRXRoZXJu
ZXQgUEhZIGlzIGEgc2VwYXJhdGUgZGV2aWNlIG9uIHRoZSBNQUMncyBNRElPIGJ1cy4gVGhlCj4g
c2hhcmVkIFBIWSBkcml2ZXIgZm9yIHRoYXQgZGV2aWNlIGlzIGFkZGVkIGluIHBhdGNoIDE2Ogo+
Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtc3VueGkvMjAyNjA4MDItc3VibWl0LWFj
eDAwLW9mLWR5bmFtaWMtdjEtdjEtMTYtMGE1M2NkOWUyMWNjQGdtYWlsLmNvbS8KPgo+IFRoZSBs
YXRlciBib2FyZCBEVFMgcGF0Y2hlcyBpbnN0YW50aWF0ZSBpdCBhcyBhbiBldGhlcm5ldC1waHkg
bm9kZSBiZW5lYXRoCj4gdGhlIE1BQydzIE1ESU8gYnVzIGFuZCByZWZlcmVuY2UgdGhlIGFwcHJv
cHJpYXRlIHNpZGViYW5kIGNvbnRyb2wgcHJvdmlkZXIuCj4KPiA+Cj4gPiAgICAgICAgQW5kcmV3
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
