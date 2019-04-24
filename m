From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 4/5] Rockchip soc32 updates for 5.2
Date: Wed, 24 Apr 2019 19:59:18 +0200
Message-ID: <4142453.kQgcn4UVYa@phil>
References: <3379363.gjmLGbHmEH@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3379363.gjmLGbHmEH@phil>
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

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-soc32-1

for you to fetch changes up to fbd7af041586a15f5dc15b9ec051d25aa5ebe00a:

  ARM: rockchip: add missing of_node_put in rockchip_smp_prepare_pmu (2019-04-23 19:52:37 +0200)

----------------------------------------------------------------
Missing of_node_put and some added __init contants.

----------------------------------------------------------------
Douglas Anderson (1):
      ARM: rockchip: Mark pm-init functions __init

Wen Yang (1):
      ARM: rockchip: add missing of_node_put in rockchip_smp_prepare_pmu

 arch/arm/mach-rockchip/platsmp.c | 1 +
 arch/arm/mach-rockchip/pm.c      | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)
