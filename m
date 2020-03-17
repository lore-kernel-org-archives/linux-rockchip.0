From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/4] ARM: dts: rockchip: remove clock-names property from 'generic-ohci' nodes
Date: Tue, 17 Mar 2020 01:28:18 +0100
Message-ID: <3829489.fZJU2aXfik@phil>
References: <20200312171441.21144-1-jbx6244@gmail.com> <20200312171441.21144-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200312171441.21144-2-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 12. März 2020, 18:14:39 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> 
> arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30160000:
> 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 'clock-names' is not a valid property name for usb_host nodes with
> compatible string 'generic-ohci', so remove them.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ohci.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
