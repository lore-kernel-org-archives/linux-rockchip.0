Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718CE606A332
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 23:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZpIs2qge;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=aVXpFqNT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=u39OTbTo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=D9gYmRgW7+/FrmjMpr0I4Wd0LbrDMD5p5N2MnPZUmJo=; b=ZpIs2qgexRBKmccFPplPjn9Xbr
	FZ7sBgEhYPyVMFu8KMai+FkfgAQ50UDd2gcxnOaLN3jKBOAQMoNvPdiqomiZJfF5l4b0Aw7MQYad/
	JHmy8jRyPk9AczeDc8hZU59RNwxTGbxPWrvg68V3h6gBnQIT9nO3qiOkNyahs8q79S5ebAfkPLWWX
	nwFGe+zbDCpi1q01B16hWGZMsRuEAMoM8f6Z2qTTjVbosxMLrwhkrbZGxDsml/2qlxPMuUk7oCcYl
	eFB8soch0THh4iEJeAGiGtl9SY3VksJRy9WZMpBdyf9wzK7yaLdREAjbuj88JEPN3c+TJFoiLCYiB
	sn3eVajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSxO-00000007JlS-2WV8;
	Tue, 17 Nov 2026 23:51:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSwu-00000007JOk-1VXE;
	Tue, 17 Nov 2026 23:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=HvYiihiZ40LR9NKTk32nFPkw7DvCqUtR3q/oyWX+xeY=; b=aVXpFqNT598UZU4EgYpXT4VkFk
	YptUj0W7r37gBfDstDajGfugqxRPzlWuSCTMLR/WfDs0s7KHSda9llXf5RoCLlBAK2sG0EF+f+INk
	gmh4g07avBjL7PsX4SZXhDtSk9vt/Hc7tag2gy+Ic/E20TRpW/a+e1PmGUPUcaqKcmcfONm40HIzs
	5fm5oINN96cFuigJJwmoHgsjHM5hbMm7/3RBLICGRhp0Y6D1Y6i16PftVpD4OXP/8OPLBavDiWmyo
	m2Bm8/DDQzSO7pksA5RWMcOPnCdVDZeOuIHpfcdMnxgM55AAQClLBHlex8fS/t9rwPaYk2V8KuOO3
	8RCyWzyw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSwp-0000000FVIa-1Zm7;
	Tue, 17 Nov 2026 23:50:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=HvYiihiZ40LR9NKTk32nFPkw7DvCqUtR3q/oyWX+xeY=; b=u39OTbTonkwiRMH9ZYrlNA+wqA
	36u3ujYswnlGqSjVz3LLtM+x8uvHwMSbD0RGv7FDJcXNtsUTnz918fLJwqr5WyR2uacrxsdqgYJj2
	vaxOLd0Q68+xs8KaFDkqphEpQjNalGnlbSyo58eZ1KV6i2YCsVmhhX5cItbsvfuK0aS2nReCuUZr8
	QWVXl7+3OlK2wcRC3mjUJ1Z50XqKyhAZLM4gNWUT2ZBcgyrJqdrvzumws2jUkGLeN+KkRwZqkvkMA
	AC6IeatK6UXnYKDjre/LYQU5s4G4kljGVcXSIsmrzvLYlC2G4SRaKajYoR2zmOyKh3BLr+GLdMkO6
	dDtfw4RQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@cherry.de,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v3 0/7] spi: Implement a atomic transfer as a last resort
Date: Wed, 18 Nov 2026 00:50:14 +0100
Message-ID: <20261117235021.2013719-1-heiko@sntech.de>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_235047_769819_A66700B2 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.2 (/)
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SPI devices at times are used as PMICs including a power-controller
functionality that should turn off a system.

This happens in an atomic context very late during the shutdown, where
no interrupts are available anymore and conflicts with the asynchronous
nature of the SPI subsystem.


====== History ======
For the RK806 spi-connected PMIC this has already caused interesting
artifacts.

A first change, tried to "fix" the issue by using the
SYS_OFF_MODE_POWER_OFF_PREPARE step of poweroff. While this hides the
issue, on some devices this now turns the pmic off too early before
other important steps are done.

To mitigate that issue for "some" devices, a change [0] tried to use
different poweroff phases for i2c and spi devices, where Lee rightfully
said, that with this no proper solution would be done - and Lee was right,
as that issue now is open since 2024.

The newest change is a simple revert back the old way [1] because of
those issues caused on other devices, but that now breaks the SPI side
again and also did not take into account that long history.


====== Now =======
The I2C framework has an atomic transfer callback for exactly this late
stage transfers since
commit 63b96983a5dd ("i2c: core: introduce callbacks for atomic transfers")
and during the discussion it was suggested implementing something like
this for SPI too.


As this did not seem to have happened yet, I thought I'd try my luck.

Similar to I2C this is meant only for that latest stage so I stole the
gating from there too.

I assume I did not take some SPI specifics into account, but I guess
having some code to discuss is a starting point at least :-)


===== Testing =====
Adding the below diff allows the atomic transfer to also work as main
transfer function for testing purposes. As SPI's ->transfer() call
already lives inside a spinlock_irqsafe context, this allows to find
any sleeping elements easily.

@@ -953,6 +953,9 @@
 
        /* Only register atomic transfer in host-mode */
        if (!target_mode) {
+               pm_runtime_resume_and_get(rs->dev);
+               ctlr->transfer = rockchip_spi_transfer_atomic;
+
                ctlr->transfer_atomic = rockchip_spi_transfer_atomic;
 
                ret = devm_register_sys_off_handler(&pdev->dev,

I've also changed the chip-select of my board to use the gpio path, and
no sleeping parts were reported anymore after allowing both the
spi_exec_delay and gpio chipselect to handle both variants.


===== New =====
changes in v3:
- core: allow gpio chipselects to be used in atomic contexts
- core: split in-atomic check, a generic one for gpio-cs and delay
  handling, and specific one for limiting sync calls to power-off events
- rockchip: fail gracefully when not runtime resume (Sebastian Reichel)

changes in v2:
address review comments from Mark Brown
- core: preserve old behaviour for drivers not declaring an atomic
  transfer function
- core: don't use message optimization - safer, but still validate the
  message to get bits_per_word defaults etc
- core: make spi_delay_exec usable from atomic contexts
- rockchip: only register atomic transfer in host-mode
- rockchip: provide a wait_for_idle_atomic function, to
  not require (non-working) jiffies for timeout
- rockchip: register additional restart handler to enable runtime pm
  before reboots too
- rockchip: drop runtime-pm from atomic transfer - would sleep anyway
- rockchip: don't prevent power_off, if runtime-resume fails
- rockchip: use core spi's spi_set_cs to also handle gpio-cs


[0] https://lore.kernel.org/lkml/20240730180903.81688-1-sebastian.reichel@collabora.com/
[1] https://lore.kernel.org/all/20260908-veyron-shutdown-v1-1-066ecb80f5f2@gmail.com/


Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: quentin.schulz@cherry.de
Cc: Lee Jones <lee@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>

Heiko Stuebner (7):
  spi: Allow spi_toggle_csgpiod() to get called from atomic contexts
  spi: Allow spi_delay_exec() to be used from atomic contexts
  spi: Export spi_set_cs() function
  spi: Add infrastructure for atomic sync transfers
  spi: rockchip: Fix runtime resume error handling
  spi: rockchip: Move to pm_runtime_resume_and_get
  spi: rockchip: Add an atomic transfer function

 drivers/spi/spi-rockchip.c | 131 +++++++++++++++++++++++++++++++++++--
 drivers/spi/spi.c          |  90 ++++++++++++++++++++++---
 include/linux/spi/spi.h    |  13 ++++
 3 files changed, 220 insertions(+), 14 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
