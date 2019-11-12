From: Marc Zyngier <maz-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] iommu/rockchip: Don't provoke WARN for harmless IRQs
Date: Tue, 12 Nov 2019 12:40:21 +0109
Message-ID: <45975bd87e34e9ff6e9656a3235fe074@www.loen.fr>
References: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, joro-zLv9SwRftAIdnm+yROfE0A@public.gmane.org, Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, iommu-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-11-11 20:04, Robin Murphy wrote:
> Although we don't generally expect IRQs to fire for a suspended 
> IOMMU,
> there are certain situations (particularly with debug options) where
> we might legitimately end up with the pm_runtime_get_if_in_use() call
> from rk_iommu_irq() returning 0. Since this doesn't represent an 
> actual
> error, follow the other parts of the driver and save the WARN_ON()
> condition for a genuine negative value. Even if we do have spurious
> IRQs due to a wedged VOP asserting the shared line, it's not this
> driver's job to try to second-guess the IRQ core to warn about that.
>
> Reported-by: Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
> ---
>  drivers/iommu/rockchip-iommu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iommu/rockchip-iommu.c 
> b/drivers/iommu/rockchip-iommu.c
> index 4dcbf68dfda4..bd7e9b1e40ac 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -527,7 +527,7 @@ static irqreturn_t rk_iommu_irq(int irq, void 
> *dev_id)
>  	int i, err;
>
>  	err = pm_runtime_get_if_in_use(iommu->dev);
> -	if (WARN_ON_ONCE(err <= 0))
> +	if (!err || WARN_ON_ONCE(err < 0))
>  		return ret;
>
>  	if (WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks)))

Acked-by: Marc Zyngier <maz-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

         M.
-- 
Jazz is not dead. It just smells funny...
