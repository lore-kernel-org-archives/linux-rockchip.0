From: Alexander Graf <agraf@csgraf.de>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Date: Mon, 20 Jan 2020 18:40:39 +0100
Message-ID: <8dddd74f-7b17-a614-48ab-aea0bc9148db@csgraf.de>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
 <20200120172240.GX8732@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200120172240.GX8732@bill-the-cat>
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
Cc: linux-rockchip@lists.infradead.org, Heinrich Schuchardt <xypron.glpk@gmx.de>, u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


On 20.01.20 18:22, Tom Rini wrote:
> +A few people that may have insight to my question
>
> On Sat, Dec 21, 2019 at 01:24:31PM +0530, Jagan Teki wrote:
>
>> Add distro boot command support for SPI flash.
>>
>> This distro boot will read the boot script at specific
>> location at the flash and start sourcing the same.
>>
>> The common macro like BOOTENV_SHARED_FLASH would help
>> to extend the support for nand flash in future.
>>
>> Cc: Tom Rini <trini@konsulko.com>
>> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> What distro is this for?  My concern here is that hundreds of boards
> (literally) grow by a few hundred bytes to add in this bit of additional
> default logic.  That's not a big problem if distributions are now going
> to be using SPI flash as where they're programming in their bootscript.
> But, who is doing that?  Thanks!


I am not aware of any "distro" that puts a U-Boot script at offset 0 of 
the SPI Flash.

Traditionally, SPI Flash boot setups were always very hand crafted - 
exactly the opposite of what distro boot is for. That said, I think 
supporting SPI Flash boot for rk3399 is great! Albeit I would personally 
only store U-Boot and the environment on SPI, not the target OS.

Jagan, is putting a U-Boot script on the SPI Flash something you thought 
of or something that the rk3399 reference board already does? If it's 
the latter, maybe you could add it as a board custom boot function?


Alex
