From: Xing Zheng <zhengxing@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: add pclk_vio_grf to critical clock on the
 RK3399
Date: Tue, 14 Jun 2016 11:02:09 +0800
Message-ID: <575F73B1.9000703@rock-chips.com>
References: <1465724913-14553-1-git-send-email-zhengxing@rock-chips.com>
 <CAD=FV=XSSPMOnMD3mqFyqM3wWLShbRc2cXVdN0PYcUxpaDnsTw@mail.gmail.com>
 <575E240C.9060502@rock-chips.com>
 <CAD=FV=WhaN__psCV_hYoc67gZMpCt_9yp5=vR-C4uc8i39RAaA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=WhaN__psCV_hYoc67gZMpCt_9yp5=vR-C4uc8i39RAaA@mail.gmail.com>
Sender: linux-clk-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, elaine zhang <elaine.zhang@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, Brian Norris <briannorris@chromium.org>, Yakir Yang <ykk@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

On 2016=E5=B9=B406=E6=9C=8814=E6=97=A5 07:46, Doug Anderson wrote:
>
> Even if it's not much power, it seems like we should still turn it of=
f
> and on in the right place.  Unless I'm mistaken it should be such a
> simple patch provide the clock to the right driver and then get the
> clock when appropriate.
Yes, I talked with Yakir and we intent to enable/disable the=20
pclk_vio_grf in video drivers,
so this patch will be dropped.
>> I will refer the latest TRM to update a new patch for always enable =
these
>> GRFs.
> Does that mean you're going to make these all critical clocks?  That
> doesn't sound so great...
>
> -Doug
Maybe, I heard that they are removed in the updated TRM, but I have not=
=20
got the TRM yet.
I will double check it, and it seems that you do not agree to remove=20
these clock...

Thanks.

--=20
- Xing Zheng


