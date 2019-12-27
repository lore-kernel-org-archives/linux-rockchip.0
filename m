From: Soeren Moch <smoch@web.de>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
Date: Fri, 27 Dec 2019 14:19:01 +0100
Message-ID: <30fdf54b-0f71-ffbf-ac57-51050a29b56d@web.de>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
 <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
 <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
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



On 27.12.19 13:04, Jagan Teki wrote:
> On Fri, Dec 27, 2019 at 4:00 PM Soeren Moch <smoch@web.de> wrote:
>> Hi!
>>
>> On 27.12.19 07:50, Jagan Teki wrote:
>>> Hi Kever,
>>>
>>> On Mon, Dec 23, 2019 at 8:04 AM Kever Yang <kever.yang@rock-chips.com=
> wrote:
>>>> Jagan,
>>>>
>>>>
>>>> On 2019/12/21 =E4=B8=8B=E5=8D=883:54, Jagan Teki wrote:
>>>>> Most of the SPI flash devices in rockchip are 16MiB size.
>>>>>
>>>>> So, keeping U-Boot proper offset start from 128MiB with 1MiB
>>>>> size and then start env of 8KiB would be a compatible location
>>>>> between all variants of flash sizes.
>>>>>
>>>>> This patch add env start from 0x14000 with a size of 8KiB.
>>>> What's the space map in SPI flash suppose to be? Including
>>>> tpl/spl/u-boot.itb
>>>>
>>>> I would prefer to use 128KiB-8KiB as the env start address, we'd bet=
ter
>>>> to avoid the
>>>>
>>>> risk of overlap between the env space and the firmware space.
>>> Here is the 16MiB flash layout, I have used. I can see the loader1
>>> (tpl/spl) can be possible to load at 0x0 or 0x32K so I have given the=

>>> space for it. and 8K env after loader2(u-boot). let me know your
>>> thoughts?
>> Why we cannot use the same layout as what is defined for SD/eMMC:
>> http://opensource.rock-chips.com/wiki_Partitions
>>
>>
>>
>>>           0x0 - 0x8000,       32K  =3D>  reserved/loader1
>>>     0x8000 - 0x40000,    224K =3D>  loader1
>>>   0x40000 - 0x140000,    1M  =3D>  loader2
>>> 0x140000 - 0x142000,    8K  =3D>   env
>>> 0x142000 - 0x842000,    7M  =3D>  kernel
>>> 0x842000 - 0x853800,  100K =3D>  dtb
>>> 0x853800 -                             =3D>  root
>> These small loader1/loader2 partitions may byte us later when newer
>> u-boot versions only will fit for SD and not for SPI anymore.
> Yes, the initial idea is to reuse the existing SD layout but the SPI
> flash is limited in size, and it is further limited in rk3399 boards
> (rockpro64, roc-rk3399-pc..). which is 16MiB. So reusing half of the
> flash size will occupy for till loader2 in SD scheme.
Exactly. On my RockPro64 SPI flash size is 16MiB. This covers everything
up to "boot", especially loader1, loader2, and U-Boot ENV. Probably the
SPI on these boards is sized this way to exactly match this use case.
What should be the advantage of only using half of the available memory?
>> The reserved space for kernel is already too small for normal kernel
>> builds today, not to mention a root filesystem.
>>
>> Are there any use cases where somebody needs to place boot and root
>> partitions on SPI flash?
> So, explained above due to size limitation the respective blocks like
> kernel, root (we can say initrd) are indeed less-sized partitions.
> Moreover SPI flash is not a suitable storage for rootfs in rockchip,
> since the boot order start from SPI flash usually board would boot
> from flash and then look for SD, eMMC, PCIe NVM for loading big chunk
> rootfs.
>
> More or less the idea of above flash layout is to fit properly
> with-in-the size boundaries and indeed for small initramfs systems.
We use distroboot in the defconfigs of these boards, so no separate
space for kernel or initrd is required in (raw) flash, these blobs are
always loaded from the boot partition instead.
Besides that, kernels for my RockPro64 are bigger (12MiB - 20MiB) than
the availbale space in SPI anyway, with additional ~5MiB for initrd.

My use case for SPI would be to store u-boot+SPL+TPL+ATF+environment
there, so that I can use a single combined root+boot partition on a SD
card / USB disk.
So I think the easiest, least confusing, and future-proof=C2=A0 SPI parti=
tion
scheme would be to use exactly what is defined already for SD/eMMC.

Soeren
