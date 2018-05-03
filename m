From: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [regression] HDMI breakage just before poweroff
Date: Thu, 03 May 2018 11:51:22 +0800
Message-ID: <5AEA873A.7080701@rock-chips.com>
References: <CAAMcf8D86ssM+YeFAXaYDm9QwwAQLdaOgWyC2F8yQ-_-UNyY+A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8D86ssM+YeFAXaYDm9QwwAQLdaOgWyC2F8yQ-_-UNyY+A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Vincente,

Thanks for your mail.

On 05/03/2018 03:36 AM, Vicente Bergas wrote:
> Hello,
> on rk3399-sapphire there is a missing feature: the poweroff command is
> unable to poweroff the system and the display stays on.
> When the system is halted, power needs to be removed manually.
according to the dtsi, the rk3399-sapphire is using rk808 pimc right?

i think the power off flow would be:
1/ rk808 set the pm_power_off callback:
drivers/mfd/rk808.c
         switch (rk808->variant) {
         case RK805_ID:
	...
                 pm_pwroff_fn = rk805_device_shutdown;
	...

         pm_off = of_property_read_bool(np,
                                 "rockchip,system-power-controller");
         if (pm_off && !pm_power_off) {
                 rk808_i2c_client = client;
                 pm_power_off = pm_pwroff_fn;
         }

2/ the poweroff command would call kernel_power_off:
kernel/reboot.c:
void kernel_power_off(void)
{
...
         machine_power_off();
}

3/ arm64's machine_power_off() would call pm_power_off to let rk808 
cutoff the power.

>
> With Linux kernel 4.16, when reaching the halted state, the HDMI console
> shows the last messages before halting.
if it ends up halted, maybe something wrong during setup the pm_power_off?
kernel/reboot.c:
         /* Instead of trying to make the power_off code look like
          * halt when pm_power_off is not set do it the easy way.
          */
         if ((cmd == LINUX_REBOOT_CMD_POWER_OFF) && !pm_power_off)
                 cmd = LINUX_REBOOT_CMD_HALT;

>
> With 4.17.0-rc3, when reaching the halted state, the HDMI console
> shows colorful static noise.
>
we've added a shutdown() to the iommu driver:
https://patchwork.kernel.org/patch/10230817/

any chance related?

> Regards,
>    Vicente.
>
>
>
