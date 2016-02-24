From: Dinh Nguyen <dinguyen@opensource.altera.com>
Subject: Re: [PATCH] dmaengine: pl330: fix to support the brust mode
Date: Wed, 24 Feb 2016 11:09:25 -0600
Message-ID: <56CDE3C5.2090809@opensource.altera.com>
References: <1456285945-19258-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1456285945-19258-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>, vinod.koul@intel.com
Cc: dan.j.williams@intel.com, linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org, heiko@sntech.de, dianders@chromium.org, sonnyrao@chromium.org, al.kochet@gmail.com, shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org, boojin.kim@samsung.com
List-Id: linux-rockchip.vger.kernel.org

Just a small nit:

On 02/23/2016 09:52 PM, Caesar Wang wrote:
> This patch fixes the brust mode that will break DMA uart on SoCFPGA.
> 
> In some cases, some SoCS didn't support the multi-brust
> even if the devices who use the pl330 claim support the maxbrust.
> 

s/brust/burst
s/maxbrust/burst

> Fixes: commit 848e977
> "dmaengine: pl330: support burst mode for dev-to-mem and mem-to-dev transmit"
>
> Reported-by: Dinh Nguyen <dinguyen@opensource.altera.com>
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> ---

Tested on SoCFPGA:

Tested-by: Dinh Nguyen <dinguyen@opensource.altera.com>

Thanks,
Dinh
