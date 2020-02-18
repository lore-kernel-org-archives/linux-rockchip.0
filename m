From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
Date: Tue, 18 Feb 2020 21:44:55 +0000
Message-ID: <caf2fcfe-696e-9398-7c85-57498107f0ac@arm.com>
References: <cover.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-rockchip@lists.infradead.org, smoch@web.de, linux-kernel@vger.kernel.org, heiko@sntech.de
List-Id: linux-rockchip.vger.kernel.org

On 2020-01-12 1:54 am, Robin Murphy wrote:
> Hi all,
> 
> Here's a second crack at my RK805-inspired cleanup. There was a bit
> of debate around v1[1], but it seems like we're now all happy that this
> is a reasonable way to go. For clarity I decided to include Soeren's
> patch as #1/5, but since I've rewritten most of my patches I've not
> included the tested-by tags.

Any more comments, or are these patches good to merge now? My local 
branch seemed to rebase to 5.6-rc1 cleanly, but I can resend if necessary.

Thanks,
Robin.

> 
> [1] https://lore.kernel.org/lkml/cover.1575932654.git.robin.murphy@arm.com/
> 
> Robin Murphy (4):
>    mfd: rk808: Ensure suspend/resume hooks always work
>    mfd: rk808: Stop using syscore ops
>    mfd: rk808: Reduce shutdown duplication
>    mfd: rk808: Convert RK805 to shutdown/suspend hooks
> 
> Soeren Moch (1):
>    mfd: rk808: Always use poweroff when requested
> 
>   drivers/mfd/rk808.c       | 139 +++++++++++++-------------------------
>   include/linux/mfd/rk808.h |   2 -
>   2 files changed, 48 insertions(+), 93 deletions(-)
> 
