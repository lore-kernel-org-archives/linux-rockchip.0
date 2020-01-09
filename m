From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL] Rockchip dt fix for 5.5
Date: Thu, 09 Jan 2020 22:38:04 +0100
Message-ID: <2054603.JKFSmqfO19@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof,

please find below a single fix for the interrupt polarity of the ir receiver
of the Beelink A1 board. It was reported that without that fix no IR stuff
could be received on the board.

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dtsfixes

for you to fetch changes up to 3433bdf98d8e9dd923118577dc582216a143e60d:

  arm64: dts: rockchip: Fix IR on Beelink A1 (2020-01-06 12:39:26 +0100)

----------------------------------------------------------------
A fix for the Beelink A1 IR receiver setting the correct polarity.

----------------------------------------------------------------
Robin Murphy (1):
      arm64: dts: rockchip: Fix IR on Beelink A1

 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)
