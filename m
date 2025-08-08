Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC2FCCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77R8Z/LyKu7nvupSYEsspKD+t3diPWyodSxgD/717QU=; b=nEzMt26qwrSQRY
	HNJxOcpSZIq1lhQ9lLn8GWfnTb8oW8m2VdUt8NF1Y+BSQXR/UYey7w54LQqL7btUBP1QdAjdcdR05
	QGpTWZQl/tCifBd3x/LpIdHyImaUCwKRgmi2/IMH4yhbYIQPoig4ui1NbxzfvJBvtE2oPfA4tynfb
	9naFRJs+sNKSPyRszXgxdU1OHNkSKjJ+pl8LCuA3CsYfGMxKK9ybfHE84f6h/J7zkKisce1IKvhqh
	dBj7wGlwDsX2FpAVg2M4YqwPHsIyuTSKFrO8VBJnCZX3W8O3NLuYphgjbjAWitlieqZZsFDL2qm1F
	w0wz5OvLer9mZV70AJhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAonl-0000000DLuT-3DrT;
	Mon, 20 Oct 2025 12:15:49 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukHQk-00000002BPm-2lvw;
	Fri, 08 Aug 2025 07:22:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1754637743; x=1786173743;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=D0yQI0889uGDxttAL1VW9IziZZW2CO6lra8hHuRfDUc=;
  b=E9tmmMEIkgQMWDM2pgxb5v15Wql+eB72z7xRTyhOYEK1GOAm3Z1AC+an
   xv4bHcf26AnZ4DkEliR4T22z6UnyQuwiuas+kKZ1RITruBheknx6dFymS
   kExcdgopnJXzJMFMKwpokZ/UDoq/zXPLhDqDNhTcUw/CVGwXr0TDyurUs
   o+CeL9g8yrjbPuzFBfkz27gwHMwDrwh6GTkwti5wQ5lg7skxfwxBU+dm/
   9lCLTofQNzi4cMNSMFfAH2FkDPlaDOJVNzapQDHbwmgdL/kwn2n0GKrFI
   XSIBh4uGpWNWTGp7kcDxK2KmIjtbTvk4KvqCjbfiPM38NTKQdWTiTjI56
   Q==;
X-CSE-ConnectionGUID: 0S8FqiI7Su2anQSpwxl2IA==
X-CSE-MsgGUID: LkRlCUvWSiO4GHYhN1s+rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="82427395"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; 
   d="scan'208";a="82427395"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Aug 2025 00:22:21 -0700
X-CSE-ConnectionGUID: hM7JLmW/RPCNPH3wwurmHw==
X-CSE-MsgGUID: QgYUze20SyS8phiQ3aIPmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; 
   d="scan'208";a="188944094"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.245.151])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Aug 2025 00:22:10 -0700
Received: from kekkonen.localdomain (localhost [127.0.0.1])
	by kekkonen.fi.intel.com (Postfix) with SMTP id 7740C11FC4D;
	Fri,  8 Aug 2025 10:22:07 +0300 (EEST)
Date: Fri, 8 Aug 2025 07:22:07 +0000
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Devarsh Thakkar <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>, Hans Verkuil <hverkuil@kernel.org>, Mike Isely <isely@pobox.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hansg@kernel.org>, Parthiban Veerasooran <parthiban.veerasooran@microchip.com>, Christian Gromm <christian.gromm@microchip.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Shi <alexs@kernel.org>, Yanteng Si <si.yanteng@linux.dev>, Dongliang Mu <dzm91@hust.edu.cn>, Jonathan Corbet <corbet@lwn.net>, Tomasz Figa <tfiga@chromium.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Andy Walls <awalls@md.metrocast.net>, Michael Tretter <m.tretter@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Dmitry Osipenko <digetx@gmail.com>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Mirela Rabulea <mirela.rabulea@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Michal Simek <michal.simek@amd.com>, Ming Qian <ming.qian@nxp.com>, Zhou Peng <eagle.zhou@nxp.com>, Xavier Roumegue <xavier.roumegue@oss.nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, Vikash Garodia <quic_vgarodia@quicinc.com>, Dikshita Agarwal <quic_dikshita@quicinc.com>, Abhinav Kumar <abhinav.kumar@linux.dev>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Sylwester Nawrocki <sylvester.nawrocki@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Daniel Almeida <daniel.almeida@collabora.com>, Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Nas Chung <nas.chung@chipsnmedia.com>, Jackson Lee <jackson.lee@chipsnmedia.com>, Minghsiu Tsai <minghsiu.tsai@mediatek.com>, Houlong Wei <houlong.wei@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Tiffany Lin <tiffany.lin@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>, Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>, Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Fabien Dessenne <fabien.dessenne@foss.st.com>, Hugues Fruchet <hugues.fruchet@foss.st.com>, Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Steve Longerbeam <slongerbeam@gmail.com>, Maxime Ripard <mripard@kernel.org>, Paul Kocialkowski <paulk@sys-base.io>, Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>, Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Corentin Labbe <clabbe@baylibre.com>, Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org, imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, mjpeg-users@lists.sourceforge.net
Subject: Re: [PATCH 63/65] media: ipu6: isys: Don't set V4L2_FL_USES_V4L2_FH
 manually
Message-ID: <aJWlnxqLtAModloU@kekkonen.localdomain>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-63-eb140ddd6a9d@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250802-media-private-data-v1-63-eb140ddd6a9d@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250808_002222_736026_A92686A3 
X-CRM114-Status: GOOD (  11.04  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:15:44 -0700
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

On Sat, Aug 02, 2025 at 11:23:25AM +0200, Jacopo Mondi wrote:
> From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> The V4L2_FL_USES_V4L2_FH flag is set by v4l2_fh_init(). It is not meant
> to be set manually by drivers. Drop it from the ipu6-isys driver.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Reviewed-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
