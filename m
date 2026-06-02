Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ACBBCD6E60
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 15:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRwmNIXC+g4mA2uKAAVFROKa/AfU/x+IA31NekEowKw=; b=0T0n4nH9MGCU0/
	wFs5YDFb3J6h1mxVMmhhNZmSrBbTbAzMBxCWNdEjsCNWzL6d9gbt3WDmgantv2FWbBQvO0SAvOa/0
	jfkG8tc6SEidj1Jc2UdkPkGbKQPBiZIlrZsn9dGiBymIludT/XjNzBxoMs6A0XFO2578lWsrqATHC
	VX+kN2eIi7V3N9lxRJRX8AetP2C1QH0bObiHmsKTLY3B950z1y21JFPJp0LaXpFYlXiVUzcgVeOmv
	9KsuLCyXsP89ZPDXXp8hoXW7hWQm9J9IcF87w+Xu6FIX9sq463vPYf4QODuqdNjfW1e+47Q9sleRW
	oox5bEpsy63EJupXCokg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQeQ-0000000DF00-3doe;
	Tue, 02 Jun 2026 15:03:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQeN-0000000DExF-3NqE;
	Tue, 02 Jun 2026 15:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=D2Q8yZjcE6URSIFp/8l4k3tj4V+4OnaUv/+qrKDMmyY=; b=TfBwYGZPAMIOMq+iAAVb6Rhd+O
	hkcWFD8AzJEueRISKQ3eNbTSB8xVbPjGwHc5JLWiR36h7aJyEePF3igsdDLyzZu/Kgm8KB6rK/Cd+
	Gf1HUusEzp6Nygk3HCW/Ax4P6zzQFwo6piryYJOWvBneULPMroZ1OyPeDQN4sdhxyYb5H6uIukOBP
	txtjzezLD+vsIVw6vjIMbEwPuR1c5187ZUGHb8mgPnrq/jGNvHUma/qRv7V54LLCFk3XWFwG6R9M9
	UJHowoq0Tf/g8yQkemD+uDVa1IzHiptKPTPsEqbnHkAF7zci+vM5JyLIotxezN4S9zVs9jM/1IU2w
	8/aX5IPA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Maxime Ripard <mripard@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 64/76] drm/rockchip: lvds: Switch to atomic_create_state
Date: Tue, 02 Jun 2026 17:03:13 +0200
Message-ID: <8196895.2l3rmUXbR5@phil>
In-Reply-To: <20260530-drm-no-more-bridge-reset-v1-64-875d828d31bc@kernel.org>
References: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
 <20260530-drm-no-more-bridge-reset-v1-64-875d828d31bc@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_080327_891278_67CD77DD 
X-CRM114-Status: UNSURE (   7.59  )
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

QW0gU2Ftc3RhZywgMzAuIE1haSAyMDI2LCAxNjowMDowOSBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIE1heGltZSBSaXBhcmQ6Cj4gVGhlIGRybV9icmlkZ2VfZnVuY3MuYXRv
bWljX3Jlc2V0IGNhbGxiYWNrIGFuZCBpdHMKPiBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfcmVz
ZXQoKSBoZWxwZXIgYXJlIGRlcHJlY2F0ZWQuCj4gCj4gU3dpdGNoIHRvIHRoZSBhdG9taWNfY3Jl
YXRlX3N0YXRlIGNhbGxiYWNrIGFuZCBpdHMKPiBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfY3Jl
YXRlX3N0YXRlKCkgY291bnRlcnBhcnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFy
ZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKaGF2aW5nIGxvb2tlZCBhdCB0aGUgZmlyc3QgcGFydHMg
b2YgdGhlIHNlcmllcyBhZGRpbmcKdGhlIG5ldyBmdW5jdGlvbmFsaXR5LCB0aGlzIGNoYW5nZSBs
b29rcyBnb29kOgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
