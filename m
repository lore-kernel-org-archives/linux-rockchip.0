From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: release io resource when failing to init clk
Date: Mon, 14 Mar 2016 02:01:07 +0100
Message-ID: <22451730.fGu0L5hvan@phil>
References: <1457842402-23765-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <1457842402-23765-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-clk-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Xing Zheng <zhengxing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 13. M=E4rz 2016, 12:13:22 schrieb Shawn Lin:
> We should call iounmap to relase reg_base since it's not going
> to be used any more if failing to init clk.
>=20
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

applied for v4.7

Thanks
Heiko
