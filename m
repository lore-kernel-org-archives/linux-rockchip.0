From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/2] Rockchip drivers for 4.4 part 2
Date: Sat, 17 Oct 2015 18:45:10 +0200
Message-ID: <4398388.V5gVWEu8o6@diego>
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

as the tag says, some fixes for the new power-domain driver, that turned
up since the origin al pull-req.


The following changes since commit 7c696693a4f54d12714738b45aee3e4302884ade:

  soc: rockchip: power-domain: Add power domain driver (2015-10-06 09:53:28 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.4-rockchip-drivers2

for you to fetch changes up to 4681347153dba01836aca18ebcfb4101c927d8ec:

  dt-bindings: Correct paths in Rockchip power domains binding document (2015-10-16 17:38:36 +0200)

----------------------------------------------------------------
Some fixes for the new power-domain driver, including restricting
Rockchip Kconfig options, fixing a possible null-pointer and a
typo in the dt-bindings.

----------------------------------------------------------------
Geert Uytterhoeven (1):
      dt-bindings: Correct paths in Rockchip power domains binding document

Heiko Stuebner (1):
      soc: rockchip: power-domain: don't try to print the clock name in error case

Thierry Reding (1):
      soc: rockchip: Restrict to ARCH_ROCKCHIP

 Documentation/devicetree/bindings/soc/rockchip/power_domain.txt | 4 ++--
 drivers/soc/rockchip/Kconfig                                    | 4 ++++
 drivers/soc/rockchip/pm_domains.c                               | 4 ++--
 3 files changed, 8 insertions(+), 4 deletions(-)
