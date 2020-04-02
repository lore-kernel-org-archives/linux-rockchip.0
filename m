From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
Date: Thu, 2 Apr 2020 17:18:03 +0800
Message-ID: <103f3c97-e223-6718-bb08-0aa2395145a2@rock-chips.com>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
 <20200330181613.29462-2-jagan@amarulasolutions.com>
 <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
 <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Mark Kettenis <mark.kettenis@xs4all.nl>
Cc: Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Anatolij Gustschin <agust@denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Jagan,

On 2020/3/31 下午1:59, Jagan Teki wrote:
> On Tue, Mar 31, 2020 at 1:06 AM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
>>> From: Jagan Teki <jagan@amarulasolutions.com>
>>> Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de,
>>>          linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
>>>          Jagan Teki <jagan@amarulasolutions.com>
>>> Date: Mon, 30 Mar 2020 23:46:10 +0530
>>> Content-Type: text/plain; charset=UTF-8
>>>
>>> Linux supporting assigned-clocks for VOP on rk3399 by assuming
>>> U-Boot not initializing it on this linux commit:
>>>
>>> commit <617f4472bdd3> ("arm64: dts: rockchip: init rk3399 vop clock rates")
>>>
>>> There is no specific need to initialize these assigned clock
>>> in U-Boot as video drivers still work with default aclk and
>>> hclk values. So, these clocks are simply not supported by rk3399
>>> clock driver.
>>>
>>> But, during stdio probe of vidconsole, the device probe
>>> will try to check whether the assigned clocks on that video
>>> console node is initialized or not? and return error if not.
>>>
>>> So, delete these property via -u-boot dtsi as there is
>>> no specific need in U-Boot.
>> Deleting these properties isn't very helpful as it means the U-Boot
>> device tree can no longer be used by the kernel.  Isn't it a better
>> idea to implement these clocks as stubs in the u-boot clock driver?
> I did try this before sorting out these changes, seems like it
> requires a bit more tweaking the clock wrt display code. I really
> didn't see any use case as of now for just to print u-boot log on
> display out, and more over this support has been broken since from
> releases. so bypassing these nodes can be a solutions for now.


I agree with Mark for not touch the dts first. I don't know the detail 
of display driver but:

- The rk3399 driver use to work without touch dts from kernel;

- the clock driver have a rk3399_vop_set_clk() which does not depends on 
dts.


Thanks,

- Kever

>
> Jagan.
>
>
