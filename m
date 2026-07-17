Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F742C44514
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 07:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PM4Fnh0DBQ3Sg8LgBgia0SonFdPrhjfHlY6FDGuHHdI=; b=yB1uwsRo43+Xzc
	Xp4+1tx+9hyzTBhy26ZudDIqa/a0G2gpwPEeH8JuGhAahnZyn7gyYmE9OF0gCOWjvYlrTyPFVm6Q1
	jzsqu/8CQY1tSMBQon37VV5DJpzVNM3k3/hV/nqbNUdmd+I/KbtShcDhMNCFMhEKEFKetG65/ubfU
	Hgo3t4ZjnaYwDcLTcpksW5VFBgTriHoeczJqiBrkUR7GTM7mFKYyXZr9wJ8lLtC2Feos3PsERdWpo
	OfravnM0Ky9DL2xiivK9kml5INTIPAjR+Z+xyywatWHF2iGRGNp3ToT1h/jPN3XDzXIR9+TTsn7UB
	T25dpVpSo7vIeFAbK7MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdU0-00000001X2g-0REk;
	Fri, 17 Jul 2026 07:59:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkdTw-00000001Wzs-14um
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 07:59:42 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-493f75f7172so56134055e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 00:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ahdrone.com; s=google; t=1784275177; x=1784879977; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GMflJCfpssRM4YJJC+Tlv3Nh5omjZh8nOynqqpt+YI4=;
        b=fhGUWiHvOjr5bbQoaKxbZJG4ZfKPxO/GKKLfTy3uQlVL0ZRdu0GSvD5dGhbd+Tzu1n
         AuYs6LFy7soJQGUZh1VtbGFUm9C6HhW2yw5prpWArGmn7cLq4RNbDzjZ4sSLW0Ev+K4x
         fjO1orHahTBQhdl2KdIniWTnrR4DXDVP57PIb7PkOWoxXbXHjRPUNrmPnkjRaYmbIStW
         dJz4Xj8d2kJ10N2fJpyQoMfeicEPgSfzRRgiwNGalSfLtGnqGZomAAuLM+iYNazvuola
         96CmnzkZX7bNpAIHWs0tHSUSUAtrzo9s2dnuEIpi7zwQoDjcNLmPLoXNBJYFwzmDxu54
         0OHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784275177; x=1784879977;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GMflJCfpssRM4YJJC+Tlv3Nh5omjZh8nOynqqpt+YI4=;
        b=giwbkVDojkc1//adRcFolnUOkWlzkeVplnTNf3dMH1i0mlDMrsQiYI+lw+Db6GQ0OF
         BdS5H4l+uC/ckmDcB/u3j3LonM2CE/Z+lxksciXNZ3EHY1Y4h60XLFMXhwT9hrtyw4gx
         +QCy/G06SwTSsiEInzOsNOhl4jGf+hpn7/HsIXU1L9hkh32yGsJtPBijXHshcZ2U92z3
         LCo0Q8j8w9C2iTEbqvqAMxzsUlynkKf/og/aNbUzoHxPZHGkQKzPwHreIKk0eKFpK30V
         bbEv9scF6+60EyCKa8Hn44uvwHATsni1A1FXpZBAnBBlt4RBMlTn5he7bnSIsRSAI8rp
         cLLw==
X-Forwarded-Encrypted: i=1; AHgh+RpU7r9eZf+anXgSsmydTMCLNhtHwRdUKIMB8nYaoJmt2Lu79KqyoTcIwt7CDEdt0018Vg5/8x14Q6CfUtm9XA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYtistxHEpNiuM3drFZ9viwPxvE1OEB7YwvueHN+r8QCzDrIv7
	k150O1PQ2XTi7iWT+wujhzcqvcciZh9plUI0CkKlgCobYTRVzWmDYq2A5NhSo8oJDw==
X-Gm-Gg: AfdE7cnPD0ANdfk/4oFoAfAMpmVLGqcnc0ANekgVXYh2tzSG26odxlJLFmF/QMS+FT3
	XMlFMMGOmj9eOSfq0QwC5DzrxLWibrDWtGq6d6oNm1WSKQNTpJXWKAfph8dDOCM+leJmNnTQtFr
	dZqWogmJV6Ab5MA6Ulm5Ij8dgc71B4bAV6PL6+m4ibd86tn5vfoQLKEgF/eZKzFhy61mOE3/hfo
	uuKelywykni43Kxg3wg0Suw55Nw4eHZ7sbUF/2W7WFUTDOG1WIs58s0e+RvxxaRpf8CF8DKoMpG
	ARS3kF0wrUpniGP3CjOjBUhGShsieMgt+nhdQ8O5SG2V4maGaHWFREshWOymc69mKlOpXtiRhDU
	izUkz6xk2p/4mi+VsSGfgqtIxOVA5pIdmVnolKlIRVdiXawNZww0kIHXY16HPuehZeIxXGg/vvL
	vk87q7sVmHnJJjdGFesXPnD3wbxA==
X-Received: by 2002:a05:600c:c04b:20b0:493:d078:796 with SMTP id 5b1f17b1804b1-4954a3f397fmr12203065e9.17.1784275177348;
        Fri, 17 Jul 2026 00:59:37 -0700 (PDT)
Received: from rikus ([2a01:e0a:edb:6330:cc2f:bd70:58a:fcfb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49549a3e2a9sm31709045e9.4.2026.07.17.00.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 00:59:37 -0700 (PDT)
From: Hugo VALTIER <hugo@ahdrone.com>
To: Linus Walleij <linusw@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Hugo VALTIER <hugo@ahdrone.com>,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/3] pinctrl: rockchip: add support for RK3308B SoC
Date: Fri, 17 Jul 2026 09:59:13 +0200
Message-ID: <20260717075918.1869879-1-hugo@ahdrone.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_005940_610900_24A7B62E 
X-CRM114-Status: UNSURE (   9.00  )
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

The RK3308B is a silicon revision of the RK3308 with a different iomux
register layout: several pins (GPIO2_A2, GPIO2_A3, GPIO2_C0, GPIO3_B2,
GPIO3_B3) gained 3-bit mux fields in new GRF registers that override
the original 2-bit fields. I believe the bootloader enables the new
registers via the sel_src_ctrl bits, after which the kernel's writes
to the old iomux registers are silently ignored. Whatever the exact
mechanism, on RK3308B boards (e.g. current Radxa ROCK Pi S revisions)
SPI1, I2C3 and other peripherals on the affected pins are
non-functional without this series.

This is a continuation of Dmitry Yashin's series from 2024 [1], which
was never resubmitted after review and got dropped. Following the
reviewers' feedback on that series:

- the separate "rockchip,rk3308b-pinctrl" DT compatible is gone;
  the variant is detected at runtime from the GRF chip_id register,
  as suggested by Luca Ceresoli and Heiko Stuebner and prototyped by
  Jonas Karlman [2], so the same DT works on both variants (boards
  ship with either chip)
- the mux_recalced/mux_route tables are constified (patch 1)

Patch 2 is a small refactor so the SoC-specific init can swap the mux
tables before the per-bank masks are computed.

Tested on ROCK Pi S boards with RK3308B silicon, where this fixes
previously dead SPI1. I don't have original-RK3308 hardware, so that
path is compile-tested only; the tables used for RK3308 are unchanged.

[1] https://lore.kernel.org/all/20240515121634.23945-1-dmt.yashin@gmail.com/
[2] https://lore.kernel.org/all/20240604141020.21725-1-dmt.yashin@gmail.com/

Hugo VALTIER (3):
  pinctrl: rockchip: constify mux recalced and route data arrays
  pinctrl: rockchip: extract iomux_recalced_routes_init()
  pinctrl: rockchip: add support for RK3308B SoC

 drivers/pinctrl/pinctrl-rockchip.c | 266 ++++++++++++++++++++++++++---
 drivers/pinctrl/pinctrl-rockchip.h |   5 +-
 2 files changed, 250 insertions(+), 21 deletions(-)


base-commit: a13c140cc289c0b7b3770bce5b3ad42ab35074aa
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
