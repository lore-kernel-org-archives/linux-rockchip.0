From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 0/7] Defconfig updates for RK3399
Date: Mon, 16 Apr 2018 11:39:55 -0300
Message-ID: <20180416144002.15569-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This series collects some pending defconfig patches
from Enric, namely:

https://patchwork.kernel.org/patch/10302033/
https://patchwork.kernel.org/patch/10247583/
https://patchwork.kernel.org/patch/10269255/

And adds some more defconfig changes, required to
support other peripherals:

 * Touchscreen, touchpad and stylus
 * WiFi and Bluetooth

Series tested on RK3399 Kevin Chromebook.

Enric Balletbo i Serra (3):
  arm64: defconfig: Enable typec-phy and extcon-usbc-cros-ec for rk3399
  arm64: defconfig: Enable Rockchip io-domain driver
  arm64: defconfig: Enable ChromeOS EC drivers for supported
    Chromebooks.

Ezequiel Garcia (4):
  arm64: defconfig: Enable HID over I2C drivers
  arm64: defconfig: Enable Atmel Maxtouch driver
  arm64: defconfig: Enable Marvell WiFi-Ex PCIe driver
  arm64: defconfig: Enable bluetooth USB support

 arch/arm64/configs/defconfig | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

-- 
2.16.3
