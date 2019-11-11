From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip dts32 changes for 5.5 - round 2
Date: Mon, 11 Nov 2019 01:42:49 +0100
Message-ID: <1926436.N9mSsAMzn9@phil>
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi (arm-)soc people,

please find below and in the reply mail round 2 of devicetree patches
targettted at 5.5. The signed tags should summarize the contents
hopefully nicely :-) .

Please pull
Thanks
Heiko

The following changes since commit a562a8acccb3070155aad3db5ac97a80aed2a24b:

  ARM: dts: rockchip: remove some tabs and spaces from dtsi files (2019-10-16 21:26:03 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dts32-2

for you to fetch changes up to bbf8f6fef71a02b297de532364b5217d34f01582:

  ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey (2019-10-31 11:49:56 +0100)

----------------------------------------------------------------
HDMI-audio support for Veyron devices.

----------------------------------------------------------------
Cheng-Yi Chiang (2):
      ARM: dts: rockchip: Add HDMI support to rk3288-veyron-analog-audio
      ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey

 arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi | 1 +
 arch/arm/boot/dts/rk3288-veyron-mickey.dts        | 7 +++++++
 2 files changed, 8 insertions(+)
