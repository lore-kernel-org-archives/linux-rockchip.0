From: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH] dmaengine: pl330: _stop: clear interrupt status
Date: Fri, 26 Apr 2019 16:51:51 +0530
Message-ID: <20190426112151.GQ28103@vkoul-mobl>
References: <1554289582-43695-1-git-send-email-sugar.zhang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1554289582-43695-1-git-send-email-sugar.zhang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: heiko@sntech.de, broonie@kernel.org, linux-rockchip@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 03-04-19, 19:06, Sugar Zhang wrote:
> This patch kill instructs the DMAC to immediately terminate
> execution of a thread. and then clear the interrupt status,
> at last, stop generating interrupts for DMA_SEV. to guarantee
> the next dma start is clean. otherwise, one interrupt maybe leave
> to next start and make some mistake.

Applied, thanks

-- 
~Vinod
