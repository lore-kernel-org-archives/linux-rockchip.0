Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D7DEC44532
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 16:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TOWRY6DZ6fMexr3r/a/nIhZKbzZOAxsdTIsfUvaDztU=; b=rZU1pp5KdDpaAK
	2COvu9jHgO04Zssgs9/scFuNEhLmHly4l5ohPyaq4DEwIBiicpx3RPXB02655Gtj9dsudEueafQWi
	uEF6iXrcaVGdJxpsszr4CnWm9lHt5b6F8VglPOXoubLlxqvub4G4FGOyyVIJmGlWkPnjfdjLDm/WL
	Dx8+8rao6lLeQkoPq80GmDLT3tcHS1aJ9VnLz6dKWebmP7+dTSaOFkgGsIu/q88rrea7UfRnTxQcQ
	LRUk5FwF+5UIfnnA/5MeXO/19+8SsmhKPer+/MGkRZ9vpMxaZrRgBqHlrgAFWQqJO8in0h8DZmNDk
	KFheDzJlzWq7+2mnF8Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZUv-0000000CHuW-06JB;
	Wed, 22 Jul 2026 16:08:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZUt-0000000CHu9-29g1
	for linux-rockchip@bombadil.infradead.org;
	Wed, 22 Jul 2026 16:08:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ZgrQnMgwlgoUFEsEQmGeH4aaMMul+JyM5frck2aQVIE=; b=QOUYXU8PjriT2bJe2qNh3QSwXz
	luLIZsxSa5ZqRl0wgW6C9827tKkfqvd1/9TN8pkAOru3Z020c1YusmAtdaXYhL/43mdehaN1jFhDw
	gDeYIWzIJU/j5DAyRzKYngoolfPhZtKxAjvVR8jv9eZz+Rcbn1AA8eFiL81WrYpEJRm6s36vWnqqG
	4uHUWZ/ZuzoP00T974kkfeb2oRFV1qVUYCYoqP5rRrnXMG4vxPypXH3nR1ynYxCqYEkisvSIWiN30
	Xjvc9zsmDsqaEvcs0DPDHPwD/L9JLDrpzWcQn4xji/ZjcGPH+wm0iOPg+Xwz2lrpI0rH0h9CGcF/X
	shjcpt7A==;
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wmZUq-00000000ztz-2QCX
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 16:08:38 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-84874b52eabso12383415b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 09:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784736514; x=1785341314; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZgrQnMgwlgoUFEsEQmGeH4aaMMul+JyM5frck2aQVIE=;
        b=pzW0i/iniMoKaPjBZquzySP6hKfiRO3/7tfbCsA6HLAUot+bJdKZBmpi+NZCdFoqPd
         30VCFSXU1RhhS1tjxJYUIHCXJ71uDtk4QoknE6OmDh/HCNAj7kplRCZzShuyWCb6xPky
         bqNzIn97S8ASmg1ZOOWiCUj1s8AX2TpUpe1KzOriMh+WsTksgbKqfD3JuxwmMnJht/z8
         hERwTHBkRU/TK//dSLLmAaWb5x4BievN68NJH4KnDSM0cmaVvySU+0VnV4pVE+UximZG
         W2w83qFzR2RY472Zqjws3rlIcy2M8BDKmUn66uGTaWa6lkgGPLF9zCuvQbGc8ElwErpg
         zgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784736514; x=1785341314;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZgrQnMgwlgoUFEsEQmGeH4aaMMul+JyM5frck2aQVIE=;
        b=Q3jjVfyloltO/YehvlIAuaVdqmOCKhE5oHu8nzBnyqrBZPGmRb3dPCriC9LcNsNPFp
         ou9d313oikr7IPEE9iFecrSH4Sb12kQoiM+jWt1RAjU+NSEw+r1jqvaSzOMosPiLajcm
         Boz9u2WUfviq4ze/2JmZh9JY0TD3XeiwVDMwnR9gn0XY82gnLwx+9/otJSDvhdUhY1m3
         BSk1Ww77eJZA9meP2p2cfG/kYBz44Du34a+hArfbdNgulQsNvM87CUlt9FBOn43M4H7A
         BCVrAK2iTy9NBb5LxpeoW+1RrlckYyPE8KDvvHgvCV93hQEpQje5QqEyM3WXDK1DGKop
         whtQ==
X-Forwarded-Encrypted: i=1; AHgh+RqxqHEPBDceOkohcRXkj112Q/aAPZCBExAMptJnZAFxMaGjv/0Cn6aWP+vYBN3UPVgn1m8XZmcy+hibkqjRZg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyO/bmcOiECah1MFWtyv4FVd4iB0lKcBvkNDumZTHaEjWLZPzh6
	Yub/jWRatEAqVXbCYH3wEcQQdEglhip2huBvhWEJXuA8Z5m6rMMBzH5gbtGHISL07fo=
X-Gm-Gg: AR+sD10TVFQU0t4TEBRa9VgL7ghxK0vDb6LlbyQev3mw9PcxNPbiY2gr9eOfd1XZoF7
	eskaRghqLuy6RS2iSRcuQlkSAzcd7VEw4XSBK7Ozf6exVTMmcTPidbxBAueEUC43V9GeqihkIbu
	cbzYUriHZLEnnPB73T1tzS7R33Z6ymMNhS0d3k/FUMegFBc5/UUm6hyBR/00xaBN66aMJ3MgCzl
	UH6QD8dW1rn9aT3P5J/V/09uJcXCGSV7kf6GTA/qSU07r972tIcJwvLbK0EiL+5aMV2JTY1ffPk
	xCeMqmr0zSfcet62u0NTi+dptyN3BoDm8XLAZgumUFR+4oXDrOs5XrG1jUXOnxOPFIX4GkAof0B
	CKwqS+j/ww/xQQiXicdnCa7EUx0L9rwg4RpBjTDkSbNyvB0gxgM/dyECWCCgj00CPjOPaDgahAu
	Lq3PsDQiUGX+AljqSJCBmV+9uUlgjoMVBUqQE8rq3VgaVLXUDDb1D/pBsahA4wMID3yVfoTUg=
X-Received: by 2002:a05:6a00:451c:b0:842:6004:3fda with SMTP id d2e1a72fcca58-84c292e057dmr23852827b3a.25.1784736513793;
        Wed, 22 Jul 2026 09:08:33 -0700 (PDT)
Received: from debian-rockchip-rock5b-rk3588.. ([184.22.136.210])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e175a64e3sm1639440b3a.42.2026.07.22.09.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 09:08:33 -0700 (PDT)
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	linux-kernel-mentees@lists.linux.dev,
	skhan@linuxfoundation.org,
	me@brighamcamplbell.com,
	jkoolstra@xs4all.nl,
	Tharit Tangkijwanichakul <tharitt97@gmail.com>
Subject: [PATCH] media: hantro: disable runtime PM before hardware teardown
Date: Wed, 22 Jul 2026 16:08:19 +0000
Message-ID: <20260722160820.2401-1-tharitt97@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_170836_785807_4B88C9F8 
X-CRM114-Status: GOOD (  13.40  )
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

Removing the Hantro driver may trigger an SError on RK3588:
	SError Interrupt on CPU6, code 0x00000000be000011 -- SError
	...
	do_serror+0x5c/0x74
	el1h_64_error_handler+0x34/0x50
	el1h_64_error+0x6c/0x70
	regmap_mmio_read32le+0x10/0x20 (P)
	_regmap_bus_reg_read+0x6c/0xb4
	_regmap_read+0x60/0xdc
	regmap_read+0x4c/0x80
	rockchip_pd_power+0xe4/0x600
	rockchip_pd_power_off+0x1c/0x60
	_genpd_power_off+0x98/0x198
	genpd_power_off.part.0+0x178/0x288
	genpd_runtime_suspend+0x210/0x300
	__rpm_callback+0x48/0x1e0
	rpm_callback+0x74/0x80
	rpm_suspend+0x10c/0x580
	rpm_idle+0x134/0x1b8
	update_autosuspend+0x30/0xc4
	__pm_runtime_use_autosuspend+0x48/0x64
	hantro_remove+0x8c/0xa8 [hantro_vpu]
	...

hantro_remove() currently asserts the device resets before disabling
runtime PM.

Calling pm_runtime_dont_use_autosuspend() causes an idle device to be
runtime-suspended immediately. At that point the Hantro hardware has
already been torn down, while the generic power-domain genpd code
still performs the power-off sequence. genpd regmap_mmio_read causes panic
subsequently because the reset lines were asserted.

Disable runtime PM before asserting the reset lines so that no runtime-PM
transition can race with hardware teardown.

Apply the same ordering to the probe error paths as well.

Fixes: ea71631b7129 ("media: hantro: add support for reset lines")
Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 2e81877f640f..bbeec5ae509a 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -1212,7 +1212,7 @@ static int hantro_probe(struct platform_device *pdev)
 	ret = clk_bulk_prepare(vpu->variant->num_clocks, vpu->clocks);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to prepare clocks\n");
-		goto err_rst_assert;
+		goto err_pm_disable_assert_reset;
 	}
 
 	ret = v4l2_device_register(&pdev->dev, &vpu->v4l2_dev);
@@ -1266,8 +1266,11 @@ static int hantro_probe(struct platform_device *pdev)
 	v4l2_device_unregister(&vpu->v4l2_dev);
 err_clk_unprepare:
 	clk_bulk_unprepare(vpu->variant->num_clocks, vpu->clocks);
-err_rst_assert:
+err_pm_disable_assert_reset:
+	pm_runtime_dont_use_autosuspend(vpu->dev);
+	pm_runtime_disable(vpu->dev);
 	reset_control_assert(vpu->resets);
+	return ret;
 err_pm_disable:
 	pm_runtime_dont_use_autosuspend(vpu->dev);
 	pm_runtime_disable(vpu->dev);
@@ -1287,9 +1290,9 @@ static void hantro_remove(struct platform_device *pdev)
 	v4l2_m2m_put(vpu->m2m_dev);
 	v4l2_device_unregister(&vpu->v4l2_dev);
 	clk_bulk_unprepare(vpu->variant->num_clocks, vpu->clocks);
-	reset_control_assert(vpu->resets);
 	pm_runtime_dont_use_autosuspend(vpu->dev);
 	pm_runtime_disable(vpu->dev);
+	reset_control_assert(vpu->resets);
 }
 
 #ifdef CONFIG_PM

base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
