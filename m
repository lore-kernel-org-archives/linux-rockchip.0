Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C04C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 12:17:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B7AC611ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 12:17:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B7AC611ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r70tUOUXHfDZzw/3vqHOkdJyivuY/Ftr78qI/M3anuM=; b=FkpspPIVwdg04i
	jDGfZJ9So3YXMNVYXac6E9wsR09vCMJkjaJ65vYhMWETtafn2POcgDzk+UPXHMhG498GJn/x3A1aX
	jP96KClbvx7FRtySLuCFDIuQfosxQ6dIcpNh5E88hqnUMZd/zSGJ9iTBhVgmloQRRFiz/xZkozeHy
	/P1w0xS+5l6ax8opS7YitMicBE3bppYYgosmwqDENbguiUyGWhlz7TIuYjmP9grnvzcE4lh2dhOrq
	2WS/6v4g7wfeJ9RQZ5JG5jdlEWFc/FcP+dv/j07m2VqD7x8LI58stZxluwD8cDWvuc+vjM2Zrx99k
	/povjSS/HpvDi2vZrlUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luZuH-00Gw9n-Vm; Sat, 19 Jun 2021 12:17:02 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luZu4-00Gw6Q-HM; Sat, 19 Jun 2021 12:16:49 +0000
Received: by mail-wr1-x42f.google.com with SMTP id c5so13892992wrq.9;
 Sat, 19 Jun 2021 05:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DQe8YQsStcqk1cD1S28+TTHEdxD2TLqNRW/Z4azWeuk=;
 b=YEGx+e6GRacfbyS8VMptMWtiVxrRFZhzyco6ZXWAMue5SOAHjKrRthBCCiJkdlGhmk
 9EpFsgPox075qb3KUMBAEgZV52akpFcqSpjIBvQN2LSy5b+Z6nh3/kwLzNvOL/qxrdFm
 lZaZzJt3NId8knxjman5t1NtXAMbMb+OeZ/tsyLgy/HKVFz9XvSWh4/0/4WcH+dmo3Rw
 wg0qdhvwn/b2xXyxjYGBzH91Br22PSCvqvTgW2rvQ+CfRvMK2vNCOLZ/1ELtUoQPZvls
 Er9zIctbuwgH2y9XWK0Dee/0z9wIwq5D5wxRTtPJw7/TW1WA2PO3w5ErtO7Rqcllw31V
 JC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DQe8YQsStcqk1cD1S28+TTHEdxD2TLqNRW/Z4azWeuk=;
 b=uSUopNmC9ynJJF77gc5C+j3yzCRpQdPIEMEXWSGpH4Va2wy8bM/8nWvxyyrWf0j9LA
 9X66aqoLqxQStX3Upeoy9QRJ6AORv7/DaNxIbCHoue6oTfI0XMZUmC3w8LDfXlVq8FbU
 C1kqMY7jZFs0Bw8Uz5RdKTmnyt3AXSLRhVHj5boYqCYfXNnGg9SoXGzVUqxWJNdGX0L7
 FNcCg65N8dK0hYS1KvChD8RNFXl650nGeO2u0LKp8gjbSngn3WTxH3hpZ3blCZJBZhGj
 RjpuMWP8q6acEEIvZfIziTMHPlwWZkd/+u7GuWppZHGv2Wo9VNhQcE8fk0zuIQJ1HIUE
 pv1Q==
X-Gm-Message-State: AOAM5336PFSBR+BT4WepPx+5kmQKcDhotH+OOlLx9w31ifyoneYEwUYY
 rFA8b2YmkqWHCUwN5rDZwA==
X-Google-Smtp-Source: ABdhPJzKu0kW9K0mVhxN6vSOZcgtByR6/WHrgGG9wKhpU4Qv7ttMhuYoZL5xGpry0bRusw0fSaZHHQ==
X-Received: by 2002:adf:9bd0:: with SMTP id e16mr17497735wrc.392.1624105007127; 
 Sat, 19 Jun 2021 05:16:47 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id f19sm5249790wmc.16.2021.06.19.05.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Jun 2021 05:16:46 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: add ir-receiver for rk3399-roc-pc
Date: Sat, 19 Jun 2021 14:16:42 +0200
Message-Id: <20210619121642.7892-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_051648_607154_DAE2CCD5 
X-CRM114-Status: GOOD (  10.99  )
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

Like some other RK3399 boards RK3399-ROC-PC has an ir receiver
connected to pwm3 which can be used as gpio-ir-receiver.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 8b27ee4be755..d1aaf8e83391 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -63,6 +63,13 @@ power {
 		};
 	};
 
+	ir-receiver {
+		compatible = "gpio-ir-receiver";
+		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&ir_int>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -604,6 +611,12 @@ pwr_key_l: pwr-key-l {
 		};
 	};
 
+	ir {
+		ir_int: ir-int {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	lcd-panel {
 		lcd_panel_reset: lcd-panel-reset {
 			rockchip,pins = <4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
