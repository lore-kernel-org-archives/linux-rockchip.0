From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/4] Rockchip soc32 changes for 4.14
Date: Sun, 06 Aug 2017 11:49:11 +0200
Message-ID: <12145142.47nS8LyXIe@phil>
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

please find below and in the replies the first set of pull requests
of Rockchip stuff for 4.14. I think the tag messages should
describe the individual change broadly enough, so if nothing
looks odd, please pull.


Thanks
Heiko


The following changes since commit 5771a8c08880cdca3bfb4a3fc6d309d6bba20877:

  Linux v4.13-rc1 (2017-07-15 15:22:10 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.14-rockchip-soc32-1

for you to fetch changes up to bf3c4b517c2e2217e6cd53bc7a44e321bb799d75:

  ARM: rockchip: enable ZONE_DMA for non 64-bit capable peripherals (2017-08-01 00:57:59 +0200)

----------------------------------------------------------------
32bit arch changes for Rockchip socs containing enablement for ZONE_DMA
for LPAE builds due to the peripherals only being 32bit capable
and conversion to the exclusive reset controls in smp code.

----------------------------------------------------------------
Philipp Zabel (1):
      ARM: rockchip: explicitly request exclusive reset control in smp code

Tao Huang (1):
      ARM: rockchip: enable ZONE_DMA for non 64-bit capable peripherals

 arch/arm/mach-rockchip/Kconfig   | 1 +
 arch/arm/mach-rockchip/platsmp.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)
