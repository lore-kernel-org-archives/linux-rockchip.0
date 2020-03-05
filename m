From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] ARM: dts: rockchip: add missing model properties
Date: Thu, 05 Mar 2020 22:35:51 +0100
Message-ID: <5155217.YDJUN7Zz9T@phil>
References: <20200304074051.8742-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200304074051.8742-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 4. März 2020, 08:40:49 CET schrieb Johan Jonker:
> A test with the command below gives these errors:
> 
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: /: 'model'
> is a required property
> arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml: /: 'model'
> is a required property
> arch/arm/boot/dts/rk3288-r89.dt.yaml: /: 'model'
> is a required property
> 
> Fix this error by adding the missing model properties to
> the involved dts files.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
> schemas/root-node.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
