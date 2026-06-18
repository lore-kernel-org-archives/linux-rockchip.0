Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C70A8CD98F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 08:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wt3BD7CkxayizGA4Rk/2l54KAwA0iSP0Mz8Gr+eyY8E=; b=1y9+/mMc0MsF9A
	zzvJtuIoo2vw82mCTOu9cXYO83bo9ojlkjjl10RCsJxOezs3CiHC/O2kx2V0raFbhvwUinbUIELvb
	V3hmn6nvHIHxP+SS0v5mnRQ9EvWmo959t/i3uKV2c4mvGRdgCJe16/47q8QSPB0Y4nURwPZ8gfnLv
	1XEUcZRvuD0YrMNSv3UQ4Haf1jInr0Cg16HFPhRq71UQR76ZxIJvmlZiXt6vMms7pMovfKAozT40d
	vbQeBHCsTdmzmMShWhBwV3gtKfijC8IcooxTMYVaWVz8LtooCE53rmPf82ZY5YH4KsS7u6mUn3hBP
	y5oz7wUVwZlbtqJumzbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa8HR-00000000rRQ-3io0;
	Thu, 18 Jun 2026 08:39:21 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wa8HP-00000000rQT-1RuN;
	Thu, 18 Jun 2026 08:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781771955;
	bh=00Sh3h7guBWY5L2puvf4zlaEaH/SsYgyBTF6Tbvqf10=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=hzcvqf7GuKHpdHlXk2wp0uWxEnywUQE5XOLR4Qi5aLbyJU5+IpgYUYwTwNWqBRnr4
	 lXDy+UR9gQb4JO5rI0JuckPmTPgC1ZhGImgZ1BrEZLq3BFNWOb8rH9LHUh6fYqSOWA
	 AoTCuEB3aW8WJfm/O0fJdxn+24bVVqy3Mw+0ibEcrP5btrCOCYrjst8zWINPzouYsk
	 uld2UHSmgRmuGyblJP51TUv784fFUvdhTDnK4GNVyg3VkGSiPRJIFTmyvH7xZkD+om
	 4xXsiDMLuZ/SjppHamWcOXOFAXxvU9jbGJfMDjPDCFqFKocc8pSQLhZQNAXlREwnj4
	 mAsGjpwQx0m8w==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id AC13917E05DE;
	Thu, 18 Jun 2026 10:39:14 +0200 (CEST)
Message-ID: <fe8038fe-940a-4c61-a551-082534ef9c51@collabora.com>
Date: Thu, 18 Jun 2026 11:39:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] dt-bindings: display: vop2: Add missing reset
 properties
To: Diederik de Haas <diederik@cknow-tech.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <20260617-dw-hdmi-qp-yuv-v1-1-a665cfd06d7d@collabora.com>
 <DJC0L3CRJ0WL.IZEYVLPROMM1@cknow-tech.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <DJC0L3CRJ0WL.IZEYVLPROMM1@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_013919_541869_A4958064 
X-CRM114-Status: GOOD (  14.74  )
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

SGkgRGllZGVyaWssCgpPbiA2LzE4LzI2IDEwOjU4IEFNLCBEaWVkZXJpayBkZSBIYWFzIHdyb3Rl
Ogo+IEhpIENyaXN0aWFuLAo+IAo+IFRoYW5rcyBmb3IgdGhpcyBzZXJpZXMgOi0pIEp1c3QgMSBu
aXQgKGF0IHRoZSBlbmQpIC4uLgo+IAo+IE9uIFdlZCBKdW4gMTcsIDIwMjYgYXQgODo1MiBQTSBD
RVNULCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+IERvY3VtZW50IHRoZSBWT1AyIHJlc2V0
cyBjb3JyZXNwb25kaW5nIHRvIHRoZSBBWEksIEFIQiBhbmQgRENMS19WUDAuLjIKPj4gY2xvY2tz
LCB3aGljaCBhcmUgY29tbW9uIHRvIGFsbCBzdXBwb3J0ZWQgU29DcywgcGx1cyBEQ0xLX1ZQMyB3
aGljaCBpcwo+PiBwcm92aWRlZCBvbmx5IG9uIFJLMzU4OC4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
Q3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPj4g
LS0tCj4+ICAuLi4vYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwg
ICB8IDQyICsrKysrKysrKysrKysrKysrKysrKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNl
cnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwK
Pj4gaW5kZXggOTNkYTFmYjlhZGM0Li5kM2JjNTM4MGY5MTAgMTAwNjQ0Cj4+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZv
cDIueWFtbAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9yb2NrY2hpcC9yb2NrY2hpcC12b3AyLnlhbWwKWy4uLl0KCj4+IEBAIC0yODksNiArMzIxLDE2
IEBAIGV4YW1wbGVzOgo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImRjbGtfdnAw
IiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJkY2xrX3ZwMSIsCj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiZGNsa192cDIiOwo+PiArICAgICAgICAgICAgICAg
IHJlc2V0cyA9IDwmY3J1IFNSU1RfQV9WT1A+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAg
IDwmY3J1IFNSU1RfSF9WT1A+LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFNS
U1RfVk9QMD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgU1JTVF9WT1AxPiwK
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBTUlNUX1ZPUDI+Owo+PiArICAgICAg
ICAgICAgICAgIHJlc2V0LW5hbWVzID0gImF4aSIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAiYWhiIiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJkY2xrX3Zw
MCIsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZGNsa192cDEiLAo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgImRjbGtfdnAyIjsKPj4gICAgICAgICAgICAgICAg
ICBwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1NjhfUERfVk8+Owo+IAo+IFBsYWNlIHJlc2V0
KiBwcm9wcyBiZWxvdyBwb3dlci1kb21haW5zIChsaWtlIGluIHBhdGNoIDkpID8KPiBTbyBldmVy
eW9uZSB3aG8gY29waWVzIHlvdXIgZXhhbXBsZSBoYXMgdGhlIGNvcnJlY3Qgc29ydGluZyBvcmRl
ci4KClRoZSBleGFtcGxlIGRvZXNuJ3Qgc3RyaWN0bHkgZm9sbG93IHRoYXQgb3JkZXJpbmcgZWl0
aGVyIOKAlCBzZWUgZS5nLiB0aGUgaW9tbXVzCnByb3BlcnR5IOKAlCBzbyBJIHBsYWNlZCB0aGUg
cmVzZXRzIHJpZ2h0IGFmdGVyIHRoZSBjbG9ja3MsIHdoaWNoIGtlZXBzIHRoZQpyZWxhdGVkIHBy
b3BlcnRpZXMgZ3JvdXBlZCB0b2dldGhlci4KClRoYXQgc2FpZCwgSSBkb24ndCBoYXZlIGEgc3Ry
b25nIHByZWZlcmVuY2UuIAoKSGVpa28sIGlzIHRoZXJlIGEgY29udmVudGlvbiB5b3UnZCBsaWtl
IHRoZSBSb2NrY2hpcCBiaW5kaW5ncyB0byBmb2xsb3cgaGVyZT8KSGFwcHkgdG8gcmVvcmRlciBp
ZiBzby4KClJlZ2FyZHMsCkNyaXN0aWFuCgo+IAo+IENoZWVycywKPiAgIERpZWRlcmlrCj4gCj4+
ICAgICAgICAgICAgICAgICAgcm9ja2NoaXAsZ3JmID0gPCZncmY+Owo+PiAgICAgICAgICAgICAg
ICAgIGlvbW11cyA9IDwmdm9wX21tdT47Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
