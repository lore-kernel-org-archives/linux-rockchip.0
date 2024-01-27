Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46412C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 22:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoTUyazrvwro15zum86Vcem13yDSSg7+lWueDp/6dj4=; b=1Yqvag/MdrwMjH
	5szzZoSSvmWRbqId+p4b1zfIsS9DXXtGXy+i1iLL5W09VYomRCqrA1kPFM+b0Bi5vBDCUIItEsZOm
	sSRchWOL8S3wgpyan7ixm48iOb1SLjKmvMZjHubIC2MjsfqMCsAWDr/WKsi64ODvZiKw0VZVebcr9
	ZGFTCmHxRXenjEM1xHJEuxdzLJYRzmH0OELY9/xZV+eHVoU/hwtGgr7Qonc/OdviA+HexVHjokcMd
	DjRHsAf+rsmIkYXRFaZ/Pzzxg4Xv+ft4e3yxZa0XF5MzGlFzly9zcoTVEskx/qK1AjKAaGzajZU3V
	vaOXIas/cV3+Zt5D5Fcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTr4G-00000008IXB-2XKz;
	Sat, 27 Jan 2024 22:22:28 +0000
Received: from [50.53.50.0] (helo=[192.168.254.15])
	by bombadil.infradead.org with esmtpsa (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTr4C-00000008IVq-3NJU;
	Sat, 27 Jan 2024 22:22:25 +0000
Message-ID: <eed7560f-cd7d-4e07-9b38-038ca65445bf@infradead.org>
Date: Sat, 27 Jan 2024 14:22:23 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/17] media: ipu3: Fix kerneldoc
Content-Language: en-US
To: Ricardo Ribalda <ribalda@chromium.org>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Hans Verkuil <hverkuil@xs4all.nl>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Bin Liu <bin.liu@mediatek.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-amlogic@lists.infradead.org
References: <20240126-gix-mtk-warnings-v1-0-eed7865fce18@chromium.org>
 <20240126-gix-mtk-warnings-v1-15-eed7865fce18@chromium.org>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20240126-gix-mtk-warnings-v1-15-eed7865fce18@chromium.org>
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



On 1/26/24 15:16, Ricardo Ribalda wrote:
> Remove documentation from missing fields.
> 
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
Thanks.

> ---
>  drivers/staging/media/ipu3/include/uapi/intel-ipu3.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/staging/media/ipu3/include/uapi/intel-ipu3.h b/drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
> index caa358e0bae4..4aa2797f5e3c 100644
> --- a/drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
> +++ b/drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
> @@ -2485,11 +2485,9 @@ struct ipu3_uapi_anr_config {
>   *		&ipu3_uapi_yuvp1_y_ee_nr_config
>   * @yds:	y down scaler config. See &ipu3_uapi_yuvp1_yds_config
>   * @chnr:	chroma noise reduction config. See &ipu3_uapi_yuvp1_chnr_config
> - * @reserved1: reserved
>   * @yds2:	y channel down scaler config. See &ipu3_uapi_yuvp1_yds_config
>   * @tcc:	total color correction config as defined in struct
>   *		&ipu3_uapi_yuvp2_tcc_static_config
> - * @reserved2: reserved
>   * @anr:	advanced noise reduction config.See &ipu3_uapi_anr_config
>   * @awb_fr:	AWB filter response config. See ipu3_uapi_awb_fr_config
>   * @ae:	auto exposure config  As specified by &ipu3_uapi_ae_config
> @@ -2724,7 +2722,6 @@ struct ipu3_uapi_obgrid_param {
>   * @acc_ae: 0 = no update, 1 = update.
>   * @acc_af: 0 = no update, 1 = update.
>   * @acc_awb: 0 = no update, 1 = update.
> - * @__acc_osys: 0 = no update, 1 = update.
>   * @reserved3: Not used.
>   * @lin_vmem_params: 0 = no update, 1 = update.
>   * @tnr3_vmem_params: 0 = no update, 1 = update.
> 

-- 
#Randy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
