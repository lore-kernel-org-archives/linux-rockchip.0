From: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [RFC PATCH v1 2/6] clk: rockchip: rk3399: add SCLK_DDRCLK ID for
 ddrc
Date: Fri, 3 Jun 2016 20:47:46 +0800
Message-ID: <3d6d3147-00de-8ba4-a27a-a8f89854f4f7@rock-chips.com>
References: <1464947719-6245-1-git-send-email-hl@rock-chips.com>
 <1464947719-6245-3-git-send-email-hl@rock-chips.com>
 <9d392979-0a20-ca74-9699-2440d07dddd3@rock-chips.com>
 <20637963.iQzVZfJq9f@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <20637963.iQzVZfJq9f@diego>
Sender: linux-clk-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: huangtao@rock-chips.com, dbasehore@chromium.org, Lin Huang <hl@rock-chips.com>, airlied@linux.ie, mturquette@baylibre.com, typ@rock-chips.com, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

=E5=9C=A8 2016/6/3 20:36, Heiko St=C3=BCbner =E5=86=99=E9=81=93:
> Hi Shawn,
>
> Am Freitag, 3. Juni 2016, 20:34:52 schrieb Shawn Lin:
>> How about merge it into your patch#3.
>
> see comments from Doug and me on previous version.
>
> clock-ids should always be separate patches, as we will need them in =
both
> clock and devicetree branches, so they must be in a separate branch s=
hared
> between clock and dts branches.
>

Ah, I missed the previous version as I think it should be from
non-version to v2 rather than from non-version to v1, which IIRC is fro=
m
Doug. :)

Anyway, thanks for explaining this.

>
> Heiko
>
>> On 2016/6/3 17:55, Lin Huang wrote:
>>> Signed-off-by: Lin Huang <hl@rock-chips.com>
>>> ---
>>> Changes in v1:
>>> - None
>>>
>>>  include/dt-bindings/clock/rk3399-cru.h | 1 +
>>>  1 file changed, 1 insertion(+)
>>>
>>> diff --git a/include/dt-bindings/clock/rk3399-cru.h
>>> b/include/dt-bindings/clock/rk3399-cru.h index 50a44cf..8a0f0442 10=
0644
>>> --- a/include/dt-bindings/clock/rk3399-cru.h
>>> +++ b/include/dt-bindings/clock/rk3399-cru.h
>>> @@ -131,6 +131,7 @@
>>>
>>>  #define SCLK_DPHY_RX0_CFG		165
>>>  #define SCLK_RMII_SRC			166
>>>  #define SCLK_PCIEPHY_REF100M		167
>>>
>>> +#define SCLK_DDRCLK			168
>>>
>>>  #define DCLK_VOP0			180
>>>  #define DCLK_VOP1			181
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>


--=20
Best Regards
Shawn Lin

