Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E75EC6FD18
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 21:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DAUHDg5Y9SJvb+uHLuvnvcuT/yRBSZem/dgLQqakc2c=; b=OP7DooixmOs0IE
	VhgR+EfhmVxUTkjlq7ipW5q+hUaN/ou4L5AuZTQ8ha703QL2O2X01ox/PDrHFq6qbFpIvcFrYS4QP
	bBgPXCZrO+6R12d5C/FKsTr6Qi38hMrKktE4IkoBMJrEArb4Zdt8XSlPaqnk+Gxi6b72I217ifPQW
	YO2DY72kL25sgcphdTGw2HdgLM1WfReaQepUfaMy4rSpFuoMHEdCTY3zCQnTn3qQ3Jr140bhLGkxL
	NJ/+aV2R1ezDtLle072hkMzfQ4FSVRtx6Rz4R4h4Vg6P+m3MsLqvxjmQbs9Yr9C3IHIfxfLk/0x1t
	bXX53Nmb7eF1WuX04ctg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phGS1-00Fr38-0j;
	Tue, 28 Mar 2023 21:01:53 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phGRw-00Fqyy-2T;
	Tue, 28 Mar 2023 21:01:51 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CDE376600011;
	Tue, 28 Mar 2023 22:01:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680037303;
	bh=k91HPwR7LcyzejO9VePWYMNLZezHnwPxhbbY3jkeELg=;
	h=From:To:Cc:Subject:Date:From;
	b=DUVBG5X1PLkrNcuuYwG4HcgQg+BgtNR2sdGVBkQCKm7EqGGW/2iN/OWje09QSYduh
	 oCb1JpNgq9yD5mVD1kZQYl8ua/AKVbh8MgYCF1JR7uNS5bMNww3sU1HGCtP0CE63lV
	 ngiXiUuHNB3Krovc4RNGJ0qmY6yuZsYOD0E0UOxqUtAFjB8Iy7VimAbEBD9qFYZC90
	 sD3lbdGQxorhTbkM1GUrkpmEWrLMbNUVE993fvEBpw2AmS48uU0F662YdPdfS9OF3r
	 C+GFXumJsRCH00rp6MEvLEzCpCSPoye4ZhOqzgy0fXzLCHt4Py1v7cPCE1tDrwfSe7
	 X/kEHiIwySo+g==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	jamie@jamieiles.com,
	heiko@sntech.de
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH 0/2] RK3588 watchdog support
Date: Wed, 29 Mar 2023 02:30:46 +0530
Message-Id: <20230328210048.195124-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_140149_016220_DB955BCF 
X-CRM114-Status: UNSURE (   7.63  )
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

This patch series enables watchdog support for RK3588 and updates the
DT bindings for the same.

Shreeya Patel (2):
  arm64: dts: rockchip: Enable watchdog support for RK3588
  dt-bindings: watchdog: rockchip: Add rockchip,rk3588-wdt string

 .../devicetree/bindings/watchdog/snps,dw-wdt.yaml         | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi                 | 8 ++++++++
 2 files changed, 9 insertions(+)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
