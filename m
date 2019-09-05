From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip DT64 changes for 5.4 - round2
Date: Thu, 05 Sep 2019 14:18:54 +0200
Message-ID: <43564855.cWDBQSyQMS@phil>
References: <1718334.9BoTfW0Ujv@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1718334.9BoTfW0Ujv@phil>
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

The following changes since commit fc702ed49a8668a17343811ee28214d845bfc5e6:

  arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC (2019-08-16 14:39:20 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.4-rockchip-dts64-2

for you to fetch changes up to 03e61929c0d227ed3e1c322fc3804216ea298b7e:

  arm64: dts: rockchip: limit clock rate of MMC controllers for RK3328 (2019-09-01 03:00:17 +0200)

----------------------------------------------------------------
RK3328 mmc clockrate limit and addition of vpu node as well
as a regulator fix for the rk3328-rock64.

----------------------------------------------------------------
Jonas Karlman (1):
      arm64: dts: rockchip: add rk3328 VPU node

Kever Yang (1):
      arm64: dts: rockchip: fix vcc_host_5v regulator for usb3 host

Shawn Lin (1):
      arm64: dts: rockchip: limit clock rate of MMC controllers for RK3328

 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 11 ++---------
 arch/arm64/boot/dts/rockchip/rk3328.dtsi       | 17 ++++++++++++++++-
 2 files changed, 18 insertions(+), 10 deletions(-)
