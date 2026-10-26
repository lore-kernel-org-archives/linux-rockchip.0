Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1389606A31D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 17:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CgBvoeVE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=h1htHnUg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ghGYrAcBK7VvF0dMziyiP61r7eEJHCx7mHQtKUkw9aU=; b=CgBvoeVEG4Z3C9KCRoszGmvS/E
	+7NXnoZg/jHj2pujmMKyP16VadcGjbfCuV4nijoBtJSiP0M7Oq7J3+CLIviTtG8mPjxeZXjgXA26O
	aCnZWL7EUGPqIFRqLBW374N/BsFV31P4/av91Ry0qHRQ6YbLVyO0jaRS01cUlZPZdErA92hUexAbH
	OzOk52oJUdVz3OtFGO3Yn2WK1Dk8CFw3PwAOjHjS/F+fUo/uy5hAOK1K7u6qWkHAGHY8BwpcbwoWj
	kHQ1M2wobjhzevWfB2MHsK2/Ryb9U0Bsmt+ZI30sVjcmD+eBr+mOffE1qaZPxW7H4jbK33cnJXryT
	Rpr3te+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoL-0000000317J-34lX;
	Mon, 26 Oct 2026 17:48:41 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLOoI-0000000316O-2liy
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Oct 2026 17:48:40 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-854b6e2e41fso624538a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Oct 2026 10:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793036917; x=1793641717; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hZ7yPLnsxhfMD/1GegWYSNSd6Og2H7HlUEBWqKkjyv0=;
        b=h1htHnUgVxkoJvVf5yE/ed21pmSHV6iiQnDppLnaPaDWi5e9GEORKxVk6gjyUXorAR
         sa4Mh37V7R3M027/e0GqdsfGeg9jqDPQ4jppnplJNMF5lXxlRivjlBug3zkk0aZCCF05
         J0el9kEjLIDX0gdsIC8xDIWik5IPEpJSY89G9v2j0TBuufGX+gRjFco0HY/fvL5I8NiV
         GpXEC7w4JHbfoEyOL+qyn5/VGg+Vk9W6afdfLpRYfCpgCi2GOKGwP75q58X6snKLyVtZ
         jfmCYJhEvrti2wLuGLNzYaJXTiSgc99at7YwCWtgBExbHT5d0IO9870oZHbR7ewEz0W9
         crEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793036917; x=1793641717;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hZ7yPLnsxhfMD/1GegWYSNSd6Og2H7HlUEBWqKkjyv0=;
        b=CBHaR5R29ajA6DPAc+BXqBJmETjeFBe5oC9wo2KOqKlqG067/zLYP7/HRb9fOghZj3
         eRZTzBDQ1HYYehPlGcWYTIToYVkSBTpig7VY7w1jeAk7cftoz6+9FQk7G/9ZYzezAM2N
         RvXvlWMd7t0Gsfrg/kaLEbExuQ2WDF5pfndSTpPkWeTEfQ/hsfoBHmzIBeAXR3lgWqkd
         ZOmnQX1RwITIaTlrMAR/SjGnr9c3/WTLk8ynGvM3/HFan2Cop+3AKJZq9JH0RT9X5Q1+
         qBGKg3qbqOhuCJY7laKZExmC05AquMqGtHgpCx/22gZ9M7bMQQzmWRrZWlueKD/SMeni
         ZZXQ==
X-Gm-Message-State: AFq9FYLniyCZv66XDoeynWGlvXjoz0fLo6D6RsC/kyDz7HomrVA2DJqN
	6uqIjK5s2UZJHb7NDEveDyi5sEnPxXTtUkKoE2VW+o7C+g1FEZjRxRna
X-Gm-Gg: AYBFou3+SxsfHE+dBiIhd1ugJz8sBx6fKLomxvivx9rhoWKNAd4gHxmO2IUu2fML4hy
	/o7FLQZDJ6AVT0XT+XcdcJYiAeF3BndMxHrm5VKZ38yYpeoyue5z7DrvkB5KlCeK8wz+xdY8wzo
	9gOWSaraB5KFzGmDYFzxCd5in2Mc+jOHOks0NkzwDKJSwrlQ+/dKv0q92oojKuPBGQDTpNt256a
	DHZBQbG2pxewB8zFpVlD3wW4Bav+vNM0lY49Mi6E009OnL5jhsfHgWvDtgmX56mvAyACIbDI4C1
	pt0z8m9nG9VhHJEbErPn4Uk/5TkfphW4qehG+dPVxAgsnO5mLSldcBFg/tRkfEWcQpMeuHUCE4/
	hcCAXTaPFrsZg/o30ospp86KHpf5hgfWo12TsOHUVrzWN+r+ZdPzhu+plOxrdOLLTsRjukOv3bR
	a49JlZ9e0jWB0fEPI+Ahz1WXq3zNEu63TDv5MSW5JXj1XzT69W/G6S/2zxKpQeT25jxcOrsOt9G
	LQcgoFAVHVnuIUoI1ptXHZYd7BQBnPq5XZDy/et+1LQa4cT226IfyEMLTNSSVOb1+keonfTcStc
	mpH1XWKhYEmGwcFWeejs1CYRPef0gw==
X-Received: by 2002:a05:6808:4f2b:b0:4f6:5279:5c89 with SMTP id 5614622812f47-55c0026b905mr4577266b6e.47.1793036917104;
        Mon, 26 Oct 2026 10:48:37 -0700 (PDT)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4a842e89e33sm5034753fac.1.2026.10.26.10.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 10:48:36 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/5] Fix Incorrect State of Charge for RK817
Date: Mon, 26 Oct 2026 12:48:29 -0500
Message-ID: <20261026174834.1652309-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_104838_721022_F73F8A3B 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -1.9 (-)
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

From: Chris Morgan <macromorgan@hotmail.com>

Users of the popular firmware RockNIX had identified a few bugs with
accurately displaying the correct state of charge for RK817 battery
devices. With the help of one user analyzing the code with Claude
they were able to identify a few potential bugs along with potential
solutions which I was then able to verify. These bugs are as follows:

1) Incorrectly clamping a value with a max of 10000 instead of 100000.
This bug caused the state of charge to sometimes read as 10% instead
of 100% as it should have.

2) Using the boot_voltage value to calibrate the battery in scenarios
where it could not be trusted. The boot_voltage register populates
immediately at power-on, and the driver would check if this value
was older than 30 minutes before using it. Unfortunately when combined
with the default behavior of the bootloader to turn the device off
when plugged in (requiring a user to explicitly power the device on)
the boot_voltage and boot_timer values were wrong. The boot voltage
would not account for any voltage added while the device was off,
and the boot_counter that tracks the time the device was off would
be reset. To fix this we adopted the same behavior as the BSP driver
which would typically (outside of first-boot scenarios) use a value
saved to NVRAM or the value from the coulomb counter directly and
then recalibrate with the OCV voltage once it was available.

3) A similar issue would happen during suspend, as values from the
coulomb counter could not be relied upon. So we add suspend specific
recalibration to the driver.

Included in this series is another fix that would cause the battery
to drain while the system was shut down. This patch replicates the
Rockchip BSP driver to set a shutdown register and provides a
device-tree parameter to override the behavior (though I am not aware
of any existing boards that need the override).

Chris Morgan (5):
  power: supply: rk817-charger: Fix NVRAM SoC Value
  power: supply: rk817-charger: Resolve boot state of charge from the
    coulomb counter
  power: supply: rk817-charger: Correct the gauge across system sleep
  dt-bindings: power: supply: rk817-charger: Add
    rockchip,gate-function-disable
  power: supply: rk817-charger: Clear SYS_CAN_SD register by default

 .../bindings/mfd/rockchip,rk817.yaml          |   7 +
 drivers/power/supply/rk817_charger.c          | 336 +++++++++++++++---
 include/linux/mfd/rk808.h                     |   3 +
 3 files changed, 290 insertions(+), 56 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
