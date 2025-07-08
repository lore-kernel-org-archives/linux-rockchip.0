Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB44CC8303C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 19:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Xy3EN7juTgTqJx2XdEq4LRBlGDhxFA18SfHQ3J0Nng=; b=EXsIYw3Pp160QP
	xp/ggMCKVdsNrmaeaLX5kRvPMZ8Cl//wMJAMtX9ezFZH2Fnip4REOqwjSaUNW3A/3FDh+M8kfRUmU
	U3Xl+a5g+Wg+E6fWzHMUWGwlbBCTC0PcY27aJycoYsX0rgrQ6Rxa4xgUsowX8rVsKONsQ7rPqNCvl
	MHwFT+Dz3jLeImPygpujEJrPsGBbOlTn8mQqaJkqjGQZX58/3kpuc9A9bRKS/qvH7EsmbEdBKzVXT
	eSU66jgHqjBc+EFh/LCdqxn98yt69Xfo8M7319AsOfo+rhztkM7rCy5hjTnWNobtk4nfzJriSk0ei
	yLe3dHZFkAEU8wNR6UMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEAI-00000006Mu7-0JOR;
	Tue, 08 Jul 2025 19:39:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZCER-000000068FU-1TSF;
	Tue, 08 Jul 2025 17:35:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=yQS8VbuYYVS614FlKxzbsWxX6m7fPV/cmPrhGKnwTY0=; b=Eyyzq8qrefDz3GpqPyOjR8l7/a
	vk4q5z7va9OMhiRGMcHXsz97JY50m0MwlunZJgQ3SEz6SigLsMcMv7T3pXLYrqygCvEyf32/Sqf/r
	Hs8Xb07Y5rjlJWet4zbszIf3ewH0OPzR1bf3U/+GRtRlY79Dw87YivOlnBsv13vZnnzjTZvcmhNLd
	zN54C+1zOT834pPpjWgRC7asvtdx0N7sTgk8aSidOaSMNo0SRGuD1Sb2oDoASt1rwyso6k8YyHqNh
	uCht6KfgJTnar8hgCeFprSun++PUA1PneItpei1x8tPOfUJdX0fF2AFffVVcQsHwYsovx23XZA6uH
	Bu8/yloQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZCEN-00000008lgL-2OfM;
	Tue, 08 Jul 2025 17:35:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yQS8VbuYYVS614FlKxzbsWxX6m7fPV/cmPrhGKnwTY0=; b=PwuF4QA9yJ09dovOrDVvtn1+cm
	+DlPfjtIKVaNx0fq39O8q7Dhx9kiqZPa41AwkGPEmJ+WK6px2HB+o9w+uFfBkzl6uJaS752Q2G0cw
	wfAMdv/YJnGRlqmIVFPs2L06qRQ4YFYh+L6pasZgfW85WJt4pWK/XJBOS3S4elU5exdpwNjS/dRH0
	7jAIC49DaRGcS7l7AacuflnedPYjZ/TmOOsV80kCfIR6SyFSltAwuek22kazm75g2+u2izyRA91KF
	+WhtcMeg9NwfJfku3PuQBvcZX51Xq16OSlWR9SXM90izajUzKYoN/ITtyFJ2+RBavvVYyiRm9VpP2
	6hckBmqQ==;
Received: from i53875a8d.versanet.de ([83.135.90.141] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZCE6-0005cC-Jd; Tue, 08 Jul 2025 19:35:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: lvds: Convert to drm bridge
Date: Tue,  8 Jul 2025 19:35:15 +0200
Message-ID: <175199006056.1731917.11933930833923830101.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250526015834.102-1-kernel@airkyi.com>
References: <20250526015834.102-1-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_183547_722986_7AB0AEB6 
X-CRM114-Status: GOOD (  10.12  )
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


On Mon, 26 May 2025 09:58:34 +0800, Chaoyi Chen wrote:
> Convert it to drm bridge driver, it will be convenient for us to
> migrate the connector part to the display driver later.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: lvds: Convert to drm bridge
      commit: 40a382aae1d4a4ca07fe19b0d16b4fbc1eeace9f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
