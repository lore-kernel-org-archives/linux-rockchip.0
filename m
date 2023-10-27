Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A83FEC27C46
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Oct 2023 22:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcBetwzWLw/iW7+zg4P58/L50CBs8Gz0qBDHJf+PLNA=; b=xFjOXTGYGkfvab
	k0nznbpAVa7RgVvmZS8A6L7gOZp5VicgTtYNqxZ/QixP4g/uZuEnlfMX7GTbVxxGQmXA9kBIMXtFr
	bEL/mGm949ODn3iEJkOxjDIabdW2Eh8A9HuipE99YOaznXxyIB5GeCT1Bk9/eG1Af+XcF0VufpnbS
	1mAA4S6cTR5+T7yN6KiZxTwcUu0zxNjM5x/MdsAL3nZ/CGCdxbADPbF1disayrSXM/N8fsNOpYk85
	gxS28uNIybtX4aoaZSfG9r28F7d+qxLssvcjhbQQWO2S1TcSU5xw1NViwgroNvq/Y0/lna2ETV0N+
	cREecoBp+nbk7Fb2PWBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qwVYc-00HJNQ-0j;
	Fri, 27 Oct 2023 22:43:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qwVYY-00HJMQ-2d
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Oct 2023 22:43:56 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39RMMjWA027511;
	Fri, 27 Oct 2023 22:43:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=dddWPssa7NxKmBC9PKKk9og9EbwBwqpIobXk1v9pY3w=;
 b=aST4fnsHI29EOTPrCe6kCaPzzqMMHIR1ZLVd7aM4I6EM1Z1XhZ49bXHph3YkvOxLci/4
 2ZVdXluoAhNHhyMeaxTPPNqoB18jlwXRVy6baYLs3RBlfrUNGvmbY8egUyxiWiViG5/S
 ivvDvsTH3EIwLztbyn5xTiDb1WvVIJ0rIwcRPSADMUjb6rH5rehZifC2d15Xp+Hni7Pk
 alR49ywA67BKRW/g8Ge/R1SjHbAMy+H+Jtg6jGoKXKK56udRh5BrJFBw+zVAAkMvggoO
 Oh9lAGvzdKE1gujczz9jAiGYXb8shMFo1pvKrhrt7xjVP8Obre6S+HeIVxQ6khcbWkfx rQ== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tyws9bbvf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Oct 2023 22:43:42 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39RMheLg002193
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Oct 2023 22:43:41 GMT
Received: from [10.134.69.165] (10.80.80.8) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Fri, 27 Oct
 2023 15:43:40 -0700
Message-ID: <0eb01480-f733-437e-a87a-9296dc7709c3@quicinc.com>
Date: Fri, 27 Oct 2023 15:43:33 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/panel: nv3051d: Add Powkiddy RK2023 Panel Support
To: Chris Morgan <macromorgan@hotmail.com>
CC: Chris Morgan <macroalpha82@gmail.com>, <devicetree@vger.kernel.org>,
        <conor+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <neil.armstrong@linaro.org>, <sboyd@kernel.org>, <sam@ravnborg.org>,
        <mturquette@baylibre.com>, <sebastian.reichel@collabora.com>,
        <dri-devel@lists.freedesktop.org>, <robh+dt@kernel.org>,
        <linux-clk@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
 <20231018161848.346947-3-macroalpha82@gmail.com>
 <c5e2929c-ef05-4e74-947e-579706f2b4aa@quicinc.com>
 <SN6PR06MB53427936B51EABD4484DF0C3A5DBA@SN6PR06MB5342.namprd06.prod.outlook.com>
Content-Language: en-US
From: Jessica Zhang <quic_jesszhan@quicinc.com>
In-Reply-To: <SN6PR06MB53427936B51EABD4484DF0C3A5DBA@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Jw6Q9V-R7xe7r2cJPauMZui7Tf4CK_8s
X-Proofpoint-GUID: Jw6Q9V-R7xe7r2cJPauMZui7Tf4CK_8s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-27_21,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 adultscore=0
 mlxlogscore=999 spamscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310270194
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231027_154354_992812_DD5C90B5 
X-CRM114-Status: GOOD (  26.84  )
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



On 10/20/2023 8:02 AM, Chris Morgan wrote:
> On Thu, Oct 19, 2023 at 10:22:24AM -0700, Jessica Zhang wrote:
>>
>>
>> On 10/18/2023 9:18 AM, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> Refactor the driver to add support for the powkiddy,rk2023-panel
>>> panel. This panel is extremely similar to the rg353p-panel but
>>> requires a smaller vertical back porch and isn't as tolerant of
>>> higher speeds.
>>>
>>> Tested on my RG351V, RG353P, RG353V, and RK2023.
>>>
>>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>>
>> Hi Chris,
>>
>> Thanks for the patch. Just have a minor question below.
>>
>>> ---
>>>    .../gpu/drm/panel/panel-newvision-nv3051d.c   | 56 +++++++++++++++----
>>>    1 file changed, 45 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
>>> index 79de6c886292..d24c51503d68 100644
>>> --- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
>>> +++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
>>> @@ -28,6 +28,7 @@ struct nv3051d_panel_info {
>>>    	unsigned int num_modes;
>>>    	u16 width_mm, height_mm;
>>>    	u32 bus_flags;
>>> +	u32 mode_flags;
>>>    };
>>>    struct panel_nv3051d {
>>> @@ -385,15 +386,7 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
>>>    	dsi->lanes = 4;
>>>    	dsi->format = MIPI_DSI_FMT_RGB888;
>>> -	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>>> -			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
>>> -
>>> -	/*
>>> -	 * The panel in the RG351V is identical to the 353P, except it
>>> -	 * requires MIPI_DSI_CLOCK_NON_CONTINUOUS to operate correctly.
>>> -	 */
>>> -	if (of_device_is_compatible(dev->of_node, "anbernic,rg351v-panel"))
>>> -		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
>>> +	dsi->mode_flags = ctx->panel_info->mode_flags;
>>>    	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
>>>    		       DRM_MODE_CONNECTOR_DSI);
>>> @@ -481,18 +474,59 @@ static const struct drm_display_mode nv3051d_rgxx3_modes[] = {
>>>    	},
>>>    };
>>> -static const struct nv3051d_panel_info nv3051d_rgxx3_info = {
>>> +static const struct drm_display_mode nv3051d_rk2023_modes[] = {
>>> +	{
>>> +		.hdisplay       = 640,
>>> +		.hsync_start    = 640 + 40,
>>> +		.hsync_end      = 640 + 40 + 2,
>>> +		.htotal         = 640 + 40 + 2 + 80,
>>> +		.vdisplay       = 480,
>>> +		.vsync_start    = 480 + 18,
>>> +		.vsync_end      = 480 + 18 + 2,
>>> +		.vtotal         = 480 + 18 + 2 + 4,
>>> +		.clock          = 24150,
>>> +		.flags          = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
>>> +	},
>>> +};
>>> +
>>> +static const struct nv3051d_panel_info nv3051d_rg351v_info = {
>>>    	.display_modes = nv3051d_rgxx3_modes,
>>>    	.num_modes = ARRAY_SIZE(nv3051d_rgxx3_modes),
>>>    	.width_mm = 70,
>>>    	.height_mm = 57,
>>>    	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
>>> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>>> +		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET |
>>> +		      MIPI_DSI_CLOCK_NON_CONTINUOUS,
>>> +};
>>> +
>>> +static const struct nv3051d_panel_info nv3051d_rg353p_info = {
>>> +	.display_modes = nv3051d_rgxx3_modes,
>>> +	.num_modes = ARRAY_SIZE(nv3051d_rgxx3_modes),
>>> +	.width_mm = 70,
>>> +	.height_mm = 57,
>>
>> Will all the panels for this driver be 70x57? If so, would it be better to
>> set display_info.[width_mm|height_mm] directly?
> 
> They are all so far the same size, but I can't guarantee that going forward.
> To my knowledge this is the last of the nv3051d devices I'll be working on
> in the foreseeable future though, and so far they're all identical in size.

Got it, if it's not guaranteed might be better to leave it as it then. 
Thanks for clarifying.

BR,

Jessica Zhang

> 
>>
>>> +	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
>>> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>>> +		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
>>> +};
>>> +
>>> +static const struct nv3051d_panel_info nv3051d_rk2023_info = {
>>> +	.display_modes = nv3051d_rk2023_modes,
>>> +	.num_modes = ARRAY_SIZE(nv3051d_rk2023_modes),
>>> +	.width_mm = 70,
>>> +	.height_mm = 57,
>>> +	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
>>> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
>>> +		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
>>>    };
>>>    static const struct of_device_id newvision_nv3051d_of_match[] = {
>>> -	{ .compatible = "newvision,nv3051d", .data = &nv3051d_rgxx3_info },
>>> +	{ .compatible = "anbernic,rg351v-panel", .data = &nv3051d_rg351v_info },
>>> +	{ .compatible = "anbernic,rg353p-panel", .data = &nv3051d_rg353p_info },
>>> +	{ .compatible = "powkiddy,rk2023-panel", .data = &nv3051d_rk2023_info },
>>>    	{ /* sentinel */ }
>>>    };
>>> +
> 
> Sorry, will fix that in a V2. Thank you.
> 
>>
>> I think you can drop this stray newline.
>>
>> Thanks,
>>
>> Jessica Zhang
>>
>>>    MODULE_DEVICE_TABLE(of, newvision_nv3051d_of_match);
>>>    static struct mipi_dsi_driver newvision_nv3051d_driver = {
>>> -- 
>>> 2.34.1
>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
