From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 9/9] ARM: dts: rockchip: add pl330-broken-no-flushp quirk for rk3036 SoCs
Date: Sun, 17 Jan 2016 20:20:48 +0100
Message-ID: <2986016.zV0HQZEBmn@phil>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com> <1452865796-23527-10-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1452865796-23527-10-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, leozwang@google.com, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, keescook@google.com
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Am Freitag, 15. Januar 2016, 21:49:56 schrieb Caesar Wang:
> Pl330 integrated in rk3036 platform that doesn't support
> DMAFLUSHP function. So we add 'arm,pl330-broken-no-flushp' quirk
> for rk3036.
> 
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>

can you try to find out if Shawn plans on respinning his work on the pl330 
quirk that is needed for this. His last submission seems to be from october.


Thanks
Heiko
