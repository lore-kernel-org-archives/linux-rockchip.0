From: Michael Niewoehner <linux@mniewoehner.de>
Subject: Re: [PATCH v2] clk: rockchip: Add pclk_peri to critical clocks on RK3066/RK3188
Date: Thu, 10 Sep 2015 18:40:02 +0200
Message-ID: <994A907A-09DB-419C-9BD5-772B379D02B3@mniewoehner.de>
References: <1440322357-2621-1-git-send-email-romain.perier@gmail.com> <CABgxDo+otZrYoqTNK-ea=L6Dsd5p_b_MFCi4H4XJZZ25PV_qnA@mail.gmail.com> <CABgxDoLgqfzO-Sb_rKHe=-GuMaKWMihHhktx6sDSM6M=Q+Koaw@mail.gmail.com> <20150904162402.GN15099@codeaurora.org> <CABgxDo+0qN5GJdCNpQi4g_CdW67PvxsogMseRoAa5cuAbWk1wQ@mail.gmail.com> <CABgxDoJRdF_k0EZLrEWXqpDrmj5LVRL24izGLJY4AmtUNOk7PQ@mail.gmail.com> <20150909214705.GV15099@codeaurora.org> <CABgxDo+8xPs-GOWnWhBnVN6xXn41=Dm_pTHpDyA2uoCrg93=Mw@mail.gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <CABgxDo+8xPs-GOWnWhBnVN6xXn41=Dm_pTHpDyA2uoCrg93=Mw@mail.gmail.com>
Sender: linux-clk-owner@vger.kernel.org
To: Stephen Boyd <sboyd@codeaurora.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Michael Turquette <mturquette@baylibre.com>, =?windows-1252?Q?Heiko_St=FCbner?= <heiko@sntech.de>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, linux-clk@vger.kernel.org, Romain Perier <romain.perier@gmail.com>
List-Id: linux-rockchip.vger.kernel.org


Am 10.09.2015 um 09:05 schrieb Romain Perier <romain.perier@gmail.com>:

> It was based on linux-next few weeks ago. I will rebase it today and =
send a v3.
>=20
> 2015-09-09 23:47 GMT+02:00 Stephen Boyd <sboyd@codeaurora.org>:
>> On 09/09, Romain Perier wrote:
>>> so, which of you does take the patch for -rc1 ?
>>>=20
>> Is there some other patch out there that's also needed?
>=20
> No, that's a single patch.
>=20
> Romain
>=20

Hi Stephen,

Romain=92s patch was applied after mine in his github tree so you=92ll =
need to apply that first: [PATCH v3] clk: rockchip: add pclk_cpu to the=
 list of rk3188 critical clocks

Best regards
Michael


