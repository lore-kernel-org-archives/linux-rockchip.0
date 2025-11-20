Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DF11CF8549
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRSkmoh4JtMG3qJbxjAj0WKZvsgyLFUBAw7BqP7nOcU=; b=iKDNHYbz3UqAmq
	UEPlq1RnYMS7l2WGGGw7ugvIfiNAbPShXUIfBiOzDSvZpsGnvUI5zF0BKKihYjp1x17aaeppeKfX7
	CkyYAcyQWJdESb/uJYoaPRl2PlMgQGAll/a2ME7l1zwY5dieRd/AM0bMiDwMIYGeNEME526Wc4XgZ
	DG3bY1T/0HLRaZst8JmHE7sqM5sHFL4gp9iPtu8oRP0h03z1yAMi348m9M5ohjyJTTfFBWyS8aSN6
	ak4+cwkV5Gd4McbnSDGEsxtl69bbHxvJl09E3ZynGE1tkuVJKGecqLiFtQKX1WaM1jsPZIpwnyVw8
	dmN8Waw6O+AQRQmaG1yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8Bo-000000073wh-2KLh;
	Thu, 20 Nov 2025 17:11:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8Bm-000000073vI-1ohU;
	Thu, 20 Nov 2025 17:11:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D723B601D5;
	Thu, 20 Nov 2025 17:11:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CA96C4CEF1;
	Thu, 20 Nov 2025 17:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658681;
	bh=TfM2YGVstdUmq53j7IGiDD+amyYXGtUqIi5XE9Ifz5g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=c5uFQpvh4EUbZUfHI+5dPnMVhzGhcSvQWpCEZdWd9vKaFLSpJcbsiNlywguxdr/3Q
	 2pu7Pn2ytetA9M7shWSXDZfs/I5HVOtl/RQT/Dap0d0gjW/wnBVey2VN99wk3u+CVx
	 +POI0wDOrFmOt5lpqkTxQh4eXMgNo+lB21aD2KkGPXOoMT3FCwG547zhHbTyjnwW/6
	 5w/9/cnJDPUgPAZx0H4Zgu9G9yCkj3OdamRno+nFbXp1zU0EJDDuHhd3/foxfSH0wa
	 MQlAwk7ObCBIBJuRIDY+VEnPTi5QhMCeQ3OlwUIXkAgK3DAkVOnzJpBIa2x9c5IWCH
	 EPI5YSHLK0d4Q==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20251106020632.92-1-kernel@airkyi.com>
References: <20251106020632.92-1-kernel@airkyi.com>
Subject: Re: (subset) [PATCH 0/9] drm/rockchip: Introduce Rockchip RK3506
 VOP
Message-Id: <176365867573.207696.11271190998956084830.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Thu, 06 Nov 2025 10:06:23 +0800, Chaoyi Chen wrote:
> The VOP on rk3506:
> - Support 2 lane MIPI DSI interface, 1.5Gbps/lane.
> - Support RGB interface.
> - Max output resolution is 1280x1280@60fps.
> - WIN1 layer support RGB888/ARGB8888/RGB565.
> - Support Gamma LUT.
> 
> [...]

Applied, thanks!

[2/9] dt-bindings: phy: rockchip-inno-dsidphy: Add compatible for rk3506
      commit: 323c5c05a0a07b931ede1fa0a3396a1a165ed798
[6/9] phy: rockchip: inno-dsidphy: Add support for rk3506
      commit: 785a9d5bb145109558063080ebc9a3e8be86471d

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
