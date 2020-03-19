From: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 1/2] dt-bindings: phy: convert phy-rockchip-inno-usb2
 bindings to yaml
Date: Thu, 19 Mar 2020 11:13:05 -0600
Message-ID: <20200319171305.GA19150@bogus>
References: <20200318192901.5023-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200318192901.5023-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: kishon@ti.com, heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 18 Mar 2020 20:29:00 +0100, Johan Jonker wrote:
> Current dts files for Rockchip with 'usb2-phy' subnodes
> are manually verified. In order to automate this process
> phy-rockchip-inno-usb2.txt has to be converted to yaml.
> 
> Changed:
>   Removed unused "rockchip,rk3366-usb2phy" support.
>   Replaced example with something that has SoC support
>   in the kernel.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt        |  81 -----------
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 149 +++++++++++++++++++++
>  2 files changed, 149 insertions(+), 81 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.example.dt.yaml: usb2-phy@e450: '#phy-cells' is a required property

See https://patchwork.ozlabs.org/patch/1257721
Please check and re-submit.
