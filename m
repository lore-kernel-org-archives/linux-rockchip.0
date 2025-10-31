Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EF47CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 15:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uICFwBfH3cJXAcz1s1Se/ZMtWWChqGIOPyvyjPBgXrM=; b=ku8FLm/WRYznRB
	erLXorpTeoy0FgxCHDPOUFTW4WYe9vdkBQdGz0SGxftSJUutY5sEEUEa8NX/NiUMODZXcANO+xb3Q
	Bbq7gGCpOq8aaeiD2we63qXE1v3A6ortSXKl+hqH2cFPIyCfYACHi1WaSyBr08UTlLJVUi+3O4CYW
	0RRAfuY6fzns75qVUAijPk2r0mbDnGcHIUhMJLv67SHdszj1YLFbzHOdpCP9n4NUGLuzbhmYzH61H
	JRBmk7nbtmDZAXrS8CLjAU2GXmrllMNweXdwrEEzfsHXr8au4CZc8u68Abfn0GPT/ydg4Anj+cmyN
	56ikLXoXRGB0B6FZCsIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vErWO-00000006Kuy-1Aaz;
	Fri, 31 Oct 2025 15:58:36 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vErWK-00000006KtL-1LhV
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Oct 2025 15:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761926308;
	bh=cJhczTAYgsx2TDxNRRHHAOrXQABsbREMRC2Y2BkDELM=;
	h=From:Subject:Date:To:Cc:From;
	b=URXLoNOYWGU0QgfiLlt4mvTUdGeIu3uthu4N1AY7CNi74FLph6gsIqAM0LLRsjIDx
	 S/ZfdvzQhnOKMeEtpth9vZ1Br/cRFu8uXrPqj4eqcu7X8anhgfRirm4decBd4aL1hP
	 m4FC4jFKVUsDKwdm/1cdiJIPSFqDetapJzZtiQ0v21ap4I5HSqDSAmZ/sC24Q0CoZR
	 xLRb5jKm2JvZFJgVCkIl7ajvkpksyAdfW8rpEL2OFyqoVvLvD1XHubKgRu1bR6CZui
	 j9jGc/h5oRYVtpjMiH7/iLyIsJTB1OPwwfpVyUyqveTWuSxEc1QNtpnm0xO4/qlXUq
	 alHy0XdJB6tDw==
Received: from jupiter.universe (dyndsl-091-248-209-065.ewe-ip-backbone.de [91.248.209.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 81E0617E1396;
	Fri, 31 Oct 2025 16:58:28 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 17C07480044; Fri, 31 Oct 2025 16:58:28 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 0/2] mmc: sdhci-of-dwcmshc: Add command queue support
 for Rockchip SOCs
Date: Fri, 31 Oct 2025 16:58:22 +0100
Message-Id: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJ7cBGkC/42NTQ6CMBBGr0K6dkxb/F95D8OiHQaZCExtkWgId
 7dyApfvJd/7ZpUoMiV1KWYVaeLEMmSwm0Jh64Y7AdeZldV2b7TZQRR8YMsBqO8R8EmQXiFIHKE
 86to7b83BlirvQ6SG32v7VmVuOY0SP+vVZH72n+pkQMPZnBpd1qTRmytK1zkv0W1RelUty/IFz
 4pmZsYAAAA=
X-Change-ID: 20251014-rockchip-emmc-cqe-support-370dbab21623
To: Adrian Hunter <adrian.hunter@intel.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2061;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=cJhczTAYgsx2TDxNRRHHAOrXQABsbREMRC2Y2BkDELM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGkE3KNTzwa5DPlEUuhutOzhncvnKuSQleAW6
 MoCohIu4ZgwuIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpBNyjAAoJENju1/PI
 O/qa7hEP/0Tw6Mo0PI5hSxdRpDkGxO/gGyN1IKDH/G25H6NCj6/iWXXgW6hdK8GEEAN3mo7eqe5
 DEnwCnchBKz64WKHWkEiZcD7GvHHspQ4GDjP93p9uN3NvCo72aNJBZejAGWv7lD1jlIfpFqGK7f
 MOvDWfdjWCWmqqPhJik1yu8QEgCgK0HefBvkm8b5WRj4BNioMHJ12SPc0iUfwlON80Yn3KNvEhK
 qxYGCITpzu8fxnMCi/7WN39Z1ru1n9WPHc7vQjf5aZpswcxlDfrqDsVU2HaSXg37e0oBI6UvZOW
 stksSymsltUPsrbwYlqFIti7sakYZRvBk2t7/wcWPlZp17Rd6BZzntN4IUUX+lLc4cVPJs0m2XM
 mz5mnEuYtVTrVCuYXQAXVHXWmkkKfzP066o/1vylyxzG5AgvD5A1rRhQ3ItISq1Cg3TOZzNUjnJ
 5lKXJJGEjd1UbmZluIWcwajXihtCJ5Sb+W4Nzo7tbNeUChkJEGa965maGk6Ary3h2nKBvOzSpR3
 MknBpJpNdHiB8tJwXZG0GPrIa92zds4R6fwoA/D8savq6JJo7IiTSKNPL9OYvhPQX4PYd8q+Nvj
 1+CovJwslL0av3mH2S+rOMeOH5W0WGN4N2s9DlvIWBo0GMD9iXRlberaeGd9EIe+uJ8lMZn6Tho
 QzxVsLRWhMka0jYCitGMsTg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_085832_793864_23BF1F59 
X-CRM114-Status: GOOD (  17.38  )
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

Right now at least the recent Rockchip SoCs do not support system
suspend with the mainline kernel. I'm currently looking into
improving support for the RK3576 platform.

On the Sige5 one of the issues is the eMMC controller, which fails
to suspend when trying to disable CQE support. While investigating
I found a missing Rockchip quirk in the Rockchip kernel, which is
needed for CQE. Since the RK3576 DT has been upstreamed with the
'supports-cqe' property (RK3588 does not yet have it), we run into
this problem for that platform.

A simple workaround would be to drop the 'supports-cqe' property,
but DT is supposed to describe hardware and the hardware does
support CQE. Thus let's add proper support instead, which also
allows adding the flag for RK3588. IMHO the patch seems a bit
intrusive for backporting, so it might be sensible to drop
'supports-cqe' there instead. Thus I have not added any stable
tags.

Note, that there are more suspend related problems on the platform,
this is just fixing some parts :)

Changes in v2:
- Link to v1: https://lore.kernel.org/r/20251014-rockchip-emmc-cqe-support-v1-0-918f03de0cb1@collabora.com
- rename rk35xx_sdhci_cqe_disabled to rk35xx_sdhci_cqe_disable
- fix device-tree typo in commit message
- drop duplicated DWCMSHC_SDHCI_CQE_TRNS_MODE setting
- use pre_enable/post_disable to avoid manually calling cqe_wait_for_idle()
  before accessing CQHCI_ENABLE bit

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Sebastian Reichel (2):
      mmc: sdhci-of-dwcmshc: Add command queue support for rockchip SOCs
      arm64: dts: rockchip: add eMMC CQE support for rk3588

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  1 +
 drivers/mmc/host/sdhci-of-dwcmshc.c           | 93 ++++++++++++++++++++++++++-
 2 files changed, 91 insertions(+), 3 deletions(-)
---
base-commit: 3a8660878839faadb4f1a6dd72c3179c1df56787
change-id: 20251014-rockchip-emmc-cqe-support-370dbab21623

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
