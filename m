Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2EA3C83F1B
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 07:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hP66bJOgYQ2ps5Owdw1ZFr8tSF/5+Xqhuw6GOO56Z38=; b=E+cH0eD0k8qucI
	wxVBOBgq7f2sJCPWV51Le3GABec5l/OhxCyowbRORkXo1FrTsaHtZ3w897WFOXSU4sTLfIZRcJj8w
	eas1ibJXdDQDV4fNr+bQ1kvCV1VLFjqGRgaaklYIaU9r2UuNMrcCZQ3lWZ7xL94i8g1dKv0zeibJo
	wQmkKQHGC5QTL3C574Fj1MWheEyK6+7ka/UJWX7SZ78gF9ozlR4+TPnYvtYrfoFOFG2j9LaQGcLT/
	dLBHWAP/AlHbqldZRgkAruY3pA3l2W9pTFSAomDnQzWC4GgpUaaApZ/AG0GLX+Q00NzAdEfSMiern
	Ra4Qj24yVkqEbL85TWiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubws0-000000073TN-0iRL;
	Wed, 16 Jul 2025 07:48:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubwkc-000000072Oy-27hS;
	Wed, 16 Jul 2025 07:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=qgtjBGVAZ1tS5fJXKd4+bhI2PQYUrEH4Cz/qfvC/2po=; b=FTxmbPG1x9gKKjsM5WAh+rNIRC
	/+YNAwSYKFOaLt++uJ4akLU4L1U3GETfMY892VjCy5ZAPJnsrTOxzSQtdS2Npx5vrgDaI+q2gfISo
	FaSHyV2RSkf2RiUvTVOgEFrZKhcu6NXSPclXeHBTz793LdTFZqCMt3lVmXh8gVkH2Y9keELpbryPl
	CZ8aDjoPcXgtHDjDNDuGI7sPMsDiQz0cDk4gyULnFp1hcUNUtnyUDulCnWUUWYbmuzcqXsl2lz2z8
	UFk5YsvH+HJU7Co075/zAc39Up67VtRcLRfZlG6I+JYhQdESBQ4dEJG0WcGPM0E4hvxo/GOw83Sqw
	pXOdRX6A==;
Received: from i53875a74.versanet.de ([83.135.90.116] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ubwjz-0008Vz-1P; Wed, 16 Jul 2025 09:39:47 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Chaoyi Chen <kernel@airkyi.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add support for Type-C
 TCPM
Date: Wed, 16 Jul 2025 09:39:48 +0200
Message-ID: <23651445.EfDdHjke4D@diego>
In-Reply-To: <c84cb838-e6e7-4ed0-8d12-67b82f85ff28@rock-chips.com>
References: <20250715112456.101-1-kernel@airkyi.com>
 <eqb5m22om6bx2ypjtnlwdjmgfyycpmgrlvro34xwlwjj4j2jeq@mrarg36wetp6>
 <c84cb838-e6e7-4ed0-8d12-67b82f85ff28@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_004026_568495_8AEC0ED4 
X-CRM114-Status: GOOD (  21.00  )
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

QW0gTWl0dHdvY2gsIDE2LiBKdWxpIDIwMjUsIDAzOjU2OjI3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4gSGkgRG1pdHJ5LAo+IAo+IE9uIDIwMjUv
Ny8xNSAyMDowNSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiA+IE9uIFR1ZSwgSnVsIDE1LCAy
MDI1IGF0IDA3OjI0OjU0UE0gKzA4MDAsIENoYW95aSBDaGVuIHdyb3RlOgo+ID4+IEZyb206IENo
YW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiA+Pgo+ID4+IFRoaXMgcGF0
Y2ggYWRkIHN1cHBvcnQgZm9yIFR5cGUtQyBQb3J0IENvbnRyb2xsZXIgTWFuYWdlci4KPiA+PiBU
aGUgZXh0Y29uIGRldmljZSBzaG91bGQgc3RpbGwgYmUgc3VwcG9ydGVkLgo+ID4+Cj4gPj4gU2ln
bmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+ID4+
IC0tLQo+ID4+ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXR5cGVjLmMgfCAz
MzUgKysrKysrKysrKysrKysrKysrKystLQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDMxOSBpbnNl
cnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiA+IFBsZWFzZSBrZWVwIFRDUE0gaW1wbGVtZW50
YXRpb24gdW5kZXIgZHJpdmVycy91c2IvdHlwZWMvdGNwbS8gLiBDcmVhdGUKPiA+IGFuIGF1eCBk
ZXZpY2UgYW5kIHdyaXRlIGFuIGF1eCBkcml2ZXIgZm9yIHRoZSBUQ1BNIHBhcnQuCj4gCj4gU29y
cnksIHRoZSBjb21taXQgbWVzc2FnZXMgbWF5IG5vdCBiZSBkZXNjcmliZWQgYWNjdXJhdGVseSBl
bm91Z2guCj4gCj4gVGhpcyBwYXRjaCBhZGRzIG11eC9zd2l0Y2ggb3BlcmF0aW9ucyB0byB0aGUg
UEhZIGRyaXZlciB0byBpbXByb3ZlIAo+IGNvbW11bmljYXRpb24gd2l0aCB0aGUgVENQTSBmcmFt
ZXdvcmsuIFNpbmNlIHRoaXMgUEhZIGlzIGEgY29tYm8gVVNCL0RQIAo+IFBIWSwgaXQgcmVxdWly
ZXMgY29uZmlndXJhdGlvbiBjaGFuZ2VzIHRvIHRoZSBQSFkgbGFuZXMgYmFzZWQgb24gdGhlIAo+
IFVTQi1DICBwbHVnIG9yaWVudGF0aW9uIChDQyBsb2dpYyksIHNpbWlsYXIgdG8gdGhlIGV4aXN0
aW5nIGV4dGNvbiAKPiBtZWNoYW5pc20gaW1wbGVtZW50YXRpb24uIE9mIGNvdXJzZSwgdGhlIG9y
aWdpbmFsIGV4dGNvbiBmdW5jdGlvbmFsaXR5IAo+IHdpbGwgcmVtYWluIGZ1bGx5IGNvbXBhdGli
bGUuCgphbmQgbG9va2luZyBhdCBvdGhlciB1c2VycyBvZiBmb3IgZXhhbXBsZSB0eXBlY19zd2l0
Y2hfcmVnaXN0ZXIoKSBbMF0sCnRoZXJlIGFyZSBhIG51bWJlciBvZiB0aGVtIGFscmVhZHkgdXNl
ZCBpbiBvdGhlciBwaHkgZHJpdmVycyBhY2Nyb3NzCkZyZWVzY2FsZSwgUXVhbGNvbW0sIFJvY2tj
aGlwIGFuZCBTYW1zdW5nLgoKR3JvdXBpbmcgdGhlIG11eC9zd2l0Y2ggd2l0aCB0aGUgcGh5IGRy
aXZlciBhcyB0aGlzIHBhdGNoIGRvZXMsIG1ha2VzCndheSBtb3JlIHNlbnNlIHRoYW4gdG8gaW50
cm9kdWNlIGFkZGl0aW9uYWwgaW5mcmFzdHJ1dHVyZS4KCgpbMF0gaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjYuMTUuNi9BL2lkZW50L3R5cGVjX3N3aXRjaF9yZWdpc3RlcgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
