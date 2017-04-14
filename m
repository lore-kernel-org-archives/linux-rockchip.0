From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/2] dmaengine: pl330: make cyclic transfer free runnable
Date: Fri, 14 Apr 2017 20:04:19 +0200
Message-ID: <20170414180419.2xhjjokxessd7n3q@kozik-lap>
References: <1492180531-1780-1-git-send-email-al.kochet@gmail.com>
 <1492180531-1780-2-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1492180531-1780-2-git-send-email-al.kochet@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Alexander Kochetkov <al.kochet@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, hhb@rock-chips.com, shawn.lin@rock-chips.com, caesar.wang@rock-chips.com, sugar.zhang@rock-chips.com, ulysses.huang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Fri, Apr 14, 2017 at 05:35:29PM +0300, Alexander Kochetkov wrote:
> The patch solve the I2S click problem on rk3188. Actually
> all the devices using pl330 should have I2S click problem
> due to pl330 cyclic transfer implementation.
> 
> Current implementation depends on soft irq. If pl330 unable
> to submit next transfer in time some samples could be lost.
> The lost samples heard as sound click. In order to check
> lost samples, I've installed I2S interrupt handler to signal
> overflow/underflow conditions. Sometimes I saw overflow
> or underflow events and heard clicks.
> 
> The patch setup cyclic transfer such a way, that transfer can
> run infinitely without CPU intervention. As a result,
> lost samples and clicks gone.
> 
> Signed-off-by: Alexander Kochetkov <al.kochet@gmail.com>
> ---
>  drivers/dma/pl330.c |  192 +++++++++++++++++++++++++--------------------------
>  1 file changed, 94 insertions(+), 98 deletions(-)
>

I didn't look at the code but testing fails.
HW: Odroid U3 (Exynos4412), pl330 used for dma for i2s, max98090 audio
codec
SW: 4.11.0-rc6-next-20170413

Only first aplay workes fine. After it, the next sound stalls:
[  170.059271] INFO: rcu_preempt detected stalls on CPUs/tasks:
[  170.059441]  1-...: (1 GPs behind) idle=11e/140000000000000/0 softirq=2335/2335 fqs=1049
[  170.067474]  (detected by 3, t=2102 jiffies, g=459, c=458, q=194)
[  170.073555] Sending NMI from CPU 3 to CPUs 1:
[  180.083093] rcu_preempt kthread starved for 999 jiffies! g459 c458 f0x0 RCU_GP_DOING_FQS(4) ->state=0x0
[  180.086848] rcu_preempt     S    0     8      2 0x00000000
[  180.092344] [<c073e150>] (__schedule) from [<c073e4dc>] (schedule+0x4c/0xac)
[  180.099353] [<c073e4dc>] (schedule) from [<c0742634>] (schedule_timeout+0x14c/0x23c)
[  180.107081] [<c0742634>] (schedule_timeout) from [<c01702f4>] (rcu_gp_kthread+0x5dc/0x94c)
[  180.115330] [<c01702f4>] (rcu_gp_kthread) from [<c01381f0>] (kthread+0x124/0x154)
[  180.122793] [<c01381f0>] (kthread) from [<c0108438>] (ret_from_fork+0x14/0x3c)

Let me know if you need more data. I wonder why you haven't experience
this?

Best regards,
Krzysztof
