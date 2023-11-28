Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A26B1C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSB3QEb4KkbGaqXqoD4DYcMdkjIqWREY7zYqyFG1IJc=; b=rVzIRJ1vtHAC+3
	iRpCbga+eKYP6mI/gLtZWSjU0D3PUH22HGwRYiHlCFg/iG82XXOyIW6yJ97fIzalT6ILulK6aGW+v
	dMFFECXrALjfI9qNGonagRfwAQYrvdup8tv2wNQzZtNC3K3mweL8zb1i7ZY1i+r6kzANhqfzl1GIY
	A95fPK+b6a/q+luuwGzbrt3Ei4SLxK3PxhjR7JWjA25SWy24jixwDAlu+4jW+51O6hrt6tE8AQO9n
	Tssk9ZD2iOiVt8n6+alqvjoPSI4oeL6zqEWQvY4pQWFvIO7sG+eoHvL/knBsDF2Q7JYnkBi1QuvwD
	hc7V2Yih/2E4Ho50uxQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vJl-004uWc-03;
	Tue, 28 Nov 2023 10:27:49 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIH-004sx1-1U;
	Tue, 28 Nov 2023 10:26:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 8D1DAB83A09;
	Tue, 28 Nov 2023 10:26:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6646EC433C7;
	Tue, 28 Nov 2023 10:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167173;
	bh=cUa4ZlT2wSGqeoteiiVi9GhpPWDTIxakVCkbOrAWqhE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=W4G1+yHf4q4qdzWaCZ0zaZPPwnZ/tZIjmiCHIlYpugGhS2FL+kwZigcQ/qanYEv+4
	 EIWfy2NIXA3qWL1DbqztIeKrNayT/LDe0joxo2kICSS6/3rucmk9xaT+7nC3oOju0n
	 aYK32vV/ceIRD4F9Pmg8chQ0vNCFhVBchBY0Fh4EPD3ev1WiPa1zM+Qpb6jhTr33gi
	 IOo/NutJaRTsGCEYklCjtRiazWKO558LysQ5uJ49+GYr6fCNOxUH0vzJSzjPZTN47y
	 pq56dFgNHN+uBy6yII96q8shvhjKlpSXxul456JC9bbjn1YB6+CTXJGXqiXpMkgY8t
	 wP3dVjPVtzAPg==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:50 +0100
Subject: [PATCH v4 39/45] drm/rockchip: inno_hdmi: Remove unused drm device
 pointer
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-39-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=911; i=mripard@kernel.org;
 h=from:subject:message-id; bh=cUa4ZlT2wSGqeoteiiVi9GhpPWDTIxakVCkbOrAWqhE=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y/Pdd0bzHQv4ciEvveMrg8PivQclp22IO5jwVq93
 unblu851lHKwiDGxSArpsgSI2y+JO7UrNedbHzzYOawMoEMYeDiFICJPH7L8L/SMrxDvOHuz/2v
 whdpzW/0ct+p+SXZbldkXrgfk7yUbgsjQ4+YLduC1b+jpQtuXJHfHGXdrW15pqH71aVVWx6tnRL
 3kx8A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022617_681554_B5412140 
X-CRM114-Status: GOOD (  11.65  )
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

The drm_dev field in the inno_hdmi struct stores a pointer to the DRM
device but is never used anywhere in the driver. Let's remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index ed1d10efbef4..d0b463d166fb 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -39,7 +39,6 @@ struct inno_hdmi_i2c {
 
 struct inno_hdmi {
 	struct device *dev;
-	struct drm_device *drm_dev;
 
 	int irq;
 	struct clk *pclk;
@@ -732,7 +731,6 @@ static int inno_hdmi_bind(struct device *dev, struct device *master,
 		return -ENOMEM;
 
 	hdmi->dev = dev;
-	hdmi->drm_dev = drm;
 
 	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(hdmi->regs))

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
