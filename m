Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52641CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UIqoYB6kIRlU0b9z40QP99ISFWOPljRgPzoTN8OpWQ=; b=EFr0XIIiXPd00/
	eehHG9JmjQHIxhArbuPXAsbxsYvfknju3jAOL/D/JSyQps2+ZTZYKarZhh/6AxasgqSNFdeKy1HPv
	QtCXgxa0WBdFE+DRPfZ3SSyeBOusucClq90RMblFD70TvyOAIoRokXnTNvgB1EFNOqvpzg1n3l0G+
	UWYM8I/hnI2EpyXrIhieDJ4OvhyTWZn7LtFajV2iya0icECPrWErDd0/K2HYIIc8m7Ap4tnII/rS9
	CMqhObV+rRVuyl+HR3e6r13TfaREZzgW7y2zr1eozLifFqXCNu6EE2GGsoKAijynRC/Qfaila6CBx
	zZjeyxfD+JTdyTBTOPSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoXL-0000000DBTH-1klD;
	Mon, 20 Oct 2025 11:58:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ui8cm-00000007SJJ-0jNN;
	Sat, 02 Aug 2025 09:33:57 +0000
Received: from [192.168.0.172] (mob-5-90-138-121.net.vodafone.it [5.90.138.121])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8FDB1434B;
	Sat,  2 Aug 2025 11:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1754127189;
	bh=HJZkrhFG+jzm747g4Ehf7uDDScTqxfq9NHQKM9RJ9+c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=drO4QQ4w5C/9gxSKad/aI2GIngo7vFtEHIHzrGgn7kZAWSwLR5wrEh4HQvq6Jm6OI
	 ZusDu7tyhzItb/PJ3UgESd1YUquS1Fmh3fVSitOAj7wJomAczSa4RbhwDqiVZJfF3B
	 Qtx/E4NpY2guxQIm3G7R7AMgxzqza3IQPTFKsu6c=
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Date: Sat, 02 Aug 2025 11:23:23 +0200
Subject: [PATCH 61/65] media: staging: imx: Access v4l2_fh from file
MIME-Version: 1.0
Message-Id: <20250802-media-private-data-v1-61-eb140ddd6a9d@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2886;
 i=jacopo.mondi@ideasonboard.com; h=from:subject:message-id;
 bh=HJZkrhFG+jzm747g4Ehf7uDDScTqxfq9NHQKM9RJ9+c=;
 b=owEBbQKS/ZANAwAKAXI0Bo8WoVY8AcsmYgBojdj/LYqcTTKP5IO38I6jRkZtnPsad4yNU/BBM
 LhZkqOCQmyJAjMEAAEKAB0WIQS1xD1IgJogio9YOMByNAaPFqFWPAUCaI3Y/wAKCRByNAaPFqFW
 PBUoD/9IzXwsCQmzZriXZwyHxu8ZbHSG9GOn5AFJ5yuxmyL+uefno6h2zKTZMm8PDQQEMO/jVe0
 WSC2PXgtp2l2beUGIlkrSqMAWd2ooWmRvUskEkWBmBzeG506UdTZjbx/418DFC8Z8zaeB0nVCdc
 /wGf0Gy1y1swBI602aZLOtqjRfjKcD5vu9ozAisDD4RHfMWfPbDX7hndsvy/b185ErMEK6rG3SI
 Ux1cGTjjJ4rFaeg9XyTreQ3dPyg7tPSoaubiZa2cunxMtK5RPQmbqJkWG2EF56aX6LYWLUshWQm
 1+WDzhvT0criVSZX0gp0EGUYaemxF1Gcd13bOgQ6l5Cmlq3KeKDlns0Q17hjXxdnwz6revxZAGl
 FrTVFgF3IyThahVOUI6yq/UMj0LI82p9bgOwi4Mu4aUOoLzz09jWVkYPdh+Jma4I3Ker4Qw8XYW
 mPuw1AHdEAi8T2Ygj8ksbEaFPQkxSNfmMk1ocWww69os41oVrZ0VF6a+r8xmZe/EudJmIWtW9Rb
 4S+lSn8e7w2Jt7CcII/wZZJqnFDuYyP/Ty87GGVE8d7K9g7Bx4Z4dOZNVB1u2OPb+8W/gcu4E/5
 TYrxi33Ung3k9TQRPV8LyxI/8QGtcQZubSmmlE2e7kjnp6Rzuo/gnwA9C0Ba04DByNeihtvEVG2
 QGndJvaTcNt3y7g==
X-Developer-Key: i=jacopo.mondi@ideasonboard.com; a=openpgp;
 fpr=72392EDC88144A65C701EA9BA5826A2587AD026B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250802_023356_359752_850A474E 
X-CRM114-Status: GOOD (  11.71  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:57 -0700
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

The v4l2_fh associated with an open file handle is now guaranteed
to be available in file->private_data, initialised by v4l2_fh_add().

Access the v4l2_fh, and from there the driver-specific structure,
from the file * in all ioctl handlers.

Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
---
 drivers/staging/media/imx/imx-media-csc-scaler.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csc-scaler.c b/drivers/staging/media/imx/imx-media-csc-scaler.c
index c4ee0eebb3730e709c3d4a95935d0047a645e411..1869c5792ecb46682491ecbf33674c6044915261 100644
--- a/drivers/staging/media/imx/imx-media-csc-scaler.c
+++ b/drivers/staging/media/imx/imx-media-csc-scaler.c
@@ -23,8 +23,6 @@
 
 #include "imx-media.h"
 
-#define fh_to_ctx(__fh)	container_of(__fh, struct ipu_csc_scaler_ctx, fh)
-
 #define IMX_CSC_SCALER_NAME "imx-csc-scaler"
 
 enum {
@@ -184,7 +182,7 @@ static int ipu_csc_scaler_enum_fmt(struct file *file, void *fh,
 static int ipu_csc_scaler_g_fmt(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
 
 	q_data = get_q_data(ctx, f->type);
@@ -197,7 +195,7 @@ static int ipu_csc_scaler_g_fmt(struct file *file, void *priv,
 static int ipu_csc_scaler_try_fmt(struct file *file, void *priv,
 				  struct v4l2_format *f)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data = get_q_data(ctx, f->type);
 	struct ipu_image test_in, test_out;
 	enum v4l2_field field;
@@ -245,8 +243,8 @@ static int ipu_csc_scaler_try_fmt(struct file *file, void *priv,
 static int ipu_csc_scaler_s_fmt(struct file *file, void *priv,
 				struct v4l2_format *f)
 {
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
 	struct vb2_queue *vq;
 	int ret;
 
@@ -301,7 +299,7 @@ static int ipu_csc_scaler_s_fmt(struct file *file, void *priv,
 static int ipu_csc_scaler_g_selection(struct file *file, void *priv,
 				      struct v4l2_selection *s)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
 
 	switch (s->target) {
@@ -339,7 +337,7 @@ static int ipu_csc_scaler_g_selection(struct file *file, void *priv,
 static int ipu_csc_scaler_s_selection(struct file *file, void *priv,
 				      struct v4l2_selection *s)
 {
-	struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
+	struct ipu_csc_scaler_ctx *ctx = file_to_ctx(file);
 	struct ipu_csc_scaler_q_data *q_data;
 
 	switch (s->target) {

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
