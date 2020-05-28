From: Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 0/1] Add fuel gauge to Pinbook Pro dts
Date: Thu, 28 May 2020 19:25:49 +0200
Message-ID: <20200528172550.2324722-1-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

since the cw2015 fuel gauge will be supported in 5.8 this patch
adds a node for it to the Pinbook Pro device tree.

Best regards,

Tobias

Tobias Schramm (1):
  arm64: dts: rockchip: add fuel gauge to Pinebook Pro dts

 .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

-- 
2.26.0
