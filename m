From: zhengxing <zhengxing@rock-chips.com>
Subject: Re: [PATCH v3 5/8] clk: rockchip: add new clock type and controller for rk3036
Date: Thu, 1 Oct 2015 16:46:21 +0800
Message-ID: <39D164F7-3461-42FE-8D5D-B30756C86DD8@rock-chips.com>
References: <1443492833-15630-1-git-send-email-zhengxing@rock-chips.com> <1443492833-15630-6-git-send-email-zhengxing@rock-chips.com> <17410513.afcQr96dHz@diego>
Mime-Version: 1.0 (1.0)
Content-Type: text/plain; charset=gb2312
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <17410513.afcQr96dHz@diego>
Sender: linux-clk-owner@vger.kernel.org
To: =?GB2312?Q?Heiko_St=A8=B9bner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


Hi Heiko,

=B7=A2=D7=D4=CE=D2=B5=C4 iPad
> =D4=DA 2015=C4=EA10=D4=C21=C8=D5=A3=AC16:12=A3=ACHeiko St=A8=B9bner <=
heiko@sntech.de> =D0=B4=B5=C0=A3=BA
>=20
> Am Dienstag, 29. September 2015, 10:13:50 schrieb Xing Zheng:
>> The rk3036's pll and clock are different with base on the rk3066(rk3=
188,
>> rk3288, rk3368 use it), there are different adjust foctors and contr=
ol
>> registers, so these should be independent and separate from the seri=
es
>> of rk3066s.
>=20
> subject should probably be like
> clk: rockchip: add new pll-type for rk3036 and similar socs
OK.
>=20
> And the general handling should probably be implemented similar to th=
e example=20
> I posted in the v2 thread yesterday. [of course folded in and not as =
a=20
> separate patch ;-) ]
>=20
> Heiko
>=20
OK, because I just received and saw this patch, and I will test and upd=
ate it into next version patchset.


Thank you. :)
