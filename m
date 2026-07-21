Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5E9C44533
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 06:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEN/e5qVfhZUvNoLQdtQO+s7vnMj5vNUQNvZ9XlghCE=; b=RkIQCCJ9tiqItv
	T5s2hqWfXLiehRNpkiPPuwZfFyUPT8X8vJHM1v9mnI1B0N8xMBKtv0SAKveN78sArMeYy0MORzIDO
	gdNBPiDNV1fJS+HFUaZNDlDrVE3fAP1Nh6aycHtIujPl5WnVwQiCIoSap2vJdUYac2dm5h00Cr+Ko
	7WMoaCkqlzONtuAxsATUuOlkpwxrXpmrPBp7wg7N8+nQoGLASFSySFDw7JGaCHNgAheg6RXmsaMgE
	VZnr51gs7kf7K2OJvayXSL3UtxhnOQNLZwH1XRGi5EqdkYJFnIT7JwZ9iZBnQDGa/7e99K3fK81hl
	kHdgTbnTtSvNcjBHS6+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4Af-00000008Y7P-2yQz;
	Tue, 21 Jul 2026 06:41:41 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4AX-00000008Y0i-1IwK
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 06:41:34 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4925a778491so6412875e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 23:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784616091; x=1785220891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eQnHLvdc7lNWNCnmtODCYn1qxmvdct2JXkNun+6bK/A=;
        b=XUW2Sz6/WSCYSLHiMN754phtWUQrtKwvCVRJMbH24gxTo38sQcn7DGITNbBDJtSaxR
         CIEf56Kpr5ZM14v1WhzyPvlZU2tl0hbKJAyHIijN9fNbMrJnsqwKUYHErOJEPDmoKRN9
         mEt9AyBGHeuPoSrGXSOX3sz8TB3/4hQ/NvP/9c7Qurz7SmIvE6UG0O1gxtKmCDqHXD9Z
         6plIAc1aQZBDa1E/gXV+zLyaBJLT6yelIR24Ix3BJ0wdZzXn4VN6ah1Eph2A5FnxYvJ+
         eU02zj8PgFdPIJxLXP6MgZurv5YXjaWbivWKF0bRiV9n7D7avmG29L3u4G8Ui5NnoQcb
         /XFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784616091; x=1785220891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=eQnHLvdc7lNWNCnmtODCYn1qxmvdct2JXkNun+6bK/A=;
        b=kIOTTiSMrQ5U4u4pdDicmNdqaSknkqXUOTZtOYT6NM7wrrjS2dYTIWXPBJVBvFUtAq
         hmL8EQs4TPCcRAprquKV98d+zWIAYmWcAiEWU6mwd20O9WpYHxpOYdclwUQKMvi7ynR4
         pe3V+CTfvKwS/AuJ639qrODjzEa10/t0PJuDHtnfl1Yzf65NcogpYW0Hpv4h7bqv5nuq
         h8Hj2GstUJiPTUz3KIiPYlazwXgnJ1xH4kz0PM6O1coQzL0kpnnnyTkY3ABrHE8ZV/vA
         +UOmgwr8Rw+93gvRbKJoyqAwB2rsIxWJkQSkAQfkuOg0bSrgGKhlRf7HonyVRBj2r8LQ
         va+g==
X-Forwarded-Encrypted: i=1; AHgh+RrfliYTqgAGfmOiwOwpOC81ABXEayNsZK9hElQ4RmAs3QxQjM3VuhIz4LLo4q7M3Q9vzE1dOo0uKeXIeRloJg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5GqMlNpekqWDTgEGNzKm7wDbiA1vlvVM99RlpVpJ4rkualqhm
	6zRW/1F/7dj5W/hwK3sYsg4dHaPx1mTcB6iWPZ7vTk1+XHlzNSR+zAMt
X-Gm-Gg: AR+sD10UkGMCRuymX1eT0QjRbUm40E39PwDpAPZkILLs4Bv/V/Vj6k3eEqdNxPHAreN
	fWe7GiT8Ot6INOpMkKDWaq1iJ6Axr3hRTOvjIbKJ/04/l+wd4IRnhihlWN+tXbU7bnWoJv0ndk1
	3/BVud33lvPZ3E/W4W2oiU0riJ8btHGi2++twpIA/m/YOhg+4Z9Ln5EmQFCd/RfLn6QHTpjsXce
	vVgxzLvIjg7CjCAYM6f9547+oK7bvrn8MTbaFdhsNol5UVBHm18UQJxl2OWJpXHMyCHyh/68SJb
	4DP1CiTZvmaF4bCmSN+xmUKBQl9uJ/dcuRMeGQ+N8AnM2ubd28ci4VvyJgvLJ80zTC0y3j1GPcx
	rtLlQaW4PePxiJpqbJZ8boon0LHgh/E85ezdPmP0MWfEsdzYwms5jCsODsc24NzpGXdhDGcxUin
	e4gNGjhLxzNYWCvfkTheY26GhMkU0q8Lo7WwQ+p69nA4a4sNr2LxEOPpDIfhGHGzJbv4oWyWnIM
	AhmmkhAkzX21QRgR3HF7VxrOJwX9Vcj
X-Received: by 2002:a05:6000:3ca:b0:47f:6fbd:f23e with SMTP id ffacd0b85a97d-47f7fe30db7mr970614f8f.4.1784616091281;
        Mon, 20 Jul 2026 23:41:31 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B88AD00DA0BF9DB4519DBD6.dsl.pool.telekom.hu. [2001:4c4e:1b88:ad00:da0b:f9db:4519:dbd6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ed1911sm38837951f8f.22.2026.07.20.23.41.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 23:41:30 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v4 2/4] media: synopsys: hdmirx: add HDMI audio capture support
Date: Tue, 21 Jul 2026 08:41:13 +0200
Message-ID: <20260721064115.64809-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064115.64809-1-royalnet026@gmail.com>
References: <20260721064115.64809-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234133_489294_8795CC61 
X-CRM114-Status: GOOD (  33.67  )
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

The Synopsys DesignWare HDMI RX controller extracts the audio stream
embedded in the incoming HDMI signal and feeds it to an on-SoC I2S
controller. Expose it as an ALSA capture device by registering the
generic hdmi-codec as a child of the controller, so that a
simple-audio-card in the device tree can bind the HDMI RX audio DAI.

The sample rate is recovered from the ACR N/CTS values together with the
measured TMDS character rate. A periodic worker keeps the local audio
reference clock locked to the source by nudging it in small ppm steps to
hold the audio FIFO fill level near its target, which avoids FIFO
under/overflow and the resulting dropped samples.

Across system suspend the worker is stopped before the controller
clocks are gated. Resume fully resets the controller, wiping the audio
configuration, so when a capture stream is active it re-programs the
audio path from the last known sample rate and re-arms the worker,
whose rate change and FIFO error paths resynchronize once the source
delivers audio again.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Changes in v4:
- use swab32() for the ACR word reversal: readl() already abstracts
  bus endianness, so the reversal must be unconditional (be32_to_cpu
  is a no-op on big-endian)
- support system suspend: stop the worker in suspend before the
  clocks are gated; resume fully resets the controller, so re-program
  the audio path and re-arm the worker while a capture stream is
  active, through a hdmirx_audio_setup() helper shared with
  hw_params() (Dmitry Osipenko; validated with an active capture
  stream across suspend/resume)

Changes in v3:
- restore the v1 audio teardown in remove(): audio_shutdown() already
  stops the worker when the stream closes, so the extra flag clear
  and trailing cancel added in v2 were redundant (Dmitry Osipenko)
- rename the ACR read locals and add a comment documenting the
  register byte packing
- drop the get_dai_id stub so OF-graph cards resolve the DAI index
  from the reg property

Changes in v2:
- register the S/PDIF DAI so the indexes match the binding and reject
  it with -EOPNOTSUPP until wired up (Sebastian Reichel)
- use platform_device_register_data() and drop the fixed 32-bit DMA
  mask (Dmitry Osipenko)
- don't leave an ERR_PTR in audio_pdev on registration failure
- fix teardown ordering in remove()
- stop the worker before reprogramming shared state in hw_params()
- look up the "audio" clock by name instead of indexing clks[1]
- keep the worker on system_unbound_wq when re-arming
 .../platform/synopsys/hdmirx/snps_hdmirx.c    | 306 ++++++++++++++++++
 .../platform/synopsys/hdmirx/snps_hdmirx.h    |   8 +
 2 files changed, 314 insertions(+)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
index 9cceffa..99ad621 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
@@ -41,6 +41,8 @@
 #include <media/videobuf2-dma-contig.h>
 #include <media/videobuf2-v4l2.h>
 
+#include <sound/hdmi-codec.h>
+
 #include "snps_hdmirx.h"
 #include "snps_hdmirx_cec.h"
 
@@ -132,6 +134,13 @@ struct snps_hdmirx_dev {
 	struct delayed_work delayed_work_hotplug;
 	struct delayed_work delayed_work_res_change;
 	struct hdmirx_cec *cec;
+	struct platform_device *audio_pdev;
+	struct clk *audio_clk;
+	struct delayed_work audio_work;
+	u32 audio_clkrate;
+	u32 audio_fs;
+	int audio_pre_state;
+	bool audio_streaming;
 	struct mutex phy_rw_lock; /* to protect phy r/w configuration */
 	struct mutex stream_lock; /* to lock video stream capture */
 	struct mutex work_lock; /* to lock the critical section of hotplug event */
@@ -2283,6 +2292,13 @@ static int hdmirx_parse_dt(struct snps_hdmirx_dev *hdmirx_dev)
 	if (hdmirx_dev->num_clks < 1)
 		return -ENODEV;
 
+	for (int i = 0; i < hdmirx_dev->num_clks; i++) {
+		if (!strcmp(hdmirx_dev->clks[i].id, "audio")) {
+			hdmirx_dev->audio_clk = hdmirx_dev->clks[i].clk;
+			break;
+		}
+	}
+
 	hdmirx_dev->resets[HDMIRX_RST_A].id = "axi";
 	hdmirx_dev->resets[HDMIRX_RST_P].id = "apb";
 	hdmirx_dev->resets[HDMIRX_RST_REF].id = "ref";
@@ -2527,10 +2543,19 @@ static void hdmirx_enable_irq(struct device *dev)
 			   msecs_to_jiffies(110));
 }
 
+static void hdmirx_audio_setup(struct snps_hdmirx_dev *hdmirx_dev, u32 fs);
+
 static __maybe_unused int hdmirx_suspend(struct device *dev)
 {
 	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
 
+	/*
+	 * Stop the audio worker before the controller clocks are gated;
+	 * the audio path is restored and the worker re-armed from
+	 * resume() while a capture stream is active.
+	 */
+	cancel_delayed_work_sync(&hdmirx_dev->audio_work);
+
 	hdmirx_disable_irq(dev);
 
 	/* TODO store CEC HW state */
@@ -2553,6 +2578,19 @@ static __maybe_unused int hdmirx_resume(struct device *dev)
 		hdmirx_hpd_ctrl(hdmirx_dev, true);
 	}
 
+	/*
+	 * hdmirx_enable() fully reset the controller, wiping the audio
+	 * configuration. If a capture stream is active across suspend,
+	 * re-program the audio path with the last known sample rate and
+	 * restart the worker; its rate change and FIFO error paths
+	 * resynchronize once the source delivers audio again.
+	 */
+	if (READ_ONCE(hdmirx_dev->audio_streaming)) {
+		hdmirx_audio_setup(hdmirx_dev, hdmirx_dev->audio_fs);
+		mod_delayed_work(system_unbound_wq, &hdmirx_dev->audio_work,
+				 msecs_to_jiffies(200));
+	}
+
 	/* TODO restore CEC HW state */
 	enable_irq(hdmirx_dev->cec->irq);
 
@@ -2650,6 +2688,266 @@ static int hdmirx_register_cec(struct snps_hdmirx_dev *hdmirx_dev,
 	return 0;
 }
 
+#define HDMIRX_AUDIO_INIT_FIFO_STATE	128
+#define HDMIRX_AUDIO_INIT_STATE		(HDMIRX_AUDIO_INIT_FIFO_STATE * 4)
+
+static const int hdmirx_supported_fs[] = {
+	32000, 44100, 48000, 88200, 96000, 176400, 192000, 768000, -1
+};
+
+static int hdmirx_audio_closest_fs(int fs)
+{
+	int i = 0, fs_t = hdmirx_supported_fs[0];
+
+	while (fs_t > 0) {
+		if (abs(fs - fs_t) <= 2000)
+			return fs_t;
+		fs_t = hdmirx_supported_fs[++i];
+	}
+	return 0;
+}
+
+/* Recover the incoming audio sample rate from the ACR N/CTS + TMDS clock. */
+static u32 hdmirx_audio_fs(struct snps_hdmirx_dev *hdmirx_dev)
+{
+	u64 tmds_clk, fs_audio = 0;
+	u32 acr_cts, acr_n, tmdsqpclk_freq;
+	u32 acr_pb3_0, acr_pb7_4;
+
+	tmdsqpclk_freq = hdmirx_readl(hdmirx_dev, CMU_TMDSQPCLK_FREQ);
+	hdmirx_readl(hdmirx_dev, PKTDEC_ACR_PH2_1);
+	acr_pb3_0 = hdmirx_readl(hdmirx_dev, PKTDEC_ACR_PB3_0);
+	acr_pb7_4 = hdmirx_readl(hdmirx_dev, PKTDEC_ACR_PB7_4);
+	/*
+	 * The packet decoder stores the ACR subpacket bytes with packet byte
+	 * 0 in register bits [7:0], so byte-reverse each word to line the
+	 * bytes up: CTS is packet bytes 1-3 (PKTDEC_ACR_PB3_0) and N is
+	 * packet bytes 4-6 (PKTDEC_ACR_PB7_4), 20 bits each. readl()
+	 * already abstracts the bus endianness, so the reversal is
+	 * unconditional.
+	 */
+	acr_cts = swab32(acr_pb3_0) & 0xfffff;
+	acr_n = (swab32(acr_pb7_4) & 0x0fffff00) >> 8;
+	tmds_clk = tmdsqpclk_freq * 4 * 1000U;
+	if (acr_cts != 0) {
+		fs_audio = div_u64((tmds_clk * acr_n), acr_cts);
+		fs_audio /= 128;
+		fs_audio = hdmirx_audio_closest_fs(fs_audio);
+	}
+	return (u32)fs_audio;
+}
+
+/* Nudge the audio reference clock by +/- ppm to keep the FIFO balanced. */
+static void hdmirx_audio_clk_ppm_inc(struct snps_hdmirx_dev *hdmirx_dev, int ppm)
+{
+	int delta, inc;
+	long rate = hdmirx_dev->audio_clkrate;
+
+	if (ppm < 0) {
+		ppm = -ppm;
+		inc = -1;
+	} else {
+		inc = 1;
+	}
+	delta = (int)div64_u64((u64)rate * ppm + 500000, 1000000);
+	delta *= inc;
+	rate = hdmirx_dev->audio_clkrate + delta;
+	clk_set_rate(hdmirx_dev->audio_clk, rate);
+	hdmirx_dev->audio_clkrate = rate;
+}
+
+static int hdmirx_audio_clk_adjust(struct snps_hdmirx_dev *hdmirx_dev,
+				   int total_offset, int single_offset)
+{
+	int schedule_time = 500;
+	int ppm = 10;
+	u32 offset_abs = abs(total_offset);
+
+	if (offset_abs > 200) {
+		ppm += 200;
+		schedule_time -= 100;
+	}
+	if (offset_abs > 100) {
+		ppm += 200;
+		schedule_time -= 100;
+	}
+	if (offset_abs > 32) {
+		ppm += 20;
+		schedule_time -= 100;
+	}
+	if (offset_abs > 16)
+		ppm += 20;
+	if (total_offset > 16 && single_offset > 0)
+		hdmirx_audio_clk_ppm_inc(hdmirx_dev, ppm);
+	else if (total_offset < -16 && single_offset < 0)
+		hdmirx_audio_clk_ppm_inc(hdmirx_dev, -ppm);
+	return schedule_time;
+}
+
+static void hdmirx_audio_fifo_reinit(struct snps_hdmirx_dev *hdmirx_dev)
+{
+	hdmirx_writel(hdmirx_dev, AUDIO_FIFO_CONTROL, 1);
+	usleep_range(200, 210);
+	hdmirx_writel(hdmirx_dev, AUDIO_FIFO_CONTROL, 0);
+}
+
+/*
+ * Program the audio clock, FIFO thresholds and enables for the given
+ * sample rate. Shared by hw_params and system resume: the controller is
+ * fully reset on resume, so the whole configuration must be re-applied.
+ */
+static void hdmirx_audio_setup(struct snps_hdmirx_dev *hdmirx_dev, u32 fs)
+{
+	hdmirx_dev->audio_fs = fs;
+	hdmirx_dev->audio_clkrate = fs * 128;
+	clk_set_rate(hdmirx_dev->audio_clk, hdmirx_dev->audio_clkrate);
+
+	hdmirx_audio_fifo_reinit(hdmirx_dev);
+	hdmirx_writel(hdmirx_dev, AUDIO_FIFO_THR_PASS, HDMIRX_AUDIO_INIT_FIFO_STATE);
+	hdmirx_writel(hdmirx_dev, AUDIO_FIFO_THR,
+		      AFIFO_THR_LOW_QST(0x20) | AFIFO_THR_HIGH_QST(0x160));
+	hdmirx_writel(hdmirx_dev, AUDIO_FIFO_MUTE_THR,
+		      AFIFO_THR_MUTE_LOW_QST(0x8) | AFIFO_THR_MUTE_HIGH_QST(0x178));
+
+	hdmirx_update_bits(hdmirx_dev, AUDIO_PROC_CONFIG0, I2S_EN, I2S_EN);
+	hdmirx_update_bits(hdmirx_dev, GLOBAL_SWENABLE, AUDIO_ENABLE, AUDIO_ENABLE);
+
+	hdmirx_dev->audio_pre_state = 0;
+}
+
+/*
+ * Periodic worker that locks the local audio clock to the source by keeping
+ * the audio FIFO fill level close to its target, avoiding under/overflow.
+ */
+static void hdmirx_audio_work(struct work_struct *work)
+{
+	struct snps_hdmirx_dev *hdmirx_dev =
+		container_of(to_delayed_work(work), struct snps_hdmirx_dev, audio_work);
+	unsigned long delay = 200;
+	int cur, total, single;
+	u32 fifo, fs;
+
+	fs = hdmirx_audio_fs(hdmirx_dev);
+	fifo = hdmirx_readl(hdmirx_dev, AUDIO_FIFO_STATUS2);
+
+	if (fifo & (AFIFO_UNDERFLOW_ST | AFIFO_OVERFLOW_ST)) {
+		if (fs) {
+			clk_set_rate(hdmirx_dev->audio_clk, fs * 128);
+			hdmirx_dev->audio_clkrate = fs * 128;
+			hdmirx_dev->audio_fs = fs;
+		}
+		hdmirx_audio_fifo_reinit(hdmirx_dev);
+		hdmirx_dev->audio_pre_state = 0;
+		goto out;
+	}
+
+	cur = fifo & 0xffff;
+	total = cur - HDMIRX_AUDIO_INIT_STATE;
+	single = cur - hdmirx_dev->audio_pre_state;
+
+	if (fs && abs((int)fs - (int)hdmirx_dev->audio_fs) > 1000) {
+		clk_set_rate(hdmirx_dev->audio_clk, fs * 128);
+		hdmirx_dev->audio_clkrate = fs * 128;
+		hdmirx_dev->audio_fs = fs;
+		hdmirx_audio_fifo_reinit(hdmirx_dev);
+		hdmirx_dev->audio_pre_state = 0;
+		goto out;
+	}
+
+	if (cur != 0)
+		delay = hdmirx_audio_clk_adjust(hdmirx_dev, total, single);
+	hdmirx_dev->audio_pre_state = cur;
+out:
+	/* Only re-arm while streaming; avoids a self-reschedule race with
+	 * the cancel_delayed_work_sync() callers (hw_params and
+	 * audio_shutdown).
+	 */
+	if (READ_ONCE(hdmirx_dev->audio_streaming))
+		queue_delayed_work(system_unbound_wq, &hdmirx_dev->audio_work,
+				   msecs_to_jiffies(delay));
+}
+
+static int hdmirx_audio_hw_params(struct device *dev, void *data,
+				  struct hdmi_codec_daifmt *fmt,
+				  struct hdmi_codec_params *hparms)
+{
+	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
+	u32 fs;
+
+	/* Only the I2S interface (DAI 0) is wired up so far. */
+	if (fmt->fmt == HDMI_SPDIF)
+		return -EOPNOTSUPP;
+
+	/*
+	 * Stop the worker before touching the shared audio state; it is
+	 * re-armed below once the new parameters are in place.
+	 */
+	WRITE_ONCE(hdmirx_dev->audio_streaming, false);
+	cancel_delayed_work_sync(&hdmirx_dev->audio_work);
+
+	fs = hdmirx_audio_fs(hdmirx_dev);
+	if (!fs)
+		fs = hparms ? hparms->sample_rate : 48000;
+	if (!fs)
+		fs = 48000;
+
+	hdmirx_audio_setup(hdmirx_dev, fs);
+
+	WRITE_ONCE(hdmirx_dev->audio_streaming, true);
+	mod_delayed_work(system_unbound_wq, &hdmirx_dev->audio_work,
+			 msecs_to_jiffies(200));
+
+	dev_dbg(dev, "audio hw_params: fs=%u\n", fs);
+	return 0;
+}
+
+static void hdmirx_audio_shutdown(struct device *dev, void *data)
+{
+	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
+
+	WRITE_ONCE(hdmirx_dev->audio_streaming, false);
+	cancel_delayed_work_sync(&hdmirx_dev->audio_work);
+	hdmirx_update_bits(hdmirx_dev, GLOBAL_SWENABLE, AUDIO_ENABLE, 0);
+}
+
+static const struct hdmi_codec_ops hdmirx_audio_codec_ops = {
+	.hw_params = hdmirx_audio_hw_params,
+	.audio_shutdown = hdmirx_audio_shutdown,
+};
+
+static int hdmirx_register_audio_device(struct snps_hdmirx_dev *hdmirx_dev)
+{
+	struct hdmi_codec_pdata codec_data = {
+		.ops = &hdmirx_audio_codec_ops,
+		.i2s = 1,
+		.no_i2s_playback = 1,
+		.max_i2s_channels = 8,
+		/*
+		 * The controller also has an S/PDIF audio interface (DAI 1 in
+		 * the binding). Register it so DAI indexes match the binding,
+		 * but reject its use in hw_params() until it is wired up.
+		 */
+		.spdif = 1,
+		.no_spdif_playback = 1,
+		.data = hdmirx_dev,
+	};
+	struct platform_device *audio_pdev;
+
+	if (!hdmirx_dev->audio_clk)
+		return -ENODEV;
+
+	audio_pdev = platform_device_register_data(hdmirx_dev->dev,
+						   HDMI_CODEC_DRV_NAME,
+						   PLATFORM_DEVID_AUTO,
+						   &codec_data, sizeof(codec_data));
+	if (IS_ERR(audio_pdev))
+		return PTR_ERR(audio_pdev);
+
+	hdmirx_dev->audio_pdev = audio_pdev;
+
+	return 0;
+}
+
 static int hdmirx_probe(struct platform_device *pdev)
 {
 	struct snps_hdmirx_dev *hdmirx_dev;
@@ -2701,6 +2999,7 @@ static int hdmirx_probe(struct platform_device *pdev)
 			  hdmirx_delayed_work_hotplug);
 	INIT_DELAYED_WORK(&hdmirx_dev->delayed_work_res_change,
 			  hdmirx_delayed_work_res_change);
+	INIT_DELAYED_WORK(&hdmirx_dev->audio_work, hdmirx_audio_work);
 
 	hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_BGR24;
 	hdmirx_dev->timings = cea640x480;
@@ -2769,6 +3068,10 @@ static int hdmirx_probe(struct platform_device *pdev)
 						       V4L2_DEBUGFS_IF_AVI, hdmirx_dev,
 						       hdmirx_debugfs_if_read);
 
+	ret = hdmirx_register_audio_device(hdmirx_dev);
+	if (ret)
+		dev_warn(dev, "failed to register HDMI audio codec: %d\n", ret);
+
 	return 0;
 
 err_unreg_video_dev:
@@ -2788,6 +3091,9 @@ static void hdmirx_remove(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct snps_hdmirx_dev *hdmirx_dev = dev_get_drvdata(dev);
 
+	if (hdmirx_dev->audio_pdev)
+		platform_device_unregister(hdmirx_dev->audio_pdev);
+
 	v4l2_debugfs_if_free(hdmirx_dev->infoframes);
 	debugfs_remove_recursive(hdmirx_dev->debugfs_dir);
 
diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
index 31b887e..a99f54f 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.h
@@ -81,6 +81,7 @@
 #define DATAPATH_ENABLE				BIT(12)
 #define PKTFIFO_ENABLE				BIT(11)
 #define AVPUNIT_ENABLE				BIT(8)
+#define AUDIO_ENABLE				BIT(9)
 #define MAIN_ENABLE				BIT(0)
 #define GLOBAL_TIMER_REF_BASE			0x0028
 #define CORE_CONFIG				0x0050
@@ -177,20 +178,27 @@
 #define VPROC_FMT_OVR_VALUE(x)			UPDATE(x, 6, 4)
 #define VPROC_FMT_OVR_EN			BIT(0)
 
+#define AUDIO_FIFO_CONFIG			0x0460
 #define AFIFO_FILL_RESTART			BIT(0)
+#define AUDIO_FIFO_CONTROL			0x0464
 #define AFIFO_INIT_P				BIT(0)
+#define AUDIO_FIFO_THR_PASS			0x0468
+#define AUDIO_FIFO_THR				0x046c
 #define AFIFO_THR_LOW_QST_MASK			GENMASK(25, 16)
 #define AFIFO_THR_LOW_QST(x)			UPDATE(x, 25, 16)
 #define AFIFO_THR_HIGH_QST_MASK			GENMASK(9, 0)
 #define AFIFO_THR_HIGH_QST(x)			UPDATE(x, 9, 0)
+#define AUDIO_FIFO_MUTE_THR			0x0470
 #define AFIFO_THR_MUTE_LOW_QST_MASK		GENMASK(25, 16)
 #define AFIFO_THR_MUTE_LOW_QST(x)		UPDATE(x, 25, 16)
 #define AFIFO_THR_MUTE_HIGH_QST_MASK		GENMASK(9, 0)
 #define AFIFO_THR_MUTE_HIGH_QST(x)		UPDATE(x, 9, 0)
 
+#define AUDIO_FIFO_STATUS2			0x0478
 #define AFIFO_UNDERFLOW_ST			BIT(25)
 #define AFIFO_OVERFLOW_ST			BIT(24)
 
+#define AUDIO_PROC_CONFIG0			0x0480
 #define SPEAKER_ALLOC_OVR_EN			BIT(16)
 #define I2S_BPCUV_EN				BIT(4)
 #define SPDIF_EN				BIT(2)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
