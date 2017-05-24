From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/7] arm64: defconfig: enable some core components for
 Rockchip socs
Date: Wed, 24 May 2017 15:54:08 +0200
Message-ID: <20170524135415.5590-1-heiko@sntech.de>
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
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This contains enablement of newly supported Rockchip components
as well as some core drivers used in conjunction with
Rockchip socs but possibly also other devices.

If applicable, this should probably be applied to the arm-soc
arm64-defconfig branch, or I could provide a pull-request
for a branch if so desired.


Heiko Stuebner (7):
  arm64: defconfig: enable Rockchip pcie support
  arm64: defconfig: enable Rockchip saradc
  arm64: defconfig: enable keyboard_adc for adc-keys
  arm64: defconfig: enable Rockchip spi driver
  arm64: defconfig: enable more cros-ec options
  arm64: defconfig: enable Rockchip thermal controller
  arm64: defconfig: enable fan53555 regulator

 arch/arm64/configs/defconfig | 10 ++++++++++
 1 file changed, 10 insertions(+)

-- 
2.11.0
