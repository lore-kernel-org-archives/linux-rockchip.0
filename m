From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 8/8] hantro: Add linux-rockchip mailing list to MAINTAINERS
Date: Wed, 18 Mar 2020 10:21:08 -0300
Message-ID: <20200318132108.21873-9-ezequiel@collabora.com>
References: <20200318132108.21873-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200318132108.21873-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, Rob Herring <robh@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

The linux-rockchip mailing list is relevant for the
Hantro driver, given this support the VPU present
in Rockchip SoCs.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 28bbbb6c73ef..dc56b9bfc3b3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14313,6 +14313,7 @@ F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
 HANTRO VPU CODEC DRIVER
 M:	Ezequiel Garcia <ezequiel@collabora.com>
 L:	linux-media@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
 S:	Maintained
 F:	drivers/staging/media/hantro/
 F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
-- 
2.25.0
