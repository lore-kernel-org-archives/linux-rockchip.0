Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B4BCE7AFC
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ryq63nYzcr8KWZUATJg4dXzHrfMNvbMWyED1vkAJcE0=; b=mC+APY7G3Lw+iR
	myimT9nHYg/dgP+uO8lhPWshvCPblL9VVbibbNjUDz72uACwlgfQ1EVFvLZ43mWRHHKaUe38uRXsX
	dlT9CRNJJxpCVoVr0Xg8Xi2/8opkfc527U+3dVHCH0gFkSgNkEfQdJzbXG7yHYIFS5InWcO34/ile
	Kc87VR675osZsNBA+2T0NiH6fbHD5qDts/f2Y3x1x3a3U1ikq2hrcPBnAcw6AYVTHfXJlEvOS62Bk
	MCOH5R+CIbtiXB+2ppefd7+HSzRr/mjJ5qGXyq963N7P9kv4mJCg0Lhmo8Ns9vBYpyGi7/oMEaBh0
	NA3aLzgtoHqulA/Uk2Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVXN-0000000Bab7-3qZz;
	Fri, 06 Sep 2024 09:45:53 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPi-0000000BXeU-0ayO;
	Fri, 06 Sep 2024 09:38:00 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 1447F789FD;
	Fri,  6 Sep 2024 17:37:42 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 1447F789FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615473;
	bh=tyBtwkNnhg6jrvb3pwGGUkiw4PdPR9/Ska2BS2U9HwQ=;
	h=From:To:Cc:Subject:Date:From;
	b=drSg8FhkBGDvt0ogiXR5j9FZTpSiNbJJ0Vg4jDlDzlUVLImcJFq6oI7EFl/IyaB6Q
	 UI4/HSsbUgIfntf02tMCCIX6gZHsoPotBcIOKeo2h08l6hD4qIF7a9GNG0udfQ9mGu
	 E1L9SlY3LJFxoFLLIej8DpWdiqUQsUeClziaoHZE=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>
Subject: [PATCH 0/9] Introduce Photonicat power management MCU driver
Date: Fri,  6 Sep 2024 17:36:21 +0800
Message-ID: <20240906093630.2428329-1-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023758_833466_19158C8A 
X-CRM114-Status: GOOD (  11.51  )
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

Initial support for the power management MCU in the Ariaboard Photonicat
This patch series depends on Add support for Ariaboard Photonicat RK3568 [1]

Currently implemented features:
  Implement serial communication protocol with MCU [2].
  Support watchdog in MCU.
  Shutdown by power button and system notifies MCU to power-off.
  Read charger and battery supply voltage and simply calculate capacity.
  Read board temperature sensor.
  Set status of the network status LED.
  Read and set the MCU real-time clock date time.

[1] https://lore.kernel.org/linux-arm-kernel/20240906045706.1004813-1-bigfoot@classfun.cn/
[2] https://photonicat.com/wiki/PMU_Protocol

Junhao Xie (9):
  mfd: Add driver for Photonicat power management MCU
  power: reset: add Photonicat PMU poweroff driver
  watchdog: Add Photonicat PMU watchdog driver
  power: supply: photonicat-supply: Add Photonicat PMU battery and
    charger
  rtc: Add Photonicat PMU real-time clock
  hwmon: Add support for Photonicat PMU board temperature sensor
  leds: add Photonicat PMU LED driver
  dt-bindings: Add documentation for Photonicat PMU
  arm64: dts: rockchip: add Photonicat PMU support for Ariaboard
    Photonicat

 .../hwmon/ariaboard,photonicat-pmu-hwmon.yaml |  40 ++
 .../leds/ariaboard,photonicat-pmu-leds.yaml   |  41 ++
 .../mfd/ariaboard,photonicat-pmu.yaml         | 107 ++++
 .../ariaboard,photonicat-pmu-poweroff.yaml    |  34 ++
 .../ariaboard,photonicat-pmu-supply.yaml      |  55 ++
 .../rtc/ariaboard,photonicat-pmu-rtc.yaml     |  37 ++
 .../ariaboard,photonicat-pmu-watchdog.yaml    |  37 ++
 .../boot/dts/rockchip/rk3568-photonicat.dts   |  43 ++
 drivers/hwmon/Kconfig                         |  10 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/photonicat-hwmon.c              | 129 +++++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-photonicat.c                |  75 +++
 drivers/mfd/Kconfig                           |  13 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/photonicat-pmu.c                  | 501 ++++++++++++++++++
 drivers/power/reset/Kconfig                   |  12 +
 drivers/power/reset/Makefile                  |   1 +
 drivers/power/reset/photonicat-poweroff.c     |  95 ++++
 drivers/power/supply/Kconfig                  |  12 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/photonicat-supply.c      | 250 +++++++++
 drivers/rtc/Kconfig                           |  12 +
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-photonicat.c                  | 190 +++++++
 drivers/watchdog/Kconfig                      |  12 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/photonicat-wdt.c             | 124 +++++
 include/linux/mfd/photonicat-pmu.h            |  86 +++
 30 files changed, 1933 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/ariaboard,photonicat-pmu-hwmon.yaml
 create mode 100644 Documentation/devicetree/bindings/leds/ariaboard,photonicat-pmu-leds.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/ariaboard,photonicat-pmu.yaml
 create mode 100644 Documentation/devicetree/bindings/power/reset/ariaboard,photonicat-pmu-poweroff.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/ariaboard,photonicat-pmu-supply.yaml
 create mode 100644 Documentation/devicetree/bindings/rtc/ariaboard,photonicat-pmu-rtc.yaml
 create mode 100644 Documentation/devicetree/bindings/watchdog/ariaboard,photonicat-pmu-watchdog.yaml
 create mode 100644 drivers/hwmon/photonicat-hwmon.c
 create mode 100644 drivers/leds/leds-photonicat.c
 create mode 100644 drivers/mfd/photonicat-pmu.c
 create mode 100644 drivers/power/reset/photonicat-poweroff.c
 create mode 100644 drivers/power/supply/photonicat-supply.c
 create mode 100644 drivers/rtc/rtc-photonicat.c
 create mode 100644 drivers/watchdog/photonicat-wdt.c
 create mode 100644 include/linux/mfd/photonicat-pmu.h

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
