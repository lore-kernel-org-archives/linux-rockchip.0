Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A4FC4363A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 19:39:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 44F0D2225F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 19:39:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DtaRRYuX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 44F0D2225F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ga7gbwDgZJxyrSovZ2ZHnaFkfvP0DbfgyHAKuL8wvZk=; b=DtaRRYuXIsTtnr3k0PiY1K+MmL
	S3LJmchA7DIiBLscRduwDGvuO7rpJ+VOoNcUQwHmYzaDG94boirLb6bR+aoRIUCP43Fen6X95bB2F
	plOhArwoK00f0pheg/oAsfmeP4GmREg4AFF9bjTuWXdCQ7VR0qcqRqTodCb/Pf+gK7GfakMZXqfYh
	1gwLBhIP0vuSiqLoii25xzmWw6TQlgU+jujObz/tGgNNq0a/hNrqRQ80bt6ZbxzfcWreuXH7Znf7u
	zuaGFs3A2wAAz0kdap7XFGSv+/dSa8Gvj2DuAft2Ty3jswEImgy6TYnW4r1jx5rI5kODx+bixNL3N
	eA46w/Lw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUxTO-0000x8-LH; Tue, 20 Oct 2020 19:39:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUxTM-0000wA-EA
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 19:39:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 29CE31F44D9D
From: Helen Koike <helen.koike@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v6 0/9] move Rockchip ISP bindings out of staging / add ISP DT
 nodes for RK3399
Date: Tue, 20 Oct 2020 16:38:41 -0300
Message-Id: <20201020193850.1460644-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_153904_572125_FC0472A1 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 zhengsq@rock-chips.com, jbx6244@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Move the bindings out of drivers/staging and place them in
Documentation/devicetree/bindings instead.

Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
and make ARCH=arm64 dt_binding_check.

Tested by verifying images streamed from Scarlet Chromebook

Changes in v6:
- [PATCH v6 5/9] media: staging: rkisp1: remove unecessary clocks
  Define clocks in the top level, and use if/else schema to define how
  many for each compatible as sugested by Rob Herring on
  https://patchwork.linuxtv.org/project/linux-media/patch/20200722155533.252844-6-helen.koike@collabora.com/#122626
- [PATCH v6 8/9] arm64: dts: rockchip: add isp0 node for rk3399
  Add status = "disabled" in the isp0 node
- Added Reviewed-by tags from Tomasz Figa
- Added Acked-by tags from Rog Herring
- No changes for other patches in the serie.

Changes in v5:
- Drop unit addresses in dt-bindings example for simplification and fix
errors as suggested by Rob Herring in previous version
- Fix typos
- Re-write clock organization with if/then schema

Changes in v4:
- simplify clocks with "isp", "aclk" and "hclk" as suggested by
Robin Murphy on https://patchwork.kernel.org/patch/11475007/

Changes in v3:
- dropped accepted patches
- cleanup clocks
- fix "no reg" error in dt-bindings parent@0 example
- add linux-rockchip list in MAINTAINERS and reorder items
- add Scarlet sensors dt nodes to the series

Changes in v2:
Add patches modifying bindings, as sugested by Johan Jonker in v1,
before moving them out of staging.

Eddie Cai (1):
  arm64: dts: rockchip: add isp and sensors for Scarlet

Helen Koike (7):
  media: staging: dt-bindings: rkisp1: add missing required nodes
  media: staging: dt-bindings: rkisp1: drop i2c unit address
  media: staging: dt-bindings: rkisp1: re-order properties
  media: staging: dt-bindings: rkisp1: drop parent unit address
  media: staging: rkisp1: remove unecessary clocks
  dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging
  media: MAINTAINERS: rkisp1: add path to dt-bindings

Shunqian Zheng (1):
  arm64: dts: rockchip: add isp0 node for rk3399

 .../bindings/media/rockchip-isp1.yaml         | 81 ++++++++++++-------
 MAINTAINERS                                   |  2 +
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 74 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 26 ++++++
 drivers/staging/media/rkisp1/rkisp1-dev.c     |  8 +-
 5 files changed, 157 insertions(+), 34 deletions(-)
 rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (81%)

-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
