From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH 2/2] phy: rockchip-emmc: use regmap_read_poll_timeout to
 poll dllrdy
Date: Thu, 4 Jan 2018 18:12:20 -0800
Message-ID: <20180105021219.GA168398@google.com>
References: <1514859720-151161-2-git-send-email-shawn.lin@rock-chips.com>
 <20180105020749.GA166692@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20180105020749.GA166692@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>, Ziyuan Xu <xzy.xu@rock-chips.com>, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jan 04, 2018 at 06:07:51PM -0800, Brian Norris wrote:
> On Tue, Jan 02, 2018 at 10:22:00AM +0800, Shawn Lin wrote:
> > Just use the API instead of open-coding it, no functional change
> > intended.
> > 
> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > ---

Other than my nit comment, looks fine:

Reviewed-by: Brian Norris <briannorris@chromium.org>
