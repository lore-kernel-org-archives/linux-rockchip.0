From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: set rk3399 dynamic CPU power coefficients
Date: Wed, 28 Jun 2017 17:45:03 +0200
Message-ID: <3456973.xqkASENUTq@phil>
References: <20170623170737.46265-1-briannorris@chromium.org> <20170623170737.46265-3-briannorris@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170623170737.46265-3-briannorris@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Caesar Wang <wxt@rock-chips.com>, Doug Anderson <dianders@chromium.org>, linux-arm-kernel@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 23. Juni 2017, 10:07:37 CEST schrieb Brian Norris:
> Provide the dynamic power coefficient of the big and little CPU
> clusters. These numbers are currently in use on the Samsung Chromebook
> Plus ("Kevin").
> 
> The power allocator thermal governor doesn't know how to do anything if
> it doesn't get power parameters from its cooling devices (in this case,
> CPUfreq). So this effectively enables the power-allocator governor.
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

applied for 4.14 after extending the property to all cpu cores.


Thanks
Heiko
