Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56660C5AC7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 11:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7k7epiI/LuthYpDPhHpCB9PVVBm02FwRruUkbOAu7c=; b=JerVbC4wZzmZ6j
	MRXoVFOoCwQsyxw3RVICuD8CUtXun9fkp3U4+KBBhkIlzciW51kQv9ds/rfwhqkY7Mojwv9Lwa3fu
	pHcZxVEbgVdzKHFYsGdwrM58ltXbpWRHU+rS0mX37XHnbKr+l8Q6zTBCiRedV/yn2/G/VZmKcyIUH
	m1RD+MST3Vq9hzkSMUTdyh78vuXOTTz2MaTRoShJm2iuW2CgfneAX+8LErZGAdUpc0rETLT7q7YHD
	qx0xtj7muYOcjFTYdToRxvUW/Tg+IpZdVSsGWClKWBPUa7u+9IOZyTotLZgjj0/OV/HFc8olgYnq9
	Q85OftDfoPpjlSi1XyLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsIh8-00000007rkZ-1InS;
	Fri, 07 Aug 2026 11:24:58 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsIh0-00000007rfM-3T6l
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Aug 2026 11:24:56 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-8485bd28dd0so3654404b3a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Aug 2026 04:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786101890; x=1786706690; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=M5riwbZHq+AMgQ552tOielo/7w+UwrIhHqPxa46W+qA=;
        b=appvmyxhbFnqO1J7bfMi3WNv/rYpzKVg6uPGhOkoPRV27VxMaHhTyZMQ2XY9JZ1nWY
         8RdXsqw1jOKVafWKsbLa2nfv/UKtCpmDGyYFNZKQeHjk9qiyfh5VCQuWDqggdnqG/jOf
         ant/pku/HVUO6zflFiG6aqgkOlTMrwtoSKqmjdMIiH40a9WLKZ4DnAo0/O1gC4bZGaMd
         phNxEBqCZ9ZM/KjRwOgz6QctRdYBiaEIZttwL1Nin1859OCVoi+Nh/ArBgTZOTxO2LLh
         2zCT68LWT+RggeebYBTDl5MwQhMwy+p1u1Eb3rtZonEz86ScTbmnBRX/yQmxii66IEc4
         cQ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786101890; x=1786706690;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=M5riwbZHq+AMgQ552tOielo/7w+UwrIhHqPxa46W+qA=;
        b=ELv8q89AvjHCktZgrjPoo8nEMDusI5n1FaKp3XJ9wt2qyWh27/N/BECIAoRvVOZ4JP
         0/EnAQQAp80vclrw0U33ri7FQKtw1qvS5rG7KICU9pxT24uoirS0CM8uPFRUe6o4vyGI
         4kmS7fhuEyiwPbmwutyqe0GzpGgGB/igqec7Jdm66np3qepQJsAzaesjFCKvoqaSCBAq
         Dyq0btS5cDspE7jdW/tONZhPxQIDh2ZggeQWrvv9p0oJQwID5np50HMtrurdE7zBsh9f
         g4+/XwTmSHXsbln5avep9l0aonIwWsfKR4P9uBZM6XdwGJtCgsWiRlYDT5pKZGx9glQK
         uiSQ==
X-Forwarded-Encrypted: i=1; AHgh+RpNZHLk1W8TnwfcDNm1+0Im4QdxXFItHw2sKZz/5Nv1B9PZ2I/a4KREJln3N4k/Y9zSgmB8LVF2zXRZFMxcog==@lists.infradead.org
X-Gm-Message-State: AOJu0YxM0czzd4aitc37matx2VqQRpI11OhR5wVNL3IJWFKVTSME+lNY
	7Ui+v7INwODCYXwvkHZdYaMmfBy/9Wf7OO4MQYk/5Nic+yNxMfrdThwY
X-Gm-Gg: AR+sD10+2f0KMrIzXD5XsJjB+YKiDg9dv3SgS2w04pFOXyTd5FJp2KUAvrsXvHQ8cAN
	tqDi+BYmEZMTCwJBTLkeWSH6zUb2A0Xh00ae4YgzvYsgGRomQKC8e73fAGM8srBDrO97hUlEIkJ
	SehPURnD2ofKNJJR5sa6QN1wumXV+e737xZ1T0e1kCOYkeC6RkYuJGwpscVWSUE7FiuBzPZB2Yg
	Q4vkwKh40y0fSs2ob9LbpjDoRsQXD77Ksw+lQ3gSQ6s+aNrZWDgCI4z8SwwUImL6EIOYP0/CLxD
	TdUgMkhzyN2cuDmdVcf+rCgwDcoPz0T+xnVk8JEZgoQGgpIqEyPBrRZGopgGW3Cho5Nku3RfSZR
	+foyX+wR9JZrVFgQEfq2q05yNjcO3lDGT8JMwrwmkENJPf5ycjVkgDe8okNQWMXWpfTC8vVLDS0
	U5WNZ2Bjb2qVxybgqd/MHNAe/akUMN7jKqycPhO+D/FP4IlWvzOuMs2IVPePj8azMSoFqzem3ub
	AQtSKZ0hqK3Gi/r3lzA+WMLz38q+ht/SmhaHg==
X-Received: by 2002:a05:6a21:46c9:b0:3b1:882a:607b with SMTP id adf61e73a8af0-3cb85e6c917mr25902715637.22.1786101889728;
        Fri, 07 Aug 2026 04:24:49 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:e1cd:daf4:8fac:b7e6:4f37])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1410199bfd8sm6349351c88.2.2026.08.07.04.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 04:24:49 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Fix the BT clock-names on rk3399-leez-p710
Date: Fri,  7 Aug 2026 08:24:32 -0300
Message-ID: <20260807112432.49685-2-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260807112432.49685-1-festevam@gmail.com>
References: <20260807112432.49685-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_042450_884624_8D3BF6CC 
X-CRM114-Status: GOOD (  10.96  )
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

According to brcm,bluetooth.yaml, the correct clock-names to describe
the 32768kHz Low Power Oscillator is "lpo".

Change it accordingly to fix the following dt-schema warning:

clock-names: 'oneOf' conditional failed, one must be fixed:
        ['ext_clock'] is too short
        'extclk' was expected
        'txco' was expected
        'lpo' was expected

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Use "lpo" name instead. (Sashiko)

 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 2cdc2013c320..c449eaa84edc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -588,7 +588,7 @@ &uart0 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
