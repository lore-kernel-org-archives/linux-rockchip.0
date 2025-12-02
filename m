Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF9AD12671
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 21:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cbu9ESfISq0zSVKVXoRIoYhF1QiZN8E39TGlYvnN6x0=; b=EdoT48Q8GfyfU9
	OdfqXz93kCzCC+IS1iBqjnQqL2IlopzSOoBi6Ch7Ky/TzwFOvitKnHDjf74oYoamS+aIkruLWAEty
	yAUkOfUvmRE7wItBrutCY0WbBB1xsb9BEDGZakQk9YYTOLM7t0GqA4YIk5KbreISNk0seOMy/TbhK
	cT+eU3B5+FoXKjRrunqin3WYxtfKnSYnBrCVNIKudef6wMXSZNH/UvgrNuTeg7wRRAl8DGVezUAne
	52kham2alIrHrjBQXjL9GBwZ/HUj08isDNrNWYw24GWB63HDOKdAEBj2ORmTsZDGpyurW6hOZzr6Y
	D4jkYlvUwyhClhHCXdGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQXWN-00000005pEr-33hd;
	Tue, 02 Dec 2025 21:02:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQXWL-00000005pEP-06Ew
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 21:02:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 417B8443A7;
	Tue,  2 Dec 2025 21:02:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CED8C16AAE;
	Tue,  2 Dec 2025 21:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764709368;
	bh=+NfOB79/o1jXB8edhjztknXizC2rmKHoxYfSHOGDDqs=;
	h=From:Subject:Date:To:Cc:From;
	b=nMGPHKyo2KbjnEW5ciedGnBqtSQXBdQA9itsILcXPhwZdGORjZPg/nLIUXx3/fzgi
	 yaQLufUm1bMw9xqM+Y8kZlLTGb9PoRSFiWlsJqaTY/EFfRLXjUbnf/MM1pbVozT0S+
	 HJI4dovti6l4sTq9dHm295v02EFNkBMzPUfngiOXa+LqiREUSuYUy7oI2+3me1RAu2
	 4UrYLoOYyGkYaYSd/cYxqIw0/Eb6JAt4WUch1WxIw4J/xRZd1PPuPGh2M4OG8u/dhV
	 OmMn57uk2a27vHMglXnFbrwCh0NVEWTG6CipyfIzna0MbD9oA1y4i6Z3d7h8Wx0dEO
	 TGpSgCsexVT9A==
From: Linus Walleij <linusw@kernel.org>
Subject: [PATCH v6 0/4] drm/atomic-helpers: Fix MCDE/R-Car DU regressions
Date: Tue, 02 Dec 2025 22:02:39 +0100
Message-Id: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/43OTQ6DIBAF4Ks0rEsDKIpdeY+mC5BBSf1pBmPaG
 O9etBuTLuzyvUy+NzMJgB4CuZ5mgjD54Ic+hux8IlWj+xqotzETwYTkXDDaVRaoxY4i1Ahhvad
 j49E6/6LcMG2ckUKwgkTiiRDrjb/dY258GAd8b2tTsrZ/wlNCGRWp4VAolRnjytb3GofLgDVZ5
 Snda/xAS6NmVWGcqnjulPzR5E5Ljn6TUdNgc64TUShuywdgD+1XW5blA/JCci1lAQAA
X-Change-ID: 20251120-mcde-drm-regression-thirdfix-1b0abfb52209
To: Vicente Bergas <vicencb@gmail.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Marek Vasut <marek.vasut+renesas@mailbox.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, Linus Walleij <linusw@kernel.org>, 
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_130249_117391_2F4C1737 
X-CRM114-Status: GOOD (  15.15  )
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

This fixes two regressions experienced in the MCDE and
R-Car DU DRM drivers after
commit c9b1150a68d9362a0827609fc0dc1664c0d8bfe1
"drm/atomic-helper: Re-order bridge chain pre-enable and post-disable"
caused a series of regressions in all panels that send
DSI commands in their .prepare() and .unprepare()
callbacks.

This series make it possible to selectively bring back the
old behaviour with explicit semantics and implements
the old behaviour as modified commit tails in MCDE and
R-Car DU.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
Changes in v6:
- As this problem has (probably) also appeared in the Rockchip
  driver, append an RFT patch for the Rockchip DRI driver at the
  end of the series.
- Ask Rockchip people if this solves their issue too.
- I was about to apply this with all the ACKs it had gotten,
  but let's decide what to do based on the Rockchip situation that
  appeared right now.
- Link to v5: https://lore.kernel.org/r/20251130-mcde-drm-regression-thirdfix-v5-0-aed71a32981d@kernel.org

Changes in v5:
- Prefix all exported atomic commit helpers with drm_atomic_helper_commit_*
- Add kerneldoc to all new exported atmomic commit helpers.
- Add comments into the MCDE and Rcar DU quirks explaining what is
  altered as compared to the standard helper functions.
- Link to v4: https://lore.kernel.org/r/20251121-mcde-drm-regression-thirdfix-v4-0-d89bf8c17f85@linaro.org

Changes in v4:
- Fix a copypaste-bug in the Renesas Rcar-DU driver.
- Actually compile this using the shmobile defconfig and make
  sure it works.
- Collect Geert's Tested-by.
- Link to v3: https://lore.kernel.org/r/20251120-mcde-drm-regression-thirdfix-v3-0-24b1e9886bbf@linaro.org

Changes in v3:
- Switch to a new approach: export helper functions and create the
  special helper directly in the driver instead.
- Drop Marek's patch and write a new RFT patch with the same
  semantic content as the MCDE patch.
- Link to v2: https://lore.kernel.org/r/20251118-mcde-drm-regression-v2-0-4fedf10b18f6@linaro.org

Changes in v2:
- Queue Marek's patch first in the series for coherency.
- Add a patch to also preserve the late CRTC disablement
  semantic.
- Rename helper function to reflect the new semantic.
- Update the MCDE patch to use the new callbacks.
- Link to v1: https://lore.kernel.org/r/20251118-mcde-drm-regression-v1-1-ed5583efbd68@linaro.org

---
Linus Walleij (4):
      drm/atomic-helper: Export and namespace some functions
      drm/mcde: Create custom commit tail
      drm/rcar-du: Modify custom commit tail
      RFT: drm/rockchip: Create custom commit tail

 drivers/gpu/drm/drm_atomic_helper.c           | 122 +++++++++++++++++++++-----
 drivers/gpu/drm/mcde/mcde_drv.c               |  45 +++++++++-
 drivers/gpu/drm/renesas/rcar-du/rcar_du_kms.c |  33 ++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |  50 ++++++++++-
 include/drm/drm_atomic_helper.h               |  22 +++++
 5 files changed, 244 insertions(+), 28 deletions(-)
---
base-commit: 6548d364a3e850326831799d7e3ea2d7bb97ba08
change-id: 20251120-mcde-drm-regression-thirdfix-1b0abfb52209

Best regards,
-- 
Linus Walleij <linusw@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
