Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2C4ACCD1AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1X1iMvqWgsjVP72xAId1+dK8chHXJvh822FXQP0oDzY=; b=Clc6rfWgb1xfxa
	6wWPh/o4ZVsBbaZztc9NfysRMsVf6RZ4DQfKURuAi3gKvFnSWxhJOloQUpYofhK/9hf0BBVGOCFHG
	HdkYdazLQqFUoO66hHlPav3C1w8aCBEPZ/3MnvWKEFXb9UXnFcB/L1hO/VJhRBMhFo/JhzqxADHbS
	KVwaujTllAsYvYzaCJNhzxyUP5OMmNIxrP2C4dt10PJ9A0UFcqikXYYb+AiGJXgmgDowEuHKNkfuZ
	oF9w5vvdU//GYKzlHXRTrxMZlL0pOVltZwlR2mznyIaEA/xC1WkYlwW4m6WT22PqW9RKseSOn7j7P
	mQfDBpt+wfiYjQgSmFnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoWU-0000000DA9l-28QD;
	Mon, 20 Oct 2025 11:58:01 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ui8VC-00000007Olh-2xZi;
	Sat, 02 Aug 2025 09:26:08 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it [5.90.138.121])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id B634132CE;
	Sat,  2 Aug 2025 11:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1754126720;
	bh=PZJ1dtH8nmhfLvI56JLBdPdVDA0PB4szlI4XA3Wq6yw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=OTFLVa011NnEd62Pg03uYC4ijQ+I7C7eKlpJ/1lEAKQn52ln5poN59ByaM1OP/BJJ
	 1bGZzAQl8d3H7dkSml1kQTy9Mv+ol4VjnBH3vkVhOgfYLCUFuf44EaIzs77SisC9gp
	 9NTv3iC0LTAsfBWAeEubFS1vkreWcTWYo8AiEHoc=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:22:38 +0200
Subject: [PATCH 16/65] media: v4l2-fh: Move piece of documentation to
 correct function
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-16-eb140ddd6a9d@ideasonboard.com>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
In-Reply-To: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Devarsh Thakkar <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>, 
 Hans Verkuil <hverkuil@kernel.org>, Mike Isely <isely@pobox.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Hans de Goede <hansg@kernel.org>, 
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>, 
 Christian Gromm <christian.gromm@microchip.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Alex Shi <alexs@kernel.org>, Yanteng Si <si.yanteng@linux.dev>, 
 Dongliang Mu <dzm91@hust.edu.cn>, Jonathan Corbet <corbet@lwn.net>, 
 Tomasz Figa <tfiga@chromium.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Andy Walls <awalls@md.metrocast.net>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Dmitry Osipenko <digetx@gmail.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Mirela Rabulea <mirela.rabulea@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Michal Simek <michal.simek@amd.com>, Ming Qian <ming.qian@nxp.com>, 
 Zhou Peng <eagle.zhou@nxp.com>, 
 Xavier Roumegue <xavier.roumegue@oss.nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Dikshita Agarwal <quic_dikshita@quicinc.com>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Samuel Holland <samuel@sholland.org>, 
 Daniel Almeida <daniel.almeida@collabora.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Nas Chung <nas.chung@chipsnmedia.com>, 
 Jackson Lee <jackson.lee@chipsnmedia.com>, 
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, 
 Houlong Wei <houlong.wei@mediatek.com>, 
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
 Tiffany Lin <tiffany.lin@mediatek.com>, 
 Yunfei Dong <yunfei.dong@mediatek.com>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>, 
 Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 =?utf-8?q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>, 
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Fabien Dessenne <fabien.dessenne@foss.st.com>, 
 Hugues Fruchet <hugues.fruchet@foss.st.com>, 
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Steve Longerbeam <slongerbeam@gmail.com>, 
 Maxime Ripard <mripard@kernel.org>, Paul Kocialkowski <paulk@sys-base.io>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Corentin Labbe <clabbe@baylibre.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, 
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-staging@lists.linux.dev, linux-doc@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-tegra@vger.kernel.org, imx@lists.linux.dev, 
 linux-renesas-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-usb@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, mjpeg-users@lists.sourceforge.net, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1332;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=3mdLRukve15yg0XhGTxj6WeSGHvr7vlZ9xqEhBw1Ap8=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj5Aqu9VSv4VW4JgzhkKv4IejFT1+wHP4iEB
 k8A3tbKR0+JAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y+QAKCRByNAaPFqFW
 PMs+D/95ql+AofdksJ9+zTLY+7aOcDVLMQvYbA3pgfKJARD2L8GaSgT26Bs+muoW5SxO55NXUua
 M1AsJL8/xTGUpkmb9QB6bqbkIQqfW0MAU/R6prYbSr2QVa7palsTZqZuzU1Ngf/aJWjOMes52Hg
 FEqpmzq1bF+rXHMuiK4CKcExsn3a5ww/jpd1mJQ2dKh44gRYjXhv+JEsMUBsXfF8bjZsjHKBEdR
 xiGrMTt07gugBQDNa0zaJIV9bvYRqzDBh6zrx6VG9cCqltgdvn6qa4E5xuD2wJNOYo5f8jHzICK
 jzkTlBzDRuJ9pyNfQwcPM2CucUdG6ESpU38FP080jZnPDHGqOEOpZSPTNi1r6lkQyBZov0Oidmh
 AFDsX3+1yLe/Q36ytvuP/eRkK0QCU3T0AreReNKzLe/MkxA9MOs8v8n5Jg+hO60DSPMhzyIOzF8
 TTUgxC1Rv7kDtLKhwRVAgFmypxz+Yl7XdTm7v5nA8aqCQJTHjNzPSMZbDP4mIlzCVNWGztU2CKb
 OF8H9KNqJaiUO3BJPX1eqCOacTSvtuI/Z3y9X0/HTPfwXXZNSkaLm1Wp2oPcWu4T8H6XTH9dO4t
 JIh7O8nImH8gE4dCTNvxjXypvMugfjCkwL4iM/yXf0Ilmp25VoACwNJCB3vA67AyhaVa+5Pd786
 vgFeamTgOOjrY+A==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250802_022606_891586_8FDBEA26 
X-CRM114-Status: GOOD (  13.16  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:49 -0700
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The paragraph in the v4l2_fh_del() documentation that indicates the
function sets filp->private_data was added in the wrong place. It is
meant for v4l2_fh_open(). Move it to where it belongs.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 include/media/v4l2-fh.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/media/v4l2-fh.h b/include/media/v4l2-fh.h
index 823fa8ebeb8fbe36f05a1c31d3d3a9b7bba4de4d..14e7136e693f0a7b8b25959200603028e0db36ac 100644
--- a/include/media/v4l2-fh.h
+++ b/include/media/v4l2-fh.h
@@ -101,6 +101,9 @@ void v4l2_fh_add(struct v4l2_fh *fh);
  *
  * It allocates a v4l2_fh and inits and adds it to the &struct video_device
  * associated with the file pointer.
+ *
+ * On error filp->private_data will be %NULL, otherwise it will point to
+ * the &struct v4l2_fh.
  */
 int v4l2_fh_open(struct file *filp);
 
@@ -109,9 +112,6 @@ int v4l2_fh_open(struct file *filp);
  *
  * @fh: pointer to &struct v4l2_fh
  *
- * On error filp->private_data will be %NULL, otherwise it will point to
- * the &struct v4l2_fh.
- *
  * .. note::
  *    Must be called in v4l2_file_operations->release\(\) handler if the driver
  *    uses &struct v4l2_fh.

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
