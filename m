From: Vinod Koul <vinod.koul@intel.com>
Subject: Re: [PATCH v7 3/9] dmaengine: pl330: add quirk for broken no flushp
Date: Tue, 9 Feb 2016 09:03:13 +0530
Message-ID: <20160209033313.GG19598@localhost>
References: <1453460812-8498-1-git-send-email-wxt@rock-chips.com>
 <1453460812-8498-4-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1453460812-8498-4-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Sonny Rao <sonnyrao@chromium.org>, shawn.lin@rock-chips.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Addy Ke <addy.ke@rock-chips.com>, Olof Johansson <olof@lixom.net>, Dan Williams <dan.j.williams@intel.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jan 22, 2016 at 07:06:46PM +0800, Caesar Wang wrote:
> From: Addy Ke <addy.ke@rock-chips.com>
> 
> This patch add "arm,pl330-broken-no-flushp" quirk to avoid execute
> DMAFLUSHP if Soc doesn't support it.

Applied, thanks

-- 
~Vinod
