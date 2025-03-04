Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 013A4C282D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 12:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=byjF4RILegI6q1pbW7XuL6LY+72Hn5fL0Q93QOt1dGQ=; b=hp1cbEUo47PDiP
	bMlVaB3qnP85wZZF/pbepCI2Kh1fOfvhR/Pr3dpAv8O1lzEbdROcuZO7tWFWJz3j/URiZuKOXNhu5
	FeEgv0UsruoJ4ylc/WCxfX0ZNkHh+GSCCh8eWZ74hAgFLCE5rFrlnGWd6ph+goolvNXtzAb7DRAo8
	PSwWbN027hs3HyJSxC8vST4fE8bcfPc3XBCgwwa2Z68mB9CV5pjNsmJCWlXaQp6iVMvF1b/ICvruz
	mBqRKizLogH/fRFa15agHNnD2R7JfSeGAa4JUznn7r0i4LfzcAydingwB9hlOx3rv6ygwRo2t40UH
	/Ly1f/Euj6LThyWXCFvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpRjr-00000004gwt-4Bda;
	Tue, 04 Mar 2025 12:51:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpRdd-00000004fqv-2hW5;
	Tue, 04 Mar 2025 12:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Uq//8R4KcceSoF42PN1qalpKcxAauo2AUVr954FoHRQ=; b=hcpTmM9zVPfmgzXsBYELu0LEpG
	ZVmbssxcvFtAuGWTGfMbERbFQNbwoDGgMO0yP2Oe3sMDpXfUFUP56Nfhm7P0cqAkjkC2xquLqZOg2
	aMOklcw/At4+SlWBsggvCr2PWSJ034x82Hh+dv5XpuUh5lQXUP5RkJQEo5DBNZ+VqSxB1a2jdnz5z
	f8oyh09r1F4RYk70xa4x4BuTWfsSlu2vL5/MxayUoKMPYkYFBwBLyj1hzFOGOX13Qxg/N0LkCjXt/
	l5p1SjWdwxrUEU5Pu90ks7XXbxKVKfxj0wkqSooxvkVnXccXQ3QvkFraGDCFLD0PKlmQqnICGW52g
	b82OoMJQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpRdR-0003B0-6Y; Tue, 04 Mar 2025 13:44:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de
Subject: [PATCH v3 0/3] drm/rockchip: lvds: probe logging improvements
Date: Tue,  4 Mar 2025 13:44:15 +0100
Message-ID: <20250304124418.111061-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_044445_682161_751699FA 
X-CRM114-Status: GOOD (  10.26  )
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

Getting the panel already uses dev_err_probe to stay silent, when
the panel just probes later, and the lvds defers.

But the phy needed on px30, also has the capability to probe after
the lvds. So make the rest of the lvds probe/bind logic also use
more modern logging than DRM_DEV_ERR, that is deprecated anyway.

changes in v3:
- add patch to lower warning level on missing pinctrl (Quentin)
- one more dev_err_probe (Quentin)

changes in v2:
- reword the messages about getting (and preparing) pclk (Quentin)
- use a ret = dev_err_probe(dev, -EINVAL, ...) pattern
  in some (additional) places (Quentin)

Heiko Stuebner (3):
  drm/rockchip: lvds: move pclk preparation in with clk_get
  drm/rockchip: lvds: Hide scary error messages on probe deferral
  drm/rockchip: lvds: lower log severity for missing pinctrl settings

 drivers/gpu/drm/rockchip/rockchip_lvds.c | 80 +++++++++---------------
 1 file changed, 29 insertions(+), 51 deletions(-)

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
