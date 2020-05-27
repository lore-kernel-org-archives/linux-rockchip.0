From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] Revert "clk: rockchip: fix wrong mmc sample phase shift for rk3328"
Date: Tue, 26 May 2020 23:36:04 -0700
Message-ID: <159056136421.88029.13822814553469355422@swboyd.mtv.corp.google.com>
References: <e563eea358181446dc42c99e842c33f7ce911936.1589460539.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <e563eea358181446dc42c99e842c33f7ce911936.1589460539.git.robin.murphy@arm.com>
Sender: linux-clk-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de, mturquette@baylibre.com
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Quoting Robin Murphy (2020-05-14 05:58:14)
> This reverts commit 82f4b67f018c88a7cc9337f0067ed3d6ec352648.
>=20
> According to a subsequent revert in the vendor kernel, the original
> change was based on unclear documentation and was in fact incorrect.
>=20
> Emprically, my board's SD card at 50MHz and eMMC at 200MHZ seem to get
> lucky with a phase where it had no impact, but limiting the eMMC clock
> to 150MHz to match the nominal limit for the I/O pins made it virtually
> unusable, constantly throwing errors and retuning. With this revert, it
> starts behaving perfectly at 150MHz too.
>=20
> Fixes: 82f4b67f018c ("clk: rockchip: fix wrong mmc sample phase shift for=
 rk3328")
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---

Heiko?
