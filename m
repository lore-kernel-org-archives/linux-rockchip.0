From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 1/7] clk: rockchip: add clock flag parameter when register pll
Date: Fri, 05 Aug 2016 00:37:03 +0200
Message-ID: <4870605.nd4Eof6Gm1@phil>
References: <1469779021-10426-1-git-send-email-hl@rock-chips.com> <1469779021-10426-2-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1469779021-10426-2-git-send-email-hl@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Lin Huang <hl@rock-chips.com>
Cc: cw00.choi@samsung.com, tixy@linaro.org, dbasehore@chromium.org, airlied@linux.ie, mturquette@baylibre.com, typ@rock-chips.com, sboyd@codeaurora.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, dianders@chromium.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, linux-arm-kernel@lists.infradead.org, mark.yao@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 29. Juli 2016, 15:56:55 schrieb Lin Huang:
> From: Heiko Stübner <heiko@sntech.de>
> 
> add clock flag parameter so we can pass specific clock flag
> (like CLK_GET_RATE_NOCACHE etc..)to pll driver.
> 
> Signed-off-by: Heiko Stübner <heiko@sntech.de>
> Signed-off-by: Lin Huang <hl@rock-chips.com>

applied to my clock branch for 4.9 after some minor edits on the commit 
message.


Thanks
Heiko
