From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] clk: rockchip: remove ROCKCHIP_SOFTRST_HIWORD_MASK for rockchip platform
Date: Fri, 03 Jun 2016 09:29:03 +0200
Message-ID: <1853369.vjRjVRadgx@diego>
References: <1464915288-10877-1-git-send-email-shawn.lin@rock-chips.com> <5750DC85.4040400@rock-chips.com> <7fdf43a9-58d4-d6a8-d863-a7e265c93a06@kernel-upstream.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <7fdf43a9-58d4-d6a8-d863-a7e265c93a06@kernel-upstream.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@kernel-upstream.org>
Cc: Xing Zheng <zhengxing@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

Am Freitag, 3. Juni 2016, 11:35:32 schrieb Shawn Lin:
> =E5=9C=A8 2016/6/3 9:25, Xing Zheng =E5=86=99=E9=81=93:
> > On 2016=E5=B9=B406=E6=9C=8803=E6=97=A5 08:54, Shawn Lin wrote:
> >> I check all the Socs including RK2928/3000/3066/3028X/316X/312X/
> >> 3190/3188/3228/3368/3399/3036, and find all of them use high 16-bi=
t
> >> as write mask. Obviously we don't need ROCKCHIP_SOFTRST_HIWORD_MAS=
K
> >> any more(actually I don't know why we need it before). This patch
> >> removes it to simplify the code and save a little cpu cycle when c=
alling
> >> assert or deassert callback.
> >=20
> > In my opinion, this flag can be used for compatibility, we can not
> > ensure that our SoCs will not use the 32bit SOFTRST_CONs in future.
> >=20
> > Thanks.
>=20
> Thanks for sharing your thought.
>=20
> I'm not 100% sure, but I'm 99% sure about we won't let
> it happened. You have to consider the backward compatibility
> rather than the future ones. If you got a chip with 10 bit, or
> 8bit for SOFTRST_CONX, so how do you wanna deal with it?
> Should we now add  ROCKCHIP_SOFTRST_X_BIT_MASK?  :)

older SoCs like the rk2818 (ARM9-based) do actually use 32bit softrst=20
registers. And if I ever get my hands on one of those, I'd actually try=
 to=20
support it :-) .

So I'd really like to keep the flag.

Heiko
