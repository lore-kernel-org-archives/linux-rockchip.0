Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3784D778B2
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 19:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mlFid61GCSBDF2KE9oY8KjjDBQJIxk5UoHtPtn+9nfY=; b=X0tYnLvoybWoVq
	5maW4J4cDmM/Alb9TCPqBIqvPqvpXY46x5VpHyA/iU6/FyVRQrhboF0PgPhG1kOjOoNpZA/6g0gtI
	fGlvSULKSgblLcKzflti7/XWN1eixrGo7vf8M5/m/WRQnFpo8r2VaFRUzuvJh2Cied1gD0K8DXgrd
	oFtrvd4vhiieV6FVFZ3lF7c4gKEn5KpaK026Nbd8w3K7nc+bzunRqc4meb9z2rsCk28TTGjb83bAH
	0XCZ4W0ub48fc57NQQGTLXqRXILndar6Ku2v9dAf7QDU4/69nNLETuVDpBPVAENE1UBHeISgO4Ucs
	yyZ+2bpcSFPqzJbCbuyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjMjs-00000009PLE-2C8T;
	Fri, 23 Jan 2026 19:22:36 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjMjo-00000009PKo-3yHn;
	Fri, 23 Jan 2026 19:22:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B59FB1476;
	Fri, 23 Jan 2026 11:22:24 -0800 (PST)
Received: from 010265703453.arm.com (unknown [10.57.51.35])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8C6A43F632;
	Fri, 23 Jan 2026 11:22:29 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de,
	neil.armstrong@linaro.org,
	dianders@chromium.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: jesszhan0024@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] Properly support FriendlyElec HD702E
Date: Fri, 23 Jan 2026 19:22:19 +0000
Message-Id: <cover.1769191673.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_112233_041846_6B911B79 
X-CRM114-Status: UNSURE (   7.53  )
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

v1: https://lore.kernel.org/linux-rockchip/cover.1767111804.git.robin.murphy@arm.com/

Changelogs in the patches - fingers crossed this is good to go now,
thanks all for the acks and reviews.

Cheers,
Robin.


Robin Murphy (4):
  dt-bindings: display: panel: Move FriendlyElec HD702E to eDP
  drm/panel-edp: Move FriendlyELEC HD702E
  arm64: dts: rockchip: Move RK3399 eDP pinctrl to boards
  arm64: dts: rockchip: Add overlay for FriendlyElec HD702E

 .../display/panel/panel-edp-legacy.yaml       |  2 +
 .../bindings/display/panel/panel-simple.yaml  |  2 -
 arch/arm64/boot/dts/rockchip/Makefile         |  5 +
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi |  3 +-
 .../dts/rockchip/rk3399-gru-chromebook.dtsi   |  2 +
 .../dts/rockchip/rk3399-nanopc-t4-hd702e.dtso | 96 +++++++++++++++++++
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts |  2 -
 .../rockchip/rk3399-sapphire-excavator.dts    |  2 +
 drivers/gpu/drm/panel/panel-edp.c             | 26 +++++
 drivers/gpu/drm/panel/panel-simple.c          | 25 -----
 10 files changed, 134 insertions(+), 31 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4-hd702e.dtso

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
