Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597E4CD5BA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 11:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps9T3b9zZUl3IqUAyl6pDIkCkiHgLgpaKEt+mgAAl/s=; b=LKfJSaUoGgrSi2
	QQ1m53dBINM0GPfvriJQCXzI7e6BUyS5GCriGrl2jYMKt6OzGazIm5yclwvaeAPRY7v84apk9ysfd
	tqdwTOFkm4PvOboKcVL/8u1mcsfzHILWOQeHPzK2Y/SOn0JkuC+2MqezoeuJs1ApUpZZPMQB9Wlou
	uk8Tmo3oRVpmnVD7+N7kH0gBQT2wbPS8ou5+KUwWvMdgkPFVFRTpMphJ594TcZmvvQFTDbEdiMTva
	UPGqdVJca2JoViDP72SVdyudFW5vRz2EsHzing/zS53/R59RxzWKALJsEph8Tnk6RSudn6yCni/Aa
	8dIDrtyFu3BtQ4IAz7GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPep5-00000004Pih-0IGL;
	Wed, 20 May 2026 11:10:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPep2-00000004Phj-2TvI;
	Wed, 20 May 2026 11:10:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=urNxKPGArF5/uTgaPa+k4PcGuCAQEVtkDFM7il0mF14=; b=c9zO4kaBgtHWE3EXKJ7sC33Ape
	m4r4WQipdjvV3iIwLY1TcpQ/3SywEXsmlz9NgdprgAJuiVgln3Jy2il1xoPrrPLIacyWwOuzSIdEC
	RS2uhyuw9P2DY264i7zglkCbxfJ7Afw8dsYB65aZuetdY0UfXriEM8YOuI1CoeC+3G47WGF7E0IQN
	Fv84/KypCryGkVYuyixbU8Yw3ZQE5bp66AiyfHMwJvXNmrkRdGJSVfxoNCtT3STcQDnYu/F2qWvAr
	Uug6x0hVPZTeRpEaZ0sBdK6eJQN7CC8AyC8yleUjnUto4JGDSc77qZwRwRWBHVqvNfGf3xop+uC2x
	Y0z9JN2g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, Hugh Cole-Baker <sigmaris@gmail.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH v15 6/9] drm/rockchip: cdn-dp: Support handle lane info without
 extcon
Date: Wed, 20 May 2026 13:10:19 +0200
Message-ID: <8662323.tM3a2QDmDi@phil>
In-Reply-To: <20260304094152.92-7-kernel@airkyi.com>
References: <20260304094152.92-1-kernel@airkyi.com>
 <20260304094152.92-7-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_041044_627264_E47DB328 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

QW0gTWl0dHdvY2gsIDQuIE3DpHJ6IDIwMjYsIDEwOjQxOjQ5IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ2hhb3lpIENoZW46Cj4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95
aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+IAo+IFRoaXMgcGF0Y2ggYWRkIHN1cHBvcnQgZm9yIGdl
dCBQSFkgbGFuZSBpbmZvIHdpdGhvdXQgaGVscCBvZiBleHRjb24uCj4gCj4gVGhlcmUgaXMgbm8g
ZXh0Y29uIG5lZWRlZCBpZiB0aGUgVHlwZS1DIGNvbnRyb2xsZXIgaXMgcHJlc2VudC4gSW4gdGhp
cwo+IGNhc2UsIHRoZSBsYW5lIGluZm8gY2FuIGJlIGdldCBmcm9tIFBIWSBpbnN0ZWFkIG9mIGV4
dGNvbi4KPiAKPiBUaGUgZXh0Y29uIGRldmljZSBzaG91bGQgc3RpbGwgYmUgc3VwcG9ydGVkIGlm
IFR5cGUtQyBjb250cm9sbGVyIGlzCj4gbm90IHByZXNlbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
Q2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
