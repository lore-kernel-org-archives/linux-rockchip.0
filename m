From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 7/9] ARM: dts: rockchip: add the sdmmc for kylin board
Date: Sun, 17 Jan 2016 20:37:17 +0100
Message-ID: <2230942.JkKsuulFEe@phil>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com> <1452865796-23527-8-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1452865796-23527-8-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, leozwang@google.com, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, keescook@google.com
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 15. Januar 2016, 21:49:54 schrieb Caesar Wang:
> Although We can add the sdmmc node, shouldn't enable it.
> Since the sdmmc is reusing the same pin with uart2.
> Unfortunately, the uart2 is used by the debug port, so that will cause
> the debug information can't display on console if enabling the sdmmc.
> 
> As we have supported the sdmmc (sd card) on hardware for kylin board.
> So, maybe we can have the sdmmc node in kylin dts, not to enable it.
> 
> Anyway, you only need add the okay status if someone want to enable the
> sdmmc.
> 
> e.g.
> if you use the adb to debug with android os.
> You can add the
> status = "okay" to enable the sdmmc for sd card working.
> The defauly status is disabling it.
> 
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>

applied to my dts32 branch for 4.6


Thanks
Heiko
