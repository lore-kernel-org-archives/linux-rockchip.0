From: Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v1 0/3] thermal: rockchip: Support the RK3308 SoC in thermal
 driver
Date: Tue,  5 Nov 2019 11:17:23 +0800
Message-ID: <1572923846-23310-1-git-send-email-zhangqing@rock-chips.com>
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
To: heiko@sntech.de
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, amit.kucheria@verdurent.com, Elaine Zhang <zhangqing@rock-chips.com>, huangtao@rock-chips.com, linux-pm@vger.kernel.org, xxx@rock-chips.com, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, xf@rock-chips.com, edubezval@gmail.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, andy.yan@rock-chips.com, rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

RK3308 SOC has two Temperature Sensors for CPU and GPU.

Elaine Zhang (3):
  dt-bindings: rockchip-thermal: Support the RK3308 SoC compatible
  thermal: rockchip: Support the RK3308 SoC in thermal driver
  ARM64: dts: rockchip: rk3308: add tsadc node

 .../bindings/thermal/rockchip-thermal.txt          |  1 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           | 20 ++++++++++++++++
 drivers/thermal/rockchip_thermal.c                 | 28 ++++++++++++++++++++++
 3 files changed, 49 insertions(+)

-- 
1.9.1
