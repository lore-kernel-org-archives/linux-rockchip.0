From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: fix vref-supply for &saradc node rk3288 firefly reload
Date: Tue, 17 Mar 2020 01:26:51 +0100
Message-ID: <2367208.yvSAVzBJkc@phil>
References: <20200314140755.4877-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200314140755.4877-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 14. März 2020, 15:07:55 CET schrieb Johan Jonker:
> A test with the command below gives this error:
> 
> arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml: saradc@ff100000:
> 'vref-supply' is a required property
> 
> PMIC Channel OUT11 with powername 'vcc_18'
> (connected through R155 bridge with 'vccio_wl')
> is used for the recovery key and ADC_AVDD_1V8.
> 
> Fix error by adding 'vcc_18' as vref for the saradc.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/
> rockchip-saradc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
