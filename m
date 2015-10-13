From: Xing Zheng <zhengxing@rock-chips.com>
Subject: Re: [PATCH 1/3] clk: add flag for clocks that need to be enabled
 on rate changes
Date: Tue, 13 Oct 2015 11:34:05 +0800
Message-ID: <561C7BAD.7020401@rock-chips.com>
References: <1929669.AsgMSusdJb@phil> <20151008215840.GJ26883@codeaurora.org> <13378907.1JCOSf8QGs@diego> <37059102.QWiKhRxp8v@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <37059102.QWiKhRxp8v@diego>
Sender: linux-clk-owner@vger.kernel.org
To: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: Stephen Boyd <sboyd@codeaurora.org>, mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, sjoerd.simons@collabora.co.uk, zhengxing <zhengxing@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On 2015=E5=B9=B410=E6=9C=8813=E6=97=A5 00:03, Heiko St=C3=BCbner wrote:
> Am Sonntag, 11. Oktober 2015, 12:41:09 schrieb Heiko St=C3=BCbner:
>> Hi Stephen,
>>
>> Am Donnerstag, 8. Oktober 2015, 14:58:40 schrieb Stephen Boyd:
>>> On 10/02, Heiko St=C3=BCbner wrote:
>>>> Hi,
>>>>
>>>> any comment on these 3 patches?
>>> Dong has a similar problem, but those patches conflate this with
>>> enabling parent clocks during clk_disable_unused() which makes no
>>> sense to me. So I'm ok with the requirement that we turn clocks
>>> on to change rates, but I wonder if in this case we need to turn
>>> on the clock that's changing rates itself, or if we just need to
>>> turn on the parent and/or future parent of the clock during the
>>> rate switch. Care to elaborate on that?
>> As you can see in the follow-up patches, the fractional dividers on =
Rockchip
>> SoCs are quite strange in that they even need to have their _downstr=
eam_
>> mux point to them to actually accept rate changes.
>>
>> The register value always reflects the value set by the system, but =
hardware
>> really only accepts it if the clock is enabled and even the downstre=
am mux
>> selects the fractional divider as parent (they call it a auto-gating
>> feature).
>>
>> So in the worst (and current) case, you end up with the register sho=
wing the
>> right value, but the hardware can use completely different dividers =
from
>> the previous setting.
>>
>> That strange behaviour got quite deeply investigated between Rockchi=
p and
>> Google engineers who stumbled upon this in the first place, so I'm
>> reasonably sure this is the right solution for that clock type :-) .
> Xing Zheng now also independently stumbled upon this issue with his r=
k3036
> work. And came to the same conclusion that the gate must be enabled a=
s well as
> the downstream mux be set to the fractional divider for it to actuall=
y accept
> a new setting.
Yes, I discussed such problems with Heiko about the question:
The RK3036 i2s frac(CRU_SEL7_CON) set value is invalid when I playback =
a=20
48KHz music:
/ # io -4 0x20000060
20000060: 01003057
read register is 0x01003057, but the result of frac divider on the basi=
s=20
of default 0x0bb8ea60(numerator=3D3000, denominator=3D60000, ratio=3D20=
), so=20
the out of mclk remains 594/20=3D29.7MHz

I tracked the logs:
[ 49.770322] clk_fd_set_rate: 91, name: i2s_frac, rate =3D 12288000,=20
parent_rate =3D 594000000
[ 49.778524] clk_fd_set_rate: 107, name: i2s_frac, val =3D 0x01003057
[ 49.784714] clk_fd_recalc_rate: 29, name: i2s_frac, parent_rate =3D 59=
4000000
[ 49.791707] clk_fd_recalc_rate: 47, name: i2s_frac, val =3D 0x01003057=
, m=20
=3D 256, n =3D 12375
[ 49.799836] clk_mux_set_parent: 81, name: i2s_pre
It seem like set i2s_frac_div then set mux is i2s_pre. I think we shoul=
d=20
select the correct mux and open clock gate, then set the i2s_frac_div,=20
and I tried to do it, setting i2s_frac_div is vaild and mclk is=20
12.288MHz. Therefore, I think that select parent mux and enable gate=20
should before child node set value.

Thanks. :)

