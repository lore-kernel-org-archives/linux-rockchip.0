From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4] dt-bindings: sram: convert rockchip-pmu-sram bindings
 to yaml
Date: Mon, 20 Apr 2020 14:12:43 -0500
Message-ID: <20200420191243.GA31486@bogus>
References: <20200411122507.4040-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200411122507.4040-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 11 Apr 2020 14:25:07 +0200, Johan Jonker wrote:
> Current dts files with 'rockchip-pmu-sram' compatible nodes
> are now verified with sram.yaml, although the original
> text document still exists. Merge rockchip-pmu-sram.txt
> with sram.yaml by adding it as description with an example.
> Make #address-cells, #size-cells and ranges optional
> if there are no child nodes to prevent yaml warnings.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Changes v4:
>   Make some properties optional
> 
> Changes v3:
>   Document the compatible
> 
> Changed v2:
>   Merge with sram.yaml
> ---
>  .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 -------------
>  Documentation/devicetree/bindings/sram/sram.yaml   | 26 +++++++++++++++++++---
>  2 files changed, 23 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
> 

Applied, thanks.

Rob
