From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 3/3] Rockchip soc32 updates for 4.13 part1
Date: Fri, 09 Jun 2017 12:15:36 +0200
Message-ID: <6711954.Z0p86Q0GiD@phil>
References: <2090243.QTRV0U63fj@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2090243.QTRV0U63fj@phil>
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

The following changes since commit 2ea659a9ef488125eb46da6eb571de5eae5c43f6:

  Linux 4.12-rc1 (2017-05-13 13:19:49 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.13-rockchip-soc32-1

for you to fetch changes up to 51f6bfc78beaaa4c42bd2ab394e2550285caab0c:

  ARM: rockchip: enable support for RV1108 SoC (2017-05-14 00:38:27 +0200)

----------------------------------------------------------------
Add support for the RV1108 and its debug uart

----------------------------------------------------------------
Andy Yan (2):
      ARM: debug: add low level debug uart for rv1108
      ARM: rockchip: enable support for RV1108 SoC

 arch/arm/Kconfig.debug            | 30 ++++++++++++++++++++++++++++++
 arch/arm/mach-rockchip/rockchip.c |  1 +
 2 files changed, 31 insertions(+)
