From: Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 0/2] Add basic dts support for RK3308
Date: Thu, 17 Oct 2019 11:02:42 +0800
Message-ID: <20191017030242.32219-1-andy.yan@rock-chips.com>
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
To: heiko@sntech.de, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, obh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

RK3308 is a quad Cortex A35 based SOC with rich audio
interfaces(I2S/PCM/TDM/PDM/SPDIF/VAD/HDMI ARC), which
designed for intelligent voice interaction and audio
input/output processing.

As the clk and pinctrl drivers are landed, we post
the basic dts support, make it convenient for other
module development.


Andy Yan (2):
  arm64: dts: rockchip: Add core dts for RK3308 SOC
  arm64: dts: rockchip: Add basic dts for RK3308 EVB

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts   |  206 ++
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 1875 +++++++++++++++++
 4 files changed, 2087 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308.dtsi

-- 
2.17.1
