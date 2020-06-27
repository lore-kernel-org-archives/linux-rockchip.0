From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH] rk3399: Add BOOTENV_SF command
Date: Sat, 27 Jun 2020 22:05:14 +0800
Message-ID: <9acd9503-e31f-c9af-4434-da66d47f79c4@rock-chips.com>
References: <20200608141708.31844-1-jagan@amarulasolutions.com>
 <CAMty3ZDrutZ3CzCt-ZNnjeRfPNeKVRu_ct6oUVSSk_b5tPncvQ@mail.gmail.com>
 <20200626202120.GC8432@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200626202120.GC8432@bill-the-cat>
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
To: Tom Rini <trini@konsulko.com>, Jagan Teki <jagan@amarulasolutions.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Tom,

On 2020/6/27 上午4:21, Tom Rini wrote:
> On Thu, Jun 25, 2020 at 08:32:10PM +0530, Jagan Teki wrote:
>> On Mon, Jun 8, 2020 at 7:47 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>>> Add missing BOOTENV_SF command in rk3399 config.
>>>
>>> Fix it.
>>>
>>> Fixes: f263b860acf8 ("rk3399: Enable SF distro bootcmd")
>>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>>> Reported-by: Suniel Mahesh <sunil@amarulasolutions.com>
>>> Tested-by: Suniel Mahesh <sunil@amarulasolutions.com>
>>> ---
>> Can someone push this fix patch to master?
> Kever, do you want me to pick this up?  Do you have some objection?
> FWIW, include/configs/rk3399_common.h should get listed under some
> MAINTAINER entry directly.  Thanks!

I will apply this patch and send to fix RP.

Thanks,

- Kever
