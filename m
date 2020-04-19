From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2] dt-bindings: display: convert rockchip rk3066 hdmi bindings to yaml
Date: Sun, 19 Apr 2020 14:08:25 +0200
Message-ID: <5903181.62QgbpdqVa@phil>
References: <20200403133630.7377-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200403133630.7377-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, daniel-/w4YWyX8dFk@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 3. April 2020, 15:36:30 CEST schrieb Johan Jonker:
> Current dts files with 'hdmi' nodes for rk3066 are manually verified.
> In order to automate this process rockchip,rk3066-hdmi.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
> @@ -0,0 +1,140 @@
> +# SPDX-License-Identifier: GPL-2.0

checkpatch complains about the licensing:

-:100: WARNING:SPDX_LICENSE_TAG: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Clause)
#100: FILE: Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml:1:
+# SPDX-License-Identifier: GPL-2.0

please consider adapting the license accordingly

Thanks
Heiko
