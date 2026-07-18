Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D567C4451B
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 08:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O4quhEjN5I2wbpGvjo7QAJeAkDioKET2zrZB6AYt3Ic=; b=FSuIYHPZXszMS/
	6rb+qN5nHVaKSes/BxlwDmdCqaQ2vLAPghYSa7dSg0iN1BfSk+EMQERNoFb2jnSgRnKMDf1cHKXR9
	3jyvgvu1VLex6Rx5CReyDoEp5ZmXBQvpForrqMkaDW25Uf04ABamD7pLlzsnBczg+YrJukaXg6qTe
	HqGU/FM+bPqtu13+8QGr6SFsD5bbT/sEydxZVHXT/fGZdFz2ompdkEpjI7NEjgaCeZ+7bNGk0r6HA
	0XV1LQ2wAiNg9rKn/ryCIQqp1IepiAFKAmVj50jV3gZfvBAvMM5n/jXbrHeDdQ0uIVfvCVz8odp/D
	1mNVTIwZrU6WNZWaearw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0s1-00000003v4r-3cI2;
	Sat, 18 Jul 2026 08:58:05 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0rk-00000003uvX-1f67
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 08:57:53 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4953f64372aso4428475e9.0
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 01:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784365066; x=1784969866; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SDnMtCkuMj9Cogsv4cA0KYznv1xBNwp6u1rkofi/6cU=;
        b=Jiq7/YZO1iIetfIuI3T5kUaIrOilHqhFWVqKvBNq1MVSwpyVzsoFdvKUHEuUeCTjOU
         41U1XInL71bX5OdYvtSbz7tXfbaSOvJoWy5BFyEkOBQbrnJMpPsZ+nz9E73xeaJvg/k1
         d2+EUhq3D8SvEVuouJLEbpRtLUcdju3Voco6I7EhYkyKjcPoYLrpwNnCbJz5UUhOCC7l
         bBtL6xY4qRNiy9wp0swNhjFkYf/j/QYe1t55jrntY/5JTwjeFDCrgVJVIck9DEn/NLI1
         Dv5AKZ2Ekvnzfa+u8GLx/70YUMsBUjeE+ZpM9MKBNbUErKjre5SdtiijUOF4u5C364OW
         Ri+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784365066; x=1784969866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=SDnMtCkuMj9Cogsv4cA0KYznv1xBNwp6u1rkofi/6cU=;
        b=Pi254qTwA9sGt6nKbFoPDm1JCzWtOu+yKWgt15W15izNrCP94gH9xUx+1Xe/QqzCii
         XYDhEbfNKvIKuw9sR/nifZLnZAI6FNqyyzhvcpZSRawsVwNpCHQ/gPYKIxhByStKUc1i
         HayR6iGSjKSfSCxhm9Wb+csR0yJjI2RhBlX9iRBaKHHlqurANDsuHHtZllvyvzQa8yQ3
         aCe6/lNRwyqFGa/4El6/26/yFauvZ46Pl9TGXq5s7+eTLSLYwrC3toREnu7t76j0daT8
         OeoNO+5g4sP1RI4fCV27xZDRJPAsvAp7HoeirUDiA5aHufwuBu0WOdQzSCJRDrVGrUg6
         rNkQ==
X-Forwarded-Encrypted: i=1; AHgh+RpEUepBOMiiPpcnce84fkgKqbX3+b2qBpxRbaWcPnEVxrGdQ+JRrD9O0XsyNhgGRIDj3S6QtHpWtIHEeSYDFw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4nwdZmVYCQlfd63a8Uy4UVIv87wIFmNvUFW3Mals5jEtYN7UN
	tkYz2t/6h8Z5tLTl6bpiPk3O3FWKKMjrVg4J9EpFE9a1jQZgPRnOU/fd
X-Gm-Gg: AfdE7ckYoO3/1W63zN8rRhDKxOecaV8IQfD3Nz7VMfFinFUPtw6/2P4RBHFVP+Pesjo
	L8+WERNHuMVmb4PrQLDB3JaS+hW1IaziOtzM8CKeyDbHRVdqVr9CKDIdWZoNnpnu0cQLgNHNpIY
	sQSkb+LJMvWLM5XK6OZDo31iigzsAjoRyojJhUFUfcAbFAmjVy55xDHuntE+S7Z3wLGHXLnp2Tm
	ANk1DE65CCLiSJx4h+NQwXLJZdUOFJzYR5aX2WFnnF2uEf6o8NIrCjct4FIaSQyb3hcjHnvufSW
	/AcV98inmIuXDh3iHT7+wpXewlNrV9XJtnM15ctW3cYn9AX2h9BmTrD7cGwca8vlAVJ8uOTmv+s
	+tR7SMdqRqwqHCpfI9EAw4eiQ/XGk5lFnZR0vimQEb9Sa8oqGl+90ia3WPqL/FvFOkU0FDFE5U9
	TB5tRPP1ccOu1FBEVMEF1sHGO32SOkBUKzw//lbnvvai6ezzgcjfNdEs/HQcgixchLkt0H7BI7v
	NtVVIG+zNa4jOYjsBvn
X-Received: by 2002:a05:600c:b8d:b0:493:b6a2:858d with SMTP id 5b1f17b1804b1-4954a51321cmr38761665e9.6.1784365066131;
        Sat, 18 Jul 2026 01:57:46 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8D1600206D23E70680CBAA.dsl.pool.telekom.hu. [2001:4c4e:1b8d:1600:206d:23e7:680:cbaa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954834edc3sm91477455e9.0.2026.07.18.01.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 01:57:45 -0700 (PDT)
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
Subject: [PATCH v3 2/4] media: synopsys: hdmirx: add HDMI audio capture support
Date: Sat, 18 Jul 2026 10:57:26 +0200
Message-ID: <20260718085728.6797-3-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260718085728.6797-1-royalnet026@gmail.com>
References: <20260718085728.6797-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_015751_223134_95818B68 
X-CRM114-Status: GOOD (  32.38  )
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

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
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

 .../platform/synopsys/hdmirx/snps_hdmirx.c    | 271 ++++++++++++++++++
 .../platform/synopsys/hdmirx/snps_hdmirx.h    |   8 +
 2 files changed, 279 insertions(+)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
index 9cceffa..8636944 100644
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
@@ -2650,6 +2666,253 @@ static int hdmirx_register_cec(struct snps_hdmirx_dev *hdmirx_dev,
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
+	 * 0 in register bits [7:0], so byte-swap each word to line the bytes
+	 * up: CTS is packet bytes 1-3 (PKTDEC_ACR_PB3_0) and N is packet
+	 * bytes 4-6 (PKTDEC_ACR_PB7_4), 20 bits each.
+	 */
+	acr_cts = be32_to_cpu((__force __be32)acr_pb3_0) & 0xfffff;
+	acr_n = (be32_to_cpu((__force __be32)acr_pb7_4) & 0x0fffff00) >> 8;
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
+	hdmirx_dev->audio_fs = fs;
+	hdmirx_dev->audio_clkrate = fs * 128;
+	clk_set_rate(hdmirx_dev->audio_clk, fs * 128);
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
@@ -2701,6 +2964,7 @@ static int hdmirx_probe(struct platform_device *pdev)
 			  hdmirx_delayed_work_hotplug);
 	INIT_DELAYED_WORK(&hdmirx_dev->delayed_work_res_change,
 			  hdmirx_delayed_work_res_change);
+	INIT_DELAYED_WORK(&hdmirx_dev->audio_work, hdmirx_audio_work);
 
 	hdmirx_dev->cur_fmt_fourcc = V4L2_PIX_FMT_BGR24;
 	hdmirx_dev->timings = cea640x480;
@@ -2769,6 +3033,10 @@ static int hdmirx_probe(struct platform_device *pdev)
 						       V4L2_DEBUGFS_IF_AVI, hdmirx_dev,
 						       hdmirx_debugfs_if_read);
 
+	ret = hdmirx_register_audio_device(hdmirx_dev);
+	if (ret)
+		dev_warn(dev, "failed to register HDMI audio codec: %d\n", ret);
+
 	return 0;
 
 err_unreg_video_dev:
@@ -2788,6 +3056,9 @@ static void hdmirx_remove(struct platform_device *pdev)
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
