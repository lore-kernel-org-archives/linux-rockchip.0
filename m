From: Vinod Koul <vinod.koul@intel.com>
Subject: Re: [PATCH v2] dmaengine: pl330: fix to support the burst mode
Date: Tue, 1 Mar 2016 09:12:50 +0530
Message-ID: <20160301034250.GG11154@localhost>
References: <1456362053-1425-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1456362053-1425-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: dan.j.williams@intel.com, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, shawn.lin@rock-chips.com, al.kochet@gmail.com, dinguyen@opensource.altera.com, b.zolnierkie@samsung.com, heiko@sntech.de, dianders@chromium.org, sonnyrao@chromium.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Feb 25, 2016 at 09:00:53AM +0800, Caesar Wang wrote:
> This patch fixes the burst mode that will break DMA uart on SoCFPGA.
> 
> In some cases, some SoCS didn't support the multi-burst
> even if the devices who use the pl330 claim support the maxburst.

Applied now and merged topic/pl330 back to -next

Thanks
-- 
~Vinod
