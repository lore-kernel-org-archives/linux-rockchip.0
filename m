From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: phy: convert phy-rockchip-inno-usb2
 bindings to yaml
Date: Tue, 31 Mar 2020 15:48:47 -0600
Message-ID: <20200331214847.GA31349@bogus>
References: <20200325121335.12249-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200325121335.12249-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: kishon@ti.com, heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 25 Mar 2020 13:13:35 +0100, Johan Jonker wrote:
> Current dts files for Rockchip with 'usb2-phy' subnodes
> are manually verified. In order to automate this process
> phy-rockchip-inno-usb2.txt has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changes v3:
>   Replace oneOf by enum
>   Remove allOf phy-provider.yaml
>   Add "#phy-cells"
>   Add additionalProperties: false
> 
> Changes v2:
>   Keep "rockchip,rk3366-usb2phy" support.
>   Add "#phy-cells" to example.
>   Add allOf phy-provider.yaml
> ---
>  .../bindings/phy/phy-rockchip-inno-usb2.txt        |  81 -----------
>  .../bindings/phy/phy-rockchip-inno-usb2.yaml       | 155 +++++++++++++++++++++
>  2 files changed, 155 insertions(+), 81 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> 

Applied, thanks.

Rob
