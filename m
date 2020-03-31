From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Date: Tue, 31 Mar 2020 14:00:28 -0600
Message-ID: <20200331200028.GA5018@bogus>
References: <20200324123155.11858-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200324123155.11858-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 24 Mar 2020 13:31:53 +0100, Johan Jonker wrote:
> Current dts files with 'spdif' nodes are manually verified.
> In order to automate this process rockchip-spdif.txt
> has to be converted to yaml.
> 
> Also rk3188.dtsi, rk3288.dtsi use an extra fallback string,
> so change this in the documentation.
> 
> Changed:
> "rockchip,rk3188-spdif", "rockchip,rk3066-spdif"
> "rockchip,rk3288-spdif", "rockchip,rk3066-spdif"
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
> Changed V2:
>   dmas and dma-names layout
> ---
>  .../devicetree/bindings/sound/rockchip-spdif.txt   | 45 -----------
>  .../devicetree/bindings/sound/rockchip-spdif.yaml  | 94 ++++++++++++++++++++++
>  2 files changed, 94 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
> 

Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
