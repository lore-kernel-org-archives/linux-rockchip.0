From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
Date: Fri, 27 Dec 2019 18:02:46 +0800
Message-ID: <ea1db706-33dc-91db-eafd-e925c36dae81@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
Content-Language: en-US
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


On 2019/12/27 下午2:50, Jagan Teki wrote:
> Hi Kever,
>
> On Mon, Dec 23, 2019 at 8:04 AM Kever Yang <kever.yang@rock-chips.com> wrote:
>> Jagan,
>>
>>
>> On 2019/12/21 下午3:54, Jagan Teki wrote:
>>> Most of the SPI flash devices in rockchip are 16MiB size.
>>>
>>> So, keeping U-Boot proper offset start from 128MiB with 1MiB
>>> size and then start env of 8KiB would be a compatible location
>>> between all variants of flash sizes.
>>>
>>> This patch add env start from 0x14000 with a size of 8KiB.
>> What's the space map in SPI flash suppose to be? Including
>> tpl/spl/u-boot.itb
>>
>> I would prefer to use 128KiB-8KiB as the env start address, we'd better
>> to avoid the
>>
>> risk of overlap between the env space and the firmware space.
> Here is the 16MiB flash layout, I have used. I can see the loader1
> (tpl/spl) can be possible to load at 0x0 or 0x32K so I have given the
> space for it. and 8K env after loader2(u-boot). let me know your
> thoughts?
>
>            0x0 - 0x8000,       32K  =>  reserved/loader1
>      0x8000 - 0x40000,    224K =>  loader1
>    0x40000 - 0x140000,    1M  =>  loader2
> 0x140000 - 0x142000,    8K  =>   env
> 0x142000 - 0x842000,    7M  =>  kernel
> 0x842000 - 0x853800,  100K =>  dtb

spi NOR need 4KB as erase size, so this may need update , other item 
looks ok.


Thanks,

- Kever

> 0x853800 -                             =>  root
>
> Jagan.
>
>
