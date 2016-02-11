From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/4] rockchip soc-driver changes for 4.6
Date: Thu, 11 Feb 2016 15:47:12 +0100
Message-ID: <1734524.3yNt5L3F1F@phil>
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

Hi Arnd, Olof, Kevin,

please find below soc driver changes for Rockchip for 4.6
The tag describes the changes a little bit more.


Thanks
Heiko


The following changes since commit 92e963f50fc74041b5e9e744c330dca48e04f08d:

  Linux 4.5-rc1 (2016-01-24 13:06:47 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.6-rockchip-drivers1

for you to fetch changes up to 1d961f11a108af9f7fbe89cc950a8d16ddbdbb28:

  soc: rockchip: power-domain: fix err handle while probing (2016-02-02 22:18:31 +0100)

----------------------------------------------------------------
Support for the power-domains on rk3368 and a fix for
a wrong handling of for_each_available_child_of_node.

----------------------------------------------------------------
Heiko Stuebner (1):
      Merge branch 'v4.6-shared/pdids' into v4.6-armsoc/drivers

Shawn Lin (1):
      soc: rockchip: power-domain: fix err handle while probing

zhangqing (3):
      dt-bindings: add power-domain header for RK3368 SoCs
      dt-bindings: modify document of Rockchip power domains
      soc: rockchip: power-domain: Modify power domain driver for rk3368

 .../bindings/soc/rockchip/power_domain.txt         | 21 +++++++++++++
 drivers/soc/rockchip/pm_domains.c                  | 34 ++++++++++++++++++++++
 include/dt-bindings/power/rk3368-power.h           | 28 ++++++++++++++++++
 3 files changed, 83 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3368-power.h
