From: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: set rockchip-specific uboot bootmode flags on reboot
Date: Wed, 9 Sep 2015 09:08:55 +0800
Message-ID: <55EF86A7.10306@rock-chips.com>
References: <1441716187-29446-1-git-send-email-andy.yan@rock-chips.com>
 <9364768.6AeuYh3EEP@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <9364768.6AeuYh3EEP@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux@arm.linux.org.uk, olof@lixom.net, khilman@linaro.org, Simon Glass <sjg@chromium.org>, arnd@arndb.de
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko:

On 2015=C3=A5=C2=B9=C2=B409=C3=A6=C2=9C=C2=8809=C3=A6=C2=97=C2=A5 06:46=
, Heiko St=C3=83=C2=BCbner wrote:
> Hi Andy,
>
> Am Dienstag, 8. September 2015, 20:43:07 schrieb Andy Yan:
>> rockchip platform have a protocol to pass the the kernel
>> reboot mode to bootloader by some special registers when
>> system reboot.By this way the bootloader can take different
>> action according to the different kernel reboot mode, for
>> example, command "reboot loader" will reboot the board to
>> rockusb mode, this is a very convenient way to get the board
>> to download mode.
>>
>> Signed-off-by: Andy Yan<andy.yan@rock-chips.com>
> [...]
>
>> @@ -0,0 +1,22 @@
>> +#ifndef __MACH_ROCKCHIP_LOADER_H
>> +#define __MACH_ROCKCHIP_LOADER_H
>> +
>> +/*high 24 bits is tag, low 8 bits is type*/
>> +#define SYS_LOADER_REBOOT_FLAG   0x5242C300
>> +
>> +enum {
>> +	BOOT_NORMAL =3D 0, /* normal boot */
>> +	BOOT_LOADER,     /* enter loader rockusb mode */
>> +	BOOT_MASKROM,    /* enter maskrom rockusb mode (not support now) *=
/
>> +	BOOT_RECOVER,    /* enter recover */
>> +	BOOT_NORECOVER,  /* do not enter recover */
>> +	BOOT_SECONDOS,   /* boot second OS (not support now)*/
>> +	BOOT_WIPEDATA,   /* enter recover and wipe data. */
>> +	BOOT_WIPEALL,    /* enter recover and wipe all data. */
>> +	BOOT_CHECKIMG,   /* check firmware img with backup part*/
>> +	BOOT_FASTBOOT,   /* enter fast boot mode */
>> +	BOOT_SECUREBOOT_DISABLE,
>> +	BOOT_CHARGING,   /* enter charge mode */
>> +	BOOT_MAX         /* MAX VALID BOOT TYPE.*/
>> +};
>> +#endif
> These flags rely on code in the bootloader to actually handle the tar=
get
> action. Nowadays this is uboot, but still a rockchip-specific fork. A=
nd we're
> actively moving away from that, with the recent rk3288 addition to ma=
inline
> uboot.
=C3=82 =C3=82  Sorry, I don't know about this action before, but this i=
s really a=20
very convenient way
=C3=82 =C3=82  to get machine enter download mode, it seems that many A=
ndroid devices
=C3=82 =C3=82  have this function to support commands like "reboot reco=
very",=20
"reboot fastboot".
=C3=82 =C3=82  Why should we moving away from that?
> So unless you convince uboot people that the _underlying special
> functionality_ behind these flags should be part of uboot, I don't th=
ink this
> is going to fly.
>
>
> In a way this is similar to gpu kernel code talking to proprietary us=
erspace
> libs - these are also not eligible for the kernel. (meaning stuff lik=
e the
> mali kernel driver not being allowed).
>
> [...]
>
>> +static int rockchip_reboot_notify(struct notifier_block *this,
>> +				  unsigned long mode, void *cmd)
>> +{
>> +	u32 flag;
>> +
>> +	rockchip_get_reboot_flag(cmd, &flag);
>> +	regmap_write(regmap, flag_reg, flag);
>> +
>> +	return NOTIFY_DONE;
>> +}
>> +
>> +static struct notifier_block rockchip_reboot_handler =3D {
>> +	.notifier_call =3D rockchip_reboot_notify,
>> +	.priority =3D 150,
>> +};
> the restart handlers are meant to really only restart the system, not=
 to
> execute some actions before the restart happens.
>
> Seehttps://lkml.org/lkml/2015/6/3/707  for a similar case.
>
    So maybe I can use reboot notifier here?
   Thank you.
> Heiko
>
>
>
