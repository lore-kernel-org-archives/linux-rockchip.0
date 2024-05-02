Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA72AC04FFE
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 15:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qC9N70lgGufWqFelDz0pf9tJb1Ue9Eq2g7cpf3ArIWs=; b=gjHWX4FSzLpIeb
	S4RE+ZZ+qwVif37J74p46ewzD/LJDpPtwnDxWXNi8KRDYMz6OPlZ7DIyz7sG4ZFvwb+oVXMx854hv
	XAA8kwAzK7SfDwtOwT1TqerS5zfUUkGAWuO+Mq3D/oLNu6owfujwzX+471Hn5pevAyFSWHJa4L6yh
	Vyv956YWJIbrXIr3wACsAxA4llwO5P0uLriIPQiji8ZEF6UEYkTXrW0V//dpjsKvaoNKYl7J+JuQP
	2PD5d8dVf/2wTi70ykBh7E2yku1CMXCSwEpOxbVXbnHfzRBKxFgVas+gpZy9eGcr1qexJszNpU2I1
	K80Re6WTf0SgE6pa9H+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YIC-0000000D6tH-3IBw;
	Thu, 02 May 2024 15:24:16 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2YI5-0000000D6pQ-0eDD;
	Thu, 02 May 2024 15:24:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1714663444;
	bh=a+soNMe5USE1GQBlDsV+4YZguHdogyVWApppvQ4TJrM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Sjz2gSx2OQjAOH/LqLEJfS7R7htORJpiw4njKWt2DQHU9kB+y9JmGDKmbVdJVy2+d
	 qW/qENKrytt+rE3a7KTfehkzcGE1EsnNGXrvPCh5fHqUfftqVxe6tW2TT3Z3PyeL3i
	 Q7t0ENCo4gBZqTTlFBe7AqdKkZx/ADUV++QVzYVmC/rC0gTa74gJD8d/oIqbMf/ycJ
	 kolMoqpGITSG4OLU9fa0DNNOA6FBmAgbQEW/GinMMDrknd/9byWwiErAV+Bg0LLm8y
	 4Q1qr2P/44JXUczSfwv+mWqBvuaesLEBIWuVdvm1ZsSaNcBNkjWwFbG5Adh/TJRWoz
	 IOaylIvw8+2NA==
Received: from apertis.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: jmassot)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 745C93782113;
	Thu,  2 May 2024 15:24:01 +0000 (UTC)
From: Julien Massot <julien.massot@collabora.com>
Date: Thu, 02 May 2024 17:22:21 +0200
Subject: [PATCH 1/2] media: v4l: async: Add
 v4l2_async_nf_unregister_cleanup
MIME-Version: 1.0
Message-Id: <20240502-master-v1-1-8bd109c6a3ba@collabora.com>
References: <20240502-master-v1-0-8bd109c6a3ba@collabora.com>
In-Reply-To: <20240502-master-v1-0-8bd109c6a3ba@collabora.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 Jacopo Mondi <jacopo+renesas@jmondi.org>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
 Sylvain Petinot <sylvain.petinot@foss.st.com>, 
 Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, 
 Dan Scally <djrscally@gmail.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Eugen Hristev <eugen.hristev@collabora.com>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Maxime Ripard <mripard@kernel.org>, Rui Miguel Silva <rmfrfs@gmail.com>, 
 Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Robert Foss <rfoss@kernel.org>, 
 Todor Tomov <todor.too@gmail.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
 Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Hugues Fruchet <hugues.fruchet@foss.st.com>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Yong Deng <yong.deng@magewell.com>, 
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 Benoit Parrot <bparrot@ti.com>, Jai Luthra <j-luthra@ti.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Michal Simek <michal.simek@amd.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Sowjanya Komatineni <skomatineni@nvidia.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
 linux-staging@lists.linux.dev, linux-tegra@vger.kernel.org, 
 Julien Massot <julien.massot@collabora.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_082409_331562_81F1C690 
X-CRM114-Status: GOOD (  11.52  )
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

Many drivers are calling v4l2_async_nf_unregister, and
v4l2_async_nf_cleanup, add a function to do it.

Suggested-by: Sakari Ailus <sakari.ailus@iki.fi>
Signed-off-by: Julien Massot <julien.massot@collabora.com>
---
 include/media/v4l2-async.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/include/media/v4l2-async.h b/include/media/v4l2-async.h
index f26c323e9c96..cdbe63c26779 100644
--- a/include/media/v4l2-async.h
+++ b/include/media/v4l2-async.h
@@ -304,6 +304,23 @@ void v4l2_async_nf_unregister(struct v4l2_async_notifier *notifier);
  */
 void v4l2_async_nf_cleanup(struct v4l2_async_notifier *notifier);
 
+/**
+ * v4l2_async_nf_unregister_cleanup - unregister and clean up notifier resources
+ * @notifier: the notifier  the notifier to unregister and for which
+ *            the resources are to be cleaned up
+ *
+ * Unregister a subdevice asynchronous device and release memory resources
+ * related to a notifier.
+ * Convenient function to call v4l2_async_nf_unregister() and
+ * v4l2_async_nf_cleanup().
+ */
+static inline void
+v4l2_async_nf_unregister_cleanup(struct v4l2_async_notifier *notifier)
+{
+	v4l2_async_nf_unregister(notifier);
+	v4l2_async_nf_cleanup(notifier);
+};
+
 /**
  * v4l2_async_register_subdev - registers a sub-device to the asynchronous
  *	subdevice framework

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
