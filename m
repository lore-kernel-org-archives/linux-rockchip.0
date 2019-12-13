From: Kever Yang <kever.yang@rock-chips.com>
Subject: =?UTF-8?B?UmU6IHJrMzMyOC1maXJlZmx5IGRkcjQgdHBsIGluaXTjgJDor7fms6g=?=
 =?UTF-8?B?5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytrZXZlci55YW5n?=
 =?UTF-8?B?PXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
Date: Fri, 13 Dec 2019 11:22:46 +0800
Message-ID: <70b1e484-2909-8296-bbd7-3026bf3b576c@rock-chips.com>
References: <CAMdYzYpbhAT5EfJv2SuC8GZE3q3juUXCwtbAX8SW9eXiC5AP2g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMdYzYpbhAT5EfJv2SuC8GZE3q3juUXCwtbAX8SW9eXiC5AP2g@mail.gmail.com>
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
To: Peter Geis <pgwipeout@gmail.com>, u-boot@lists.denx.de
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Peter,

On 2019/12/5 上午10:19, Peter Geis wrote:
> Good Evening,
>
> I am trying to get TPL/SPL working on the rk3328-firefly ddr4 4gb board.
> I've pulled the ddr4 dtsi from the rockchip u-boot repository [0].
>
> Unfortunately I cannot get the ddr4 to detect correctly.


Yes, the ddr4 support for rk3328 is missing now, we will update it some 
time later.


Thanks,

- Kever

>
> With the u-boot tpl, I get the following:
> U-Boot TPL 2020.01-rc3-00072-g1a1bea82b2-dirty (Dec 04 2019 - 08:33:54)
> data training error
> row errordata training error
> DDR4, 333MHz
> BW=16 Col=10 Bk=4 BG=2 CS0 Row=17 CS=1 Die BW=16 Size=2048MB
>
> With the rk3328_ddr_333MHz_v1.16.bin, I get the following:
> DDR version 1.16 20190528
> ID:0x805 N
> In
> DDR4
> 333MHz
> Bus Width=32 Col=10 Bank=4 Bank Group=2 Row=16/16 CS=2 Die
> Bus-Width=16 Size=4096MB
> ddrconfig:19
> OUT
>
> [0] https://github.com/rockchip-linux/u-boot/blob/next-dev/arch/arm/dts/rk3328-sdram-ddr4-666.dtsi
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
