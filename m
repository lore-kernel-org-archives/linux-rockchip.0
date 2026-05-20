Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 673E4CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 11:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6Nkjdi5sakUml47MabLYzun0a9tQUJGe7Vcan6t9gY=; b=SenBujW7WPCBC0
	0G9dLdlNjFoZaiRKdn3wGMl0QY4xoTfvO2Ue6TlUfwm66GuoGTuusAmw2LV0vEkTfGq/43O72xWeq
	BDh6pver5BZMbdQHDXTL3s8TNC8//uZl+jvKqaXwN/ZAPG7X/a/bawtDz3NKksevly8CxGk+qzUMb
	5XlcK38t6W/b+eRPtmCftVU1EMG94jt3ZjBfA3wv/O5VgC12Rh7eu39EW5gcSD3sbi1DCFTRAWveS
	IYILXIbocycTwZ5oQatWGlG8UZGsT7osYK5KV6GRfPMGN2a6EEqh2UBCMvTxpRKpk2mBAaA2j3/4N
	sguxOMJUkVqTxa+fUWzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPei5-00000004Osj-2RkL;
	Wed, 20 May 2026 11:03:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPei2-00000004OrF-2YMw;
	Wed, 20 May 2026 11:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0pSVK+9EQxqVMM7Yjv49ZmJRac0skbNKar4/N2MFVSo=; b=RYBTev16Cq3YvXNlWCcs0wFF69
	eDsv+adZLd1yT5ULefQtKo+X44tNcAfUl7t5o/+u1cHreJ/abr4bRZAV5wiboCua7jRg8cb4PKW8+
	iV8dK9Iwn/0DzGNqFo9QYDao4UtZXXZN4gEdvRcrawQmjOn4gaeea5dZino47REa62XIqncgRRbG4
	WHmyxcV/KDsnFDUSbfsKoZ3kLMCN6lQS9L3ky99UPpD9mHwBimd7B0+XIZPHeACsIgJ/cfmCa5MJ6
	rVJ/9tdrUlRY+PFZTbKHebAYyizsnFaclzUbWe2lc3+DVt34ghHvhSYC3+iRF3wrpIix+IcQ+vHFc
	9xKGG2CQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Chaoyi Chen <kernel@airkyi.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Chen <hzpeterchen@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v15 0/9] Add Type-C DP support for RK3399 EVB IND board
Date: Wed, 20 May 2026 13:03:00 +0200
Message-ID: <4958503.687JKscXgg@phil>
In-Reply-To: <c0bc4796-afe5-40ff-8816-9605a6114d23@rock-chips.com>
References: <20260304094152.92-1-kernel@airkyi.com> <agxo8ic94e81nQRx@kuha>
 <c0bc4796-afe5-40ff-8816-9605a6114d23@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_040330_647635_CF2C20BA 
X-CRM114-Status: GOOD (  24.01  )
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

SGksCgpBbSBNaXR0d29jaCwgMjAuIE1haSAyMDI2LCAwMzoxMzoyNSBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIENoYW95aSBDaGVuOgo+IEhlbGxvIEhlaWtraSwKPiAKPiBP
biA1LzE5LzIwMjYgOTo0MyBQTSwgSGVpa2tpIEtyb2dlcnVzIHdyb3RlOgo+ID4gSGksCj4gPiAK
PiA+IE9uIFdlZCwgTWFyIDA0LCAyMDI2IGF0IDA1OjQxOjQzUE0gKzA4MDAsIENoYW95aSBDaGVu
IHdyb3RlOgo+ID4+IEZyb206IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNv
bT4KPiA+Pgo+ID4+IFRoaXMgc2VyaWVzIGZvY3VzZXMgb24gYWRkaW5nIFR5cGUtQyBEUCBzdXBw
b3J0IGZvciBVU0JEUCBQSFkgYW5kIERQCj4gPj4gZHJpdmVyLiBUaGUgVVNCRFAgUEhZIGFuZCBE
UCB3aWxsIHBlcmNlaXZlIHRoZSBjaGFuZ2VzIGluIGNhYmxlIHN0YXR1cwo+ID4+IGJhc2VkIG9u
IHRoZSBVU0IgUEQgYW5kIFR5cGUtQyBzdGF0ZSBtYWNoaW5lcyBwcm92aWRlZCBieSBUQ1BNLiBC
ZWZvcmUKPiA+PiB0aGlzLCB0aGUgVVNCRFAgUEhZIGFuZCBEUCBjb250cm9sbGVyIG9mIFJLMzM5
OSBzZW5zZWQgY2FibGUgc3RhdGUKPiA+PiBjaGFuZ2VzIHRocm91Z2ggZXh0Y29uLCBhbmQgZGV2
aWNlcyBzdWNoIGFzIHRoZSBSSzMzOTkgR3J1LUNocm9tZWJvb2sKPiA+PiByZWx5IG9uIHRoZW0u
IFRoaXMgc2VyaWVzIHNob3VsZCBub3QgYnJlYWsgdGhlbS4KPiA+IAo+ID4gV2hhdCdzIHRoZSBz
dGF0dXMgd2l0aCB0aGlzIHNlcmllcz8KPiA+IEFyZSB0aGVzZSBpbnRlZGVkIHRvIGdvIHZpYSB0
aGUgRFJNIHRyZWU/Cj4gPiAKPiA+IHRoYW5rcywKPiA+IAo+IAo+IFRoYW5rIHlvdSB2ZXJ5IG11
Y2ggZm9yIHlvdXIgY29udGludWVkIGF0dGVudGlvbiB0byB0aGlzIHNlcmllcy4KPiBUaGUgbWFp
bnRhaW5lcnMgc2VlbSBxdWl0ZSBidXN5Li4uIERlc3BpdGUgdGhlcmUgYmVpbmcgbm8gZnVydGhl
ciByZXZpZXcKPiBjb21tZW50cywgdGhpcyBzZXJpZXMgaGF2ZSB5ZXQgdG8gYmUgbWVyZ2VkIGlu
dG8gdGhlIERSTSB0cmVlLiAKPiAKPiBBbmQgc29tZSBvZiBteSBvdGhlciBwYXRjaGVzIGFyZSBp
biB0aGUgc2FtZSBzaXR1YXRpb24uIAo+IERvIHlvdSBoYXBwZW4gdG8ga25vdyB3aGF0IHRoZSBu
ZXh0IHN0ZXBzIHNob3VsZCBiZT8gVGhhbmsgeW91LgoKRm9yIHRoaXMgc2VyaWVzLCBJIHdvdWxk
IHRoaW5rIGl0J2QgYmUgYmVzdCB0byBzcGxpdCBpdCBhIGJpdC4KCi0gTWFrZSBwYXRjaGVzIDEs
IDIsIDUtNyBpdHMgb3duIHNlcmllcwogICogcGF0Y2ggNSBfc2hvdWxkXyBiZSBpbmNsdWRlZCBo
ZXJlLCBuZWVkcyBhbiBBY2sgZnJvbSB0aGUgcGh5LW1haW50YWluZXIKICAgIHRvIGdvIHRocm91
Z2ggdGhlIGRybS10cmVlLiBJdCBkb2VzIGxvb2sgaW5kZXBlbmRlbnQgZnJvbSB0aGUgb3RoZXIK
ICAgIHBoeSBjaGFuZ2VzIChjb2RlIGNoYW5nZXMgdGhlbXNlbGYpLCBidXQgbmVlZHMgdGhlIGZ1
bmN0aW9uIGZyb20gcGF0Y2ggMi4KCi0gTWFrZSBwYXRjaGVzIDMrNCBpdHMgb3duIHNlcmllcywg
c28gdGhhdCBwaHkgbWFpbnRhaW5lcnMgbm90aWNlCiAgVGhlIGNvZGUtY2hhbmdlcyB0aGVtc2Vs
ZiBzZWVtIGluZGVwZW5kZW50IG9mIHRoZSByZXN0CiAgKiBSZWZlcmVuY2UgdGhlIGRybS1zZXJp
ZXMgYW5kIGV4cGxpY2l0eSBub3RlIHRoYXQgdGhlIHBoeS1wYXRjaCBpbiBpdAogICAgbmVlZHMg
YW4gQWNrIGZyb20gdGhlIHBoeSBtYWludGFpbmVyIHRvIHRocm91Z2ggdGhlIGRybS10cmVlCiAg
ICBIb3BlZnVsbHkgaGVscHMgdG8gZ2V0IHRoYXQKICAqIHBhdGNoIDEgaGFzIGEgUmV2aWV3ZWQt
YnkgZnJvbSB0aGUgdHlwZS1jIHNpZGUsIGJ1dCBuZWVkcyBzb21lb25lCiAgICBrbm93aW5nIGRy
bS1icmlkZ2UgaW50ZXJuYWxzIHRvIGFncmVlCgotIE1ha2VzIHBhdGNoZXMgOCs5IGl0cyBvd24g
c2VyaWVzLCByZWZlcmVuY2UgYm90aCBzZXJpZXMgZnJvbSBhYm92ZQogIGFzIGRlcGVuZGVuY2ll
cy4KCgpUaGF0IHdvdWxkIGJlIG15IHRha2UgaGVyZSwgdG8gaGF2ZSB0aGUgcmlnaHQgbWFpbnRh
aW5lcnMgbm90aWNlIHRoZXkKc2hvdWxkIGRvIHNvbWV0aGluZy4KCgpIZWlrbwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
