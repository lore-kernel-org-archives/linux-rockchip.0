Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA51CA5FD6
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 16:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3yoitokKCpip9QVs+8kED0s0ncIcyTlFJsVOwuw9D8=; b=39e70sqOjR8IRF
	OdIr89o/1T3aUWeBkvOGV3fW0TIHYL3ggNW969dc9wnXMX9Pw3AINGKz+upr/7W1RTp+u+MVDcHE/
	tXW1NmNvA3hKjvvrGjWgN0QT/vlSgCns/E5sXwZhhcfntPjln9Y1jgX1nojPopA0AvegsFoJd/nFv
	UBjoV4Ct+grIJncAhBDaqveV1hC4yBvSyIJLR5VeoOzxCvG6TfDn5EKj+evKWK1T+ZD4iqbaJeYs5
	ae2v789KpOxMncqYS9W3lIndL36//8RGtL9/vLnAkktrkTmEPERmoYwi+FKQYlS/6WtZH15g2h/RK
	uX4KkqzmTNWzgCsD+L2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCJhN-00000009idM-3xg7;
	Thu, 01 Oct 2026 16:31:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCJh9-00000009ibq-2KoK
	for linux-rockchip@bombadil.infradead.org;
	Thu, 01 Oct 2026 16:31:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Content-Type:Content-Transfer-Encoding:Mime-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=P8CkQIWj5HcyhZryF67jWCNKYqPLLvoZRPKw+1O7lIU=; b=OFDCbAaCD9fTZRqrK9nejNKRS1
	b9vlimdQYCfqR1w49EtEjDzjo75v6S7hXVWX4ZdRjc40kYq8NSu+MUKKg2xq10QL0pEOtLKiLjphT
	7gBedUJNlDCTy8UhBpHou6+vGWzPu4LWKDVAfBlLKaABLiz5xoPuiHNMrMkLWJO79kI0lPSn9qmad
	yWgNQHAj+FzOSKzIzCOiZm8nERquBALfNlZjj/s4QMxFoYhgx5OKFf3Vadn2DduBp09HkzIjkX6Cq
	xN2jr/q8IpF8PWpVHQpU05yNiVQALAIVvrScv2HswpnaWAjJDZr5o6+a18jCqbrRoVK/mQFX0+qVH
	dM4giqbw==;
Received: from smtpout-03.galae.net ([185.246.85.4])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCJh4-00000005D1W-1Lrh
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Oct 2026 16:31:41 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2535B4E420D0;
	Thu,  1 Oct 2026 16:31:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D6AD760346;
	Thu,  1 Oct 2026 16:31:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id EF21B10328316;
	Thu,  1 Oct 2026 18:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790872294; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=P8CkQIWj5HcyhZryF67jWCNKYqPLLvoZRPKw+1O7lIU=;
	b=vTiJeW9oDRe8HNFFUD2jhR+6xFmder3DG3A2GDGJ5TirFWrz/FsuRKT88vXwinhv7jC6Ir
	/UcdI9D6JH/85wGJGWCyKLkfnpudXXNyfezASoYhK5uOmyrN+krkCfcS470I8/x/9DO5Re
	IoGXOERxZx9MHENpyrB/YjRh7RQGhsPT3Dy40wc4Ox5HlkaMS3HfbSvjxr1jectlZ3TJpQ
	C2TsHUIDE0IHZy/Rcm9zX8vhezU2s8wYIiu/QrJPUFghxIWJ75D2wnk1RNkJY8CuUEC8XC
	ljnWucnwjgDNyXQsJJ7cR7qSO9mH1ZWujce5j1reexJ95C97kbHAnO5CmDZsQg==
Mime-Version: 1.0
Date: Thu, 01 Oct 2026 18:31:28 +0200
Message-Id: <DLTN8RLBW15A.PV8OJ9089OGL@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH 2/2] drm/bridge: lontium-lt8713sx: Drop redundant bridge
 funcs assignment
Cc: <kernel@collabora.com>, <dri-devel@lists.freedesktop.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.22.0
References: <20261001-bridge-alloc-conv-v1-0-f0a1fe040a86@collabora.com>
 <20261001-bridge-alloc-conv-v1-2-f0a1fe040a86@collabora.com>
In-Reply-To: <20261001-bridge-alloc-conv-v1-2-f0a1fe040a86@collabora.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_173139_368433_CA432386 
X-CRM114-Status: UNSURE (   5.75  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu Oct 1, 2026 at 10:25 AM CEST, Cristian Ciocaltea wrote:
> The driver already allocates its private data via
> devm_drm_bridge_alloc(), which initializes the bridge funcs pointer.
> Remove the leftover manual assignment in the probe function.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Well spotted!

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
