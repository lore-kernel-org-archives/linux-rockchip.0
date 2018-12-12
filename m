From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL] Rockchip arm64 devicetree fix for 4.20
Date: Wed, 12 Dec 2018 09:28:34 +0100
Message-ID: <5618815.AsiCPEelux@phil>
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof,

one more fix for some regulators on the rk3399 rockpro64
turned up that may be nice to have in 4.20 still.

Please pull
Heiko

The following changes since commit c1d91f86a1b4c9c05854d59c6a0abd5d0f75b849:

  arm64: dts: rockchip: Fix PCIe reset polarity for rk3399-puma-haikou. (2018-11-13 15:02:07 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.20-rockchip-dts64fixes-2

for you to fetch changes up to 690e16bada6029694740d5501025faf483d14339:

  arm64: dts: rockchip: fix rk3399-rockpro64 regulator gpios (2018-12-06 13:46:16 +0100)

----------------------------------------------------------------
rockpro64 regulator fixes that cause stability issues

----------------------------------------------------------------
Oskari Lemmela (1):
      arm64: dts: rockchip: fix rk3399-rockpro64 regulator gpios

 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)
