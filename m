From: Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
Date: Tue, 17 Mar 2020 09:32:45 -0400
Message-ID: <20200317133245.GA1932@ubuntu>
References: <20200313230513.123049-1-npcomplete13@gmail.com>
 <7846021.K4VeDc98hx@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <7846021.K4VeDc98hx@phil>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Mar 17, 2020 at 01:54:52AM +0100, Heiko Stuebner wrote:
> Am Samstag, 14. März 2020, 00:05:13 CET schrieb Vivek Unune:
> >  - Add Hugsun X99 IR receiver and power led
> >  - Remove pwm0 node as it interferes with power LED gpio
> >    pwm0 is not used in factory firmware as well
> > 
> > Tested with LibreElec linux-next-20200305
> > 
> > Signed-off-by: Vivek Unune <npcomplete13-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> I've applied this for 5.7, but did split the patch into two.
> One for the addition of the IR and a second for led.
> 
> Please do similar for future patches.
> 
> Thanks
> Heiko
> 
> 

Hi Heiko,

Much appriciated. I'll make sure to do that with my future patches

Thanks,

Vivek
