From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] phy: rockchip-typec: add pm_runtime_disable in err case
Date: Thu, 8 Sep 2016 11:05:34 -0700
Message-ID: <20160908180533.GA29048@localhost>
References: <1473356291-19247-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1473356291-19247-1-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: kishon@ti.com, groeck@chromium.org, wulf@rock-chips.com, heiko@sntech.de, dianders@chromium.org, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Sep 08, 2016 at 10:38:11AM -0700, Chris Zhong wrote:
> Add pm_runtime_disable in err case to make the pm_runtime_enable/disable
> is invoked balanced.
> 
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>

Makes sense.

Reviewed-by: Brian Norris <briannorris@chromium.org>
