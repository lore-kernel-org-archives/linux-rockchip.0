From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH] clk: rockchip: add critical clock for rk3368
Date: Mon, 14 Sep 2015 12:49:54 -0700
Message-ID: <20150914194954.GA21561@codeaurora.org>
References: <5267432.TORlj1Iv40@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5267432.TORlj1Iv40@diego>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>
List-Id: linux-rockchip.vger.kernel.org

On 09/13, Heiko St=FCbner wrote:
> Again a result of the gpio-clock-liberation the rk3368 needs the
> pclk_pd_pmu marked as critical, to boot successfully.
>=20
> Reported-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---

Applied to clk-fixes

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
