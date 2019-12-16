From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 0/4] mfd: RK8xx tidyup
Date: Mon, 16 Dec 2019 11:12:19 +0000
Message-ID: <20191216111219.GB2369@dell>
References: <cover.1575932654.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, smoch@web.de, linux.amoon@gmail.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 10 Dec 2019, Robin Murphy wrote:

> Hi all,
> 
> In trying to debug suspend issues on my RK3328 box, I was looking at
> how the RK8xx driver handles the RK805 sleep pin, and frankly the whole
> driver seemed untidy enough to warrant some cleanup and minor fixes
> before going any further. I've based the series on top of Soeren's
> "mfd: rk808: Always use poweroff when requested" patch[1].
> 
> Note that I've only had time to build-test these patches so far, but I
> wanted to share them early for the sake of discussion in response to
> the other thread[2].
> 
> Robin.
> 
> [1] https://patchwork.kernel.org/patch/11279249/
> [2] https://patchwork.kernel.org/cover/11276945/
> 
> Robin Murphy (4):
>   mfd: rk808: Set global instance unconditionally
>   mfd: rk808: Always register syscore ops
>   mfd: rk808: Reduce shutdown duplication
>   mfd: rk808: Convert RK805 to syscore/PM ops
> 
>  drivers/mfd/rk808.c       | 122 ++++++++++++++++----------------------
>  include/linux/mfd/rk808.h |   2 -
>  2 files changed, 50 insertions(+), 74 deletions(-)

Not sure what's happening with these (competing?) patch-sets.  I'm not
planning on getting involved until you guys have arrived at and agreed
upon a single solution.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
