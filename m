From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 4/6] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Date: Thu, 13 Feb 2020 14:47:08 -0600
Message-ID: <20200213204708.GA2363@bogus>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574091-240890-5-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1581574091-240890-5-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-pci-owner@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 13 Feb 2020 14:08:09 +0800, Shawn Lin wrote:
> From: Simon Xue <xxm@rock-chips.com>
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - fix yaml format
> 
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  | 148 +++++++++++++++++++++
>  1 file changed, 148 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dts:24.26-27 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1237300
Please check and re-submit.
