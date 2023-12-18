Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D123C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 09:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0Ej0CnUoaYxru6t9RO2jhd0wmmDVjtWy7ooeEJdguY=; b=EHnXAnbK0h8ljw
	ZkP8J9SbgW+LUWoHcRpo6MRQCozAPwmnCE8C7rZV6wf2RaJvukEOWh4Dt/v6ZgEZXqDWMm3rxjvBF
	e5nF21jARD4TVz939mzs6APDxgMrwZEzsHHCZbXdgrwA4//NAaGdGYKKv1m456C0hJXHkdowPzBmz
	nX9bVTNCXLuHf158RJTQYK7DQpgeIbvwQOT1RjgV+WXqvWaBcU5nQ5VscnUMDjyKAaRnpRNsNmmQa
	/NveRqwSJ/atev2zq1X88YroGkUU9oRTN82yuDrvIw69TPiacyprUsfamokaKOqXphXQasKOEF2kI
	xwV6o0AhKLFHKTb18taA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9UF-009Z46-0A;
	Mon, 18 Dec 2023 09:00:31 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9UB-009Z1w-1d;
	Mon, 18 Dec 2023 09:00:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E27C7B80DF5;
	Mon, 18 Dec 2023 09:00:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C157FC433C8;
	Mon, 18 Dec 2023 09:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702890025;
	bh=kOt2oa8IgWi2j+caHzVUn+hakr7YNKwwW253Dd8sbko=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=J+XVsb3l0Wp5QZsCKouEhWlMC51XiP4uxnRdN+nMGVBFWebpoaDguAhw1vUZPu0ze
	 fZFx4nul9hGzA/4Izbij9TVWYiiSs3LwH/XdcurNv2/9r10hWm29RCy7phw5HUBLLQ
	 5sUMPG2HLUvJ0uxfzutlZU/XAneq10z7Mob7j1a9kbVDxAVPyYJeq+uwIwQNl2I7CU
	 59x5WKcTvj80UR76gDCsZMoqkcefUn5NqCZms07+2OJjYxNeDJSzXqXCGPm8hXB1ba
	 1yU+45TJVjUk50I6AcUv3MP/XhS0n+u44gs80hSyGr3ss6BddLd+ne6+fcdVs9XM3n
	 /CySGXdH3nZOQ==
Message-ID: <df0576baf95d8130b5034c4ef80e8d18@kernel.org>
Date: Mon, 18 Dec 2023 09:00:22 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Alex Bee" <knaerzche@gmail.com>
Subject: Re: [PATCH v2 16/27] drm/rockchip: inno_hdmi: Drop irq struct
 member
In-Reply-To: <20231216162639.125215-17-knaerzche@gmail.com>
References: <20231216162639.125215-17-knaerzche@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Andy
 Yan" <andyshrk@163.com>, "Conor Dooley" <conor+dt@kernel.org>, "Daniel
 Vetter" <daniel@ffwll.ch>, "David Airlie" <airlied@gmail.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>, "Rob
 Herring" <robh+dt@kernel.org>, "Sandy Huang" <hjc@rock-chips.com>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_010027_707030_D4A1E572 
X-CRM114-Status: UNSURE (   5.20  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 16 Dec 2023 17:26:27 +0100, Alex Bee wrote:
> The struct member irq isn't used anywhere. Drop it.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
