Return-Path: <SRS0=0Sn9=DR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 238F8C433E7
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A8D5922260
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:53 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rkpCaEhp";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="oXyDx2Yv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A8D5922260
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kwiboo.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:In-Reply-To:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lejBArgVm9Cb86dmOcq/Of0WyyGquceuSg4ouqGWttg=; b=rkpCaEhpBYmb8Iv2NyMeK3ZbGc
	z9N2RVf4Sw16AV9PdRDmrHaO2FQfIXIgDazlqDc1ViW45OcGYEUX1hgm1SiM4GVE6ubLb6TJVwCuv
	gzvKz4Ii5oD0muZOpc8lUlNgYekg3LZZ1KNXx6SEE/Wt9ZnXOhig4GirW7GVC/aztzXotVCRmODZU
	58yNli7Em02Jq/mqskMxTWRd1pzj/ygu6a/FRCvJWgcS/VcVjRA2P80lxP0mImzBlB4KRNRP917Ak
	gMxt6jxEHMUthLYmhPbiAAFHRpIqT1n4sXzyYVUs+GgeiIXwsS8Nf2vWgSdeA+BdtsPRm2kDrLSUS
	KgY96Nqg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kRGra-0005Zo-2n; Sat, 10 Oct 2020 15:32:50 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRGr7-0005Oh-Am
 for linux-rockchip@lists.infradead.org; Sat, 10 Oct 2020 15:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=wESJQvpdfDsvdWan8Taf/CIlNvse8X0Jhu+UUVMx4i4=;
 b=oXyDx2YvexeMHXYOvbXPDaqn7APjYxMiKb/+bt1EPMIeinaG1tI43qsAINzdwXP0TvRC
 TGAxfps8nxUEaisW46e/HLaZ4r2Dm/K2ehKlcx1Rk1qerfHXpXvjmhk6i0zgLk1fV1usnQ
 xUEDUvaVFvvVXJrYub/A1a83Rdq79lztg=
Received: by filterdrecv-p3mdw1-6685f47d68-9kn8s with SMTP id
 filterdrecv-p3mdw1-6685f47d68-9kn8s-18-5F81D401-55
 2020-10-10 15:32:17.741501173 +0000 UTC m=+233773.767440829
Received: from bionic.localdomain (unknown)
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP
 id vof286gPTU2LuS_fpzD_jA Sat, 10 Oct 2020 15:32:17.455 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 0/6] Support more HDMI modes on RK3228/RK3328
Date: Sat, 10 Oct 2020 15:32:17 +0000 (UTC)
Message-Id: <20201010153214.19722-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h4CO0Scf6vcnfmbTz?=
 =?us-ascii?Q?4mZdRxcxfQtbnNCh2SLgMT0C=2FS7YcNADP=2FsQMH8?=
 =?us-ascii?Q?oK9pQPq1ftJEnG1hGSopqK8EFAKG0s6spWt9+hl?=
 =?us-ascii?Q?=2FLxqwHXlwQZsW+Z3APEdHW6s1=2FJD3hLihG=2Fo1wd?=
 =?us-ascii?Q?De+MpVp3gPadt3DdaetcMcaCKLq0GEO3M+2VHuH?=
 =?us-ascii?Q?F9nnNyKku95=2FkLXHoX5PA=3D=3D?=
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
X-Entity-ID: wSPGWgGSXUap++qShBI+ag==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201010_113221_430243_E8AF5BFF 
X-CRM114-Status: GOOD (  10.65  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Huicong Xu <xhc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is a long overdue revival of an old series that adds support for
more HDMI modes on RK3228/RK3328.

This v3 series contains the original v2 patches targeting the inno hdmi phy
driver, a separate series targeting drm driver will follow, see [2] for
current work-in-progress of drm driver part.

Part of this has been reworked from vendor BSP 4.4 kernel commits.

Patch 1-5 fixes issues and shortcomings in the inno hdmi phy driver.

Patch 6 adds support for more pixel clock rates in order to support
common DMT modes in addition to CEA modes.

Changes in v3:
  - split series
  - drop drm and device tree changes

Changes in v2:
  - collect acked-by tag
  - drop the limit resolution width to 3840 patch

This series is also available at [1].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20201009-inno-hdmi-phy
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20201009-drm-rockchip

Regards,
Jonas

Algea Cao (1):
  phy/rockchip: inno-hdmi: Support more pre-pll configuration

Huicong Xu (1):
  phy/rockchip: inno-hdmi: force set_rate on power_on

Jonas Karlman (3):
  phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
  phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
  phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write

Zheng Yang (1):
  phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 110 ++++++++++++------
 1 file changed, 74 insertions(+), 36 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
