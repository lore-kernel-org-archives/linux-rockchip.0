Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7721C54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 00:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCJEZoZimIYvX33Jwh8VWgeOIEhOxibg5a9Zk0opsNI=; b=ob0eYaDwrk6i0v
	A3Pq0P06gBwxc+zMiWCm5afNN3QQlWLXwLgjzTeMihdrmHJ1xpaNGJ71jnL8Wely+Va6kB9uNF2d0
	8GzFhoceG/0TSj63fS7SprhCyV3Db+aWCjgVqLzIlngo5CMNGfaH97xEjx4I6jEE/qbtXUKEZi9uE
	QPSfWVIrzVN4yim5a7BNXNXFz89UftsqvtYcQf5NxHjr4E5x3CWcPs5tQX1Qz0uGNE6WJnzve7Db0
	3jEZaapz1tMzuqOKEVLoHRQdSEsw0kUN6YWvRi/wy8nuihuz3mOkbaE6oVxQ67E6kbFJo+A6hsxC5
	16cWkX2C66tWewy2y3hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpdmH-0000000BmhZ-47AW;
	Thu, 28 Mar 2024 00:37:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpdmE-0000000BmgM-2VmQ
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Mar 2024 00:37:56 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42S00C69003713;
	Thu, 28 Mar 2024 00:37:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=zan39S1zKYC7pIQLxtwjOVC9d8W7tcjOI2JHTBBnrdw=; b=lV
	XpZABcHQMXxemaQ8u6vSwXBRhJ0CLTNbENq3i3iPjnqJuBHV1iSrQ54yZNvl2NHh
	M0CqUqBKhKdVIj3Sjvn3ESYic+nIBn8QjAGgBm61jPMVXhLuugEYvjXKYmwJRYps
	QD96L4Q3dMF7aVDbomlGNQcfxJ1DtjFczvOniTRMPH25ekFy9PDVSdM5aK9Qasxd
	AnbadVNlJW3E4MnDVYpCdb5DFqUf+KSiFjVpIPbb8yqNntJquzaa//HCW5sbh9DV
	dMq5Y8f9q661Y5p5zhxNoDsqzv9/Z20y7khirsv9kDsoXmJE2wa1GHByyKHMGFh5
	pitYkyhXdKKkMPFD9Yrg==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3x4u1ygft9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Mar 2024 00:37:42 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42S0bfHH021515
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Mar 2024 00:37:41 GMT
Received: from [10.71.108.229] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Wed, 27 Mar
 2024 17:37:39 -0700
Message-ID: <32031ccc-50e4-4816-b763-0bf0e4421a58@quicinc.com>
Date: Wed, 27 Mar 2024 17:37:38 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/panel: st7703: Add GameForce Chi Panel Support
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>,
        <linux-rockchip@lists.infradead.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <daniel@ffwll.ch>, <airlied@gmail.com>, <sam@ravnborg.org>,
        <neil.armstrong@linaro.org>, <megi@xff.cz>, <kernel@puri.sm>,
        <agx@sigxcpu.org>, <heiko@sntech.de>, <conor+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <robh@kernel.org>,
        Chris Morgan
	<macromorgan@hotmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
 <20240325134959.11807-4-macroalpha82@gmail.com>
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <20240325134959.11807-4-macroalpha82@gmail.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: YdvzCbDf8kua2kXXKmX8gyZUEvzT1Tb4
X-Proofpoint-ORIG-GUID: YdvzCbDf8kua2kXXKmX8gyZUEvzT1Tb4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-27_19,2024-03-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0 suspectscore=0
 mlxscore=0 clxscore=1011 mlxlogscore=999 malwarescore=0 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2403280000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_173754_933489_2C7469F4 
X-CRM114-Status: GOOD (  20.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 3/25/2024 6:49 AM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The GameForce Chi is a handheld device with a 3.5" 640x480 ST7703 based
> display panel.
> 

Hi Chris,

Acked-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Thanks,

Jessica Zhang

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   drivers/gpu/drm/panel/panel-sitronix-st7703.c | 87 +++++++++++++++++++
>   1 file changed, 87 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> index a3e142f156d5..7d8302cca091 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> @@ -612,6 +612,92 @@ static const struct st7703_panel_desc rgb10max3_panel_desc = {
>   	.init_sequence = rgb10max3_panel_init_sequence,
>   };
>   
> +static int gameforcechi_init_sequence(struct st7703 *ctx)
> +{
> +	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
> +
> +	/*
> +	 * Init sequence was supplied by the panel vendor. Panel will not
> +	 * respond to commands until it is brought out of sleep mode first.
> +	 */
> +
> +	mipi_dsi_dcs_exit_sleep_mode(dsi);
> +	msleep(250);
> +
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x31, 0x81, 0x05, 0xf9,
> +			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x44, 0x25, 0x00, 0x91, 0x0a, 0x00,
> +			       0x00, 0x02, 0x4f, 0xd1, 0x00, 0x00, 0x37);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x0c, 0x10, 0x0a,
> +			       0x50, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
> +			       0x00, 0x00, 0x08, 0x70, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x46);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0x00, 0x13, 0xf0);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x07, 0x07, 0x0b, 0x0b,
> +			       0x03, 0x0b, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
> +			       0xc0, 0x10);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x53, 0x00, 0x1e,
> +			       0x1e, 0x77, 0xe1, 0xcc, 0xdd, 0x67, 0x77, 0x33,
> +			       0x33);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x10, 0x10);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x6c, 0x7c);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0x08, 0x00, 0x0e, 0x00,
> +			       0x00, 0xb0, 0xb1, 0x11, 0x31, 0x23, 0x28, 0x10,
> +			       0xb0, 0xb1, 0x27, 0x08, 0x00, 0x04, 0x02, 0x00,
> +			       0x00, 0x00, 0x00, 0x04, 0x02, 0x00, 0x00, 0x00,
> +			       0x88, 0x88, 0xba, 0x60, 0x24, 0x08, 0x88, 0x88,
> +			       0x88, 0x88, 0x88, 0x88, 0x88, 0xba, 0x71, 0x35,
> +			       0x18, 0x88, 0x88, 0x88, 0x88, 0x88, 0x00, 0x00,
> +			       0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x97, 0x0a, 0x82, 0x02,
> +			       0x13, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x80, 0x88, 0xba, 0x17, 0x53, 0x88, 0x88, 0x88,
> +			       0x88, 0x88, 0x88, 0x81, 0x88, 0xba, 0x06, 0x42,
> +			       0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x23, 0x10,
> +			       0x00, 0x02, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x07, 0x0b,
> +			       0x27, 0x2d, 0x3f, 0x3b, 0x37, 0x05, 0x0a, 0x0b,
> +			       0x0f, 0x11, 0x0f, 0x12, 0x12, 0x18, 0x00, 0x07,
> +			       0x0b, 0x27, 0x2d, 0x3f, 0x3b, 0x37, 0x05, 0xa0,
> +			       0x0b, 0x0f, 0x11, 0x0f, 0x12, 0x12, 0x18);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode gameforcechi_mode = {
> +	.hdisplay	= 640,
> +	.hsync_start	= 640 + 40,
> +	.hsync_end	= 640 + 40 + 2,
> +	.htotal		= 640 + 40 + 2 + 80,
> +	.vdisplay	= 480,
> +	.vsync_start	= 480 + 17,
> +	.vsync_end	= 480 + 17 + 5,
> +	.vtotal		= 480 + 17 + 5 + 13,
> +	.clock		= 23546,
> +	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	= 71,
> +	.height_mm	= 53,
> +};
> +
> +static const struct st7703_panel_desc gameforcechi_desc = {
> +	.mode = &gameforcechi_mode,
> +	.lanes = 2,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init_sequence = gameforcechi_init_sequence,
> +};
> +
>   static int st7703_enable(struct drm_panel *panel)
>   {
>   	struct st7703 *ctx = panel_to_st7703(panel);
> @@ -887,6 +973,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
>   
>   static const struct of_device_id st7703_of_match[] = {
>   	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
> +	{ .compatible = "gameforce,chi-panel", .data = &gameforcechi_desc },
>   	{ .compatible = "powkiddy,rgb10max3-panel", .data = &rgb10max3_panel_desc },
>   	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
>   	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
