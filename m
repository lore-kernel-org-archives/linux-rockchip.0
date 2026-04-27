Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBE9FF8861
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 10:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWdOqOD/YnDWF+AoVSzz5GRtvjw6hAeIRiOLEE1oZYA=; b=zROMCdkzjN2/RQ
	7JK2IxAe9aZx1xLANAg4A7UNAyB4bXbuESuhybewV1RZh4Biroom0jCSHBweMVrBCxeKBQYaBfRk4
	6rf1wmgDI/3lsPmnp8uznq//OWh1+bs4WkSbK30/jo7nXLzOxPkHzjEXYwonT5KxhsM5YDeKKIA9K
	h3B5w8P2FKwxhCECD2G6n3bHz9V6tGrKoDzOJBjsMvrS7Wu0SCS8Lns0+Ko9QLvrfYNGSv0gRbaBs
	uXw5DzUZk78oOAuAyk4yqD0jDOoXxnqWVmmxUEXZcM7oX/SPF53k8qhJCaD/IlNUUFALVyMQVnaNW
	+04qa3Uy1taK8IXcnojg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJOy-0000000GiJ4-1jwl;
	Mon, 27 Apr 2026 10:41:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJOv-0000000GiHz-2buG;
	Mon, 27 Apr 2026 10:41:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nAD4AusdeD9FfyVrCO0ouM2Cws+0AVlS+08lI2nfBkk=; b=LpStolxq3jg9WYGz1YvWNjkrZS
	ZtAgRFX6liopLoxVtop0BNDB83nNU/t9EOHFPQjli8n6VJ4wWknAghmz15S04zgBtVPbB+4AfXtk3
	6+qOtl0kLOKuZe7LUGOX+4ZppyCD41kXl0NffVwETiQyUw674QprUKvCt8yn+xS52JFGsBTVyWmq1
	4OBJt/Zu+B0XYrIqq3Ryd9/HhtVUOJdgNEpVEaPQbdg7HRcNtDK0ZCVJJFkr09tIv4AsuOJvfwKJD
	s1K1ttn8Le6RQuDuGrC8i2sgOy2se6xaNdmiE2dPW2wo840jwi1jv7UgQVcGZ1dLaWyqS6QNnVZy3
	bdy8wmSw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 06/10] drm/bridge: dw-hdmi-qp: Rate limit i2c read error
 messages
Date: Mon, 27 Apr 2026 12:41:04 +0200
Message-ID: <5203832.44csPzL39Z@phil>
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-6-d778e70c317b@collabora.com>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-6-d778e70c317b@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_034117_707178_79DEA4B9 
X-CRM114-Status: UNSURE (   7.58  )
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

QW0gU29ubnRhZywgMjYuIEFwcmlsIDIwMjYsIDAyOjIwOjE4IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+IER1cmluZyBFRElEIHJlYWRz
LCByZXBlYXRlZCBpMmMgZXJyb3JzIGNhbiBmbG9vZCB0aGUga2VybmVsIGxvZzoKPiAKPiBbICAg
MjUuMzYxNzE2XSBkd2hkbWlxcC1yb2NrY2hpcCBmZGU4MDAwMC5oZG1pOiBpMmMgcmVhZCBlcnJv
cgo+IFsgICAyNS4zNjMzNzZdIGR3aGRtaXFwLXJvY2tjaGlwIGZkZTgwMDAwLmhkbWk6IGkyYyBy
ZWFkIGVycm9yCj4gLi4uCj4gWyAgIDI1LjM2ODY3MV0gZHdoZG1pcXAtcm9ja2NoaXAgZmRlODAw
MDAuaGRtaTogaTJjIHJlYWQgZXJyb3IKPiBbICAgMjUuMzY5NDQwXSBkd2hkbWlxcC1yb2NrY2hp
cCBmZGU4MDAwMC5oZG1pOiBmYWlsZWQgdG8gZ2V0IGVkaWQKPiAKPiBTd2l0Y2ggdG8gZGV2X2Vy
cl9yYXRlbGltaXRlZCgpIGluIGR3X2hkbWlfcXBfaTJjX3JlYWQoKSB0byByZWR1Y2UgbG9nCj4g
c3BhbSB3aGlsZSBzdGlsbCByZXBvcnRpbmcgdGhlIGNvbmRpdGlvbi4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29t
PgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
