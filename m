From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/3] Rockchip dts64 updates for 4.21 round2
Date: Wed, 12 Dec 2018 09:44:31 +0100
Message-ID: <2442209.9nBR0uFduZ@phil>
References: <7153021.iXIDTOc0j0@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <7153021.iXIDTOc0j0@phil>
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

The following changes since commit cdd46460fe278e04d8ee665d975aa2962036838f:

  arm64: dts: rockchip: Add all CPUs in cooling maps (2018-11-19 14:45:35 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.21-rockchip-dts64-2

for you to fetch changes up to 953d9f3903659fb1e21f6453ef5221a7652ec908:

  arm64: dts: rockchip: Add on-board LED support on rk3399-rock960 (2018-12-11 20:09:38 +0100)

----------------------------------------------------------------
Support for the onboard LEDs of the 2 96boards (ficus, rock960),
hdmi output for rockpro64, vpu node on rk3399 and adding the
always on 32kHz clock on rk3399-Gru to get a more complete clock
tree.

----------------------------------------------------------------
Derek Basehore (1):
      arm64: dts: rockchip: Add 32k clk on rk3399-gru

Ezequiel Garcia (1):
      arm64: dts: rockchip: add VPU device node for RK3399

Manivannan Sadhasivam (2):
      arm64: dts: rockchip: Add on-board LED support on rk3399-ficus
      arm64: dts: rockchip: Add on-board LED support on rk3399-rock960

Oskari Lemmela (1):
      arm64: dts: rockchip: enable hdmi output on rk3399-rockpro64

 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts     | 78 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi      |  7 ++
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts   | 79 +++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts |  7 ++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi          | 14 +++-
 5 files changed, 184 insertions(+), 1 deletion(-)
