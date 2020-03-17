From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: remove clock-frequency from saradc node rv1108
Date: Tue, 17 Mar 2020 01:27:14 +0100
Message-ID: <3820267.Gqg2QCzSh7@phil>
References: <20200313132646.10317-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200313132646.10317-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 13. März 2020, 14:26:46 CET schrieb Johan Jonker:
> An experimental test with the command below gives these errors:
> 
> arch/arm/boot/dts/rv1108-elgin-r1.dt.yaml: adc@1038c000:
> 'clock-frequency'
> does not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm/boot/dts/rv1108-evb.dt.yaml: adc@1038c000:
> 'clock-frequency'
> does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 'clock-frequency' is not a valid property for a saradc node,
> so remove it.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/
> rockchip-saradc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
