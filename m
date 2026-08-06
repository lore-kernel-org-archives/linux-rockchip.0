Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B8FEC56205
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 19:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8uKremmuXg0lHay3KhuFkDuEnL3msXNuKL+5u7BMN34=; b=n3lG4c0DKIvnPP
	w5of1q8wIc/QjudyjuaEDcf5FXg3S8MrakOb8KVZJ41P/XaHHRE4Cpu5C99rkAIcOkdhUpaFOx/la
	kqfdtw2QWKhH56x57M+sd4KTcUBOOKBImTNeGIOH+oy/F9ivmqOy3jw3X+ykJK5+b+Wei3gpFTAQJ
	lfa8MJz+4js+foK4yOGXTDgaxg7wIRY7SieMGKh+X123MJJ4Pmrp+MuRn8mm3Jd06UYh4YFMxUS69
	JrGIp24OTwKhTDwWLgtW/rpyaTfVR7EllTnwHHmwtMsOK4HPeVAa8KYhsNFI0vPw5In2oYRoBeTFk
	6R4T93yWAdM3OTBEDt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws3cW-00000006YSX-08zr;
	Thu, 06 Aug 2026 19:19:12 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws3cT-00000006YRg-2kOf
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 19:19:10 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5b0115b9e17so2660386e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Aug 2026 12:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786043947; x=1786648747; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=0Rntni/+iFL5zOCPoEwUROZX0FJSnIqGs1w4smqyZiM=;
        b=cMEhMbqGrpz9fXOSNRPzjqf1TUGDJE7gfXNqjqGQARhxLhXcIDcVx+zRN0xrOz+yj2
         6iAvYkBLB47sqd/IFRbTG2CzEE6BJVrxq0BrKyX+JCdetoJePKdrHXVyfS0jD2cof54T
         oX5FKhhmKGH9eUbtqFCbS9Bq6CxrSi+PUzxeGEpqbCAFBrY0N0b9MMNToNH9FDJ3DfNB
         fgcMkdBKSQnu061m9fAKmnhnDPPCMkkn3zfjMYIO1zZa4cdkcxZ9RT3J4Kl5UKyjnqCw
         6nLZXtj5zRPG+91oE4KPjUVHifFYj6uaeaYiQ8cr+o9rtp5qDMheZQyt1dgIzXPusAV4
         s87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786043947; x=1786648747;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0Rntni/+iFL5zOCPoEwUROZX0FJSnIqGs1w4smqyZiM=;
        b=fEU0NKXAkWT/0xEOFx41iSkPL/7sJ97W5ciVlNpGIz5U13jcQCwFI96tV5mZui9Cfa
         /cxA01gO+UvmICI68qweWuUzMexrYZrRM0wn1pOS4hpELaTSnoHsBUAB1r2QOZejTxWZ
         q4qLKsZbqNhbMkhVzsSNxEZ/0SESy5G5heA0DMb9CWBaqOOy7PajQli0pE26erocxUc+
         olhk/eCmLcpHHpeBNc8vqD4MqOfW4cDhey1BZ+IqWZvSseVJtXrHNzDivAD711OWktfa
         fjXesN0JKsLmxM+HHhXiRt4Dmow11ubchMvI+tjbhv1Ii4PwPokdNf7QdpLZBLw9X8oV
         ewag==
X-Gm-Message-State: AOJu0YxR8ui2TtNnKL8vZXWmvo74/AE1DUKib4W9WzhslL9mODgqR6nQ
	+GqU/dUKhnXFVCps5QlpG8+73s+Qd7PJUmKmsON3x+HUlZOwdk2Vegum8yjMzA==
X-Gm-Gg: AR+sD12CrKEMYp4epqrWKPXfAH2WNplfmDfz7re7FexD6ieaNbXHTMg6KpdBvzwsIFb
	VpQkYwfT6ydV+ipNGLV0WaFR4G/9+pgLJdIwP3wzacwhLoz6NmGlLdCPzCISlrRckYEUejSrphK
	/ty3DZskaokOglWaR3khS/g3Na5JCJGX2CyLY31bT6JdJmno+4+bZ4Q32OXinLE89a5tB1RlmBy
	J9CMZDnQMR1tAb+EU05004yYrvMeUnyYeTexCP5J3UZqMeDn7Iq2iDGl29Ka0j9BLMDJmKZrufl
	/H6YSkkaqJ5qD7RbsV+pVdp6FskdMu2sK0kON7yrpthG4QjcFdwodfGjQaqCKaHBX/hV3lkrC2d
	JyX+qOZNadclxp+3FRHzHhQSYsGC2/rDC42maqKll/CD/m0dSDak+m9GBIXUiQCCkipcd77eAEh
	W8xPah01tq0ZIwXmC59hPP/dB1ARtokdopbTC5RZtPaeWS2Hg5rHAZUfkiYIFkIygMxLZG6RPO8
	8TMEb/cy+0CwE8=
X-Received: by 2002:ac2:4bc4:0:b0:5ad:5c4a:8221 with SMTP id 2adb3069b0e04-5b303aeeab0mr626768e87.0.1786043946449;
        Thu, 06 Aug 2026 12:19:06 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3050cfa83sm57071e87.22.2026.08.06.12.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 12:19:04 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: linux-spi@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH] spi: rockchip: Fix runtime PM underflow on CS error paths
Date: Thu,  6 Aug 2026 22:18:54 +0300
Message-ID: <20260806191854.922530-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_121909_730976_BF3FABC9 
X-CRM114-Status: GOOD (  19.43  )
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

The Rockchip SPI driver manages runtime PM reference counting around
chip select (CS) assertion: pm_runtime_get_sync() is called when CS is
asserted, and pm_runtime_put() when deasserted. This balanced pair is
expected.

However, when a transfer is aborted due to an error (e.g., power domain
timeout, DMA failure, or suspend/resume), the CS may remain in asserted
state while the transfer is terminated early. In such cases the
corresponding pm_runtime_put() is never called, leaving the usage count
artificially high. A later attempt to deassert CS (either explicitly or
during a new transfer) will call pm_runtime_put() without a prior get(),
triggering a "Runtime PM usage count underflow" warning and breaking
subsequent SPI operations.

Furthermore, the error handler may already have released the PM
reference and cleared the CS, but the SPI core may still call
rockchip_spi_set_cs() to deassert CS at message completion. Without
additional state tracking, this results in an extra pm_runtime_put()
and another underflow.

Add a cs_claimed flag to struct rockchip_spi to track whether the
runtime PM reference is currently held. Set it in the CS assertion path
after pm_runtime_get_sync(), clear it in deassertion path after
pm_runtime_put(). In error paths (rockchip_spi_handle_err() and
rockchip_spi_target_abort()), check this flag and release the reference
if still held. In rockchip_spi_set_cs() deassertion branch, only call
pm_runtime_put() if cs_claimed is true, preventing double decrement.
---
[root@diasom-evb ~]# rtcwake -s 15 -v -m freeze
rtcwake: assuming RTC uses UTC ...
Using UTC time.
        delta   = 37
        tzone   = 0
        tzname  = UTC
        systime = 1773421731, (UTC) Fri Mar 13 17:08:51 2026
        rtctime = 1773421694, (UTC) Fri Mar 13 17:08:14 2026
alarm 0, sys_time 1773421731, rtc_time 1773421694, seconds 15
rtcwake: wakeup from "freeze" using /dev/rtc0 at Fri Mar 13 17:08:30 2026
suspend mode: freeze; suspending system
[   28.951039] PM: suspend entry (s2idle)
[   28.957997] Filesystems sync: 0.006 seconds
[   28.963184] Freezing user space processes
[   28.966553] Freezing user space processes completed (elapsed 0.003 seconds)
[   28.967162] OOM killer disabled.
[   28.967464] Freezing remaining freezable tasks
[   28.968457] Freezing remaining freezable tasks completed (elapsed 0.000 seconds)
...
[   33.249429] spi_master spi2: Failed to power device: -13
[   33.249893] spi_master spi2: noqueue transfer failed
[   33.250331] spi_master spi2: Failed to power device: -13
[   33.250797] spi_master spi2: noqueue transfer failed
[   33.251230] rockchip-spi feb20000.spi: Runtime PM usage count underflow!
---

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/spi/spi-rockchip.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 231fbcf0e7aa..fb5795bc734d 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -191,6 +191,7 @@ struct rockchip_spi {
 	bool target_abort;
 	bool cs_inactive; /* spi target transmission stop when cs inactive */
 	bool cs_high_supported; /* native CS supports active-high polarity */
+	bool cs_claimed; /* runtime PM reference taken for CS */
 
 	struct spi_transfer *xfer; /* Store xfer temporarily */
 };
@@ -256,6 +257,7 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 	if (cs_asserted) {
 		/* Keep things powered as long as CS is asserted */
 		pm_runtime_get_sync(rs->dev);
+		rs->cs_claimed = true;
 
 		if (spi_get_csgpiod(spi, 0))
 			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
@@ -263,14 +265,18 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER,
 					      BIT(spi_get_chipselect(spi, 0)));
 	} else {
+		/* Clear CS first, then release PM */
 		if (spi_get_csgpiod(spi, 0))
 			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
 		else
 			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER,
 					      BIT(spi_get_chipselect(spi, 0)));
 
-		/* Drop reference from when we first asserted CS */
-		pm_runtime_put(rs->dev);
+		/* Only release PM if we still hold the reference */
+		if (rs->cs_claimed) {
+			pm_runtime_put(rs->dev);
+			rs->cs_claimed = false;
+		}
 	}
 }
 
@@ -279,6 +285,12 @@ static void rockchip_spi_handle_err(struct spi_controller *ctlr,
 {
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
+	/* If CS was claimed, release it to avoid PM underflow */
+	if (rs->cs_claimed) {
+		pm_runtime_put(rs->dev);
+		rs->cs_claimed = false;
+	}
+
 	/* stop running spi transfer
 	 * this also flushes both rx and tx fifos
 	 */
@@ -624,6 +636,12 @@ static int rockchip_spi_target_abort(struct spi_controller *ctlr)
 	struct dma_tx_state state;
 	enum dma_status status;
 
+	/* If CS was claimed, release it */
+	if (rs->cs_claimed) {
+		pm_runtime_put(rs->dev);
+		rs->cs_claimed = false;
+	}
+
 	/* Get current dma rx point */
 	if (atomic_read(&rs->state) & RXDMA) {
 		dmaengine_pause(ctlr->dma_rx);
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
