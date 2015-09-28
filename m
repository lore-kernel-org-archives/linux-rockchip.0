From: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: set rockchip-specific uboot bootmode flags on reboot
Date: Mon, 28 Sep 2015 17:56:40 +0800
Message-ID: <56090ED8.9020807@rock-chips.com>
References: <1441716187-29446-1-git-send-email-andy.yan@rock-chips.com>
 <CAPnjgZ0n7aNY7FRnoDYUBEnQAtUO1BWKs6DDzaMQyHsg1kQ1Jg@mail.gmail.com>
 <55FA9EDA.8010308@rock-chips.com> <8498512.JKlZEAjChn@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <8498512.JKlZEAjChn@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Olof Johansson <olof@lixom.net>, khilman@linaro.org
Cc: Russell King - ARM Linux <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>, Simon Glass <sjg@chromium.org>, lk <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org, lak <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko:

On 2015=E5=B9=B409=E6=9C=8823=E6=97=A5 07:16, Heiko St=C3=BCbner wrote:
> Hi Andy,
>
>
> Am Donnerstag, 17. September 2015, 19:07:06 schrieb Andy Yan:
>> On 2015=E5=B9=B409=E6=9C=8810=E6=97=A5 02:05, Simon Glass wrote:
>>> Hi,
>>>
>>> On 8 September 2015 at 16:46, Heiko St=C3=BCbner <heiko@sntech.de> =
wrote:
>>>> Hi Andy,
>>>>
>>>> Am Dienstag, 8. September 2015, 20:43:07 schrieb Andy Yan:
>>>>> rockchip platform have a protocol to pass the the kernel
>>>>> reboot mode to bootloader by some special registers when
>>>>> system reboot.By this way the bootloader can take different
>>>>> action according to the different kernel reboot mode, for
>>>>> example, command "reboot loader" will reboot the board to
>>>>> rockusb mode, this is a very convenient way to get the board
>>>>> to download mode.
>>>>>
>>>>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>>> [...]
>>>>
>>>>> @@ -0,0 +1,22 @@
>>>>> +#ifndef __MACH_ROCKCHIP_LOADER_H
>>>>> +#define __MACH_ROCKCHIP_LOADER_H
>>>>> +
>>>>> +/*high 24 bits is tag, low 8 bits is type*/
>>>>> +#define SYS_LOADER_REBOOT_FLAG   0x5242C300
>>>>> +
>>>>> +enum {
>>>>> +     BOOT_NORMAL =3D 0, /* normal boot */
>>>>> +     BOOT_LOADER,     /* enter loader rockusb mode */
>>>>> +     BOOT_MASKROM,    /* enter maskrom rockusb mode (not support=
 now)
>>>>> */
>>>>> +     BOOT_RECOVER,    /* enter recover */
>>>>> +     BOOT_NORECOVER,  /* do not enter recover */
>>>>> +     BOOT_SECONDOS,   /* boot second OS (not support now)*/
>>>>> +     BOOT_WIPEDATA,   /* enter recover and wipe data. */
>>>>> +     BOOT_WIPEALL,    /* enter recover and wipe all data. */
>>>>> +     BOOT_CHECKIMG,   /* check firmware img with backup part*/
>>>>> +     BOOT_FASTBOOT,   /* enter fast boot mode */
>>>>> +     BOOT_SECUREBOOT_DISABLE,
>>>>> +     BOOT_CHARGING,   /* enter charge mode */
>>>>> +     BOOT_MAX         /* MAX VALID BOOT TYPE.*/
>>>>> +};
>>>>> +#endif
>>>> These flags rely on code in the bootloader to actually handle the =
target
>>>> action. Nowadays this is uboot, but still a rockchip-specific fork=
=2E And
>>>> we're actively moving away from that, with the recent rk3288 addit=
ion to
>>>> mainline uboot.
>>>>
>>>> So unless you convince uboot people that the _underlying special
>>>> functionality_ behind these flags should be part of uboot, I don't=
 think
>>>> this is going to fly.
>>>>
>>>>
>>>> In a way this is similar to gpu kernel code talking to proprietary
>>>> userspace libs - these are also not eligible for the kernel. (mean=
ing
>>>> stuff like the mali kernel driver not being allowed).
>>> I don't want to comment on what Linux does or does not want. But I =
can
>>> see this sort of feature being useful for devs at least. So long as=
 it
>>> is defined in a way that is not Rockchip-specific (and the above en=
um
>>> looks pretty reasonable on that front, I think it makes sense.
>>>
>>> Of course it's a bit odd to target a downstream U-Boot with a Linux
>>> feature. But hopefully Rockchip's U-Boot support and development wi=
ll
>>> move to mainline with time.
>>      Is there any chance for this patch to be landed?
>>      As Simon says, it is useful for development. And
>>      he is upstreaming Rockchip U-boot.
> Sorry that I'm still dragging my feet with this, but I'm still strugg=
ling with
> what to do.
>
> I did talk to the arm-soc maintainers and doing this in general seems=
 to be
> fine. Olof was very in favour, others pointed out that just passing t=
hrough
> the command into the register might be the best solution - without ha=
ving to
> translate stuff in the kernel.
>  =20
    Some commands are very long(recovery,bootloader, fastboot etc),
    they can't be stored into a register directly. And this also bring=20
compatible
    problems to the old boot loader.
>
> So I guess the translation table (string to number) is the thing to t=
alk
> about. I guess my worries are three-fold:
>
> - will this actually be stable or do we get a future where this trans=
lation
> gets to be soc-specific, like "if rk3288 table_a; if rk3368 table_b .=
=2E." ?
      All Rockchip base socs use this mechanism, but this commands may
      stored in different registers in different soc.
>
> - can we trim that down to actually supported modes?
      I have take a look at exynos and msm  android base platforms, the=
y
      use the same mechanism[1][2], so I think many platforms need this
      function.
      [1]=20
https://github.com/droidroidz/Manta_kernel/blob/master/arch/arm/mach-ex=
ynos/board-manta-power.c
      [2]=20
https://github.com/msm7x30/android_kernel_qcom_msm7x30/blob/android-3.1=
0/arch/arm/mach-msm/restart_7k.c

>
> - I forgot that we already have other mass-production bootloaders, so=
 what
> does coreboot on veyron devices do with these register-values?
>
       coreboot use different download mechanism, it doesn't touch this
       register.
> As it is probably also valid for rk3368 and following, I guess it sho=
uld live
> somehow in drivers/soc/rockchip too.
     Yes, rk3368 also need this function, so maybe we should put it in
     drivers/soc/rockchip.

     Thanks.
>
>
> Heiko
>
>>>> [...]
>>>>
>>>>> +static int rockchip_reboot_notify(struct notifier_block *this,
>>>>> +                               unsigned long mode, void *cmd)
>>>>> +{
>>>>> +     u32 flag;
>>>>> +
>>>>> +     rockchip_get_reboot_flag(cmd, &flag);
>>>>> +     regmap_write(regmap, flag_reg, flag);
>>>>> +
>>>>> +     return NOTIFY_DONE;
>>>>> +}
>>>>> +
>>>>> +static struct notifier_block rockchip_reboot_handler =3D {
>>>>> +     .notifier_call =3D rockchip_reboot_notify,
>>>>> +     .priority =3D 150,
>>>>> +};
>>>> the restart handlers are meant to really only restart the system, =
not to
>>>> execute some actions before the restart happens.
>>>>
>>>> See https://lkml.org/lkml/2015/6/3/707 for a similar case.
>>>>
>>>>
>>>> Heiko
>>> Regards,
>>> Simon
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
