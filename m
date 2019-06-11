From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 3/3] Rockchip soc32 updates for 5.3 round 1
Date: Tue, 11 Jun 2019 10:55:28 +0200
Message-ID: <6757963.JBp9oB5bj2@phil>
References: <3004130.oi6ZuZy1Zf@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3004130.oi6ZuZy1Zf@phil>
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

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-soc32-1

for you to fetch changes up to c2af88f1a0cdf4cbe94b51fd93e52a3f55606a13:

  ARM: rockchip: fix missing of_node_put calls in smp code (2019-05-20 01:00:41 +0200)

----------------------------------------------------------------
Another missing of_node_put

----------------------------------------------------------------
Wen Yang (1):
      ARM: rockchip: fix missing of_node_put calls in smp code

 arch/arm/mach-rockchip/platsmp.c | 12 ++++++++++--
 arch/arm/mach-rockchip/pm.c      |  2 ++
 2 files changed, 12 insertions(+), 2 deletions(-)
