Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4FA5C5AD49
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 20:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpHiHXLz/llSRmGR8zPPvJUEYDtvw700SJWnIxuhHvk=; b=rqMciwBM6nQomI
	4ctPVwwyhuaIsVOnUI/SKE4k0UdoSjM6oZnCPcbaqCVB/0gZEnqUp/3vb/0ZRoloL11g3ZEeYh5z0
	/V19zEYwKIK3BoLjWuqXI1D+mVTH7lqce391b/hzB1J81vk2H9lms+A+x1L2iA6/XV7X+y4gq6O88
	CKhZmu5rKgNQOTYeFn6qirjxqFu67rzBjPVx1LMX3ISpQksYPIPO8MHhkaLQvWfTRdc4o2tJ2e/ld
	T7saaWmwTGG40lxs6ugU6+cGi4NPIakXs7phit2TXU1PEw4qFkzBQa8f0L6nuA6+7vTdHo9EfNdf5
	BK4xh4hmu9xYxONS5H+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMY6k-0000000BmGz-2yss;
	Tue, 03 Jun 2025 20:19:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMY4a-0000000Bm17-2DPA;
	Tue, 03 Jun 2025 20:17:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DC02F60008;
	Tue,  3 Jun 2025 20:17:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5E28C4CEED;
	Tue,  3 Jun 2025 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748981843;
	bh=yV4ekByytzguS9M+Qf6n8nfcrxTdF0tMI0CZ/FW+ZhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=COHJ4WCl7wgYi/p077xcxhMr+c0ECulzW+gv4fS4wPm2p4q7u4MZnD98iq1rKD+em
	 WFFr3W/IsOPLbgashjQK3TtL/CaAUWHvYgvItY+J0Nk/9UQOw1zIdDuasY65jYDvBD
	 xuQG9QjyHYQ/fycBwT9/n72StDDKeNnuBpuLd6JA9lu4ibSfRyQ5STGHCdTVu5uoFp
	 rLOnLO2zdlz9l//CCQTnruR35L602rP83EgxTdgpLBIh3La6ojwmvQ7VS1XmZr7Hdy
	 vsjNh0XF/J/ZOxRGGONIIdFYW4QI2FYApB//Hvt+YHkuO3id79x08lA7lOBc/Qipct
	 g+maGoP328NCg==
Date: Tue, 3 Jun 2025 15:17:20 -0500
From: Rob Herring <robh@kernel.org>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v5 07/10] accel/rocket: Add job submission IOCTL
Message-ID: <20250603201720.GA2119676-robh@kernel.org>
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
 <20250520-6-10-rocket-v5-7-18c9ca0fcb3c@tomeuvizoso.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250520-6-10-rocket-v5-7-18c9ca0fcb3c@tomeuvizoso.net>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-doc@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, May 20, 2025 at 12:27:00PM +0200, Tomeu Vizoso wrote:
> Using the DRM GPU scheduler infrastructure, with a scheduler for each
> core.
> 
> Userspace can decide for a series of tasks to be executed sequentially
> in the same core, so SRAM locality can be taken advantage of.
> 
> The job submission code was initially based on Panfrost.
> 
> v2:
> - Remove hardcoded number of cores
> - Misc. style fixes (Jeffrey Hugo)
> - Repack IOCTL struct (Jeffrey Hugo)
> 
> v3:
> - Adapt to a split of the register block in the DT bindings (Nicolas
>   Frattaroli)
> - Make use of GPL-2.0-only for the copyright notice (Jeff Hugo)
> - Use drm_* logging functions (Thomas Zimmermann)
> - Rename reg i/o macros (Thomas Zimmermann)
> - Add padding to ioctls and check for zero (Jeff Hugo)
> - Improve error handling (Nicolas Frattaroli)
> 
> Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>


> diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..aee6ebdb2bd227439449fdfcab3ce7d1e39cd4c4
> --- /dev/null
> +++ b/drivers/accel/rocket/rocket_job.c
> @@ -0,0 +1,723 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/* Copyright 2019 Linaro, Ltd, Rob Herring <robh@kernel.org> */
> +/* Copyright 2019 Collabora ltd. */
> +/* Copyright 2024-2025 Tomeu Vizoso <tomeu@tomeuvizoso.net> */
> +
> +#include <drm/drm_print.h>
> +#include <drm/drm_file.h>
> +#include <drm/drm_gem.h>
> +#include <drm/rocket_accel.h>
> +#include <linux/interrupt.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +
> +#include "rocket_core.h"
> +#include "rocket_device.h"
> +#include "rocket_drv.h"
> +#include "rocket_job.h"
> +#include "rocket_registers.h"
> +
> +#define JOB_TIMEOUT_MS 500
> +
> +static struct rocket_job *
> +to_rocket_job(struct drm_sched_job *sched_job)
> +{
> +	return container_of(sched_job, struct rocket_job, base);
> +}
> +
> +struct rocket_fence {
> +	struct dma_fence base;
> +	struct drm_device *dev;
> +	/* rocket seqno for signaled() test */
> +	u64 seqno;
> +	int queue;

AFAICT, you are not using any of the elements here. So you can just drop 
rocket_fence and use dma_fence.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
