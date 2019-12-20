From: Chanwoo Choi <cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH v2 00/11] PM / devfreq: Remove deprecated 'devfreq' and
 'devfreq-events' properties
Date: Fri, 20 Dec 2019 09:24:19 +0900
Message-ID: <20191220002430.11995-1-cw00.choi@samsung.com>
References: <CGME20191220001759epcas1p131a41a619847d80c64470f7c1920121f@epcas1p1.samsung.com>
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
To: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, krzk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, leonard.crestez-3arQi8VN3Tc@public.gmane.org, lukasz.luba-5wv7dgnIgG8@public.gmane.org
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-samsung-soc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, a.swigon-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cw00.choi-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kyungmin.park-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, myungjoo.ham-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, kgene-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Chanwoo Choi <cw00.choi-4i/Q6oBd4qDQT0dZR+AlfA@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, m.szyprowski-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

From: Chanwoo Choi <cw00.choi-4i/Q6oBd4qDQT0dZR+AlfA@public.gmane.org>

The devfreq and devfreq-event subsystem provided the following two properties:
- Provide 'devfreq' property in order to get the parent devfreq device
  by devfreq_get_devfreq_by_phandle() if devfreq device use passive governor.
- Provide 'devfreq-events' property in order to get the devfreq-event device
  by devfreq_event_get_edev_by_phandle().

But, two properties name is not proper expressing the h/w
and 'devfreq' word is name of linux subsystem instead of any h/w name.

Hand over the rights for deciding the property name for getting
the devfreq/devfreq-event device on devicetree, to each devfreq driver.

So, replace 'devfreq' and 'devfreq-events' property with following property
name according to each devfreq driver:
--------------------------------------------------------------------
Old property  | New property       | Device driver name            |
--------------------------------------------------------------------
devfreq       | exynos,parent-bus  | exynos-bus.c                  |
              |                    |                               |
devfreq-events| exynos,ppmu-device | exynos-bus.c, exynos5422-dmc.c|
              | rockchip,dfi-device| rk3399_dmc.c                  |
--------------------------------------------------------------------

Changes from v1:
- Edit function name by removing '_by_node' postfix.
- Split out dt-binding patch to make it the separte patch.j
- Add Lukasz's tag for exynos5422-dmc

Chanwoo Choi (10):
  PM / devfreq: Remove devfreq_get_devfreq_by_phandle function
  PM / devfreq: event: Add devfreq_event_get_edev_by_node function
  dt-bindings: devfreq: exynos-bus: Replace deprecated 'devfreq' and 'devfreq-events' property
  dt-bindings: devfreq: rk3399_dmc:  Replace deprecated 'devfreq-events' property
  dt-bindings: memory: exynos5422-dmc: Replace the deprecated 'devfreq-events' property
  PM / devfreq: exynos-bus: Replace the deprecated 'devfreq' and 'devfreq-events' property
  PM / devfreq: rk3399_dmc: Replace the deprecated 'devfreq-events' property
  memory: samsung: exynos5422-dmc: Replace the deprecated 'devfreq-events' property
  ARM: dts: exynos: Replace deprecated property for Exynos bus and DMC
  arm64: dts: exynos: Replace deprecated property for Exynos bus on TM2

Leonard Crestez (1):
  PM / devfreq: Add devfreq_get_devfreq_by_node function

 .../bindings/devfreq/exynos-bus.txt           | 22 +++----
 .../bindings/devfreq/rk3399_dmc.txt           |  4 +-
 .../memory-controllers/exynos5422-dmc.txt     |  8 +--
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
 17 files changed, 198 insertions(+), 171 deletions(-)

-- 
2.17.1
