From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: mmc: convert rockchip dw-mshc
 bindings to yaml
Date: Wed, 22 Jan 2020 10:05:43 -0600
Message-ID: <20200122160543.GA10427@bogus>
References: <20200116152230.29831-1-jbx6244@gmail.com>
 <20200116152230.29831-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200116152230.29831-2-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: ulf.hansson-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-mmc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 16 Jan 2020 16:22:29 +0100, Johan Jonker wrote:
> Current dts files with 'dwmmc' nodes are manually verified.
> In order to automate this process rockchip-dw-mshc.txt
> has to be converted to yaml. In the new setup
> rockchip-dw-mshc.yaml will inherit properties from
> mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
> 'dwmmc' will no longer be a valid name for a node and
> should be changed to 'mmc'.
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.txt   |  49 --------
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml  | 123 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  3 files changed, 124 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 

Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
