Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0F21CCA476
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 14:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70mp59LzkLroarqgR9qwSYJqlVUU5Qu0VWGYVNxez9s=; b=nEqApcgPiulzkt
	Y9vlh+R5Y83JakJjSCYdveQXcwYcyk9Qf4+fjZJqIyymjsX1Mbbwx94IGXMrob412hZmrQbaZOcJj
	AtLDFVNe7GVZM2K2hWxXKDiC8sanRRZHlZK7lHbGT7e8YdBCk6qq4OWax30+Xnl84b1eN4vengEzQ
	SkJMMGifUbZnVdK+LxKEB10kU3fs2xJL8WDH/mgX303K3Ra93tNOxQFidbcyXBZpTk9OvXmPc9rPe
	99u7DTn0pIVjwZZ5UeyG1nwGrBF176UP19Xmvm2cUn00sz2F9h4G1Vl1IniU5ih/JLcIS5nwXAzBC
	PCfKxqqmvoyOjoGdnTyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7E85-00000008gs7-2yw4;
	Fri, 10 Oct 2025 14:29:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7E83-00000008grg-2tPc
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Oct 2025 14:29:56 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6Wq4t032462
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 14:29:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7wkzrxKudGSviXsY/mtwV95A
	pO2/F8bqxrMw6rKRUQs=; b=YtCKZR/MKHgtOZi6vcOxpQ3qKxJqn0UgdFTNCXsI
	sJVqDaRakSag7bU65LgFJK+ZEtLghWpshoZQpGdcZbfU69ysSXSVY6nMYoup7qmn
	/S69nHAvpHOe+A8qTrFDRHds8Q2JVhmmPdI4LK7R7iLVuFXUhxD0dtlC2opfsn6f
	CiCfBvQ5lcF+SNXOiycOUAV0cDzWQGeUdCd1qpJ6PjWBMQVSLtJ1NZBmDu+ihbeB
	2JvToGRINChtwlpNekLtlqubx4oYd1oDeBN5FvHJ02rIK8AadmMX7M1YJz9aigBp
	U9tuzgu13YAiJua6n3sRGlt4YTW02NVsgH9Hf0qjdcTaJg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kxp2h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 14:29:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-286a252bfbfso94663575ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Oct 2025 07:29:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760106594; x=1760711394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7wkzrxKudGSviXsY/mtwV95ApO2/F8bqxrMw6rKRUQs=;
        b=v3IHXKcziFbKVOGtUjc74RaCaVukbm+GkH0NEaFo0A5jx3RUlJlhra8LmCZzCpxSNy
         QRAbcdzoE2Mc+Ywdtj/LbpreuH00d8LfOpATs82hGH109K12zxf/TYGXrmOmt+FILWAT
         3Td038FyByQNEow3OUbZQpoXogdZgu2gxMT1eNRFhL26nl3OJOLm0SIYnMTbeKAz86Qp
         HyqZmZI24fc2wHv1WgXd4yjaSZbFsqUUogfX+inVs0gmec3LxVkP00cx02cxzp50D+QN
         Q7Q6FpGt/8KJvsAMHg0/WvPPsPNQCJCZrK04lubcB2GIAr1DaNiZzV9BPL87YVIbZ/aP
         hp3g==
X-Forwarded-Encrypted: i=1; AJvYcCVXErsTRvbHlnbBN/VqcbOVcQr3zG3fH0FJx7P/5uIePYUF4bKbCu14yM6/5d3b17bAkDZxd8JiwG3hTfALfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxd26u0vucIk+SBAv/57DG3lFfa+E4J/9ksCB5WwEFvOlosC8K4
	2VUobs3NtbOl5ExES66+gXJBO7J/aUt7nNXb5Q8tC1RyMaP5yexYLaKBjCHLyTVts+ApPIlmHBq
	1fe5SJqlZgFuYB3eNuGeqYH+6ev85VOPcxEAQvXijG3hdfnGbuJjzf9Ux7VAyQGMJOWukgtOsPy
	E=
X-Gm-Gg: ASbGncs7O45nZmgIrqqxDe3viG0I5pmFFMmRYoTxjeOBysXDbTV06xf67ENSgM8QHer
	s30ii8HQ8Vc4zVQ0No/QupoK60ZrSNjTsITto/XCZuuXtjQLw1Q1ywNCkemDx4fw0YptYp+4kzL
	eI5A7s9pXsHz1sGx5aMPPVYxivoMJggu4jBRQHAWqw19TzGGdrpkfFwDIzO+6Vy9x8MFGc+eb8X
	BHJaP3THgMC5CSAbH3pviOqPezR7XcyR2xTBpz3q6mmT9AafLlsq0tyVydipMrNXCMF9WJeeFqs
	x4Gx9toDEjQxWl6lEgHsDNbxiPeC6JkVFgdwwhdJQS9zJF+ZZ++Nq/i+Agshfhy+Np5skRg/rE8
	8VY88rrd25SVzrPHgoU2PzVCQp5QAG26D6HIT3Il1cPtK6b4crS8r
X-Received: by 2002:a05:6a20:12cc:b0:2ff:3752:8375 with SMTP id adf61e73a8af0-32da845f843mr16839537637.45.1760104966471;
        Fri, 10 Oct 2025 07:02:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGx6lmwhdGB5tiz/Bc58mePgSBZ2wqdgFCoifjtltdKT0RsIy6in4D98ACg4FIrT0oC09J4cw==
X-Received: by 2002:a05:6a20:12cc:b0:2ff:3752:8375 with SMTP id adf61e73a8af0-32da845f843mr16839190637.45.1760104964177;
        Fri, 10 Oct 2025 07:02:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4de3sm909304e87.1.2025.10.10.07.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 07:02:41 -0700 (PDT)
Date: Fri, 10 Oct 2025 17:02:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, jingoohan1@gmail.com, p.zabel@pengutronix.de,
        hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
        dianders@chromium.org, m.szyprowski@samsung.com, jani.nikula@intel.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 11/18] drm/display: bridge_connector: Ensure last
 bridge determines EDID/modes detection capabilities
Message-ID: <dkblceiweall37j4anpgkumizxc5zni3axnxb5hyokv2jlsta5@immpjaczktnh>
References: <20250930090920.131094-1-damon.ding@rock-chips.com>
 <20250930090920.131094-12-damon.ding@rock-chips.com>
 <20251001180922.6bbe42ac@booty>
 <a42ebdca-1cbc-498c-b859-336557823f26@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a42ebdca-1cbc-498c-b859-336557823f26@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX8rC7n7WgPm3f
 0ne/pzoJvaC1eTbn+3ScZSmTZyoDBxHJlEdj9okoLMotzTLnFRI/EkpP1vUQWvXK4cSMkHcFyQx
 Chh+I4SnLVD2cDNQkXlmtRjjNCQR7Islv7lxZOC9owHo4saF8XymVQrCCUvXLP9XPD5BYj426vD
 iwClpBmkRlEOvKfHA+GRf/SgGZEZCHcJ9K5sXp/0Z/xBiYU1yKHygflbdsGQklPlidHFoMY89sB
 hRO0yAAC0A5sM+cwSQNXCwC+bVcOjuh96/hdz2eOJyI7NtEskDswgvcCOKKI2vLiqV1Gm4qh6UL
 L1ceRL5oeYU7rwz84fGPT9u+amTNBXjnLwJqImkLh5oUyvz+QFqrx78XohY+IGIsc++8IMr/MML
 UTFhuYrdcR34HPVnUFDukdsy7I0gow==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e91863 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=P-IC7800AAAA:8 a=s8YR1HE3AAAA:8
 a=Y6CNJq9B8L7KKZcxe68A:9 a=CjuIK1q_8ugA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=d3PnA9EDa4IxuAV0gXij:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: euTvb6aQbjwqj2_E2sAxtB3WaddxdOhk
X-Proofpoint-ORIG-GUID: euTvb6aQbjwqj2_E2sAxtB3WaddxdOhk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251010_072955_728152_E74B322E 
X-CRM114-Status: GOOD (  44.38  )
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

On Thu, Oct 09, 2025 at 12:10:42PM +0800, Damon Ding wrote:
> Hi Luca,
> 
> On 10/2/2025 12:09 AM, Luca Ceresoli wrote:
> > Hello Damon,
> > 
> > On Tue, 30 Sep 2025 17:09:13 +0800
> > Damon Ding <damon.ding@rock-chips.com> wrote:
> > 
> > > When multiple bridges are present, EDID detection capability
> > > (DRM_BRIDGE_OP_EDID) takes precedence over modes detection
> > > (DRM_BRIDGE_OP_MODES). To ensure the above two capabilities are
> > > determined by the last bridge in the chain, we handle three cases:
> > > 
> > > Case 1: The later bridge declares only DRM_BRIDGE_OP_MODES
> > >   - If the previous bridge declares DRM_BRIDGE_OP_EDID, set
> > >     &drm_bridge_connector.bridge_edid to NULL and set
> > >     &drm_bridge_connector.bridge_modes to the later bridge.
> > >   - Ensure modes detection capability of the later bridge will not
> > >     be ignored.
> > > 
> > > Case 2: The later bridge declares only DRM_BRIDGE_OP_EDID
> > >   - If the previous bridge declares DRM_BRIDGE_OP_MODES, set
> > >     &drm_bridge_connector.bridge_modes to NULL and set
> > >     &drm_bridge_connector.bridge_edid to the later bridge.
> > >   - Although EDID detection capability has higher priority, this
> > >     operation is for balance and makes sense.
> > > 
> > > Case 3: the later bridge declares both of them
> > >   - Assign later bridge as &drm_bridge_connector.bridge_edid and
> > >     and &drm_bridge_connector.bridge_modes to this bridge.
> > >   - Just leave transfer of these two capabilities as before.
> > 
> > I think the whole explanation can be more concisely rewritten as:
> > 
> > If the later bridge declares OP_EDID, OP_MODES or both, then both
> > .bridge_modes and .bridge_edid should be set to NULL (if any was set
> > from a previous bridge), and then .bridge_modes and/or .bridge_edid be
> > set to the later bridge as is done already.
> > 
> > Does this look correct (i.e. does it convey the same meaning)?
> > 
> > > --- a/drivers/gpu/drm/display/drm_bridge_connector.c
> > > +++ b/drivers/gpu/drm/display/drm_bridge_connector.c
> > > @@ -640,6 +640,7 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
> > >   	struct drm_connector *connector;
> > >   	struct i2c_adapter *ddc = NULL;
> > >   	struct drm_bridge *bridge, *panel_bridge = NULL;
> > > +	struct drm_bridge *pre_bridge_edid, *pre_bridge_modes;
> > >   	unsigned int supported_formats = BIT(HDMI_COLORSPACE_RGB);
> > >   	unsigned int max_bpc = 8;
> > >   	bool support_hdcp = false;
> > > @@ -668,6 +669,9 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
> > >   	 */
> > >   	connector_type = DRM_MODE_CONNECTOR_Unknown;
> > >   	drm_for_each_bridge_in_chain(encoder, bridge) {
> > > +		pre_bridge_edid = bridge_connector->bridge_edid;
> > > +		pre_bridge_modes = bridge_connector->bridge_modes;
> > > +
> > >   		if (!bridge->interlace_allowed)
> > >   			connector->interlace_allowed = false;
> > >   		if (!bridge->ycbcr_420_allowed)
> > > @@ -681,6 +685,44 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
> > >   			bridge_connector->bridge_detect = bridge;
> > >   		if (bridge->ops & DRM_BRIDGE_OP_MODES)
> > >   			bridge_connector->bridge_modes = bridge;
> > > +
> > > +		/*
> > > +		 * When multiple bridges are present, EDID detection capability
> > > +		 * (DRM_BRIDGE_OP_EDID) takes precedence over modes detection
> > > +		 * (DRM_BRIDGE_OP_MODES). To ensure the above two capabilities
> > > +		 * are determined by the last bridge in the chain, we handle
> > > +		 * three cases:
> > > +		 *
> > > +		 * Case 1: The later bridge declares only DRM_BRIDGE_OP_MODES
> > > +		 *  - If the previous bridge declares DRM_BRIDGE_OP_EDID, set
> > > +		 *    &drm_bridge_connector.bridge_edid to NULL and set
> > > +		 *    &drm_bridge_connector.bridge_modes to the later bridge.
> > > +		 *  - Ensure modes detection capability of the later bridge
> > > +		 *    will not be ignored.
> > > +		 *
> > > +		 * Case 2: The later bridge declares only DRM_BRIDGE_OP_EDID
> > > +		 *  - If the previous bridge declares DRM_BRIDGE_OP_MODES, set
> > > +		 *    &drm_bridge_connector.bridge_modes to NULL and set
> > > +		 *    &drm_bridge_connector.bridge_edid to the later bridge.
> > > +		 *  - Although EDID detection capability has higher priority,
> > > +		 *    this operation is for balance and makes sense.
> > > +		 *
> > > +		 * Case 3: the later bridge declares both of them
> > > +		 *  - Assign later bridge as &drm_bridge_connector.bridge_edid
> > > +		 *    and &drm_bridge_connector.bridge_modes to this bridge.
> > > +		 *  - Just leave transfer of these two capabilities as before.
> > > +		 */
> > > +		if (bridge->ops & DRM_BRIDGE_OP_EDID &&
> > > +		    !(bridge->ops & DRM_BRIDGE_OP_MODES)) {
> > > +			if (pre_bridge_modes)
> > > +				bridge_connector->bridge_modes = NULL;
> > > +		}
> > > +		if (bridge->ops & DRM_BRIDGE_OP_MODES &&
> > > +		    !(bridge->ops & DRM_BRIDGE_OP_EDID)) {
> > > +			if (pre_bridge_edid)
> > > +				bridge_connector->bridge_edid = NULL;
> > > +		}
> > > +
> > 
> > If the above rewrite is correct, then I think this patch can be
> > rewritten in a simple way (build tested only):
> > 
> > diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
> > index a5bdd6c10643..bd5dbafe88bc 100644
> > --- a/drivers/gpu/drm/display/drm_bridge_connector.c
> > +++ b/drivers/gpu/drm/display/drm_bridge_connector.c
> > @@ -672,14 +672,18 @@ struct drm_connector *drm_bridge_connector_init(struct drm_device *drm,
> >                  if (!bridge->ycbcr_420_allowed)
> >                          connector->ycbcr_420_allowed = false;
> > -               if (bridge->ops & DRM_BRIDGE_OP_EDID)
> > -                       bridge_connector->bridge_edid = bridge;
> > +               if (bridge->ops & DRM_BRIDGE_OP_EDID || bridge->ops & DRM_BRIDGE_OP_MODES) {
> > +                       bridge_connector->bridge_edid = NULL;
> > +                       bridge_connector->bridge_modes = NULL;
> > +                       if (bridge->ops & DRM_BRIDGE_OP_EDID)
> > +                               bridge_connector->bridge_edid = bridge;
> > +                       if (bridge->ops & DRM_BRIDGE_OP_MODES)
> > +                               bridge_connector->bridge_modes = bridge;
> > +               }
> >                  if (bridge->ops & DRM_BRIDGE_OP_HPD)
> >                          bridge_connector->bridge_hpd = bridge;
> >                  if (bridge->ops & DRM_BRIDGE_OP_DETECT)
> >                          bridge_connector->bridge_detect = bridge;
> > -               if (bridge->ops & DRM_BRIDGE_OP_MODES)
> > -                       bridge_connector->bridge_modes = bridge;
> >                  if (bridge->ops & DRM_BRIDGE_OP_HDMI) {
> >                          if (bridge_connector->bridge_hdmi)
> >                                  return ERR_PTR(-EBUSY);
> > 
> 
> Yes, this is correct and maintains functional equivalence with the previous
> implementation.
> 
> I previously attempted to implement this feature by modifying the logic in
> this section. However, that approach would obscure the explicit propagation
> semantics of the bridge chain flags (OP_EDID/OP_HPD/OP_DETECT/OP_MODES).
> Therefore, I finally decided to implemented it as a specific check after
> this code block.
> 
> Dmitry, what's your take on this?

I think I prefer Luca's code, it is simpler and easier to understand. It
doesn't need a huge comment, something like "leave the last bridge which
provides either OP_EDID or OP_MODES" should be enough.

> 
> > Another thing to note is that this patch conflicts with [0], which I
> > plan to apply in the next few days. The two patches are orthogonal but
> > they insist on the same lines (those assigning
> > bridge_connector->bridge_* = bridge). Not a big deal, whichever patch
> > comes later will be easily adapted. Just wanted to ensure you are aware.
> > 
> > [0] https://lore.kernel.org/all/20250926-drm-bridge-alloc-getput-bridge-connector-v2-1-138b4bb70576@bootlin.com/
> > 
> 
> This is indeed a clever approach to the managing bridge resource cleanup in
> drm_bridge_connector. Thanks a lot for the heads-up! I'll resolve this
> conflict and rebase the patch series.
> 
> Apologies for the delayed reply as I was on vacation. ;-)
> 
> Best regards,
> Damon
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
