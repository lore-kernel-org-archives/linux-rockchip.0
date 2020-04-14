From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: media: convert rockchip rga bindings
 to yaml
Date: Tue, 14 Apr 2020 12:57:19 -0500
Message-ID: <20200414175719.GA29816@bogus>
References: <20200403130607.6138-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200403130607.6138-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri,  3 Apr 2020 15:06:06 +0200, Johan Jonker wrote:
> Current dts files for Rockchip with 'rga' nodes
> are manually verified. In order to automate this process
> rockchip-rga.txt has to be converted to yaml.
> 
> Changed:
>   Add missing reg property
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
> Changes v2:
>   Change MAINTAINERS
> ---
>  .../devicetree/bindings/media/rockchip-rga.txt     | 34 ----------
>  .../devicetree/bindings/media/rockchip-rga.yaml    | 78 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  3 files changed, 79 insertions(+), 35 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-rga.yaml
> 

Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
