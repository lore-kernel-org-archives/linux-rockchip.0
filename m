From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/3] rockchip soc changes for 4.5
Date: Mon, 21 Dec 2015 02:21:14 +0100
Message-ID: <2532363.CsR3D6sdor@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof,

after Arnd didn't like the arch-timer-supply fixup for the rk3036, I've
dropped that patch for further discussion. So this pull request includes
the other changes from that req and additionally a compatible for the
newly supported rk3228 quad-core Cortex-A7.


The following changes since commit 8005c49d9aea74d382f474ce11afbbc7d7130bec:

  Linux 4.4-rc1 (2015-11-15 17:00:27 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.5-rockchip-soc-1

for you to fetch changes up to 2608224c81a7d242a9b451b97011410b182f0da7:

  ARM: rockchip: enable support for RK3228 SoCs (2015-12-16 22:15:06 +0100)

----------------------------------------------------------------
SMP special case for the rk3036 and addition of the rk3228
quad-core Cortex-A7 cpu.

----------------------------------------------------------------
Heiko Stuebner (2):
      ARM: rockchip: add support smp for rk3036
      ARM: rockchip: use const and __initconst for rk3036 smp_operations

Jeffy Chen (1):
      ARM: rockchip: enable support for RK3228 SoCs

 Documentation/devicetree/bindings/arm/cpus.txt |  1 +
 arch/arm/mach-rockchip/platsmp.c               | 45 +++++++++++++++++++-------
 arch/arm/mach-rockchip/rockchip.c              |  1 +
 3 files changed, 35 insertions(+), 12 deletions(-)
