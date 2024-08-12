Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A07C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 21:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xrMkI2NGz/K9E7V3h8WQes7rILqt9xUkPA452EljFNI=; b=cXFnRZIaj+90hy
	W+Mj09vm/BVNLIeE9Rp+AluIaQ6uEk/V34UGWHPK2YpAnAfAMsLz8JceKlnWHWrF5r4NdiwZpzs7a
	3dZtVgaHWP5Xrv5B7i5PYBHzd5BeCU2fY6Gj871nQ4qW+9+tosgb7S0QGzi9M38NjjBVVB2ek/mWU
	S0b6y0aj1179btJJtVd6F6w/4QPdoXhOeJ8Lga6kcFz0o7uFyVEhKlpUuNpoz6Dug5o1x7GJTBBJn
	ld+jc/lT8fGupuEKm34tYD1iIbc9abEKDjy08FH/MHEaUQGblKqP1cgrbv5wLgrtrri5fbjw/1w2o
	yu5aCUBKwm4PCujTG/LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdcOc-00000001att-0YOS;
	Mon, 12 Aug 2024 21:16:06 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdcOO-00000001aqX-2Gij;
	Mon, 12 Aug 2024 21:16:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723497340; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lLM8Nabp4cPHVThFZTVOq5Bd+gc6p2PC79wIMbKRl9Hcr0l1ujTJk78kaSHIbYBwcmGJmKxjmUOqKA/Sspoh29t4RCcWW+iV6tXGn9l1N8tZkh+KK98LcCsn1B65enUBdDhZX8s9QWkaESpu+C4bJPK6H5V7e2d4BcVVfRinMOQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723497340; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nI08eMuuYklw9xaxXgCwGjyVvNmHkByhpTj6sj4w9O4=; 
	b=dzuBH1QtKNU2bABQNS2za1JhS+n6HtYzV3crBzYqBCovMDer2XumU9a0oAbt7u9WsM2BSqu2Q1yCdX9PPJ5iobd7zZbb7byViJWPKz+AwJl4Vo4Ndeg7uQMGn8FteUcKuXz0biy1j7NxlSuQ++2AMQk4OLTxc0WYNbAoIauyuzY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723497340;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=nI08eMuuYklw9xaxXgCwGjyVvNmHkByhpTj6sj4w9O4=;
	b=XkdwHxAGvcxLoBbNv/2+Qtr/rFlGZr+zlG22nw+JFQeMFdFU/os8KSBsqV29YdEb
	gWIf6HpQeYvzTQGslOVVGZ07PApOnhm0KB+XE8GBrOE89iq2wHRLw+9Ry4vqjtc5AsU
	6ONUJ0om1NrFJhf3OAd0ksQXPgxsxjE9t7kWR1M4=
Received: by mx.zohomail.com with SMTPS id 1723497338310681.7662889692687;
	Mon, 12 Aug 2024 14:15:38 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/4] Rockchip DW HDMI driver cleanup/improvements
Date: Tue, 13 Aug 2024 00:15:07 +0300
Message-Id: <20240813-dw-hdmi-rockchip-cleanup-v1-0-b3e73b5f4fd6@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFt7umYC/x3MSQqEMBBA0atIrbvAxAHxKtKLWClNYXcMCQ4g3
 t3g8i3+vyBxFE7QFxdE3iXJ6jPUpwByxs+MYrNBl7ouO6XRHujsXzCutJCTgPRj47eAVTV2pNq
 pbYgh5yHyJOe7Hr73/QBMFmeOagAAAA==
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_141552_670345_56AE5E2A 
X-CRM114-Status: UNSURE (   7.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series provides a few patches to cleanup/improve the Rockchip DW
HDMI platform driver.

Note the patches were initially sent as part of [1], in an attempt to
add support for the RK3588 HDMI TX Controller, but were removed in the
next revision as the patchset followed a different development path,
i.e. not relying on the existing driver anymore.

[1] https://lore.kernel.org/all/20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (4):
      drm/rockchip: dw_hdmi: Use modern drm_device based logging
      drm/rockchip: dw_hdmi: Simplify clock handling
      drm/rockchip: dw_hdmi: Use devm_regulator_get_enable()
      drm/rockchip: dw_hdmi: Drop superfluous assignments of mpll_cfg, cur_ctr and phy_config

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 92 ++++++++---------------------
 1 file changed, 26 insertions(+), 66 deletions(-)
---
base-commit: 9e6869691724b12e1f43655eeedc35fade38120c
change-id: 20240812-dw-hdmi-rockchip-cleanup-33b8c16f65ce


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
