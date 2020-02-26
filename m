From: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v2 5/5] mfd: rk808: Convert RK805 to shutdown/suspend
 hooks
Date: Wed, 26 Feb 2020 10:33:06 +0000
Message-ID: <20200226103306.GI3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <02639ae880b9d945c4134a28b1eef3db2ed9353f.1578789410.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <02639ae880b9d945c4134a28b1eef3db2ed9353f.1578789410.git.robin.murphy@arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

On Sun, 12 Jan 2020, Robin Murphy wrote:

> RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK817,
> so it makes little sense for the driver to have to have two completely
> different mechanisms to handle essentially the same thing. Move RK805
> over to the shutdown/suspend flow to clean things up.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/mfd/rk808.c       | 37 ++++++++++++-------------------------
>  include/linux/mfd/rk808.h |  1 -
>  2 files changed, 12 insertions(+), 26 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
