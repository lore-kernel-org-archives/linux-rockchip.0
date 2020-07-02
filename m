From: Helen Koike <helen.koike@collabora.com>
Subject: [PATCH v3 6/9] dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging
Date: Thu,  2 Jul 2020 13:54:07 -0300
Message-ID: <20200702165410.2583375-7-helen.koike@collabora.com>
References: <20200702165410.2583375-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200702165410.2583375-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, robh+dt@kernel.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl, kernel@collabora.com, dafna.hirschfeld@collabora.com, ezequiel@collabora.com, mark.rutland@arm.com, karthik.poduval@gmail.com, jbx6244@gmail.com, kishon@ti.com, tfiga@chromium.org, eddie.cai.linux@gmail.com, zhengsq@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Move rkisp1 bindings to Documentation/devicetree/bindings/media

Verified with:
make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/media/rockchip-isp1.yaml                  | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
similarity index 100%
rename from drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
rename to Documentation/devicetree/bindings/media/rockchip-isp1.yaml
-- 
2.26.0
