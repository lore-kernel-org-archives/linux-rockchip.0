Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A535C3DA61
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 17:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HZPYr6e1xiFNrBD9F4hAvLU5+dLFHRqwhfloLUU/Pwg=; b=xhTrSHJuBgIwW4
	kw9F04Cf7uxIHOJJuYnggzZAbMAVewcTZAvl9gPClKxFDGZ/zgLZMD2xT/N3/esHu3i9a6TReD4mA
	x0XHCbOHAsMOJpwuM9esRG6PQUo5mZG9d9WK4xwJfJSgxwWmVNPFMsyhPFmeivwBPQNGZ9KnFQYw2
	GFy+lqmJxnJW4+uuZjlrqncMkYXZYZ0DiFjgteHzGGoG1fdAoYWjgfmo7Yc/uKx9di9mbSv7r42tM
	AGjq16xt6ogDuBI5HMYwQzKme9VYwcH2rxdvnUbjUlJbvecL0yVxt0X/1EsZEwuVoayxPMpc7iw2R
	7UrJZ1hcC82N2cHdQUcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVaY8-00000007GOR-1bUm;
	Sun, 21 Jul 2024 17:40:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVaV1-00000007F0X-2wyZ;
	Sun, 21 Jul 2024 17:37:36 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVaUz-00075D-7P; Sun, 21 Jul 2024 19:37:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/14] Expand available features on Qnap TS433
Date: Sun, 21 Jul 2024 19:37:09 +0200
Message-Id: <20240721173723.919961-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_103731_781768_461F1219 
X-CRM114-Status: GOOD (  16.09  )
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

Thanks to the nicely supported rk3568, the hardest part for adding things,
is to pull things from the vendor-kernel and translating them to mainline
standards.

This series allows the TS433 to use all 4 bays [0], wiggle some LEDs and
access devices connected to all 3 usb ports.

The device runs stable now and might be usable for actual usage.

There is still a todo-list though:
- the ethernet mac address for the realtek chip seems correct,
  but the gmac0 interface currently uses a wrong one
- i2cdetect reports devices on i2c-1 on addresses 54,55,56,57
  model_Q0B20_Q0B30_10_10.conf from the original rescue image labels them
    VPD_MB = I2C:0x54, VPD_BP = I2C:0x56
  the meaning currently being unknown. Some eeprom maybe?
- The regulator tree is slightly dubious. Everthing seems to follow rk3568
  reference designs, but especially the regulator labeled vcc3v3_sd
  seems to supply some PCIe functionality. So I guess the device's
  schematics will look quite different than the regulators added to the
  vendor devicetree.
- Quite a bit of functionality is provided by the MCU connected to uart0.
  According to the model.conf there should be fan-control, a number of
  additional LEDs (status,locate,usb?)


Thanks to Qnap engineers adding an easily accessible header for maskrom
mode on the board, replacing the bootloader is also quite a breeze. A
branch on top of today's u-boot master branch can be found on [1]. I'll
submit that code to u-boot once I can cherry-pick the dts patches.


changes in v2:
- add patches for tsadc, gpio-keys, cpu-supply, pmic, gpu and io-domains


[0] I only have two drives right now, but I tested both the internal
sata connector as well as the PCIe connected sata controller in different
combinations.
[1] https://github.com/mmind/u-boot-rockchip/tree/dev/qnap-ts433/v2024.07


Heiko Stuebner (14):
  arm64: dts: rockchip: add PCIe supply regulator to Qnap-TS433
  arm64: dts: rockchip: enable second PCIe controller on the Qnap-TS433
  arm64: dts: rockchip: enable uart0 on Qnap-TS433
  arm64: dts: rockchip: enable usb ports on Qnap-TS433
  arm64: dts: rockchip: add stdout path on Qnap-TS433
  arm64: dts: rockchip: enable sata1+2 on Qnap-TS433
  arm64: dts: rockchip: add board-aliases for Qnap-TS433
  arm64: dts: rockchip: add hdd leds to Qnap-TS433
  arm64: dts: rockchip: enable the tsadc on the Qnap-TS433
  arm64: dts: rockchip: add gpio-keys to Qnap-TS433
  arm64: dts: rockchip: define cpu-supply on the Qnap-TS433
  arm64: dts: rockchip: add missing pmic information on Qnap-TS433
  arm64: dts: rockchip: enable gpu on Qnap-TS433
  arm64: dts: rockchip: add 2 pmu_io_domain supplies for Qnap-TS433

 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 539 +++++++++++++++++-
 1 file changed, 536 insertions(+), 3 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
