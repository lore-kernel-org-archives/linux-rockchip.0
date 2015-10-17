From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/2] Rockchip dts32 changes for 4.4 part 2
Date: Sat, 17 Oct 2015 18:47:50 +0200
Message-ID: <1646281.IJhPY0x0MY@diego>
References: <4398388.V5gVWEu8o6@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <4398388.V5gVWEu8o6@diego>
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

since the first pull, Sjoerd's spdif driver got accepted into ASoC, so
this adds the spdif devicetree-nodes to the two supported Rockchip arches.

If it's not to late, please pull.

Thanks
Heiko


The following changes since commit b63af764ca5134341aa3a2836b356a65902ea9d4:

  ARM: dts: rockchip: add the support power-domain node on RK3288 SoCs (2015-10-08 22:41:11 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.4-rockchip-dts32-2

for you to fetch changes up to fea37552600872368a23019aef4bf8c09e0f0380:

  ARM: dts: rockchip: Add SPDIF optical out on Radxa Rock2 Square (2015-10-13 10:59:18 +0200)

----------------------------------------------------------------
SPDIF device nodes for the newly added driver.

----------------------------------------------------------------
Sjoerd Simons (4):
      ARM: dts: rockchip: Add SPDIF transceiver for RK3188
      ARM: dts: rockchip: Add SPDIF optical out on Radxa Rock
      ARM: dts: rockchip: Add SPDIF transceiver for RK3288
      ARM: dts: rockchip: Add SPDIF optical out on Radxa Rock2 Square

 arch/arm/boot/dts/rk3188-radxarock.dts    | 19 +++++++++++++++++++
 arch/arm/boot/dts/rk3188.dtsi             | 20 ++++++++++++++++++++
 arch/arm/boot/dts/rk3288-rock2-square.dts | 18 ++++++++++++++++++
 arch/arm/boot/dts/rk3288.dtsi             | 21 +++++++++++++++++++++
 4 files changed, 78 insertions(+)
