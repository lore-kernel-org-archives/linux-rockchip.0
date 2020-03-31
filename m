From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: convert rockchip vop
 bindings to yaml
Date: Tue, 31 Mar 2020 15:30:17 -0600
Message-ID: <20200331213017.GA32448@bogus>
References: <20200325103828.5422-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200325103828.5422-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 25 Mar 2020 11:38:27 +0100, Johan Jonker wrote:
> Current dts files with 'vop' nodes are manually verified.
> In order to automate this process rockchip-vop.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
> Changes v4:
>   Change description
>   Replace compatible oneOf by enum
>   Change interrupts description
>   Remove resets minItems
> 
> Changes v3:
>   Change description
> 
> Changes v2:
>   No new properties
> ---
>  .../bindings/display/rockchip/rockchip-vop.txt     |  74 ------------
>  .../bindings/display/rockchip/rockchip-vop.yaml    | 124 +++++++++++++++++++++
>  2 files changed, 124 insertions(+), 74 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> 

Reviewed-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
