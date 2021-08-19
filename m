Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AF93C4320A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:23:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 11EC7610E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 11:23:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 11EC7610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/DYS9d7/ZnvnubFlxOeuw3ryU4KLMYj6gbIczuLWM3U=; b=GsVqppmXed6PmS
	+5yOY8ZhrJgPtCQqstSLGYT9YGu4VtMIvz/levVSqUHMpFLqSea8lWiaWbS1436kFe/Mpq8tjEuUV
	bB51urALdq+pJbPlfP42xR4z9WIHrI0UnnugDybzYAj9eZFbWNgSVfaIUpdfic9JAePo1gzUHi+3L
	RiRmSg6Do6M9naye4VU3xbNsM2s71ZtgyoeRrnpQ8vXZoaNvgY08nCJfeQYibdMSzrTJ7S2GGAXVm
	hE2fL3IQnUigidSXdx6hYU05BeKy0/3hPsR4kM8k2UbKMutvoyPe4mlgeSZ/pGhCA+ygqxxLBTe7q
	u2UoGemSdMIAT1RgauqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGg8p-0089jv-QU; Thu, 19 Aug 2021 11:23:23 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGg8T-0089ZO-72; Thu, 19 Aug 2021 11:23:05 +0000
Received: by mail-wr1-x435.google.com with SMTP id u16so8562987wrn.5;
 Thu, 19 Aug 2021 04:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WjTJOgCdzC+bVFkjZUwWVYccWLPGIUqJi3/PQBH4ta8=;
 b=jvA4K6Nv3O6kYGKlKKtJGIAiE+/5+sWVSiNC/50CPrzaMgOumHT1yIYGK/zVFjlC0c
 n9c3wStWlgUUjQkFM2lhvjzh2Z0JLXquPnD0J+CeOeeyeGZ+XcTI9zbK2t9QkoRjcpdK
 q/w9kUc6gnDYpQ0LosSXKiSiDPBN8VodkDmKrBof9nOpqq8T1eAd/H7OazdUclgeAnJO
 O/IFe2IyH5hZB1Yl3bHxNeqCiY/IRoDT0T5VIwRJIrpmwdXS7CGeQ5fmWEhd1JUFD1RD
 pT9WGq2bj53qg2SZxZ5s68eRU7AGlbuRCUff5OOFjwWBpJYw6AORMYLJPTTnqpj05lBC
 xVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WjTJOgCdzC+bVFkjZUwWVYccWLPGIUqJi3/PQBH4ta8=;
 b=V8kRbeJntJzI1VnFwzS5AZkg75L0crIge2QwitsFi93ykyE2oNd78hkm0vGafhQrZu
 D+4HlSdFxWlNoKjblhtj8kXtd4zqOoE5skUTOmyNGSY+HHb8xALyLyBCZUZb8TPi3tZx
 rp2UBJ58j25/cDo1Gz9hkZegDBAsPlWrB8zTHQ0Xzs8lRZ76ZkuCNAWWJAIijzl0F7Do
 1liZt3+osIA70Febn/vQ+ZTqzGWYk20exwZvVB7BzsJy9X+gatZ+0gC4wuSBGuBwaOwW
 3EMDFTGjE+pCCkgsLmvf494ucxTQW+SB5poJWbg7JEezuB2CziEhpjGjazLXz6h/NUu6
 4iYQ==
X-Gm-Message-State: AOAM533LjAwuGbR8FzNNAm4PaqRb7HQ0OZGgJsH7QeazWxiEH52mxL07
 UhVNZP9EpmBwixLV7+BoyZk=
X-Google-Smtp-Source: ABdhPJzkLVRzWMM2qILDBAW8Loz1YtMs6+zELMJEWlLoRoCVJ82OjYvdpz/rYq8FkdoDfigz+ey/yA==
X-Received: by 2002:adf:ba01:: with SMTP id o1mr3215167wrg.419.1629372179251; 
 Thu, 19 Aug 2021 04:22:59 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id r1sm2700388wrt.24.2021.08.19.04.22.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 04:22:58 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH v2 0/5] Kconfig symbol clean-up on gpu
Date: Thu, 19 Aug 2021 13:22:48 +0200
Message-Id: <20210819112253.16484-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_042301_315538_F18AE01C 
X-CRM114-Status: GOOD (  16.05  )
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

Dear DRM maintainers,

The script ./scripts/checkkconfigsymbols.py warns on invalid references to
Kconfig symbols (often, minor typos, name confusions or outdated references).

This patch series addresses all issues reported by ./scripts/checkkconfigsymbols.py
in ./drivers/gpu/ for Kconfig and Makefile files. Issues in the Kconfig and
Makefile files indicate some shortcomings in the overall build definitions, and
often are true actionable issues to address.

These issues can be identified and filtered by:

  ./scripts/checkkconfigsymbols.py | grep -E "drivers/gpu/.*(Kconfig|Makefile)" -B 1 -A 1

After applying this patch series on linux-next (next-20210817), the command
above yields just one further issues to address:

DRM_AMD_DC_DCE11_0
Referencing files: drivers/gpu/drm/amd/display/dc/dce100/Makefile

  Conclusion: No action required.
  Rationale:
    drivers/gpu/drm/amd/display/dc/dce100/Makefile refers to
    DRM_AMD_DC_DCE11_0 in a comment, after an "ifdef 0".


Please pick this patch series into your drm-next tree.

Note that patch "drm: amdgpu: remove obsolete reference to config CHASH"
was already picked and applied by Alex Deucher.


Best regards,

Lukas

v1 -> v2:
  - adjusted sources in drivers/gpu/drm/Kconfig
    for drm: zte: remove obsolete DRM Support for ZTE SoCs
    after report by kernel test robot
  - removed Tomi from recipient list as email is unreachable.

Lukas Bulwahn (5):
  drm: rockchip: remove reference to non-existing config DRM_RGB
  drm: amdgpu: remove obsolete reference to config CHASH
  drm: v3d: correct reference to config ARCH_BRCMSTB
  drm: zte: remove obsolete DRM Support for ZTE SoCs
  drm: omap: remove obsolete selection of OMAP2_DSS in config DRM_OMAP

 drivers/gpu/drm/Kconfig              |   3 -
 drivers/gpu/drm/Makefile             |   1 -
 drivers/gpu/drm/omapdrm/Kconfig      |   1 -
 drivers/gpu/drm/rockchip/Kconfig     |   1 -
 drivers/gpu/drm/v3d/Kconfig          |   2 +-
 drivers/gpu/drm/zte/Kconfig          |  10 -
 drivers/gpu/drm/zte/Makefile         |  10 -
 drivers/gpu/drm/zte/zx_common_regs.h |  28 -
 drivers/gpu/drm/zte/zx_drm_drv.c     | 184 ------
 drivers/gpu/drm/zte/zx_drm_drv.h     |  34 -
 drivers/gpu/drm/zte/zx_hdmi.c        | 760 ----------------------
 drivers/gpu/drm/zte/zx_hdmi_regs.h   |  66 --
 drivers/gpu/drm/zte/zx_plane.c       | 537 ----------------
 drivers/gpu/drm/zte/zx_plane.h       |  26 -
 drivers/gpu/drm/zte/zx_plane_regs.h  | 120 ----
 drivers/gpu/drm/zte/zx_tvenc.c       | 400 ------------
 drivers/gpu/drm/zte/zx_tvenc_regs.h  |  27 -
 drivers/gpu/drm/zte/zx_vga.c         | 527 ---------------
 drivers/gpu/drm/zte/zx_vga_regs.h    |  33 -
 drivers/gpu/drm/zte/zx_vou.c         | 921 ---------------------------
 drivers/gpu/drm/zte/zx_vou.h         |  64 --
 drivers/gpu/drm/zte/zx_vou_regs.h    | 212 ------
 22 files changed, 1 insertion(+), 3966 deletions(-)
 delete mode 100644 drivers/gpu/drm/zte/Kconfig
 delete mode 100644 drivers/gpu/drm/zte/Makefile
 delete mode 100644 drivers/gpu/drm/zte/zx_common_regs.h
 delete mode 100644 drivers/gpu/drm/zte/zx_drm_drv.c
 delete mode 100644 drivers/gpu/drm/zte/zx_drm_drv.h
 delete mode 100644 drivers/gpu/drm/zte/zx_hdmi.c
 delete mode 100644 drivers/gpu/drm/zte/zx_hdmi_regs.h
 delete mode 100644 drivers/gpu/drm/zte/zx_plane.c
 delete mode 100644 drivers/gpu/drm/zte/zx_plane.h
 delete mode 100644 drivers/gpu/drm/zte/zx_plane_regs.h
 delete mode 100644 drivers/gpu/drm/zte/zx_tvenc.c
 delete mode 100644 drivers/gpu/drm/zte/zx_tvenc_regs.h
 delete mode 100644 drivers/gpu/drm/zte/zx_vga.c
 delete mode 100644 drivers/gpu/drm/zte/zx_vga_regs.h
 delete mode 100644 drivers/gpu/drm/zte/zx_vou.c
 delete mode 100644 drivers/gpu/drm/zte/zx_vou.h
 delete mode 100644 drivers/gpu/drm/zte/zx_vou_regs.h

-- 
2.26.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
