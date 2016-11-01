From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] soc: rockchip: avoid infinite loop for power domain
Date: Wed, 02 Nov 2016 00:22:13 +0100
Message-ID: <1994521.aqSE2RsRj4@phil>
References: <1476296168-29154-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1476296168-29154-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: khilman@linaro.org, zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 13. Oktober 2016, 02:16:08 CET schrieb Caesar Wang:
> In some cases, we have met the infinite loop in
> rockchip_pmu_set_idle_request() or rockchip_do_pmu_set_power_domain().
> 
> As the crosbug.com/p/57351 reported, the boot hangs right after this
> [1.629163] bootconsole [uart8250] disabled
> [1.639286] [drm:drm_core_init] Initialized drm 1.1.0 20060810
> [1.645926] [drm:drm_get_platform_dev] Initialized vgem 1.0.0 20120112..
> [1.654558] iommu: Adding device ff8f0000.vop to group 0
> [1.660569] iommu: Adding device ff900000.vop to group 1
> <hang>
> 
> This patch adds the error message and timeout to avoid infinite loop if
> it fails to get the ack.
> 
> Signed-off-by: Caesar Wang <wxt@rock-chips.com>

applied to by drivers-branch for 4.10


Thanks
Heiko
