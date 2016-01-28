From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Allow sclk_i2s0 and i2s0_frac to change their parents rate on rk3188
Date: Thu, 28 Jan 2016 18:01:08 +0100
Message-ID: <1687954.9WCMHmWDJQ@diego>
References: <1453897469-2134-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1453897469-2134-1-git-send-email-al.kochet@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alexander Kochetkov <al.kochet@gmail.com>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Alexander,

Am Mittwoch, 27. Januar 2016, 15:24:29 schrieb Alexander Kochetkov:
> Allow sclk_i2s0 and i2s0_frac to change their parents rate as
> that the upstream dividers are purely there to feed sclk_i2s0
> 
> Tested on radxarock-lite.
> 
> Signed-off-by: Alexander Kochetkov <al.kochet@gmail.com>

doesn't apply due to the fractional divider change going into 4.5

please respin on top of 4.5-rc1 (or my clock-branch for 4.6 [0],
but should be the same in that regard).


Thanks
Heiko

[0] https://git.kernel.org/cgit/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v4.6-clk/next
