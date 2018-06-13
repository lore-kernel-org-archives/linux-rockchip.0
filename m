From: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v4 2/2] drm/rockchip: vop: fix irq disabled after vop
 driver probed
Date: Wed, 13 Jun 2018 14:01:27 +0100
Message-ID: <edc71874-4517-c097-c851-d60565f06817@arm.com>
References: <20180612132028.27490-1-heiko@sntech.de>
 <20180612132028.27490-3-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20180612132028.27490-3-heiko@sntech.de>
Content-Language: en-GB
Sender: stable-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org, ezequiel@collabora.com, tfiga@chromium.org, robin.murphy@arm.com, jeffy.chen@rock-chips.com, hjc@rock-chips.com, enric.balletbo@collabora.co.uk, tomeu.vizoso@collabora.co.uk, stable@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On 12/06/18 14:20, Heiko Stuebner wrote:
> From: Sandy Huang <hjc@rock-chips.com>
> 
> The vop irq is shared between vop and iommu and irq probing in the
> iommu driver moved to the probe function recently. This can in some
> cases lead to a stall if the irq is triggered while the vop driver
> still has it disabled, but the vop irq handler gets called.
> 
> But there is no real need to disable the irq, as the vop can simply
> also track its enabled state and ignore irqs in that case.
> For this we can simply check the power-domain state of the vop,
> similar to how the iommu driver does it.
> 
> So remove the enable/disable handling and add appropriate condition
> to the irq handler.
> 
> changes in v2:
> - move to just check the power-domain state
> - add clock handling
> changes in v3:
> - clarify comment to speak of runtime-pm not power-domain
> changes in v4:
> - address Marc's comments (clk-enable WARN_ON and style improvement)
> 
> Fixes: d0b912bd4c23 ("iommu/rockchip: Request irqs in rk_iommu_probe()")
> Cc: stable@vger.kernel.org
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Tested-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Marc Zyngier <marc.zyngier@arm.com>

	M.
-- 
Jazz is not dead. It just smells funny...
