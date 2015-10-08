From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH 1/3] clk: add flag for clocks that need to be enabled on
 rate changes
Date: Thu, 8 Oct 2015 14:58:40 -0700
Message-ID: <20151008215840.GJ26883@codeaurora.org>
References: <1929669.AsgMSusdJb@phil>
 <3137165.kmu68gRS44@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3137165.kmu68gRS44@diego>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, sjoerd.simons@collabora.co.uk
List-Id: linux-rockchip.vger.kernel.org

On 10/02, Heiko St=FCbner wrote:
> Hi,
>=20
> any comment on these 3 patches?
>=20

Dong has a similar problem, but those patches conflate this with
enabling parent clocks during clk_disable_unused() which makes no
sense to me. So I'm ok with the requirement that we turn clocks
on to change rates, but I wonder if in this case we need to turn
on the clock that's changing rates itself, or if we just need to
turn on the parent and/or future parent of the clock during the
rate switch. Care to elaborate on that?

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
