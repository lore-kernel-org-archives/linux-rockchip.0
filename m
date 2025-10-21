Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4832CCD1A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 15:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aRWkdZfz3Uzk2OQfIoKxo3QEJttijYpyxNgWi3aT1Fc=; b=gnaCUm/J41P3bX
	v6jqLenyeJ1Q8QxAApShsHqcC9OZLAtVfRov6G4npazUdS7S8rIJkz00UCFs3+kOG1//fcQL+Q5Lc
	8g6l9mbixO03fENC+KBZTe9VZMRL8ZnnaLHeqhDKNZ26MnSvz4pQHmwu8KN8W2tJt4uajzHRFrxKW
	Z8YFg6q/i6kii6vjjPLeIKBocem1Kqa7aoBncl+YLg/fbsb28DIWJa9e3ltd9D9KhLP2Sn3ISRHii
	oKj6cwUbRPWx12LagCWWEPZkHShRsG1zjLNOKlI6NQkA+BjRlkC6pts/ZtTNIxYeXzQlhSW/TD8mF
	SGPmMIP+PAAjP6OW/3+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECZ-0000000HTxN-1VFa;
	Tue, 21 Oct 2025 15:23:07 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECW-0000000HTvq-12v8
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 15:23:06 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b3dbf11fa9eso1092815366b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 08:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060182; x=1761664982; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TMVheGalK8FFbFn0JWrh/VoA/5vQNhUL74QB4lSqKMU=;
        b=NvpKf4RvhKM3QECMcZTYZmseiWc/jMeGp4cTacRtJ33/YeqgNHGF2RW4KC6wmuABwL
         a/kFCrnF/B68h+Mj4a9j5L8nCpwcrTB3Wa0IFddFCC7pbfG8ZJE/AjhJDdbEzNvUiB3R
         H+UkbLcGelcORQesEFGAhP/Z76lvqGAInSFykVZmCQDkp8a0N0eo6wjmntI30jDC5/DS
         zuR9XkWCmADQau7rm3KjSNEZ1pOYSBEmYGQ0VjXH3C3nRvUPZzQ14ooMygG7EgWJpRni
         PFeg5Rd86bjeDLA34xEMwuDDb4x7IwXvydqqniaNbgH53CnFfigAnoSQcp+2YJM6Wkav
         jGpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060182; x=1761664982;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TMVheGalK8FFbFn0JWrh/VoA/5vQNhUL74QB4lSqKMU=;
        b=lhWn/wcNQlMzzusDxHQvspghcSA5UyGhbVMfDDCdht1gmiGOhRxV4iy1TjYOneHqj0
         P2QXdoeHI2sJR8wXajk3LKuuOZY7C0BeaMM2iuVMWuL/8TYB9syO1cByeiOQFmOKx+Uy
         YnRQp6/YV/6Cim2yz2gcIhuYrFka8Y+kxCqqyiJPBBf5arICyeoZLvj9+L/5mOypDIzo
         YRVcBO3p4PKCwzm2yxar4HJ0VIBuklXcxBu40nZRuONEJW07JQyqDWYR8OCz9sLSAWtV
         ym/k0eQigWbSKuYdfp1DRuXLybfbsnKEdfsVMm3wjVvzAonSU7kYlSkeQhxs5FP/XHwu
         IsBw==
X-Gm-Message-State: AOJu0Yzlzo8WSBoa/IvUYKkp/jKftolFF/WhOp4r7C2Zr9FjzRsqPVoZ
	OL6CC9wTD1X78RhVgm0+7VqG8SeCzj/NVr7h1uYU2rjTjkv9l6BHlk//+hsoALXc
X-Gm-Gg: ASbGncsx3dunK9qZe8Po4PldfWWJS/AMPCZHo+/aSiMWLXoF2HTndjjsI4umll1xmtk
	IC6sckI45aTuFW8r9tU/ZyuSBN049lTVYB3O+FW3Q5LjX+RR85G+P0pxruX3oOR0HP2jcfm6KzG
	lxE7KDZCBLgWHhNyA8H93Rn+MZVixCS8SZGoaTU9eftr8ExLkr0azmm5ZCGq8jdOSsIqM5ng7wf
	vI2V8BaS9B0Hfl0Rxp5I89iKZe2zlcNmLhLgNibLHfONd+gcfNhT7L4IvjgNBSGkxgrK1Csjhst
	S3FeADeaREU20nolazTzsNneZ8DqUnVuCl77BHjygd3u0DNtGX+uQb9B6BZ57QMsA3Xac0hYHeP
	0+XgtU9jXmzNE1cZvygUrL9xMayOTvEl0ykN7C62eCyQtZzc4zSUgJZ/d5DbfPcWyKwpMuG5RVb
	622rpwY1pxU/om8v9U8TxZdyQGujpmM3awaW2/vQ==
X-Google-Smtp-Source: AGHT+IFjAc5AXcoHcQ988nnPs6wGFM+kl8yEEIE8fwdc9oeO900YlPPXdG3f/j1Bm9ul8xq81jy+LQ==
X-Received: by 2002:a17:906:fd87:b0:b07:c5b1:b129 with SMTP id a640c23a62f3a-b647195b8c3mr2176066166b.1.1761060181709;
        Tue, 21 Oct 2025 08:23:01 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:01 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 0/5] Add Khadas MCU and fan control support for Khadas Edge 2
Date: Tue, 21 Oct 2025 17:22:40 +0200
Message-ID: <cover.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_082304_293768_028E2B5A 
X-CRM114-Status: GOOD (  13.73  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

This patch series adds support for the Khadas MCU and fan control for Khadas Edge 2 board.

The first patch updates the device tree bindings to add new "khadas,mcu-edge2" compatible for Khadas Edge 2.
The second mfd patch removes unused nvmem code.
The third patch adds the Khadas Edge 2 registers to the mfd driver.
The fourth patch adds support for Khadas Edge 2's new fan control registers to MCU thermal driver and the last one adds the Khadas Edge 2 device tree node for the MCU and fan control.
And the final patch adds the Khadas Edge 2 device tree node for the MCU and fan control.

Changes in v3:
- Renamed the compatible "khadas,mcu-v2" to "khadas,mcu-edge2" for Khadas Edge 2.
- Renamed KHADAS_MCU_V2 registers prefix to KHADAS_MCU_EDGE2.
- Used of_device_get_match_data instead of of_device_is_compatible to identify the MCU variant.

Changes in v2:
- Added a new compatible "khadas,mcu-v2" for Khadas Edge 2 instead of cooling-levels property in old variant.
- Added Khadas Edge 2 registers with KHADAS_MCU_EDGE2 prefix.

Muhammed Efe Cetin (5):
  dt-bindings: mfd: khadas-mcu: add new compatible for Khadas Edge 2
  mfd: khadas-mcu: drop unused nvmem code
  mfd: add Khadas Edge 2 registers to khadas-mcu.
  thermal: khadas_mcu_fan: add support for Khadas Edge 2
  arm64: dts: rockchip: add Khadas MCU and fan control nodes

 .../devicetree/bindings/mfd/khadas,mcu.yaml   |  5 +-
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 58 +++++++++++++++++++
 drivers/mfd/khadas-mcu.c                      | 58 ++++++++++++++-----
 drivers/thermal/khadas_mcu_fan.c              | 20 +++++--
 include/linux/mfd/khadas-mcu.h                | 32 ++++++++++
 5 files changed, 153 insertions(+), 20 deletions(-)

-- 
2.51.1.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
