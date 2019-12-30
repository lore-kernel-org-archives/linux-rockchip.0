From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
Date: Mon, 30 Dec 2019 10:04:22 +0100
Message-ID: <d754e22f-0cb0-31b9-6862-1982dd1df193@web.de>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
 <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
 <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
 <30fdf54b-0f71-ffbf-ac57-51050a29b56d@web.de>
 <CAMty3ZB0B+6ou9=DB-LP0q3R-6Gt_rRrx6b5KLjYNUKeOV_BNQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZB0B+6ou9=DB-LP0q3R-6Gt_rRrx6b5KLjYNUKeOV_BNQ@mail.gmail.com>
Content-Language: en-GB
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On 28.12.19 13:08, Jagan Teki wrote:
> On Fri, Dec 27, 2019 at 6:49 PM Soeren Moch <smoch@web.de> wrote:
>> On 27.12.19 13:04, Jagan Teki wrote:
>>> On Fri, Dec 27, 2019 at 4:00 PM Soeren Moch <smoch@web.de> wrote:
>>>> Hi!
>>>>
>>>> On 27.12.19 07:50, Jagan Teki wrote:
>>>>> Hi Kever,
>>>>>
>>>>> On Mon, Dec 23, 2019 at 8:04 AM Kever Yang <kever.yang@rock-chips.co=
m> wrote:
>>>>>> Jagan,
>>>>>>
>>>>>>
>>>>>> On 2019/12/21 =E4=B8=8B=E5=8D=883:54, Jagan Teki wrote:
>>>>>>> Most of the SPI flash devices in rockchip are 16MiB size.
>>>>>>>
>>>>>>> So, keeping U-Boot proper offset start from 128MiB with 1MiB
>>>>>>> size and then start env of 8KiB would be a compatible location
>>>>>>> between all variants of flash sizes.
>>>>>>>
>>>>>>> This patch add env start from 0x14000 with a size of 8KiB.
>>>>>> What's the space map in SPI flash suppose to be? Including
>>>>>> tpl/spl/u-boot.itb
>>>>>>
>>>>>> I would prefer to use 128KiB-8KiB as the env start address, we'd be=
tter
>>>>>> to avoid the
>>>>>>
>>>>>> risk of overlap between the env space and the firmware space.
>>>>> Here is the 16MiB flash layout, I have used. I can see the loader1
>>>>> (tpl/spl) can be possible to load at 0x0 or 0x32K so I have given th=
e
>>>>> space for it. and 8K env after loader2(u-boot). let me know your
>>>>> thoughts?
>>>> Why we cannot use the same layout as what is defined for SD/eMMC:
>>>> http://opensource.rock-chips.com/wiki_Partitions
>>>>
>>>>
>>>>
>>>>>           0x0 - 0x8000,       32K  =3D>  reserved/loader1
>>>>>     0x8000 - 0x40000,    224K =3D>  loader1
>>>>>   0x40000 - 0x140000,    1M  =3D>  loader2
>>>>> 0x140000 - 0x142000,    8K  =3D>   env
>>>>> 0x142000 - 0x842000,    7M  =3D>  kernel
>>>>> 0x842000 - 0x853800,  100K =3D>  dtb
>>>>> 0x853800 -                             =3D>  root
>>>> These small loader1/loader2 partitions may byte us later when newer
>>>> u-boot versions only will fit for SD and not for SPI anymore.
>>> Yes, the initial idea is to reuse the existing SD layout but the SPI
>>> flash is limited in size, and it is further limited in rk3399 boards
>>> (rockpro64, roc-rk3399-pc..). which is 16MiB. So reusing half of the
>>> flash size will occupy for till loader2 in SD scheme.
>> Exactly. On my RockPro64 SPI flash size is 16MiB. This covers everythin=
g
>> up to "boot", especially loader1, loader2, and U-Boot ENV. Probably the
>> SPI on these boards is sized this way to exactly match this use case.
>> What should be the advantage of only using half of the available memory=
?
I found another Rockchip documentation about SPI usage:
http://opensource.rock-chips.com/wiki_Boot_option

This clearly confirms my assumption: When booting from SPI everything up
to u-boot should reside in SPI, later stages (kernel,...) in "other place"=
.
> To make small systems to full use of Flash. unlike distros, the
> embedded systems that run just with initramfs. Or any update mechanism
> in systems to make flash boot as an update agent and SD or other
> mediums as main systems.
You talk about rockpro64 and roc-rk3399-pc here. These are consumer
boards, intended for end users. These are not "small systems", they
never will be used without other storage than SPI. And as already
mentioned, even a heavily stripped down kernel will not fir in remaining
SPI space. So there is no such use case on these boards.
>>>> The reserved space for kernel is already too small for normal kernel
>>>> builds today, not to mention a root filesystem.
>>>>
>>>> Are there any use cases where somebody needs to place boot and root
>>>> partitions on SPI flash?
>>> So, explained above due to size limitation the respective blocks like
>>> kernel, root (we can say initrd) are indeed less-sized partitions.
>>> Moreover SPI flash is not a suitable storage for rootfs in rockchip,
>>> since the boot order start from SPI flash usually board would boot
>>> from flash and then look for SD, eMMC, PCIe NVM for loading big chunk
>>> rootfs.
>>>
>>> More or less the idea of above flash layout is to fit properly
>>> with-in-the size boundaries and indeed for small initramfs systems.
>> We use distroboot in the defconfigs of these boards, so no separate
>> space for kernel or initrd is required in (raw) flash, these blobs are
>> always loaded from the boot partition instead.
>> Besides that, kernels for my RockPro64 are bigger (12MiB - 20MiB) than
>> the availbale space in SPI anyway, with additional ~5MiB for initrd.
> As I explained above. So, we can skip Linux, rootfs from flash and
> make use of flash layout that compatible between all systems. what is
> the issue with that other than future proof with SD layout.
I'm not sure what you mean here. defconfig on these consumer boards
should be as simple and easy to understand as possible. And for sure it
should be as documented by rockchip. Boot procedure already is
complicated enough, we should not confuse users even more.
>
> I understand your point, but each and every storage medium can have
> it's own usage to make use of full system running. So the partition
> layout would depend on the size and file systems but it shouldn't
> depend on particular software usage, IMHO.
The distroboot feature of u-boot is totally independent of the actual
operating system running later. And distroboot is used now in defconfig,
so what is your problem here?
>> My use case for SPI would be to store u-boot+SPL+TPL+ATF+environment
>> there, so that I can use a single combined root+boot partition on a SD
>> card / USB disk.
>> So I think the easiest, least confusing, and future-proof  SPI partitio=
n
>> scheme would be to use exactly what is defined already for SD/eMMC.
> Less confused in terms of maintenance and easy to understand but it
> may not be used for some corner cases like smaller systems.
If you want to support corner cases, you can for sure do so with adapted
u-boot configs. defconfig for consumer boards should be as easy to
understand and maintain as possible. And that also means it should be as
documented and not confusingly different.

I maintain a different board [1] for years now, and this nowadays
repeatedly causes problems for many developers due to size constraints.
All this because the original board vendor decided to use too small
u-boot partitions. Please do not repeat this mistake here.

Soeren

[1]
https://github.com/u-boot/u-boot/blob/master/board/tbs/tbs2910/MAINTAINERS
