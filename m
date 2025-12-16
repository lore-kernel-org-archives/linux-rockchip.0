Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85B8AD5E156
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Dec 2025 13:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwWWbG7C5sYpidj8czNKOdr9SC5r1XYbDEZVXzDQbVE=; b=j7QZzkRNkShbW6
	5YIuPLNHSmP9oXpg21J2/83Tru5PNwB5kLmP4m2KDiuK9EW+6jmlajjVdXua3lDfW2Mcnej9rCfKZ
	TGrqxcmXDc1vGS/anRW85svxt/Vo7SVcSMjiER5Z4RZTSw6oGl9onodN9oWDvCdNpmhld75QMvTvR
	Vi3v9xmgFC2RkkoHY+6M91s6VzpjmUoHXnlKEEWJJTDfCTJaNTnyawhjhaMKTOQKimK7x04+2IAYO
	jZD+gixvpvmkiL2epmtRKdLnli3JB0I0s6Dv/y2VHCThYzxGtH8t2geikrGj7/zlnLXE58P7Yt4+6
	5XrrXKTsZtlowjJvhJYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVVQZ-00000005INE-3YWO;
	Tue, 16 Dec 2025 13:49:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVVQW-00000005IMH-0UBi;
	Tue, 16 Dec 2025 13:49:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=sFLsYOIToyI1CYsLfOe9PNPAZa7SMcZGDRLeye3TkV4=; b=1cVIG/eg7I6sS8hSAue2feSosa
	fs9JYZLPNZbpWOz+5uum2rewSRjwJieZr8xzpUV4bVReoRWYTT+mHCMkrJwoHhPQSGGR4sPYkzGME
	RDsFsScNiP6CEnjPay7NzFuwIgrFnlWdjIBcjNaVq8fDUXuIaKOW1yPFJct87k4LnqJiex01iAtJC
	+Fz+7SV96+v9afwrM24tqAFdJ6qSg/CFjF9ANZ2MwSKnE6OQY6GWDS9sX+mM66a1RGHlrF4XCy4eq
	tmRZp4LuDiR8emPv9NnninxunaM3+fUtsB+aMFPl4oLO0sv1kYMOkT8HpqoosgGfpuXJ0fkaxQjwv
	m+v2sXhw==;
Received: from [141.76.253.243] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vVVPc-0004Lk-DA; Tue, 16 Dec 2025 14:48:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org,
 Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 dianders@chromium.org, m.szyprowski@samsung.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 01/18] drm/display: bridge_connector: Ensure last bridge
 determines EDID/modes detection capabilities
Date: Tue, 16 Dec 2025 14:48:23 +0100
Message-ID: <3351986.usQuhbGJ8B@phil>
In-Reply-To: <ff65f453-68a9-41fc-b9e3-02733bba96e3@rock-chips.com>
References: <20251021023130.1523707-1-damon.ding@rock-chips.com>
 <DDNXIYL494D2.2N8L1J7XTBT4S@bootlin.com>
 <ff65f453-68a9-41fc-b9e3-02733bba96e3@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_054920_276799_22E4DBE4 
X-CRM114-Status: GOOD (  18.69  )
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

QW0gTWl0dHdvY2gsIDIyLiBPa3RvYmVyIDIwMjUsIDAzOjE1OjUyIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPiBIaSBMdWNhLAo+IAo+IE9uIDEwLzIx
LzIwMjUgNjozMSBQTSwgTHVjYSBDZXJlc29saSB3cm90ZToKPiA+IEhlbGxvIERhbW9uLAo+ID4g
Cj4gPiBPbiBUdWUgT2N0IDIxLCAyMDI1IGF0IDQ6MzEgQU0gQ0VTVCwgRGFtb24gRGluZyB3cm90
ZToKCj4gPiAKPiA+IFRoaXMgZG9lcyBub3QgYXBwbHkgb24gY3VycmVudCBkcm0tbWlzYy1uZXh0
LCBkdWUgdG8gdGhlIHBhdGNoIEkgbWVudGlvbmVkCj4gPiBpbiBhIHByZXZpb3VzIGl0ZXJhdGlv
biwgbm93IGFwcGxpZWQgYXMgY29tbWl0IDJiZTMwMGY5YTBiNiAoImRybS9kaXNwbGF5Ogo+ID4g
YnJpZGdlX2Nvbm5lY3RvcjogZ2V0L3B1dCB0aGUgc3RvcmVkIGJyaWRnZXMiKS4KPiA+IAo+ID4g
SG93ZXZlciBJJ20gc29ycnkgSSBoYXZlIHRvIG1lbnRpb24gdGhhdCBwYXRjaCB0dXJuZWQgb3V0
IGJlaW5nIGJ1Z2d5LCBzbwo+ID4gSSd2ZSBzZW50IGEgc2VyaWVzIHRvIGFwcGx5IGEgY29ycmVj
dGVkIHZlcnNpb24gWzBdLiBJIHN1Z2dlc3Qgd2F0Y2hpbmcgdGhlCj4gPiBkaXN1Y3NzaW9uIGFi
b3V0IHRoZSBmaXggc2VyaWVzLCBhbmQgaWYgdGhhdCBnZXRzIGFwcHJvdmVkIHJlYmFzZSBvbiB0
b3Agb2YKPiA+IHRoYXQgYW5kIGFkYXB0IHlvdXIgY2hhbmdlcy4KPiA+IAo+ID4gU29ycnkgYWJv
dXQgdGhlIG1lc3MuIDooCj4gPiAKPiA+IFswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjUxMDE3LWRybS1icmlkZ2UtYWxsb2MtZ2V0cHV0LWJyaWRnZS1jb25uZWN0b3ItZml4LWhkbWlf
Y2VjLXYyLTAtNjY3YWJmNmQ0N2MwQGJvb3RsaW4uY29tCj4gPiAKPiA+IAo+IAo+IEkgc2F3IHlv
dXIgZml4IHBhdGNoZXMgYmVmb3JlIHNlbmRpbmcgdGhpcyBzZXJpZXMuIEkgdGhpbmsgeW91ciBw
YXRjaGVzIAo+IHdpbGwgbGlrZWx5IGJlIG1lcmdlZCByZWxhdGl2ZWx5IHF1aWNrbHksIHNvIEkg
cGxhbiB0byB3YWl0IHVudGlsIHRoZSAKPiBvdGhlciBwYXRjaGVzIGluIG15IHBhdGNoIHNlcmll
cyBhcmUgY29uZmlybWVkIHRvIGJlIGZpbmUsIHRoZW4gc3VibWl0IAo+IHY4IHZlcnNpb24gYmFz
ZWQgb24gdGhlIGxhdGVzdCBicmlkZ2VfY29ubmVjdG9yIGRyaXZlci4gOi0pCgpJIHRoaW5rIHdp
dGggNi4xOS1yYzEgb3V0LCBub3cgaXMgYSBncmVhdCB0aW1lIGZvciB2OD8gOi0pCgpIZWlrbwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
