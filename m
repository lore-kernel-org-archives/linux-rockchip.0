From: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
Subject: [PATCH 0/3] ARM: dts: rockchip: Use hci_bcm driver for bcm43540 on Veyron devices
Date: Fri, 25 Oct 2019 14:54:25 -0700
Message-ID: <20191025215428.31607-1-abhishekpandit@chromium.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>
Cc: linux-bluetooth@vger.kernel.org, dianders@chromium.org, Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, devicetree@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


This patch series enables using the Broadcom HCI UART driver with the
BCM43540 Wi-Fi + Bluetooth chip. This chip is used on a RK3288 based
board (Veyron) and these changes have been tested on the Minnie variant
of the board (i.e. rk3288-veyron-minnie.dts).



Abhishek Pandit-Subedi (3):
  Bluetooth: hci_bcm: Add compatible string for BCM43540
  dt-bindings: net: broadcom-bluetooth: Add BCM43540 compatible string
  ARM: dts: rockchip: Add brcm bluetooth module on uart0

 .../bindings/net/broadcom-bluetooth.txt       |  1 +
 arch/arm/boot/dts/rk3288-veyron.dtsi          | 31 +++++--------------
 drivers/bluetooth/hci_bcm.c                   |  1 +
 3 files changed, 9 insertions(+), 24 deletions(-)

-- 
2.24.0.rc0.303.g954a862665-goog
