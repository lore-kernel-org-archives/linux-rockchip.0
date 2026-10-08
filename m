Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91A32CA600E
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 19:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgVO0fDdMg2kO7oPbYhJG5LmUJ5qwT8TWYzV1M5Yp7U=; b=y2yOXKbvT+uTXI
	opxvBSCB9z/ALt36jJg5wTUAlQ2ulZjw0wiyhodLZM7LuG9XsNgc5/T3Ebzg5tKex820vu/es6B92
	xasupm79t8FhkYUxzJkP2pE5f4bJ5AsckiB7G1KD/uSaFo6V/Y/fZ4w+lut1CVDV+LfNGW8AYESjP
	10+u9BaLW7K3HDz8IuZ5XL/vLJTKFr7X5RP+AzHmtm4DBzE9w05BM/1EFIO0ES/MHzaQqsk8b0VKg
	FfZi/n2TkyuRT2ugOWaHdVjGJzmGwJ6v5bap8XwJMXX4PNX06dTRQBobaPFZhJaEAKFHm71X/qfNp
	ZiL5VPKlzYdjR2jM1V0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEtdT-00000004uqJ-1X7m;
	Thu, 08 Oct 2026 19:18:35 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEtdQ-00000004uno-2Vyp
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 19:18:33 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-33bf40b0c8bso3153532eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 12:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=google; t=1791487112; x=1792091912; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RZKA77jm9kbpECwes2HBBFKfBcH0wMfdUgHPGsHOLoE=;
        b=DN4n5XGCgLSLNRKlwiFFKhUpPy/239aYTWvZGSEtIuudOdcGUgoA/kIBrNIMPhuJL9
         27iq1gND5ql0FtLdZx1LQ9Valo0qP21J75fCobS/CgNPvU4RTI5mUXIkQVDXziy7rNYB
         Kotzi06WGtqEiJQBHxrp3Smg1caUW8Uuu6IpLXTuRbDa99tsUjEwkDuTSfd6DSdNOjGT
         PY37hfK34i3zQnChD42JApcmv2JgMzTpQ4gn2pezNvCc5CQF64giUcEzkGff4lghqqkh
         mTluLfl8srvXQ4rHN/J3IGcgGdtsTSvpMOFFLQ9FWEJqz2LfXfN5Un2AArU4CzlITovm
         AaYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791487112; x=1792091912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RZKA77jm9kbpECwes2HBBFKfBcH0wMfdUgHPGsHOLoE=;
        b=r70cH2EmaB5/5bx2yQNsAiMPxImRG+/AvrjbrF4PIdvUPJQH4BG4y6qWKJV9FvKWLs
         AZb0AqVZ2L74T4aFHr/0Fbg1iUbiTC0pg7llUOEFbc65PlrFHnzOn02kA+uH8Ciu7CvS
         RyqqROZENE9iwILNOQOelsVkv2zdD2nY1IdTNVTEYhNOjd+FFNJIrF0PR9jW0l1XP0EW
         0yvE7QfJowp8TmwbBCgCn5yE0HuLIMR8+q18lsoW+ieIjWXOcKzkPzc0+PUn1u/Lxtfr
         0L1pyMQ5uf1y7wM/68cQHu9trWpdUoLo8fxYJZCqoV+9YksdvASzgnNp5R2MSu16Yt3t
         SA1Q==
X-Forwarded-Encrypted: i=1; AKwUvBxMuT4NKZbpuTn7+pDVSjP6Miyy5AN9RIey6l2mmZtZRRfWUPHza19qNEPz13D3pmFZMZRAPQc2H48N5XJdrg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJwqXQWY+QE/XtrpxcmFb6hfmBPatiWiGxf1pEehX7bR7AymkhX
	O2NZmIcN/jkflEw90V1SBHJw9PTibbH5ezOEOudSCeD7731EqCv3FYY6xf4j3+7haW4=
X-Gm-Gg: AYBFou1/4E9tMa8PTKd1vRK2VAmT738jNEFTamWyIM3r8fZWd91143Cmvw3Af/y9Suv
	sMiXZAV0am0PSZIOwJMPdHdGq2v136GB3v4fuQLnhmuUwb62YjOer6cf6Deq2deKtRM4I940A8d
	pX9GRtZrM1Qa0rXVELyVJaev8MJdbdPrvzBmjE9DITI6ocoZ8CMpuThNtBkOc8MEtx1IyTx1l8w
	hJDfV7fzULNWPAOM9UemVcEOYrqKHAeoPlvJVIFFO5sPxydNrBNY52H3+3L5W/2ejXZq/Pyc1y8
	d0jgwoF9Tys8SekE+UXarvM4n5cveedMp3FyvXEJJqI9PMJLlBksWuhORWVoG5WmtAjj0caK9CD
	9ha3yaN4/q6PG8J6GOLhEvTX+wngEXFrGxRndxUOfbK2uBlxH0/wCWcAn9tUNmIqHRIVlbgFafj
	QhmIo/VONLN+yB/LuBrDUHIOPs33m/UMnx0wXrmaSj7NNrv3ZuC58gY2Hg2YJrZcWZbQhzqXhCS
	qvyw2ruoxtoKqTRO+baiYKqfw+IvyZKP6xbNK+Z7vBxn7hw6tdjOE9HAEHXBj+nK3Femxw=
X-Received: by 2002:a05:7301:5416:b0:351:58d9:7d9a with SMTP id 5a478bee46e88-3515e0066fdmr8007040eec.38.1791487111442;
        Thu, 08 Oct 2026 12:18:31 -0700 (PDT)
Received: from localhost.localdomain ([2603:8001:5f01:8bab:bc88:5ec1:4f8a:5b23])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537c841579sm117933eec.4.2026.10.08.12.18.30
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 08 Oct 2026 12:18:30 -0700 (PDT)
From: Artem Dinaburg <artem@trailofbits.com>
To: stable@vger.kernel.org
Cc: Artem Dinaburg <artem@trailofbits.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	Marco Scardovi <scardracs@disroot.org>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	jay.xu@rock-chips.com
Subject: [PATCH 6.6.y 2/2] gpio: rockchip: fix generic IRQ chip leak on remove
Date: Thu,  8 Oct 2026 15:18:21 -0400
Message-ID: <20261008191824.98662-3-artem@trailofbits.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261008191824.98662-1-artem@trailofbits.com>
References: <20261008191824.98662-1-artem@trailofbits.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_121832_634233_F3D9AF31 
X-CRM114-Status: GOOD (  15.85  )
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

From: Marco Scardovi <scardracs@disroot.org>

[ Upstream commit 1c1e0fc88d6ef65bf15d517853251f75ab9d18c3 ]

The driver allocates domain generic chips using
irq_alloc_domain_generic_chips() during probe. However, on driver
remove/teardown, the generic chips are not automatically freed when the
IRQ domain is removed because the domain flags do not include
IRQ_DOMAIN_FLAG_DESTROY_GC.

This causes both the domain generic chips structure and the associated
generic chips to be leaked. Additionally, the generic chips remain on
the global gc_list and may later be visited by generic IRQ chip suspend,
resume, or shutdown callbacks after the GPIO bank has been removed,
potentially resulting in a use-after-free and kernel crash.

Fix the resource leak by explicitly calling
irq_domain_remove_generic_chips() before removing the IRQ domain in
rockchip_gpio_remove().

[ Backport to 6.6.y: Use the upstream teardown helper on 6.6. Defer 6.1
  because irq_domain_remove_generic_chips() is absent and needs a
  prerequisite or reviewed target-native cleanup. ]

Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
Assisted-by: Antigravity:gemini-3.5-flash
Signed-off-by: Marco Scardovi <scardracs@disroot.org>
Link: https://patch.msgid.link/20260607230504.35392-2-scardracs@disroot.org
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Assisted-by: LLM
Signed-off-by: Artem Dinaburg <artem@trailofbits.com>
---
This is patch 2 of 2 in the ordered 6.6.y backport series.
This change addresses CVE-2026-53226. The target creates generic IRQ chips
and omits their removal; the prerequisite supplies a complete teardown
helper and the CVE fix invokes it before removing the IRQ domain.

The fix is already present in 6.12.y, 6.18.y, and 7.2.y, but not in 6.6.y.

 drivers/gpio/gpio-rockchip.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index e0e4f3ed5fdd..86cf3cbcdb40 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -786,8 +786,10 @@ static int rockchip_gpio_remove(struct platform_device *pdev)
 	struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
 
 	irq_set_chained_handler_and_data(bank->irq, NULL, NULL);
-	if (bank->domain)
+	if (bank->domain) {
+		irq_domain_remove_generic_chips(bank->domain);
 		irq_domain_remove(bank->domain);
+	}
 	gpiochip_remove(&bank->gpio_chip);
 
 	return 0;
-- 
2.39.5

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
