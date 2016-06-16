From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/4] phy: rockchip-emmc: configure frequency range and drive impedance
Date: Fri, 17 Jun 2016 01:36:05 +0200
Message-ID: <5423702.XfOdFqeCar@phil>
References: <1463092986-61777-1-git-send-email-briannorris@chromium.org> <1463092986-61777-2-git-send-email-briannorris@chromium.org> <20160513210943.GB99074@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160513210943.GB99074@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Doug Anderson <dianders@chromium.org>, Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 13. Mai 2016, 14:09:43 schrieb Brian Norris:
> From: Shawn Lin <shawn.lin@rock-chips.com>
> 
> Signal integrity analysis has suggested we set these values. Do this in
> power_on(), so that they get reconfigured after suspend/resume.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

on my rk3399-evb board the emmc still runs nicely with this patch, so

Tested-by: Heiko Stuebner <heiko@sntech.de>
