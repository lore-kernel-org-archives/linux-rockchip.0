From: Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH 0/9] PM / devfreq: Remove deprecated 'devfreq' and
 'devfreq-events' properties
Date: Tue, 17 Dec 2019 14:57:29 +0900
Message-ID: <20191217055738.28445-1-cw00.choi@samsung.com>
References: <CGME20191217055105epcas1p365e306f27fd53852b793155c929ee634@epcas1p3.samsung.com>
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
To: krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org, cw00.choi@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
List-Id: linux-rockchip.vger.kernel.org

The devfreq and devfreq-event subsystem provided the following two properties:
- Provide 'devfreq' property in order to get the parent devfreq device
  by devfreq_get_devfreq_by_phandle() if devfreq device use passive governor.
- Provide 'devfreq-events' property in order to get the devfreq-event device
  by devfreq_event_get_edev_by_phandle().

But, two properties name is not proper expressing the h/w
and 'devfreq' word is name of linux subsystem intead of any h/w name.

Hand over the rights for deciding the property name for getting
the devfreq/devfreq-event device on devicetree, to each devfreq driver.

So, replace 'devfreq' and 'devfreq-events' property with following property
name according to each devfreq driver:
--------------------------------------------------------------------
Old property  | New propert        | Device driver name            |
--------------------------------------------------------------------
devfreq       | exynos,parent-bus  | exynos-bus.c                  |
              |                    |                               |
devfreq-events| exynos,ppmu-device | exynos-bus.c, exynos5422-dmc.c|
              | rockchip,dfi-device| rk3399_dmc.c                  |
--------------------------------------------------------------------

Chanwoo Choi (8):
  PM / devfreq: Remove devfreq_get_devfreq_by_phandle function
  PM / devfreq: event: Add devfreq_event_get_edev_by_node function
  PM / devfreq: exynos-bus: Replace deprecated 'devfreq' property
  PM / devfreq: exynos-bus: Replace deprecated 'devfreq-events' property
  PM / devfreq: rk3399_dmc: Replace deprecated 'devfreq-events' property
  memory: samsung: exynos5422-dmc: Replace deprecated 'devfreq-events' property
  ARM: dts: exynos: Replace deprecated property for Exynos bus and DMC
  arm64: dts: exynos: Replace deprecated property for Exynos bus

Leonard Crestez (1):
  PM / devfreq: Add devfreq_get_devfreq_by_node function

 .../bindings/devfreq/exynos-bus.txt           | 22 +++----
 .../bindings/devfreq/rk3399_dmc.txt           |  4 +-
 .../memory-controllers/exynos5422-dmc.txt     |  6 +-
 arch/arm/boot/dts/exynos3250-monk.dts         |  2 +-
 arch/arm/boot/dts/exynos3250-rinato.dts       | 18 +++---
 .../boot/dts/exynos4412-itop-scp-core.dtsi    | 16 ++---
 arch/arm/boot/dts/exynos4412-midas.dtsi       | 18 +++---
 .../boot/dts/exynos4412-odroid-common.dtsi    | 18 +++---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 34 +++++------
 .../dts/exynos/exynos5433-tm2-common.dtsi     | 20 +++----
 drivers/devfreq/devfreq-event.c               | 53 +++--------------
 drivers/devfreq/devfreq.c                     | 25 +++-----
 drivers/devfreq/exynos-bus.c                  | 58 ++++++++++++++++---
 drivers/devfreq/rk3399_dmc.c                  | 16 ++++-
 drivers/memory/samsung/exynos5422-dmc.c       | 37 ++++++++++--
 include/linux/devfreq-event.h                 | 14 ++---
 include/linux/devfreq.h                       |  6 +-
 17 files changed, 197 insertions(+), 170 deletions(-)

-- 
2.17.1
