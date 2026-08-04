Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8975CC55182
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 02:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mn1YEYcvJbgfEN/eadw9uaxe2KHj3h+RvUpcDKcQU3Y=; b=Zy4jGVgHPICFQB
	yuj6i2LF7l+Rsrq9ZUeK3z5rEzMb4Fwg10TqjLdIqII1R3B45ADcL5T+l4hVIPn6r4XFQ/8/JciWY
	wwJphFK1JRWZtBXRZ9sT4z76tvxD6HmKn+gpmKhGd0FTRfeShD6G8rNCoKmdkZpR+79XKSEcpeSSr
	TOEhksjJuoEJ7GrJhusNaneQK4nP+EFq1l+tEs3Z2PEHsz1Zwm/eaOcso0GLlXa5fhERG/OwDvVdW
	X6W9a8lx3GvRX7WC7PnKohBlcmvcHI7Lo1loftkvrqeejq2fc6r6T4SXxI5wdS//GaLrdBLL04NKh
	iB1ZJxAoFtbK8ebcaWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr4ZO-00000000oTJ-126Z;
	Tue, 04 Aug 2026 02:07:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wr4ZM-00000000oT7-2js0
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 02:07:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0B18244FCF
	for <linux-rockchip@lists.infradead.org>; Tue,  4 Aug 2026 02:07:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D801E1F0155A
	for <linux-rockchip@lists.infradead.org>; Tue,  4 Aug 2026 02:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785809271;
	bh=mhqh3Nz3FO5T9fLfc4e6l+Yx57i8XvSVRlL8MU9+QdA=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=Cx7wUUfHVRADJdcIF8T2bigYWlXI/Zc/UQHm5GmWGgSxRtt2zpUnDmcmebziCtJr1
	 nQ8NFdC9JRupzaJKLrqTJraMgRLbG+0p75uRF5evu6jCQP3424p7KXjXcxuNLcWq+q
	 XuEp/IGJeDRlCdweGaNqlzthvrxPO6Yu4Oj3Tsq/DNPRadGXw+4B6ynS/1OB7+bKZD
	 vSfIdypByxFMSU1K8Pu+0GMfH+S1FU9iHYZEVF110wTz521xpVHnbSONIO8D0WibmS
	 E9+UpABBSkirAVIwRlKfAeiWf8RV1CJPBvfVwMxw0pWxot3dBTMkH7OXgRPIRqiU3K
	 ns7avqhWxR3ng==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-39ca300db70so40055901fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 19:07:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrgfMioTWT45NR8AdPbJpAfn+r6iKBOX/aX8Dfzl9DgtxcMgHTaWJEak3AO+tVx9lXENWtkE169uaJnEJkrNA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzutv9/D322aYrMPjbV8e/tD0Y1P+W+MU/oYjVj+Tz5uTb8kFoV
	ZQuwernUYLflCnQTpXcA9Acc0rPE7cgTKqRDD2nv28ulcG75J9frpEXengW2RExTYBvwRPKVK3L
	CkPMkLfLySCUHU7a81hnvP9kDKpR1cS4=
X-Received: by 2002:a2e:9fc6:0:b0:39b:14ba:a5da with SMTP id
 38308e7fff4ca-39f86175217mr27582561fa.13.1785809270230; Mon, 03 Aug 2026
 19:07:50 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com>
 <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch> <CADvTj4o0JdjoO+FC4pO=qnjEQ8MRyzQdKp2Hxy9NsPU-gym5OQ@mail.gmail.com>
 <9b8be475-1fde-409c-a82e-be4b2e402650@lunn.ch> <CADvTj4pBovti19MXgQjFpxm=7aRm0sYQz9jxfo8bu3txH94THQ@mail.gmail.com>
In-Reply-To: <CADvTj4pBovti19MXgQjFpxm=7aRm0sYQz9jxfo8bu3txH94THQ@mail.gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 4 Aug 2026 10:07:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v64U9ZQxfb7M3VfoGH60iMHL01XDy6tjs8VbFPLfyaJWgw@mail.gmail.com>
X-Gm-Features: AUfX_mwGp_0m2GBis6TyXtQmz_W7xdVls2yXgA2h06qYGgsxLQfwj2BxAwZBVtk
Message-ID: <CAGb2v64U9ZQxfb7M3VfoGH60iMHL01XDy6tjs8VbFPLfyaJWgw@mail.gmail.com>
Subject: Re: [PATCH 10/21] net: phy: add X-Powers AC200 EPHY control driver
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

T24gVHVlLCBBdWcgNCwgMjAyNiBhdCAyOjQ14oCvQU0gSmFtZXMgSGlsbGlhcmQgPGphbWVzLmhp
bGxpYXJkMUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBBdWcgMywgMjAyNiBhdCAxMTo1
N+KAr0FNIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gd3JvdGU6Cj4gPgo+ID4gT24gTW9u
LCBBdWcgMDMsIDIwMjYgYXQgMTA6MDk6MDFBTSAtMDYwMCwgSmFtZXMgSGlsbGlhcmQgd3JvdGU6
Cj4gPiA+IE9uIE1vbiwgQXVnIDMsIDIwMjYgYXQgNzo1MeKAr0FNIEFuZHJldyBMdW5uIDxhbmRy
ZXdAbHVubi5jaD4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiA+ICtzdGF0aWMgaW50Cj4gPiA+ID4g
PiArYWMyMDBfZXBoeV9jdGxfc2V0X2xlZF9vdXRwdXRzKHN0cnVjdCBhY3gwMF9lcGh5X2NvbnRy
b2wgKmNvbnRyb2wsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2ln
bmVkIGxvbmcgb3V0cHV0cykKPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiArfQo+ID4gPiA+Cj4gPiA+
ID4gPiArc3RhdGljIGludAo+ID4gPiA+ID4gK2FjMjAwX2VwaHlfY3RsX3NldF9sZWRfcG9sYXJp
dHkoc3RydWN0IGFjeDAwX2VwaHlfY29udHJvbCAqY29udHJvbCwKPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGJvb2wgYWN0aXZlX2xvdykKPiA+ID4gPiA+ICt7Cj4gPiA+
ID4gPiArfQo+ID4gPiA+Cj4gPiA+ID4gSSd2ZSBub3QgbG9va2VkIGludG8gdGhlIGRldGFpbHMs
IGJ1dCB0aGVzZSBsb29rIGxpa2UgcGlubXV4LiBEb2VzCj4gPiA+ID4gdGhpcyBJMkMgZGV2aWNl
IGhhdmUgYSBHUElPIGNvbnRyb2xsZXI/IENhbiB0aGVzZSBwaW5zIGJlIHVzZWQgZm9yCj4gPiA+
ID4gb3RoZXIgdGhpbmdzIHRoYW4gTEVEcz8gTWF5YmUgeW91IHNob3VsZCBiZSBpbXBsZW1lbnRp
bmcgYSBHUElPIGFuZAo+ID4gPiA+IHBpbm11eCBkcml2ZXIuIFRoZSBFdGhlcm5ldCBQSFkgZHJp
dmVyIGNhbiB0aGVuIGp1c3Qgc2VsZWN0IHRoZQo+ID4gPiA+IGNvcnJlY3QgcGlubXV4IGNvbmZp
Z3VyYXRpb24uCj4gPiA+Cj4gPiA+IFRoZXNlIGRvIG5vdCBhcHBlYXIgdG8gYmUgR1BJTyBvciBt
dXhhYmxlIHBpbnMuIFRoZSBBQzIwMAo+ID4gPiBkb2N1bWVudGF0aW9uIGRlc2NyaWJlcyB0aGVt
IGFzIHRocmVlIGRlZGljYXRlZCBFUEhZIExFRAo+ID4gPiBvdXRwdXRzOiBsaW5rL2FjdGl2aXR5
LCBzcGVlZCwgYW5kIGR1cGxleC4gVGhlIGJpdHMgaW4gU1lTX0VQSFlfQ1RMMQo+ID4gPiBlbmFi
bGUgdGhvc2Ugb3V0cHV0IHBhZHMsIHdoaWxlIEVQSFlfQ1RMIHByb3ZpZGVzIHRoZWlyIHNoYXJl
ZAo+ID4gPiBwb2xhcml0eSBzZXR0aW5nLiBJIGhhdmUgbm90IGZvdW5kIGFueSBkb2N1bWVudGVk
IEdQSU8gZGF0YQo+ID4gPiByZWdpc3RlcnMgb3IgYWx0ZXJuYXRpdmUgZnVuY3Rpb25zIGZvciB0
aGVzZSBwaW5zLgo+ID4KPiA+IFNvIHdoYXQgaSdtIHRyeWluZyB0byBkbyB3aXRoIGJvdGggb2Yg
dGhlc2UgaXMgbWFrZSBpdCBsb29rIG1vcmUgbGlrZQo+ID4gc3RhbmRhcmQgTGludXggYnVpbGRp
bmcgYmxvY2tzLgo+ID4KPiA+IElmIHRoYXQgaXMgbm90IHBvc3NpYmxlLCBpIHdvdWxkIGFjdHVh
bGx5IHB1dCBhbGwgdGhpcyBjb2RlIGludG8gdGhlCj4gPiBQSFkgZHJpdmVyLiBZb3UgdGhlbiBo
YXZlIGEgcmVnbWFwIHByb3BlcnR5IHRvIGdhaW4gYWNjZXNzIHRvIHRoZSBJMkMKPiA+IHJlZ2lz
dGVycy4KPgo+IEkgdW5kZXJzdGFuZCB0aGUgZ29hbCBvZiB1c2luZyBzdGFuZGFyZCBMaW51eCBi
dWlsZGluZyBibG9ja3Mgd2hlcmUgdGhleQo+IGZpdCwgYnV0IEkgZG8gbm90IHRoaW5rIGZvbGRp
bmcgdGhlc2UgY29udHJvbCBwYXRocyBpbnRvIHRoZSBjb21tb24gUEhZCj4gZHJpdmVyIGdpdmVz
IHRoZSByaWdodCBkZXZpY2UgbW9kZWwgaGVyZS4KPgo+IFRoZSBBQzIwMCBhbmQgQUMzMDAgZXhw
b3NlIHRoZSBzYW1lIENsYXVzZSAyMiBQSFkgaW50ZXJmYWNlLCBidXQgdGhlaXIKPiBjb250cm9s
IGZ1bmN0aW9ucyBhcmUgc2VwYXJhdGUgZGV2aWNlcyB3aXRoIGRpZmZlcmVudCB0cmFuc3BvcnRz
IGFuZAo+IGxpZmV0aW1lcy4gVGhlIEFDMjAwIGNvbnRyb2wgZnVuY3Rpb24gaXMgYW4gTUZEIGNo
aWxkIGFjY2Vzc2VkIHRocm91Z2gKPiB0aGUgcGFyZW50IEkyQyByZWdtYXAuIFRoZSBBQzMwMCBj
b250cm9sIGZ1bmN0aW9uIGlzIGEgc2VwYXJhdGVseQo+IGFkZHJlc3NlZCBub24tUEhZIE1ESU8g
ZGV2aWNlLiBBIHJlZ21hcCByZWZlcmVuY2Ugb25seSBkZXNjcmliZXMgdGhlCj4gQUMyMDAgdHJh
bnNwb3J0OyBpdCBkb2VzIG5vdCByZXByZXNlbnQgdGhlIEFDMzAwIGNvbnRyb2wgZGV2aWNlLgo+
Cj4gRm9sZGluZyBib3RoIGltcGxlbWVudGF0aW9ucyBpbnRvIHRoZSBjb21tb24gUEhZIGRyaXZl
ciB3b3VsZCBtYWtlIHRoYXQKPiBkcml2ZXIgbWFuYWdlIEFDMjAwIE1GRCByZWdpc3RlcnMgYW5k
IHJlc291cmNlcyBhcyB3ZWxsIGFzIGFuIEFDMzAwIE1ESU8KPiBjb250cm9sIGVuZHBvaW50LiBU
aGF0IHdvdWxkIG1peCB0aGUgcGFja2FnZS1zcGVjaWZpYyBjb250cm9sIHRyYW5zcG9ydHMKPiB3
aXRoIHRoZSBvdGhlcndpc2UgY29tbW9uIENsYXVzZSAyMiBpbXBsZW1lbnRhdGlvbi4KPgo+IFRo
ZSBjdXJyZW50IHNwbGl0IHVzZXMgc3RhbmRhcmQgc3Vic3lzdGVtcyB3aGVyZXZlciB0aGV5IHBy
b3ZpZGUgYQo+IG1hdGNoaW5nIGFic3RyYWN0aW9uOiBNRkQsIHJlZ21hcCwgTURJTyBkZXZpY2Vz
LCBjbG9ja3MsIHJlZ3VsYXRvcnMsCj4gTlZNRU0sIGRldmljZSBsaW5rcywgYW5kIHRoZSBQSFkg
TEVEIGZyYW1ld29yay4gVGhlIG5hcnJvdyBwcml2YXRlCj4gaW50ZXJmYWNlIGNvdmVycyBvbmx5
IHRoZSBjb21wb3VuZCBvcGVyYXRpb24gd2hpY2ggdGhvc2UgZnJhbWV3b3Jrcwo+IGNhbm5vdCBl
eHByZXNzOiBjYWxpYnJhdGluZywgYWRkcmVzc2luZywgY29uZmlndXJpbmcsIGFuZCBzZXF1ZW5j
aW5nIHRoZQo+IHBhY2thZ2UgY29udHJvbCBibG9jayBiZWZvcmUgdGhlIENsYXVzZSAyMiBpbnRl
cmZhY2UgYmVjb21lcyB1c2FibGUuCj4KPiBUaGUgbGluayBhZGRyZXNzIGlzIGFuIGltcG9ydGFu
dCBleGFtcGxlLiBJdCBpcyBkZWZpbmVkIG9uY2UgYnkKPiBwaHlkZXYtPm1kaW8uYWRkci4gQUMy
MDAgbXVzdCBwcm9ncmFtIHRoYXQgdmFsdWUgdGhyb3VnaCBpdHMgSTJDIGNvbnRyb2wKPiBpbnRl
cmZhY2UsIHdoaWxlIEFDMzAwIG11c3QgdmFsaWRhdGUgaXQgYWdhaW5zdCB0aGUgYWRkcmVzcyBv
ZiBpdHMgTURJTwo+IGNvbnRyb2wgZW5kcG9pbnQuIEdlbmVyaWMgUEhZIG9wZXJhdGlvbnMgZG8g
bm90IGNhcnJ5IGEgY29uc3VtZXIgTURJTwo+IGFkZHJlc3MuIEVuY29kaW5nIGl0IGluIGEgcGh5
cyBzcGVjaWZpZXIgb3IgY29udHJvbC1ub2RlIHByb3BlcnR5IHdvdWxkCj4gZHVwbGljYXRlIHRo
ZSBQSFkgbm9kZSdzIHJlZyB2YWx1ZS4gR2l2aW5nIHRoZSBjb21tb24gUEhZIGRyaXZlciBhIHJh
dwo+IHJlZ21hcCBhdm9pZHMgcGFzc2luZyB0aGUgYWRkcmVzcyBvbmx5IGJ5IG1vdmluZyB0aGUg
cHJvdmlkZXItc3BlY2lmaWMKPiBpbXBsZW1lbnRhdGlvbiBhY3Jvc3MgdGhlIGRyaXZlciBib3Vu
ZGFyeS4KPgo+IFRoZSBMRUQgcGFkLWVuYWJsZSBhbmQgcG9sYXJpdHkgYml0cyBhcmUgc2ltaWxh
cmx5IHBhcnQgb2YgdGhlIHBhY2thZ2UKPiBjb250cm9sIGZ1bmN0aW9uLiBUaGV5IGNvbnRyb2wg
ZGVkaWNhdGVkIEVQSFkgb3V0cHV0cyByYXRoZXIgdGhhbiBHUElPcwo+IG9yIG11eGFibGUgcGlu
cy4gVGhlIGNvbW1vbiBQSFkgZHJpdmVyIHN0aWxsIG93bnMgdGhlIFBIWSBMRUQgc2VtYW50aWNz
LAo+IHdoaWxlIHRoZSBzZWxlY3RlZCBjb250cm9sIGRyaXZlciBwZXJmb3JtcyB0aGUgcGFja2Fn
ZS1zcGVjaWZpYyByZWdpc3Rlcgo+IGFjY2Vzcy4KPgo+IEZvciB0aG9zZSByZWFzb25zLCBJIHRo
aW5rIGtlZXBpbmcgdGhlIHRyYW5zcG9ydC1zcGVjaWZpYyBjb250cm9sIGRyaXZlcnMKPiBhbmQg
dGhlIGNvbW1vbiBDbGF1c2UgMjIgUEhZIGRyaXZlciBzZXBhcmF0ZSBpcyB0aGUgY2xlYW5lciBk
aXZpc2lvbi4KCkkgdGhpbmsgd2hhdCBBbmRyZXcgaXMgc2F5aW5nIGlzIHRoYXQgeW91IGNhbiBl
eHBvc2UgdGhlIHJlZ21hcCBmcm9tIHRoZQpNRkQgbm9kZSwgd2hpY2ggeW91IHRoZW4gcmVmZXJl
bmNlIGZyb20gdGhlIFBIWSBub2RlIHdpdGggYSBjdXN0b20gcGhhbmRsZS4KCkluIHRoZSBQSFkg
ZHJpdmVyLCB0aGUgZmlyc3QgdGhpbmcgdG8gZG8gaXMgcmV0cmlldmUgdGhlIHN5c2NvbiwgYW5k
IGlmIGl0CmlzIG5vdCBhdmFpbGFibGUgeWV0LCByZXR1cm4gLUVQUk9CRV9ERUZFUi4gVGhlbiB5
b3UgcHJvZ3JhbSBhbGwgdGhlIGJpdHMKeW91IGN1cnJlbnRseSBkbywganVzdCB3aXRob3V0IGdv
aW5nIHRocm91Z2ggYSBsYXllciBvZiByZWRpcmVjdGlvbi4KWW91IGNhbiBmZXRjaCB0aGUgUEhZ
IGFkZHJlc3MgdG8gcHJvZ3JhbSBmcm9tIHRoZSBkZXZpY2UgdHJlZS4gVGhlIGRvd25zaWRlCnRv
IGRvaW5nIGFsbCB0aGUgc2V0dXAgaW4gdGhlIFBIWSBkcml2ZXIgaXMgdGhhdCB0aGUgUEhZIG5v
ZGUgaGFzIHRvIGhhdmUKdGhlIFBIWSBJRCBpbiB0aGUgY29tcGF0aWJsZSwgYXMgaXQgaXMgbm8g
bG9uZ2VyIGdlbmVyaWMuIEJ1dCB5b3UgYWxyZWFkeQpoYXZlIHRoYXQuCgoKQ2hlbll1CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
