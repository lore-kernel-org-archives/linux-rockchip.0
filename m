From: Xing Zheng <zhengxing@rock-chips.com>
Subject: Re: [PATCH v2 3/9] clk: rockchip: add clock controller for rk3036
Date: Thu, 24 Sep 2015 11:31:58 +0800
Message-ID: <56036EAE.9040201@rock-chips.com>
References: <1442478540-15068-1-git-send-email-zhengxing@rock-chips.com> <1442478540-15068-4-git-send-email-zhengxing@rock-chips.com> <1775899.zcIuq65f1o@diego> <5603683F.4020302@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <5603683F.4020302@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2015=E5=B9=B409=E6=9C=8824=E6=97=A5 11:04, Xing Zheng wrote:
>>>
>>>   #define RK3066_PLL_RATE(_rate, _nr, _nf, _no)    \
>>> @@ -95,12 +106,31 @@ enum rockchip_pll_type {
>>>       .nb =3D _nb,                        \
>>>   }
>>>
>>> +#define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,    \
>>> +            _postdiv2, _dsmpd, _frac)        \
>>> +{                                \
>>> +    .rate    =3D _rate##U,                    \
>>> +    .fbdiv =3D _fbdiv,                    \
>>> +    .postdiv1 =3D _postdiv1,                    \
>>> +    .refdiv =3D _refdiv,                    \
>>> +    .postdiv2 =3D _postdiv2,                    \
>>> +    .dsmpd =3D _dsmpd,                    \
>>> +    .frac =3D _frac,                        \
>>> +}
>>> +
>>>   struct rockchip_pll_rate_table {
>>>       unsigned long rate;
>>>       unsigned int nr;
>>>       unsigned int nf;
>>>       unsigned int no;
>>>       unsigned int nb;
>>> +    /* for RK3036 */
>>> +    unsigned int fbdiv;
>>> +    unsigned int postdiv1;
>>> +    unsigned int refdiv;
>>> +    unsigned int postdiv2;
>>> +    unsigned int dsmpd;
>>> +    unsigned int frac;
>> same for these 2 ... should be part of the pll addition itself
>   };
> Done.
>
Sorry, I have one question:
The "struct rockchip_pll_rate_table" is called in "rockchip/clk-pll.c"=20
on many functions, I think I could add a struct like:
struct rk3036_pll_rate_table {
     unsigned int fbdiv;
     unsigned int postdiv1;
     unsigned int refdiv;
     unsigned int postdiv2;
     unsigned int dsmpd;
     unsigned int frac;
};
but, it will add many redundancy codes in "rockchip/clk-pll.c" just for=
=20
call "struct rk3036_pll_rate_table".

Thanks.


