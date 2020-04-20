From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
Date: Mon, 20 Apr 2020 15:33:38 +0200
Message-ID: <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
References: <20200326191343.1989-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200326191343.1989-1-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: ezequiel@collabora.com, devicetree@vger.kernel.org, hverkuil@xs4all.nl, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, mark.rutland@arm.com, robh@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

This patch was applied by the media people Hans and Ezequil without note
and test I think.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-vpu.yaml

Errors for example:

  DTC     arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupts: [[0, 9, 4]] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names: ['vdpu'] is too short
arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
interrupt-names:0: 'vepu' was expected

See:
https://lore.kernel.org/lkml/20200403124316.5445-1-jbx6244@gmail.com/

+  interrupts:
+    minItems: 1
+    maxItems: 2
+
+  interrupt-names:
+    oneOf:
+      - const: vdpu
+      - items:
+        - const: vepu
+        - const: vdpu

Vs.:


+  interrupts:
+    maxItems: 2
+
+  interrupt-names:
+    items:
+      - const: vepu
+      - const: vdpu
