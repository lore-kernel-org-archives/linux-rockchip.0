Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 532A3C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 20:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a3RPfEEhBQ8JFdhLUHW/avqrlSNAuHO+o5ajb2iPM70=; b=a/91nrEWIuH/xb
	oUFGv/ND55URbzoDF5aJFhYOvroZuiOBZLbqGSm71w4/2iXDUPSedlagSjZjnNXc6Gt841aHiNbU9
	H2kZuxL9+XHDGk2JykerWyb4qk+EA5T3w16S+k9d28jduei/d/5iBiSWZOwoIMRTwZwr+IWbfNKpd
	0X1KPeKZPMrCtpz6OVQeYTa3VvyVv7SAYmX74bLB0n/0ZqcFFMy0eakx9+Vo+hN4xKUvgQuv4idgj
	LW797Lcl+q6lj4dIrMl6DPI7u1k+DZ+ffMa8lLBKhe45GErkal6p9sVhImSFl5Ga/Jjtyz1kym+BV
	CDl/R75dwfIh06m515Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8T0n-00A9u6-7E; Fri, 14 Jan 2022 20:17:25 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8T0Z-00A9nL-Jj
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 20:17:12 +0000
Received: by mail-pj1-x1030.google.com with SMTP id pf13so14470280pjb.0
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jan 2022 12:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1KlPp5hV7fm0qq5cqvD5aoj0BfkxebgR6vlczP+kuR0=;
 b=hPBL7+GzXtx7Xy9BNRGobBHcJh3in4NXqnnYC06hntRlpfp/vjmD9i9XpuCMkppYe0
 KTPskbaS26eaCBp9BJJSJSoDjVC7Re+360GTMca2engSbymUQqzvGV7YvvxDdrJ6Auu1
 1qigxd68D5GnHmbXdB/NPhH0nNGBQ1nZC2LHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1KlPp5hV7fm0qq5cqvD5aoj0BfkxebgR6vlczP+kuR0=;
 b=hajsFuQydKZbdENYt6LlVWZ06RDZr68XYk6BEXjF8EG6J3XUY+FE5Dibwid0vYuDON
 1NGC9nndIW0PTRx2KuxmOH7smSULl7NLB8OUjiMYKQtLnJPXOUdfyqlww3KtWfJvyvDs
 vRMmPeGiBMsvMvN2il0boXZwsPNPJEYLu21Q3IYrnnknn7T7+Xzdldab4vRO1TiYvMgD
 Z63j7JN5559A2+KqQAt1e5PPALyUJMx/VswT/DnS3AkHXlEa0Wkj9w7LnkT9pREKK12A
 7tQbysHuK1ErPtgX3htBMNn7GF/Y6pAc1mIg9PDHwnDx6/BCbEIIst0Ht+XSEKYOUBZd
 Tgbg==
X-Gm-Message-State: AOAM5325+YSo6VfPWF3zCu5XxWzlZ0XxfMqOHXI9V4utG/rYLdW9lbBb
 tvcOCI6GugjyjpM3pRuYgJ52fQ==
X-Google-Smtp-Source: ABdhPJyYDhYmzb1m8B5ltHSl6+g7+4DhFkP602unTzHjzxK1IseRAPUhU48jZq5jKbANYv16P6nwIQ==
X-Received: by 2002:a17:902:ea07:b0:14a:45c0:78a7 with SMTP id
 s7-20020a170902ea0700b0014a45c078a7mr11123208plg.92.1642191430200; 
 Fri, 14 Jan 2022 12:17:10 -0800 (PST)
Received: from localhost ([2620:15c:202:201:76ab:ede1:503d:1c39])
 by smtp.gmail.com with UTF8SMTPSA id q12sm6599881pfk.136.2022.01.14.12.17.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 12:17:09 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>
Subject: [PATCH 0/3] (Re)enable DP/HDMI audio for RK3399 Gru
Date: Fri, 14 Jan 2022 12:16:49 -0800
Message-Id: <20220114201652.3875838-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_121711_707679_963314C5 
X-CRM114-Status: GOOD (  10.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This series fixes DP/HDMI audio for RK3399 Gru systems.

First, there was a regression with the switch to SPDIF. Patch 1 can be
taken separately as a regression fix if desired. But it's not quite so
useful (at least on Chrome OS systems) without the second part.

Second, jack detection was never upstreamed, because the hdmi-codec
dependencies were still being worked out when this platform was first
supported.

Patches cover a few subsystems. Perhaps this is something for arm-soc?


Brian Norris (3):
  arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output
  drm/rockchip: cdn-dp: Support HDMI codec plug-change callback
  ASoC: rk3399_gru_sound: Wire up DP jack detection

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 10 +++----
 drivers/gpu/drm/rockchip/cdn-dp-core.c       | 28 ++++++++++++++++++++
 drivers/gpu/drm/rockchip/cdn-dp-core.h       |  4 +++
 sound/soc/rockchip/rk3399_gru_sound.c        | 20 ++++++++++++++
 4 files changed, 57 insertions(+), 5 deletions(-)

-- 
2.34.1.703.g22d0c6ccf7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
