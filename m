Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8ECFCD6E60
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 15:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAeTkoFd5t7wtBSTuuUEMQQiRongtZGUgkT450L9Kls=; b=jpiC/0jujuXYUO
	sHNWlUxeWBABoDc1++pJzPnRapzIXpASLTD+h34JTz1QfHZF5G3y7QR0IqHp7FdvDUVlDJBv31yR4
	rymmEQOTAgWfmcASAgEnRUiPzP8QbeWMHIoHYJiPBwVols1a9Ht3hLJEEaZIuDh3QCQapKgzK3rt4
	ZatIw4e34pce0nAMwR0ETFsiHxCZ/QN/PDkGu9mUDkmOXRtD0SZt+xzf/IOjUkyrFk5eoc3CdECUW
	oYhPq9XrThFXJ+aBPVAMVNxixMGVb/RglAn6SZvN9YqA0sgfpQlwt5Exw3cTJ6icRf8LO+PunRW7B
	BD0dWS0A1Cc1yOHtf6sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQeD-0000000DErO-3B0T;
	Tue, 02 Jun 2026 15:03:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQe9-0000000DEpQ-3Cyp;
	Tue, 02 Jun 2026 15:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=68aw9nb4q0stqQVYhsOszbGTbnXtGY6XRboQ2RvC+iU=; b=tCCPLV4Ll3PC3M8OIZgaFAthIE
	N4sj64Ftlvbik5gdtIOilPnMMrepTmwHdG4vJF/9GPYQk8y7y7TdXDJ3W1CjMu0aEeWjCgkBQrhB3
	84YZRpYvFGuRAscZh+iZpZurJHjc9T4MykpfjxbmdiONq5XN2deFuFJOz4t+ZUFUGv0ykUHI4qW1I
	bmsr5yrU0zw099qoRUQ2EKnSI5S3qBqu0+ChxXjYwoPrTXET2tGTyNRc4iX6bj2kdeft6JFs9rn6d
	V9F6qQRZQ1SNxYlEqDR6euUuJU2GFdPAEgDon1I7ldICCqap6CsEi+oWIRuFY6rKIHFI23ESY1KuH
	orVoC48Q==;
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
Subject: Re: [PATCH 63/76] drm/rockchip: rk3066_hdmi: Switch to atomic_create_state
Date: Tue, 02 Jun 2026 17:02:54 +0200
Message-ID: <3645200.7aRn1RRit1@phil>
In-Reply-To: <20260530-drm-no-more-bridge-reset-v1-63-875d828d31bc@kernel.org>
References: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
 <20260530-drm-no-more-bridge-reset-v1-63-875d828d31bc@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_080313_821327_D04770CE 
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

QW0gU2Ftc3RhZywgMzAuIE1haSAyMDI2LCAxNjowMDowOCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
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
