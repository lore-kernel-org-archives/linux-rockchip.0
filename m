From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 3/3] Rockchip soc32 changes for 5.8
Date: Thu, 21 May 2020 03:18:55 +0200
Message-ID: <2307012.mB7vfBFN1M@phil>
References: <1970481.V9vR1fIhX2@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <1970481.V9vR1fIhX2@phil>
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.8-rockchip-soc32-1

for you to fetch changes up to 0b973c65d2f2da049252bc8370e4cf037b99c7e9:

  ARM: rockchip: fix spelling mistake "to" -> "too" (2020-04-13 09:40:45 +0200)

----------------------------------------------------------------
A spelling fix and stop using clk_provider.h when of_clk.h is enough
as the soc file is only a clock user, not a provider.

----------------------------------------------------------------
Colin Ian King (1):
      ARM: rockchip: fix spelling mistake "to" -> "too"

Geert Uytterhoeven (1):
      ARM: rockchip: Replace <linux/clk-provider.h> by <linux/of_clk.h>

 arch/arm/mach-rockchip/platsmp.c  | 2 +-
 arch/arm/mach-rockchip/rockchip.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
