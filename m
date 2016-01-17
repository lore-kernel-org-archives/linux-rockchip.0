From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 4/9] ARM: dts: rockchip: enable the uart0 for kylin board
Date: Sun, 17 Jan 2016 20:23:37 +0100
Message-ID: <3453769.45ZRnt7eYG@phil>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com> <1452865796-23527-5-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1452865796-23527-5-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, leozwang@google.com, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, keescook@google.com
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 15. Januar 2016, 21:49:51 schrieb Caesar Wang:
> This patch is enabling the uart0 for bluetooth module.
> 
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>

applied to my dts32 branch for 4.6,

after moving your uart0 node _above_ the already existing uart2 node.


Heiko
