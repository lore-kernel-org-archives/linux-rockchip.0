From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 3/5] mfd: rk808: Stop using syscore ops
Date: Wed, 26 Feb 2020 09:45:43 +0000
Message-ID: <20200226094543.GD3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <7fdcdb900c7dc4fba38266e1db637131c3090a67.1578789410.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

On Sun, 12 Jan 2020, Robin Murphy wrote:

> Setting the SLEEP pin to its shutdown function for appropriate PMICs
> doesn't need to happen in single-CPU context, so there's really no point
> involving the syscore machinery. Hook it up to the standard driver model
> shutdown method instead. This also obviates the issue that the syscore
> ops weren't being unregistered on probe failure or module removal.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/mfd/rk808.c | 26 ++++++++++++--------------
>  1 file changed, 12 insertions(+), 14 deletions(-)

Going to ignore the unrelated change in this one!

(reviewing the remainder before responding)

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
