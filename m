From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [PATCH v3 0/3] Rockchip: generalize GRF setup
Date: Thu, 17 Nov 2016 00:03:01 +0100
Message-ID: <20161116230304.8432-1-heiko@sntech.de>
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
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, arnd-r2nGTMty4D4@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The General register files contain a big bunch of settings for various
components. Things like the automatic sdmmc/jtag switch may even affect
us in a bad way, while that property (and possibly others) are not even
part of the dw_mmc controller itself.

And while the rk3288 could still carry adaptions to these defaults
in its mach files, this is no longer possible on the arm64 socs, while
things like the jtag-switch from above still can affect us there.

changes in v3:
- remove duplicate regmap header (now they're even sorted alphabetically)
- add Dougs Review-tag from v2
- fix the of_find_matching_node_and_match being over 80 chars

changes in v2:
- address comments from Doug Anderson
- drop platform device, as we actual probing may happen at some
  unspecified later time during boot
- add reviews / acks received in v1

Heiko Stuebner (3):
  dt-bindings: add used but undocumented rockchip grf compatible values
  soc: rockchip: add driver handling grf setup
  ARM: rockchip: drop rk3288 jtag/mmc switch handling

 .../devicetree/bindings/soc/rockchip/grf.txt       |   4 +
 arch/arm/mach-rockchip/rockchip.c                  |  12 --
 drivers/soc/rockchip/Kconfig                       |  10 ++
 drivers/soc/rockchip/Makefile                      |   1 +
 drivers/soc/rockchip/grf.c                         | 133 +++++++++++++++++++++
 5 files changed, 148 insertions(+), 12 deletions(-)
 create mode 100644 drivers/soc/rockchip/grf.c

-- 
2.10.2
