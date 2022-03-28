Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B454C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 00:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROoZb4LnAyjF5/vHU9N1XYGG6cRDcLp/cu9MGulpC/8=; b=jlAA0goe/YDHwe
	6qCZIcJbMyN7mqS68cnvwKbGPR4LPGPN9h5R7GilB7FhIbePuv6Z0+lj6tLL9IfmRd75euimvJ2vU
	uaoVUiE4j8rJBJ2sOc+nqgtmBmfF4732zW9QblDGr3pqRBOE7RsPxlz1wXm78ZwINmloAmbJjHFla
	tYc1k1/QrKoxPR78o4NpIKJ/eeaw9YCahaN+drPqDeTLFbY9IWfd4b8SYrcQ49aTcrzeSCEPf1a7h
	urmFjsoN2KHe7XicUeDkTtfufn7fFzkSz/j+fEV/KKlV2qcZydAQcc+ZaUBo84AfFz61R8RCuvr6y
	7MHk23Dz4AEdARM5nhpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYddE-006trM-Ms; Mon, 28 Mar 2022 00:53:16 +0000
Received: from proxmox1.postmarketos.org ([2a01:4f8:a0:821d::2])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYdcZ-006tcL-N7; Mon, 28 Mar 2022 00:52:37 +0000
Received: from localhost.localdomain
 (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net [81.96.50.79])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by proxmox1.postmarketos.org (Postfix) with ESMTPSA id 67F9414018D;
 Mon, 28 Mar 2022 00:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
 s=donut; t=1648428627;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=wNgL5NPptNvEaMXzsU/FjvYBFmKOMWEOsdS7qq2jWGk=;
 b=FAOecvtPyboM4fMdmhr95ZEeSV0+7HkSmZn5oR+qW0cauHZQf3mT76e8qHK1u7zQ8qanKg
 doZvndA+MwMp9c28o2Bx0gZ1TpsxLO3jgbR2Wfd0MUoeWYVO/aY7uIdNTBMSwHGsLo7QdW
 ouNihD05pkGNXGp8GSt2gMQNnyb4E90=
From: Caleb Connolly <kc@postmarketos.org>
To: Caleb Connolly <kc@postmarketos.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, martijn@brixit.nl,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: [PATCH 0/4] rockchip: support configuring pins as input
Date: Mon, 28 Mar 2022 01:50:01 +0100
Message-Id: <20220328005005.72492-1-kc@postmarketos.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_175235_943856_ED6C10CE 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add support for configuring pins as input to the rockchip pinctrl
driver. This is required for example for devices which use non-standard
configurations for gpio interrupts, specifically for the light/proximity
sensor on the RK3399 powered PinePhone Pro (which will be coming
upstream in a future patch series).

Due to the complicated layout of the RK pinctrl/gpio drivers, some extra
work is required to handle deferring the GPIO configuration. On RK3399
the pinctrl driver always probes before the GPIO controller driver, so
the PIN_CONFIG_OUTPUT and PIN_CONFIG_INPUT_ENABLE params both have to be
deferred, this series also reworks the deferred pin handling to be
generic and support any param rather than only the PIN_CONFIG_OUTPUT
param.

---
Caleb Connolly (4):
  pinctrl/rockchip: support deferring other gpio params
  pinctrl/rockchip: support setting input-enable param
  gpio/rockchip: handle deferring input-enable pinconfs
  arm64: dts: rockchip: rk3399: add an input enable pinconf

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 16 ++++++
 drivers/gpio/gpio-rockchip.c             | 29 ++++++++---
 drivers/pinctrl/pinctrl-rockchip.c       | 64 +++++++++++++++---------
 drivers/pinctrl/pinctrl-rockchip.h       |  7 ++-
 4 files changed, 81 insertions(+), 35 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
