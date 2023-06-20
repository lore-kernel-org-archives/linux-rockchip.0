Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBFE6EB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 13:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CBwC5ahKDhM9puHBn7J/FBOVGfGDL5r4LYx/2vh+DMs=; b=rH0782YVIjOhO5
	MHA3roXoT8Me60FyrvswSBgTOFetxs1ibpZ7h9O9kreQRYMMHMEcgNUUQJ1xJlaZkeb8UikRPkxo5
	vog/qEQgozQjHfwFYNOS4P4mJYNSRRc9WessyMXoMGq3VWXHaCCt1AXbXo0EJ0toW653DL5Mix9ni
	JLcPCL8RCIwaYmD8uT1YLqMckyudljZXoXVMt1FS+2Y7d1f/aLZ6wOyi5/SHc5zbZfRQEO6/Pe2DI
	RD4gwUcNWh29daAU0ZWOTQniUhORuu2dmb6oXwIEx4RZlPia0aUfzf1SVImsdFQng+qfonkUoyFLA
	tt6C2kKmDi9Lhe1eRqQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBbqN-00BTK2-2A;
	Tue, 20 Jun 2023 13:56:27 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBbqG-00BTIV-1T
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 13:56:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=9grUNdjpwqcccJBDhf97I+CcaImjeCFFPj4g4gaFuZI=;
	b=Ja+cPrGU74pYP/PEoZNoGXjNhsM5CxymvSf6Z9demJvbei59nawZEY7OSrrKftzqd/RI
	0e9RJeil6W7IdF871oQdxyi6QPHu0SIoJHjUNtpiYYRhPqVu5SK8b8pfwF5SSxXYuFF7q2
	tPS3dCNQJsU0VNe7voHO8nXpVm8zLNOFnUqe4EP4B6TQVo8a5lBJz7u7bP71pwzscczTjJ
	rknChUUSWeCiX6f60EdPq+mf06MbfsbMDkyF7ziqO0UdLs0bWN3rQmuB+nwpm6iD08RH15
	0/y205azE1XRhv6Gb+R7wvqdxMTZ8gaNgfCzT14T8tKMOTEDQf6V/i+kOp8J2eJA==
Received: by filterdrecv-84b96456cb-jnxmg with SMTP id filterdrecv-84b96456cb-jnxmg-1-6491B000-11
        2023-06-20 13:56:16.489152857 +0000 UTC m=+3507455.908062499
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-9 (SG) with ESMTP
	id yRlPZ-tUSQOW3d5KxRVAdg
	Tue, 20 Jun 2023 13:56:16.135 +0000 (UTC)
Message-ID: <34c08fc9-eb9b-376d-57fb-d47a68c2fc4d@kwiboo.se>
Date: Tue, 20 Jun 2023 13:56:16 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] drm/rockchip: Resolve dependency in GEM DMA helpers
Content-Language: en-US
References: <20230620121202.28263-1-tzimmermann@suse.de>
 <20230620121202.28263-3-tzimmermann@suse.de>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20230620121202.28263-3-tzimmermann@suse.de>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h584SJKyuyhG0hFts?=
 =?us-ascii?Q?c+ciLuROhOoYSR1iWZ7yKcZEhmAlMelTfRjOp7s?=
 =?us-ascii?Q?IRhf554NLzeDvXtYeCMp2cTjVytqzvjsPMz1YpF?=
 =?us-ascii?Q?GP+czNrJgc9qNcMdggb9jqaf6MbTLAiFqlWFThZ?=
 =?us-ascii?Q?JuXTOMzzyYOPv2iYNU1NZgUXgzwAYG6kv+ZX6Tc?=
 =?us-ascii?Q?3kf4ZItUvwJA7El6UQgCQ=3D=3D?=
To: Thomas Zimmermann <tzimmermann@suse.de>, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, airlied@gmail.com, daniel@ffwll.ch,
	laurent.pinchart@ideasonboard.com, kieran.bingham+renesas@ideasonboard.com,
	hjc@rock-chips.com, heiko@sntech.de
Cc: linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_065622_571941_3FE2D236 
X-CRM114-Status: GOOD (  10.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Thomas,

On 2023-06-20 14:03, Thomas Zimmermann wrote:
> Remove the dependency on the GEM DMA helper library. Rockchip comes
> with its own implementation of the GEM interface. It only uses the VM
> callbacks in drm_gem_dma_vm_ops from the GEM DMA helpers. These are
> not DMA specific.
> 
> Duplicate drm_gem_dma_vm_ops in rockchip and remove all dependencies on
> the GEM DMA helper library.

I have intentions to remove the entire custom implementation of the GEM
interface and replace it with use of GEM DMA helpers in a future series.

Current custom implementation break import of video framebuffers located
in memory beyond 4GB. Switching to use pure GEM DMA helpers solved that
issue but requires reworking IOMMU integration for full support of
multiple VOPs on e.g., RK3288 and RK3399.

I have no ETA on when such series can be ready so this is more of a
heads up that I will revert this removal of dependency on GEM DMA helper
library in a future series.

Regards,
Jonas

> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/rockchip/Kconfig            | 1 -
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_gem.c | 8 ++++++--
>  3 files changed, 7 insertions(+), 4 deletions(-)
> 
[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
