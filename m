From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 5/9] ARM: dts: rockchip: enable the high speed on sdio for kylin board
Date: Sun, 17 Jan 2016 20:26:37 +0100
Message-ID: <4961569.46y83h10I6@phil>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com> <1452865796-23527-6-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1452865796-23527-6-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, leozwang@google.com, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, keescook@google.com
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 15. Januar 2016, 21:49:52 schrieb Caesar Wang:
> We want to the higher speed for wifi module working.
> 
> Bootup kernel log:
> ...
> mmc_host mmc0: Bus speed (slot 0) = 37125000Hz (slot req 37500000Hz,
> actual 37125000HZ div = 0)
> 
> or run 'cat /sys/kernel/debug/clk/clk_summary |grep phase -C 1' to check
> Otherwise, the mmc0 will run 400khz defalult value to work.
> 
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>

applied to my dts32 branch for 4.6
