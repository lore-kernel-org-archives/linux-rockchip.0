From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 1/2] Revert "rockchip: spi: fix off-by-one in chunk size
 computation"
Date: Mon, 23 Dec 2019 10:28:47 +0800
Message-ID: <e02f612b-2148-fb85-b0ca-8925cef4d22b@rock-chips.com>
References: <20191211132623.430-1-jagan@amarulasolutions.com>
 <20191211132623.430-2-jagan@amarulasolutions.com>
 <1E12E6D7-5401-4EF5-9D74-DFC6F8216799@theobroma-systems.com>
 <CAMty3ZDoNCCMPTC_OoAyEwOoSMsa79KRmW9+LTC8opbinUiYPg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZDoNCCMPTC_OoAyEwOoSMsa79KRmW9+LTC8opbinUiYPg@mail.gmail.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/21 下午3:32, Jagan Teki wrote:
> Hi Philipp,
>
> On Wed, Dec 11, 2019 at 7:10 PM Philipp Tomsich
> <philipp.tomsich@theobroma-systems.com> wrote:
>>
>>
>>> On 11.12.2019, at 14:26, Jagan Teki <jagan@amarulasolutions.com> wrote:
>>>
>>> The maximum transfer length (in a single transaction) for the Rockchip
>>> SPI controller is 64Kframes (i.e. 0x10000 frames) of 8bit or 16bit
>>> frames and is encoded as (num_frames - 1) in CTRLR1.
>>>
>>> So the 0x10000 is offset value for 64K but the actual size value would
>>> be 'minus 1' from 0x10000.
>> NAK. Please see 2 code lines below your change to see that the “minus 1”
>> is applied there… so a todo of 0x10000 will write 0xffff to regs->ctrlr1.
>>
>> The problem must be somewhere else and this patch will only mask the
>> underlying issue.
> Please check the below changes. the max transfer size is 64K - 1 which
> is 0xffff and we need to write -1 of this to cr1.

Yep, the counter is 16bit, and the actual max size will be 0xffff and 
the max available value in reg should

be 0xffff-1.


Thanks,

- Kever

>
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/spi/spi-rockchip.c?id=5185a81c02d4118b11e6cb7b5fbf6f15ff7aff90
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/spi/spi-rockchip.c?id=04b37d2d02c0a5ae2f4e59326ef6deaff18e0456
>
>
