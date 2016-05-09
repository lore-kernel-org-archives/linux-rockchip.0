From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [GIT PULL] rockchip clock changes for 4.7 part 4 - some more
 fixes
Date: Mon, 9 May 2016 16:05:16 -0700
Message-ID: <20160509230516.GB3492@codeaurora.org>
References: <16076636.fp1YCeqDWQ@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <16076636.fp1YCeqDWQ@phil>
Sender: linux-clk-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 05/09, Heiko St=FCbner wrote:
> Hi Mike, Stephen,
>=20
> A fixup for a rk3399 clock name as well as the GRF-portions of
> my cleanup series. As Stephen had some mild reservations about the
> introduced indirection in the pll parts and we don't save to much lin=
es
> with my modifications for the currently supported pll-types, I think =
it's
> easier to postpone those until the next new pll type comes around.
>=20
> Maybe it even has some completely different properties to handle wher=
e
> the current "simplification" might even be counter-productive :-) .
>=20
> So please pull if possible.
>=20
> Thanks
> Heiko
>=20
>=20
> The following changes since commit fd8bc829336a24b770247eb893111bcb8f=
1ddedb:
>=20
>   clk: rockchip: fix the rk3399 cifout clock (2016-04-25 22:54:51 +02=
00)
>=20
> are available in the git repository at:
>=20
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.=
git tags/v4.7-rockchip-clk4

Thanks. Pulled.

--=20
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
