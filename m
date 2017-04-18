From: sugar <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH 0/2] Free running cyclic transfer implementation for pl330
Date: Tue, 18 Apr 2017 10:26:59 +0800
Message-ID: <52e886e1-88f7-808d-4838-b5c136f44651@rock-chips.com>
References: <1492180531-1780-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1492180531-1780-1-git-send-email-al.kochet@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alexander Kochetkov <al.kochet@gmail.com>, Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, hhb@rock-chips.com, shawn.lin@rock-chips.com, caesar.wang@rock-chips.com, ulysses.huang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Alexander,

I have tested this series on rk3399 evb board and works well.

Tested-by: Sugar Zhang <sugar.zhang@rock-chips.com>

ÔÚ 4/14/2017 22:35, Alexander Kochetkov Ð´µÀ:
> Hello!
>
> This series contain free running cyclic transfer implementation for pl330.
> It affect ALL chips using pl330 (not only rockchip) and
> allow to run cyclic transfers without CPU intervention. As a result
> it fix sound clicks (observed and not yet observed) because
> sound clicks must be heard under heavy system load due to the way
> how cyclic transfers implemented now for pl330.
>
> My previous series[1] doesn't get enough attention (no one except me
> tested it). And it don't get upstream:
>
>> 8-03-2016, 6:03, Vinod Koul <vinod.koul@intel.com> *:
>> Overall this series looks okay, but can someone test this. I would not like
> pl330 to be broken again
>
> Now I was asked about the series[1] again by guys from Rockchip,
> so I send rebased against 4.10.10 version. Hope, someone might test it
> and confirm that patches work fine.
>
> Regards,
> Alexander.
>
> Alexander Kochetkov (2):
>   dmaengine: pl330: make cyclic transfer free runnable
>   dmaengine: pl330: don't emit code for one iteration loop
>
>  drivers/dma/pl330.c |  200 +++++++++++++++++++++++++--------------------------
>  1 file changed, 98 insertions(+), 102 deletions(-)
>
