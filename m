From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 4/5] mfd: rk808: Reduce shutdown duplication
Date: Wed, 26 Feb 2020 10:32:55 +0000
Message-ID: <20200226103255.GH3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <c6d320601104ab6502123a8db947c02801de69ea.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <c6d320601104ab6502123a8db947c02801de69ea.1578789410.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

On Sun, 12 Jan 2020, Robin Murphy wrote:

> Rather than having 3 almost-identical functions plus the machinery to
> keep track of them, it's far simpler to just dynamically select the
> appropriate register field per variant.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/mfd/rk808.c       | 61 +++++++++++++--------------------------
>  include/linux/mfd/rk808.h |  1 -
>  2 files changed, 20 insertions(+), 42 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
