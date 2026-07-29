Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36C0AC54F52
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vym/UGSLaRGa5ha/3bluui3x9lIIweAuskH0bDq/yNY=; b=nlHHiGLvhCkDAn
	HE1q9RJD8jH/pjpHWdOchagUHRnq5f9D+Nd18N/QwRNgbzIgi557RR9hyd9R5gGU7A4iOqglyiStx
	XRSEPDWvkafn67Q6ExOoVHd30Q6PsdGVxAi6iKzJpHDJhdVRn7Bjuw6nfEuB+t68isUF11Wud9Ko7
	/XPFji9SfOBHQB0/JXT1ozIVErsMgLjaaCaWo6orZ1TbJHE5G/UvaJ47DMttN4LktaMz9LzuNQxZ+
	B+tzWbuef+y6CdFOIwar7IBlDJ5cmx2wzVVO5WjNPIExK8+olXgDwikGpc0c9cH/DeUpzlXVE57d1
	ojVgJ8NpN+B6hPfluI3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4MU-000000086Rh-3sGy;
	Wed, 29 Jul 2026 13:30:18 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp4MT-000000086Q8-0hWu
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:30:18 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7f0167e59a3so221723a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785331816; x=1785936616; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EaOPNvMsi1Oyj1Rb1H3YB9cT3SaYqM0H52mnkJ9+dKo=;
        b=K240V/6ihX4MnoTPIqIZiqvBDnqqgECeA52/kGLfT44xzLorZZdQFHfvjoBb6MMWGZ
         FEuWcTXxtHhrZ9a2vXoNib53bAxv4hVf0IRUxAfUAkmN38nj/BqkL2+0eGq8/u5nqh0m
         +5Jne/RSFTZGnoKW3x+zhoUzzQRku8P5okUWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785331816; x=1785936616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=EaOPNvMsi1Oyj1Rb1H3YB9cT3SaYqM0H52mnkJ9+dKo=;
        b=sySd9cQ6gAvEHXvXMvxN7J3GDIUf64SnfcTSj8oyTiDnxgP7ip4SSD06Quf5+NAHSM
         SQ+PlX4neiaHBsNp9CPC9P3Xk4k4NOfJ+DZD3BWUKFm8qqM6Je2rJm+IcfIu6whXP4fL
         uOG8+ALc1O+dFqHffzn+aeYUD8zbO97nBpCRSE1KhFUfZ5xIIvvkvvc7zT2pZcSKVpha
         o/GcnU02gyO+H4l7nys39TaAqn03JrsAgkEaPvlr4uFL/2vmn7EoZxz3iorrCG/ctPDO
         LdIJXjHjS55TGpmGHJXquIy+LqiFoDxN5UVsTgREvCj9HrcJhdXZ79L1Pyy/jpOAxNyu
         oxqg==
X-Forwarded-Encrypted: i=1; AHgh+Rpri2dfnpHK2CoVbrwGScRW5500EVZC5zNIrT5ANYLCbxhKT2yTQNMymi6t0KADBOdhZ3TRsaWtAZ91GNXuzQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyU7bgdQFSxjCgbFhllO/2XA2gFzW8lO0cv/HfHwvji+BKb8DyZ
	yoC3oWqaEG+26HWetoy4683046QGKMdnqcRTjazGsajpOEDoHCcW1qgjbe3HmZHKCg==
X-Gm-Gg: AR+sD109m8XC30VxHxHbU61RliNk28LWuX9tqd3DWY/fmN4QAqYASCcpAgz+e9/JmWB
	mMZ0F3HXxDgxYQn59fN+RrPZtNFt8PdP3AEfHunmu9qwLnWVzgLqjirS1EjeftFHUrFEKaHXHnS
	xsZHt9dVL4G2c5RhuSB48BPAKAZUeCfWyLDO4Yw9wxsQLlHye95uTYHYSyHhlUgkP3I/EzrE2Zh
	4XHs95mpAzeYXbx67d1nJR4DD1xzDOWeMkWi0UL9GeDvIvQTlbhFNCi+ec1tAM3lgYE1qsT9xs/
	jQgcgzH0wjL/7k12Qfu+aslnnHfXrz03vs97vcvW3mUQ0o1JadkZIryVk95vXyVh54Cd9TW6K6v
	ma4YqA2GIB+Bdj5YzB0PZRJ8AUSPx6UhV/6thg3CV0nGkyla/yiyAgCy2alVwW3UREYhGv0g288
	6+B1e9p/mZui7ZLz4cFOqeOYqqyl2wrW2o07E/95oLLXFdr/t35UZdcUM=
X-Received: by 2002:a05:6808:ec9:b0:494:9c17:c336 with SMTP id 5614622812f47-4ad5bd54593mr3466258b6e.34.1785331816049;
        Wed, 29 Jul 2026 06:30:16 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ad6ef5d650sm1712932b6e.9.2026.07.29.06.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:30:14 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Ye Zhang <ye.zhang@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/4] pinctrl: rockchip: Decode drive strength in the get function
Date: Wed, 29 Jul 2026 07:27:25 -0600
Message-ID: <20260729132736.3807082-2-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260729132736.3807082-1-sjg@chromium.org>
References: <20260729132736.3807082-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_063017_217753_7DB2FA98 
X-CRM114-Status: GOOD (  14.35  )
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

The decoding of the 2-bit and 8-bit level drive-strength values sits in
rockchip_set_drive_perpin(), where it is unreachable: the SoCs whose
banks declare these drive types (RK3506 and RV1103B) take the early
ctrl->type branch in the set path, and the read-and-decode logic in a
set function has no purpose. Meanwhile rockchip_get_drive_perpin()
lacks the decoding, so pin_config_get() and the debugfs output report
-EINVAL for these SoCs.

Move the two cases to rockchip_get_drive_perpin(), where they belong.

Fixes: dbd2317d7b9f ("pinctrl: rockchip: Add rk3506 pinctrl support")
Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v3:
- Add new patch moving the drive-strength decoding to the get function

 drivers/pinctrl/pinctrl-rockchip.c | 38 +++++++++++++++---------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 7e0fcd45fd26..08a46a04a815 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3267,6 +3267,25 @@ static int rockchip_get_drive_perpin(struct rockchip_pin_bank *bank,
 	case DRV_TYPE_IO_1V8_ONLY:
 		rmask_bits = RK3288_DRV_BITS_PER_PIN;
 		break;
+	case DRV_TYPE_IO_LEVEL_2_BIT:
+		ret = regmap_read(regmap, reg, &data);
+		if (ret)
+			return ret;
+		data >>= bit;
+
+		return data & 0x3;
+	case DRV_TYPE_IO_LEVEL_8_BIT:
+		ret = regmap_read(regmap, reg, &data);
+		if (ret)
+			return ret;
+		data >>= bit;
+		data &= (1 << 8) - 1;
+
+		ret = hweight8(data);
+		if (ret > 0)
+			return ret - 1;
+		else
+			return -EINVAL;
 	default:
 		dev_err(dev, "unsupported pinctrl drive type: %d\n", drv_type);
 		return -EINVAL;
@@ -3390,25 +3409,6 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 	case DRV_TYPE_IO_1V8_ONLY:
 		rmask_bits = RK3288_DRV_BITS_PER_PIN;
 		break;
-	case DRV_TYPE_IO_LEVEL_2_BIT:
-		ret = regmap_read(regmap, reg, &data);
-		if (ret)
-			return ret;
-		data >>= bit;
-
-		return data & 0x3;
-	case DRV_TYPE_IO_LEVEL_8_BIT:
-		ret = regmap_read(regmap, reg, &data);
-		if (ret)
-			return ret;
-		data >>= bit;
-		data &= (1 << 8) - 1;
-
-		ret = hweight8(data);
-		if (ret > 0)
-			return ret - 1;
-		else
-			return -EINVAL;
 	default:
 		dev_err(dev, "unsupported pinctrl drive type: %d\n", drv_type);
 		return -EINVAL;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
