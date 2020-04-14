From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v2 28/33] docs: dt: rockchip,
 dwc3.txt: fix a pointer to a renamed file
Date: Tue, 14 Apr 2020 18:48:54 +0200
Message-ID: <287bd271f5c542e9d12a132a6b6a17672c9fd67c.1586881715.git.mchehab+huawei@kernel.org>
References: <cover.1586881715.git.mchehab+huawei@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <cover.1586881715.git.mchehab+huawei@kernel.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

phy-rockchip-inno-usb2.txt was converted to yaml.

Fix the corresponding reference.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
index c8c4b00ecb94..94520493233b 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.txt
@@ -16,7 +16,7 @@ A child node must exist to represent the core DWC3 IP block. The name of
 the node is not important. The content of the node is defined in dwc3.txt.
 
 Phy documentation is provided in the following places:
-Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt - USB2.0 PHY
+Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml - USB2.0 PHY
 Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt     - Type-C PHY
 
 Example device nodes:
-- 
2.25.2
