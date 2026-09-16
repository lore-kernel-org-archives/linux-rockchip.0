Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B020EC88E5C
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 13:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2ZlD+B1GzODR9GTROEL+K49aa1d5x/CZZfjezfWtzk=; b=oaU2Qyi8lt54qG
	IJcZTXzGXZNuvwdLgZyhZS8hDnv4/aL3++t3MaoiSPpU1oOULh9Ouan1qlXGfOc+/qXdVP3sy4830
	psslpwS4hNcn8Y7NMVU/bc0TZxY87RgkyNpL9aoaUQDuZFcltSZImyHa23OZjujzMzvnH/+65959w
	UZo/lFFQua/VSM/E6Wui91QwfG1iY6x9YxV78oRcLPUk5rJt0I4aFhN0OKMCgOGvcEjY/BjgXq1gv
	ntsMjrMfDY8qocL+lExGEKtE84V8DmMlIVV8OO5Z/l+PjHzgh1cSu17I/VVKUkB7NJdyL2A+Pj48M
	DUZH/iCVBcHC8HauctTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pyk-00000009JJG-3fef;
	Wed, 16 Sep 2026 13:47:15 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6pyS-00000009Ixb-1nKS
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Sep 2026 13:46:59 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id CDF824E40727;
	Wed, 16 Sep 2026 13:46:54 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9E9D260337;
	Wed, 16 Sep 2026 13:46:54 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4C8B111C7B042;
	Wed, 16 Sep 2026 15:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1789566411; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Kzx7cYVqLgkBsTDq0kfXPzm/eoE3/PwS0/f16oAjmtA=;
	b=efB9rYuizlWyBmeyjgXAyqT/EmO5MBA2lRywzCNv1NeGY+zZNubrYDREDfyFlAfDhc+Ln3
	THOiYddqwpbMAMnpCfg3Z9NJyxnRTupdDioY4Yqs8LxIzqBZY7mbSJEfBtpJcbFYCRe0Af
	bPznxNRs4e1WFuvruUlofhhNEMnRMwkIgEBgIaXOVH6t4+nqLDM3nGsQ0jeKLdn945rrRz
	Ih7MdR6/pySHjFk5RNY79AJHDJHO/3XM62oACWrTor2rIcsE4eB0YjchUanbSXBGAVRHgt
	secfu1AAKqmLazXF9tB2qxEgpbtbbpHbd3kKCRRa2LAzYj9o2F+qlD8PzVd6Ww==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Wed, 16 Sep 2026 15:45:32 +0200
Subject: [PATCH v3 08/19] drm/todo: add entry for removing the panel_bridge
 API
MIME-Version: 1.0
Message-Id: <20260916-drm-bridge-every-panel-v3-8-83afb4f1a707@bootlin.com>
References: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
In-Reply-To: <20260916-drm-bridge-every-panel-v3-0-83afb4f1a707@bootlin.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
 Paul Kocialkowski <paulk@sys-base.io>, Linus Walleij <linusw@kernel.org>, 
 Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, Sean Paul <sean@poorly.run>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
 Randy Dunlap <rdunlap@infradead.org>
Cc: Albert Esteve <aesteve@redhat.com>, 
 Anusha Srivatsa <asrivats@redhat.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Hui Pu <Hui.Pu@gehealthcare.com>, Ian Ray <ian.ray@gehealthcare.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-mips@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, asahi@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, 
 linux-tegra@vger.kernel.org, linux-doc@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
X-Mailer: b4 0.16.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_064656_800247_9ACCA9ED 
X-CRM114-Status: UNSURE (   8.62  )
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

Now that a drm-bridge is embedded into every drm_panel during the panel
creation, the panel_bridge does not really exist anymore. Its API has been
deprecated and kept until drivers convert to the bridge API.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 Documentation/gpu/todo.rst | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index cb0ce432c114..a437ae5c71f4 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -484,6 +484,31 @@ Contact: Douglas Anderson <dianders@chromium.org>
 
 Level: Starter
 
+Remove panel_bridge API functions
+---------------------------------
+
+Now that a drm_bridge is embedded into every drm_panel, the panel_bridge is
+not needed anymore. Its APIs are just accessing the embedded drm_bridge
+transparently, and the are deprecated.
+
+The funcions to remove are:
+ - drm_panel_bridge_add_typed()
+ - devm_drm_of_get_bridge()
+ - drmm_of_get_bridge()
+ - drm_panel_bridge_remove()
+ - drmm_drm_panel_bridge_release()
+ - devm_drm_panel_bridge_release()
+ - their direct or indirect callers
+
+Convert users of those functions and eventually remove them when unused, or
+make them static drm_panel.c functions when used internally by the
+``drm_panel.c`` code.
+
+Contact: Luca Ceresoli <luca.ceresoli@bootlin.com>
+         Maxime Ripard <mripard@kernel.org>,
+
+Level: Easy
+
 Convert users of of_drm_find_bridge() to of_drm_find_and_get_bridge()
 ---------------------------------------------------------------------
 

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
