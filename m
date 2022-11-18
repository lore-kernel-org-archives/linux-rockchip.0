Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9984C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 09:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8n56IzPxqKg9LDFAP486brz9B+VVS+d8NbgRqYXgkgI=; b=UiR4LjPnoUf9Oz
	Hysg0B0tZydzXmZfVv42NQa5M9MEn2HteSYm+12w+kETIozWT1+y2RZ2JBoszZwOpd6YuD7qdnAQ5
	HOC4+z9QMuRHrjC9Eh2IfUUTekAxhYu5SemBoRH8r6VaBd4Bk+xdwW08zd4/KqvGAp3bH9eFgxwqY
	djhCBgV38+Ok8CSn7T4W2oB4ZNzoZ9b2l+ZmtfxRviQOUJAZxssl1ZnqlUEyOq3CcOvKLohfpnOuo
	T/US+0tUJIeOK6EJYC8QcsJZfbSYFw/Rat4TlqLnBvXGoQpqE9kmnzve5EFElE9N2TULjC3GVBuk/
	eOe0YSlJxGDaT0Atnvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxqm-0038l1-Md; Fri, 18 Nov 2022 09:39:56 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxqZ-0038gN-Gh; Fri, 18 Nov 2022 09:39:45 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 26B4FAF4;
	Fri, 18 Nov 2022 10:39:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668764381;
	bh=8759RmpiUD0qDZZy0EBtArWNV2cOPT6xrqlG+fmlROo=;
	h=From:To:Cc:Subject:Date:From;
	b=FeA6osoqu0n82Tne2fJ/CiBNmJyqNK/nLk+xhu/Z1J3rj36na4gmB+1xjsdkAgKcF
	 COTXTrSrfp3WfLvsVuSjAvMdqN1U012qbAl+a/QVrH1T9Vq676jPGTcQa5WaoTfmLx
	 J1xYHTSEq9CiCRzFcp0eb8MO9AMKMbPfSh0buMqI=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 00/14] media: rkisp1: Add support for i.MX8MP
Date: Fri, 18 Nov 2022 18:39:17 +0900
Message-Id: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_013943_726377_FB46E2FC 
X-CRM114-Status: GOOD (  15.22  )
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

This series depends on v3 of "dt-bindings: media: Add macros for video
interface bus types" [1].

This series extends the rkisp1 driver to support the ISP found in the
NXP i.MX8MP SoC.

The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
and in the NXP i.MX8MP have the same origin, and have slightly diverged
over time as they are now independently developed (afaik) by Rockchip
and VeriSilicon. The latter is marketed under the name "ISP8000Nano",
and is close enough to the RK3399 ISP that it can easily be supported by
the same driver.

The last two patches add support for UYVY output format, which can be
implemented on the ISP version in the i.MX8MP but not in the one in the
RK3399.

This version of the series specifically has been tested on a Polyhex
Debix model A with an imx219 (Raspberry Pi cam v2).

[1] https://lore.kernel.org/linux-media/20220615221410.27459-2-laurent.pinchart@ideasonboard.com/

Laurent Pinchart (3):
  dt-bindings: media: rkisp1: Add i.MX8MP ISP example
  media: rkisp1: Add and use rkisp1_has_feature() macro
  media: rkisp1: Configure gasket on i.MX8MP

Paul Elder (11):
  dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
  media: rkisp1: Add match data for i.MX8MP ISP
  media: rkisp1: Add and set registers for crop for i.MX8MP
  media: rkisp1: Add and set registers for output size config on i.MX8MP
  media: rkisp1: Add i.MX8MP-specific registers for MI and resizer
  media: rkisp1: Shift DMA buffer addresses on i.MX8MP
  media: rkisp1: Add register definitions for the test pattern generator
  media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
  media: rkisp1: Support devices without self path
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format

 .../bindings/media/rockchip-isp1.yaml         |  79 ++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 102 +++++++++++---
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  32 +++++
 .../platform/rockchip/rkisp1/rkisp1-debug.c   |  14 +-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  67 +++++++--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 128 +++++++++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  90 ++++++++++++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  35 ++++-
 include/uapi/linux/rkisp1-config.h            |   2 +
 9 files changed, 509 insertions(+), 40 deletions(-)

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
