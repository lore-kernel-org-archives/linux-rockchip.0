From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/3] Rockchip dts64 updates for 5.3 round 1
Date: Tue, 11 Jun 2019 10:54:49 +0200
Message-ID: <12386546.HbqOaVNIXM@phil>
References: <3004130.oi6ZuZy1Zf@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3004130.oi6ZuZy1Zf@phil>
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts64-1

for you to fetch changes up to 45fa7c3838715b34ccea661e4b7b261d91668b17:

  arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board (2019-06-04 15:38:54 +0200)

----------------------------------------------------------------
PCIe for rockpro64, wifi+bt for Rock-PI4, spi for Rock960 family
and a fix for the yet unused isp-iommus.

----------------------------------------------------------------
Akash Gajjar (1):
      arm64: dts: rockchip: add WiFi+BT support on ROCK Pi4 board

Helen Koike (1):
      arm64: dts: rockchip: fix isp iommu clocks and power domain

Katsuhiro Suzuki (1):
      arm64: dts: rockchip: add PCIe nodes on rk3399-rockpro64

Manivannan Sadhasivam (2):
      arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
      arm64: dts: rockchip: Enable SPI1 on Ficus

 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts     |  6 ++
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 97 +++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts   | 10 +++
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 18 +++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi          |  8 +-
 5 files changed, 135 insertions(+), 4 deletions(-)
