From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Subject: [PATCH v2 0/1] ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron
Date: Wed, 27 Nov 2019 14:39:08 -0800
Message-ID: <20191127223909.253873-1-abhishekpandit@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, dianders@chromium.org
Cc: linux-bluetooth@vger.kernel.org, linux-rockchip@lists.infradead.org, Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


Hi Heiko,

The necessary patches for this change have been merged into
bluetooth-next. Please pick this up at your convenience.

This patch enables using the Broadcom HCI UART driver with the
BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
board (Veyron) and these changes have been tested on the Minnie variant
of the board (i.e. rk3288-veyron-minnie.dts).

The changes are applicable to the minnie, mickey, speedy and brain
variants (all of which use the Broadcom chips). The bt-activity node was
removed for all Veyron boards and shouldn't affect the boards using
Marvell chips since they aren't using this out-of-band wakeup gpio.

A previous portion of this series adding the compatible string to the
hci_bcm driver has already been merged into bluetooth-next:
https://lore.kernel.org/r/4680AA6A-599F-4D5E-9A96-0655569BAE94@holtmann.org

Another patch series to fix up the baudrate settings and configure the
PCM parameters has meen merged on bluetooth-next:
https://lore.kernel.org/linux-bluetooth/20191127071105.GA32820@akivisil-mobl1.ger.corp.intel.com/T/#t

Thanks
Abhishek

Changes in v2:
- Changed sco routing params to brcm,bt-pcm-int-params

Abhishek Pandit-Subedi (1):
  ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron

 arch/arm/boot/dts/rk3288-veyron-brain.dts     |  9 +++
 .../dts/rk3288-veyron-broadcom-bluetooth.dtsi | 22 +++++++
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 21 -------
 arch/arm/boot/dts/rk3288-veyron-fievel.dts    |  2 -
 arch/arm/boot/dts/rk3288-veyron-jaq.dts       | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-jerry.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-mickey.dts    |  9 +++
 arch/arm/boot/dts/rk3288-veyron-minnie.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron-pinky.dts     | 22 +++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts    | 21 +++++++
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 59 +++----------------
 11 files changed, 155 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-broadcom-bluetooth.dtsi

-- 
2.24.0.432.g9d3f5f5b63-goog
