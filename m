From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip dts64 fixes for 4.16
Date: Mon, 12 Mar 2018 09:38:24 +0100
Message-ID: <304170820.2ZTNuuGKzZ@phil>
References: <22043255.iBjVuxpHK5@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <22043255.iBjVuxpHK5@phil>
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

The following changes since commit ca9eee95a2decc6f60bed65b5b836a26bff825c1:

  arm64: dts: rockchip: Fix DWMMC clocks (2018-02-16 10:30:25 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.16-rockchip-dts64fixes-2

for you to fetch changes up to 835a1d5cdefffe08bec46efff11daea9b389baa9:

  Revert "arm64: dts: rockchip: add usb3-phy otg-port support for rk3399" (2018-03-02 08:36:31 +0100)

----------------------------------------------------------------
Pinctrl got a fix in 4.16-rc1, that exposed an issue with wifi-related
pinctrl hogs on rk3399-gru-kevin that broke suspend. This gets fixed
by moving the wifi pinctrl to the correct node.
Also revert the usb3 phy-port enablement, as a missing feature in the
type-c phy breaks usb on all non-gru rk3399 boards.

----------------------------------------------------------------
Douglas Anderson (1):
      arm64: dts: rockchip: Fix rk3399-gru-* s2r (pinctrl hogs, wifi reset)

Heiko Stuebner (1):
      Revert "arm64: dts: rockchip: add usb3-phy otg-port support for rk3399"

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 16 +++-------------
 arch/arm64/boot/dts/rockchip/rk3399.dtsi     |  8 ++++----
 2 files changed, 7 insertions(+), 17 deletions(-)
