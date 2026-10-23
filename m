Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC545606A334
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 07:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=biO2yAs1;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=Ffqrxkz2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=TWF2tQ58GJWKKMPTtFMEDZ1Cx94ZcBvd45uRLLTxcMw=; b=biO2yAs1LpXHcYFp3RahKXimjj
	TERtt7meJiU7KPZ16tam06DMUMGpn0IkHy/QreuH1gA7rtUznF+2MA9Dst4nL0EnVU/sgh6o358U+
	obNlFHHxPGP+dQ5TJXCo44SJ9IOla/N3GPaablAnM7BrxDsUoGDSWp2eThJ5G1zI/e1LkOz2cEifp
	vMkBuCKNUZRq753NsjdAvYCUDRGK/Tg5r7OoXEfPXwp/LR72p8M6wGbGRAqMMfYkbXr3fQampe51H
	e5uTnnVu0jPbw5GvFCh3t3m242soDN2PxLVOumjsOt9IzCu7VX3lqG3BarfGytgv0kvzDOL/PoTH0
	OpL1ODXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5F-0000000FoAR-02N4;
	Fri, 23 Oct 2026 07:53:01 +0000
Received: from mail-dl2-x0a.google.com ([2607:f8b0:4864:38::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5C-0000000Fo91-06j7
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 07:52:59 +0000
Received: by mail-dl2-x0a.google.com with SMTP id a92af1059eb24-175ec8c4efeso16395c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Oct 2026 00:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792741977; x=1793346777; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=m6NACu8GwCde3sJ9HWwodKjqPsu0GwIqcYBIIRb4XxU=;
        b=Ffqrxkz2hseCPRApamMOU2vgMpPTzeF84kaxM/bGUhxclwfkT1S6rKGXE6bvuCS5Us
         zC4Sw6xNXSiLTD70WAppxajxqgVG+3J4j2MQqUWN+aof1k6OZAV8J/itAac0dT47A5I9
         WgbTRBleDownFDeSZ9YZixcNJrFKQOmJga6+sQA4puDCLIpgjgcbFwjNb7VJZOvi8Ybc
         WHSk5GfmHhlT4akyM7Z+40CgUC00bH4XDxwLdE/r2wFl26Pe1TpM5dultvZkVT8tMW6K
         2YdyjTitDNPcoZ3mC883DIsBSWNhP7YF7UhxhPcIkuthnYFP6RoiNw6woiDjiUhzoomL
         kZow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792741977; x=1793346777;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m6NACu8GwCde3sJ9HWwodKjqPsu0GwIqcYBIIRb4XxU=;
        b=z55i9pKoTYQy4GaRWFXNMmr27l3wPAnhTAew9qcKNuc+wL0WxMdBxoxbOLi4S/mmfD
         ld4cH8ZagGLLG/nn87utxYVEyq0Tc95fs4UFo+poj/FSrZnf5G4JwWnykvs9MtSyPRww
         8GtB+ufnlqVOvrzcrMKex/GEvr2YwvAdPsgwRrNvgrTVbggB1cIzm+twSILw9zmPXj5m
         ltJjeEQhIfhEitkj7Z18aNvEglMjnq8mTKPVfNaZryryUToml1+iHIUX00hzKTWAVmtJ
         DXuEYegBFHxex/4BlZz+zeRJN7tuwsUCYbZatM9rc3aYR6ajh9IqZzBai3BxxTOFXfvx
         xp6w==
X-Forwarded-Encrypted: i=1; AKwUvBytfzhdwthjYoSIW+M43EfCvaic9NuVSSjLw4aRI2bNtVEEI2PlCb0UUcHXtfJNv6c2+x/NsUbK/s4u1zxNbQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLhkhR6+qULLfRkigC4GP1hs3FFabEq+kYEkAqELCLCqwk8e+BH
	wYeJXMw6ZTWP9hOUcM7D1tLmrxl4NsPMgcCml91/YlIHlqMXF01cuxZJ
X-Gm-Gg: AYBFou3VnvxHJtjmBOl8zovplopL7zGLNb4eh1tEyOjGqJTig2Z46MfvRQy4uwRv0TK
	hupTLxCqn6OHOtI16IhvdO6PHIbxvU2baxR0JlLObWvWlgjltjdpLTIGhUxE9BKCouPgLngOyFL
	u2D1x2HOqmTjcjsH2n5hhd6elc1wrIAO4fZAT6uhnHcrAyo+VDioA3VpaS7OnuN+fpI5vWj/IKz
	OZKRZA0Xn+x/YLXlPDYBcAa40xHQVytp1ww2vUxaOGdoPWSL62+I6Dt8WMT0/LWF5CKYHIIO9Ng
	Dm883irZ8v9Y4dQQ0SmwlVJDYn68YUcts6FadHKt6GPIIrMnyYUKhY6/+clnnqOvwHIBedpzcmi
	3bmQHHy+JyecObtCYyBI157fAPRTvarQLghYoZvkpe77rjGqe8kR2upVVSq1dXxn1QUwvoWT6S0
	SbkvnbjJmyvVn7KVVm7XA2/X+fcRW4YElyGA9psH85wemW9tEnGAf14k2t9wpc2904GY3GMIl+V
	D0lAskjnnQcTD/gFQUtLZtw9BGFOTHpQwK+l8nmweUSk3Rn2LH+Gg==
X-Received: by 2002:a05:701b:2302:b0:143:2968:564c with SMTP id a92af1059eb24-195c627d93fmr1822085c88.26.1792741976804;
        Fri, 23 Oct 2026 00:52:56 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-195eae0e830sm4122132c88.10.2026.10.23.00.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 00:52:56 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Eric Dumazet <edumazet@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Coia Prant <coiaprant@gmail.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net v2 0/4] net: pcs: xpcs: fix runtime PM and clock lifecycle
Date: Fri, 23 Oct 2026 15:52:11 +0800
Message-ID: <20261023075214.1793922-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_005258_067916_F9126E6B 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series fixes the runtime PM and CSR clock lifecycle in the DW XPCS
platform driver, a misleading error message in the Rockchip glue driver,
and the MAINTAINERS coverage for the platform driver and its binding.

The issue was found while using pcs-xpcs-plat.c as a reference for the
Rockchip XPCS glue driver (pcs-xpcs-rk.c). On Rockchip the CSR clock
(PCLK_XPCS) is required for register access, which exposed two problems
in the generic platform driver:

  - it calls pm_runtime_set_active() before runtime PM is enabled and
    before the clock is prepared/enabled, so a later suspend tries to
    disable a clock that was never enabled;

  - with CONFIG_PM disabled, the runtime resume path is compiled out
    and the CSR clock is never enabled at all.

Patch 1 fixes the initial runtime PM status and registers a devm action
that force-suspends the device on teardown, so the clock does not leak
when the driver is removed while runtime-active.

Patch 2 handles !CONFIG_PM builds by preparing/enabling the CSR clock
manually and disabling it in the cleanup action. It also switches to
RUNTIME_PM_OPS() and pm_ptr(), which are no-ops when CONFIG_PM is
enabled, so that the runtime callbacks stay referenced and .pm is NULL
in !CONFIG_PM builds. Because the CSR clock is optional and both cases
are handled in the driver, Kconfig is left untouched and no PM
dependency is added.

Patch 3 rewords the cleanup action error message in the Rockchip glue
driver, which was merged into mainline today and currently mentions only
the EEE clock even though the action also tears down runtime PM.

Patch 4 lists pcs-xpcs-plat.c and its DT binding under the DW XPCS
entry. pcs-xpcs-plat.c currently only matches the ETHERNET PHY LIBRARY
entry, and the binding is only matched by the generic DT and networking
rules, so the entry does not cover the whole driver.

No upstream platform currently enables pcs-xpcs-plat with a real CSR
clock dependency, so neither runtime issue is reachable in mainline
today. Because of that, no Fixes: or Cc: stable tags are included, as
discussed in the v1 thread.

The patches touch code that is already in mainline: the platform driver
has been there since f6bb3e9d98c2, and the Rockchip glue driver was
merged today. They are fixes to existing code, not new drivers or new
features.

Changes in v2:
  - drop Fixes: and Cc: stable, and state in the commit messages that
    no upstream platform can trigger the issue;
  - add a note on Kconfig: the CSR clock is optional, so there is no
    need to select or depend on PM for all platforms;
  - add a fix for the Rockchip glue driver error message;
  - add MAINTAINERS coverage for pcs-xpcs-plat.c and its binding.

Thread v1: https://lore.kernel.org/all/20260704214808.1566710-1-coiaprant@gmail.com/
---
Coia Prant (4):
  net: pcs: xpcs-plat: fix runtime PM initialization
  net: pcs: xpcs-plat: fix clock lifecycle for !CONFIG_PM builds
  net: pcs: xpcs-rk: fix cleanup action error message
  MAINTAINERS: list DW XPCS platform driver and binding under XPCS entry

 MAINTAINERS                     |  2 ++
 drivers/net/pcs/pcs-xpcs-plat.c | 62 ++++++++++++++++++++++++++++-----
 drivers/net/pcs/pcs-xpcs-rk.c   |  2 +-
 3 files changed, 56 insertions(+), 10 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
