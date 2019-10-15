From: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH] iommu/rockchip: don't use platform_get_irq to implicitly
 count irqs
Date: Tue, 15 Oct 2019 12:45:46 +0200
Message-ID: <20191015104546.GD14518@8bytes.org>
References: <20190925184346.14121-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190925184346.14121-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Sep 25, 2019 at 08:43:46PM +0200, Heiko Stuebner wrote:
> Till now the Rockchip iommu driver walked through the irq list via
> platform_get_irq() until it encountered an ENXIO error. With the
> recent change to add a central error message, this always results
> in such an error for each iommu on probe and shutdown.
> 
> To not confuse people, switch to platform_count_irqs() to get the
> actual number of interrupts before walking through them.
> 
> Fixes: 7723f4c5ecdb ("driver core: platform: Add an error message to platform_get_irq*()")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/iommu/rockchip-iommu.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)

Applied for v5.4, thanks.
