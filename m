Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 509D4CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 21:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/bIp0eSX3fYi32Na4Kek+f31MacANlcDe0O+fVeRxfY=; b=4YUHlp90hokEZP
	d9CxpDxGejRAetxxFK5Rr1fxf0RdXKsFyfafPqDOfYX/+8gtUw5Gd0XKnsbupoFGhPWsVUPHXTrDZ
	kKTO/yXv6nvjiP8CCjzV82LZtPzRtveqH7IMh6XUU6ihdZ/ZbfWpiRtoGp8YF/AAP6sW5vD9m2b2K
	IdwrKg3PkLT8awc8MJJ1RvSeXkH94Q4GRmE5ucmzFxrbjhxd5PMvkwsxZwq0KTVNzyJoB2VQ/5xiV
	Lln075f4KmgTgF7rnGCf0OsqWvQkNkQ5v1O5Z5ioEHMrtoTZSD/4oJDogYHKSny2MCI/C5XOOipgv
	bRYiaSH2Yl8f79KgcPcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPEN-0000000HU0Z-28HL;
	Sun, 08 Sep 2024 21:13:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPAM-0000000HSyl-31Yg;
	Sun, 08 Sep 2024 21:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bJYmi9c9oz6tm2pyzXmgxUUZvpQmzK+TNH7qhaJHuP4=; b=nxes8+Mgd1KylK6uEjYsusu31I
	NX+wkjgMwadO2am6zoSRtvJtFs/e2I70OooJHgTIQCJc7Yfl5tgFVpoUslKegImmDcKAVvWT7i10Y
	9nF0miCzg1xB+PlbrEHLPHp6sqxwhYRJY8oykOw3SHC5W9JuMQLIPyU6FIFeWD1ANAlSdbnX7lnu4
	le4J30MmN0b8iWCS8P9kI+sLk0msBiHgwcSWnXTAW25ZKff6eQoMkbVLTb3uOR2s0djSN766CC5vT
	5jWNstERwHC5CzBfAru+jRxMtNvlXN+T99G3xi7D5IJ6fh31i5Ap1iP2PJUstBsL4RIRHnZsYk1ss
	Wz6I04UQ==;
Received: from i5e8616cc.versanet.de ([94.134.22.204] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snPA0-0003s9-8T; Sun, 08 Sep 2024 23:09:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org,
	jikos@kernel.org,
	jic23@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	srinivas.pandruvada@linux.intel.com,
	bentiss@kernel.org,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-leds@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v8 0/9] Drivers to support the MCU on QNAP NAS devices
Date: Sun,  8 Sep 2024 23:07:54 +0200
Message-ID: <20240908210803.3339919-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_140950_796104_7D3B3331 
X-CRM114-Status: GOOD (  26.89  )
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

This implements a set of drivers for the MCU used on QNAP NAS devices.

Of course no documentation for the serial protocol is available, so
thankfully QNAP has a tool on their rescue-inird to talk to the MCU and
I found interceptty [0] to listen to what goes over the serial connection.

In general it looks like there are two different generations in general,
an "EC" device and now this "MCU" - referenced in the strings of the
userspace handlers for those devices.

For the MCU "SPEC3" and "SPEC4" are listed which is configured in
the model.conf of the device. When setting the value from SPEC4 to
SPEC3 on my TS433, the supported commands change, but the command
interface stays the same and especially the version command is the
same.

The binding also does not expose any interals of the device that
might change, so hopefully there shouldn't be big roadblocks to
support different devices, apart from possibly adapting the commands.


changes in v8:
- patch for hid-sensor hub to not do wonky stuff with an old
  platform-data copy
  I hope my reading of the situation is correct here, but that
  initial platform_data really seemed wrong

mfd:
- flush serial before writing a new command
- wait for send to complete before starting the receive wait-timeout
- set expected length to 0 directly when the reply is complete
  not after leaving the receive callback


changes in v7:
- use ASCII representation in commands where possible instead of hex vals
- drop get_variant function and use mfd platform-data instead

mfd:
- a lot of style improvements

leds:
- name variables better (value -> brightness, num -> num_err_led)
- handle preservation of blink mode more effectively
- snprintf -> scnprintf
- drop duplicate "failed to register ... LED" messages


changes in v6:
- format mcu commands arrays in single lines (Lee)

mfd:
- drop obsolete remain kdoc for the removed
  reply_lock (kernel test robot)


changes in v5:
binding:
- add Conor's Reviewed-by

mfd:
Address comments from Lee
- improve commit message
- improve Kconfig help text
- sort headers alphabetical
- style and spelling improvements
- constants for magic numbers
- drop reply assignment, the mcu only replies to commands sent to it,
  so there should only ever be one command in fligth.

hwmon:
Add Acked-by from Guenter and address some remarks
  - don't allow empty fan subnode
  - use num var directly when getting cooling levels, without using ret
    intermediate
  - use dev_err_probe in thermal init function


changes in v4:
binding:
- move cooling properties into a fan subnode and reference
  fan-common.yaml (Rob)
- dropped Krzysztof's Ack because of this

mfd:
- use correct format-string for size_t (kernel test robot)

input:
- added Dmitry's Ack

hwmon:
- adapted to fan-subnode when reading cooling properties
- dropped Guenter's Ack because of this


changes in v3:
mfd
- use correct power-off priority: default
- constify the cmd-data array in command functions (Dmitry)

leds:
- don't point to temporary buffers for cdev->name (Florian Eckert)

hwmon:
- use clamp_val(), don't try to reimplement (Guenter)
- add Guenter's Ack

input:
address Dmitry's comments
- constify some cmd arrays
- add input-close callback to cancel beep worker
- drop initial input event report


changes in v2:
binding:
- rename to qnap,ts433-mcu.yaml (Krzysztof)
- drop "preserve formatting" indicator (Krzysztof)
- add Krzysztof's Review tag

mfd:
- fix checkpatch --strict CHECKs
- add a MAINTAINERS entry for all qnap-mcu-parts


Heiko Stuebner (9):
  HID: hid-sensor-hub: don't use stale platform-data on remove
  mfd: core: make platform_data pointer const in struct mfd_cell
  dt-bindings: mfd: add binding for qnap,ts433-mcu devices
  mfd: add base driver for qnap-mcu devices
  leds: add driver for LEDs from qnap-mcu devices
  Input: add driver for the input part of qnap-mcu devices
  hwmon: add driver for the hwmon parts of qnap-mcu devices
  arm64: dts: rockchip: hook up the MCU on the QNAP TS433
  arm64: dts: rockchip: set hdd led labels on qnap-ts433

 .../bindings/mfd/qnap,ts433-mcu.yaml          |  42 ++
 Documentation/hwmon/index.rst                 |   1 +
 Documentation/hwmon/qnap-mcu-hwmon.rst        |  27 ++
 MAINTAINERS                                   |   9 +
 .../boot/dts/rockchip/rk3568-qnap-ts433.dts   |  61 +++
 drivers/hid/hid-sensor-hub.c                  |  21 +-
 drivers/hwmon/Kconfig                         |  12 +
 drivers/hwmon/Makefile                        |   1 +
 drivers/hwmon/qnap-mcu-hwmon.c                | 364 ++++++++++++++++++
 drivers/input/misc/Kconfig                    |  12 +
 drivers/input/misc/Makefile                   |   1 +
 drivers/input/misc/qnap-mcu-input.c           | 153 ++++++++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-qnap-mcu.c                  | 227 +++++++++++
 drivers/mfd/Kconfig                           |  13 +
 drivers/mfd/Makefile                          |   2 +
 drivers/mfd/qnap-mcu.c                        | 332 ++++++++++++++++
 include/linux/mfd/core.h                      |   2 +-
 include/linux/mfd/qnap-mcu.h                  |  26 ++
 20 files changed, 1310 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/qnap,ts433-mcu.yaml
 create mode 100644 Documentation/hwmon/qnap-mcu-hwmon.rst
 create mode 100644 drivers/hwmon/qnap-mcu-hwmon.c
 create mode 100644 drivers/input/misc/qnap-mcu-input.c
 create mode 100644 drivers/leds/leds-qnap-mcu.c
 create mode 100644 drivers/mfd/qnap-mcu.c
 create mode 100644 include/linux/mfd/qnap-mcu.h

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
