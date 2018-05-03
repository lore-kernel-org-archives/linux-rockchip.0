From: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [regression] HDMI breakage just before poweroff
Date: Thu, 03 May 2018 23:10:40 +0800
Message-ID: <5AEB2670.9090305@rock-chips.com>
References: <CAAMcf8D86ssM+YeFAXaYDm9QwwAQLdaOgWyC2F8yQ-_-UNyY+A@mail.gmail.com>
 <5AEA873A.7080701@rock-chips.com>
 <0284fa4f-abd6-26f6-31e2-1a6d24777733@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <0284fa4f-abd6-26f6-31e2-1a6d24777733-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Jakob Unterwurzacher <jakob.unterwurzacher-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Robin,

On 05/03/2018 08:14 PM, Robin Murphy wrote:
> On 03/05/18 04:51, JeffyChen wrote:
>> Hi Vincente,
>>
>> Thanks for your mail.
>>
>> On 05/03/2018 03:36 AM, Vicente Bergas wrote:
>>> Hello,
>>> on rk3399-sapphire there is a missing feature: the poweroff command is
>>> unable to poweroff the system and the display stays on.
>>> When the system is halted, power needs to be removed manually.
>> according to the dtsi, the rk3399-sapphire is using rk808 pimc right?
>>
>> i think the power off flow would be:
>> 1/ rk808 set the pm_power_off callback:
>> drivers/mfd/rk808.c
>>          switch (rk808->variant) {
>>          case RK805_ID:
>>      ...
>>                  pm_pwroff_fn = rk805_device_shutdown;
>>      ...
>>
>>          pm_off = of_property_read_bool(np,
>>                                  "rockchip,system-power-controller");
>>          if (pm_off && !pm_power_off) {
>>                  rk808_i2c_client = client;
>>                  pm_power_off = pm_pwroff_fn;
>>          }
>>
>> 2/ the poweroff command would call kernel_power_off:
>> kernel/reboot.c:
>> void kernel_power_off(void)
>> {
>> ...
>>          machine_power_off();
>> }
>>
>> 3/ arm64's machine_power_off() would call pm_power_off to let rk808
>> cutoff the power.
>
> Doesn't PSCI's pm_power_off take precedence, though? This sounds similar
> to what my RK3328 does - I looked into that briefly a while ago, and
> from what I remember it appeared that the firmware SYSTEM_OFF handler
> tries to turn off the PMIC by driving the SLEEP pin, but the kernel
> driver never actually configures it into the correct mode for that to
> work. Thus the box just ends up spinning in the firmware until you pull
> the plug manually.

hmmm, right, it should be psci's power off.

and i checked the BSP kernel, the rk808 driver switched to use 
pm_power_off_prepare and syscore_ops->shutdown there

>
>>> With Linux kernel 4.16, when reaching the halted state, the HDMI console
>>> shows the last messages before halting.
>> if it ends up halted, maybe something wrong during setup the
>> pm_power_off?
>> kernel/reboot.c:
>>          /* Instead of trying to make the power_off code look like
>>           * halt when pm_power_off is not set do it the easy way.
>>           */
>>          if ((cmd == LINUX_REBOOT_CMD_POWER_OFF) && !pm_power_off)
>>                  cmd = LINUX_REBOOT_CMD_HALT;
>>
>>>
>>> With 4.17.0-rc3, when reaching the halted state, the HDMI console
>>> shows colorful static noise.
>>>
>> we've added a shutdown() to the iommu driver:
>> https://patchwork.kernel.org/patch/10230817/
>>
>> any chance related?
>
> For sure - the IOMMU shutdown disables paging, so if the VOP is still
> scanning out then that will result in whatever IOVAs it was using now
> going straight out onto the bus as physical addresses. Between the
> RK3399 memory map and the way the IOVA allocator works, that probably
> means it's reading from all over the peripherals region, which, er,
> isn't ideal.
>
> Robin.
>
>
>
