Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5665CFF8867
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 01:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqZx73k/po061qcSyWWuBPg7ovXsopkrCJeSjyjkS4c=; b=pxgXVIuhPmtOBX
	7XIEKLqwZTTBGqD+P3YUml7dv4t0cutJV+iuzFRsSi2vOFTsAi22PPpIOsPfMp6zuIpV1bmywBK8p
	hZXNuI1BHomZr4CHNgnbci5ixAMNd4179odcex/uRrKbUs0YZxyiMOsl82k2uACj99OwAyEgycTxz
	zr/Fg52lSLABsruLTDYqFFJl7GNDT+Wk0s/haj8gjDm4FX7QPlYxVrYPmpVShRg3CiVxzFWW7yMds
	xWt64hUz5QDS5lzGUSmDrNAldP8nloIjfvrgc81KYCemcgauBTRhMEL16gJqs4lyT99siYoakZQVZ
	rMzyjav3v/8iszv8hgEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXSc-00000000PBo-3syk;
	Tue, 28 Apr 2026 01:42:02 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHXSa-00000000PBB-2Unh
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 01:42:01 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RLejTD2914399
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:41:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mYLhrY4KD15wk36W8v+cBLgX
	+4JBrZDZkrOmUImGT2I=; b=Ny5n8i94X4j+0BqT3Ik9x0vssW/x3lKEpDe777Yf
	EO/XPk774Sw2g97FxpflCcGYVYPpik/neEh2B5XkPRJF4Xc/FGXSfLO6Oy1W4uRs
	JXfgPTiy9qUGA1fbCHfZJfanK7QLX3gt9oPmv83rHRaQmWLJQ2CgBP0bo0Mqq5Z/
	W7yZXHb20L53CKu4cDBjqADb8+9o3GhMguqtRI24DZow00sTjyGW9e0DKz743bkC
	2gGaRByjePdSER/Y4bHJdrojPDs8Ew9wZ+JXStw53RGtFSdcvLwtTGOEr8vMRbGT
	Eu+pN2y2ODW6IK30ajqyBkgV125/vaCyz5Gm1qywJrMO/Q==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt26xm7k7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 01:41:59 +0000 (GMT)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-56eecfd79e7so21509671e0c.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2026 18:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777340519; x=1777945319; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mYLhrY4KD15wk36W8v+cBLgX+4JBrZDZkrOmUImGT2I=;
        b=NAWL+DoN3EUn43TVzhtcUjdeMJPJiQwb5KOB7pMAiMW7wsZBk5cfEwBixLKc/FC6IM
         b7gSvaKJ54BpO4l/rkh0bZPge3tcX4LB55l0IXWPkEb+wmSfXlOv/xGajclOuAg4opHO
         iCveuQvShsxqz5ITjir8FjIEchBjWNCI0SLfK9V/SbLpTXmmGbUkOlJ9ZYK0kkB7FPLH
         Hqxi9JGZ2ylcF9FbaBcSoLWsfk+XTngigCQsZANCotDNBgUmhclGUuODJYm/8qUlxdwV
         bfXqli4DZs6pBPXTpSWxhUIlFkMMK5kHbPnskqfgd5g2C9K5FgsX81vmovrwJ76UOgjd
         SNmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777340519; x=1777945319;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mYLhrY4KD15wk36W8v+cBLgX+4JBrZDZkrOmUImGT2I=;
        b=CNleeAr9DLOu1xzhJgPT4xChafOgwEPEU7r1QlZlsVJVi61uUQRl2Q0wciQPO8hdkL
         s8UMJrpQ17CKsIx4OrB+dFNI/0h8QFm+7JhOXs8zGhSlwG3aIXrfR4X/EzkG/ARvIxfD
         TqxtmD+rAgcsb8m2aHq+G4SMyacr3OH8ez8Z1HRZsMaTbvX5ECd4+uR1xnwxaLrdaQfz
         W2B0QRnFyyhVjRdEnL1BWfhi7iR4mOzXSiV72Ly0rKrEFHnffzrZPvEbclA7L81ahHkM
         glGZ4riqwAC0rHWXxWUGIGDjl1t8wr35XfVL3FwYA+jtF+FofffU3tAyrQfR2oRvvRom
         wJvQ==
X-Forwarded-Encrypted: i=1; AFNElJ9osGJkEi9n7eHT3YdX7dQniDEPIRjuFSJBhpALPu4sKjwTjFI4pbIDwMaSlNlFxNmPX8jRu0tJnXczp2/+Lg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6CkIXEtZlbWp0SELkktyVlosa5jQ73mg1SZ3V+ezGkn6/UGar
	k0KV1rU/MT7K7I5xP+POmwnaITCrP0rqnrFA0bc1WpnMvvuVzXvE27kKE3AqEHc6cK0sVspJodu
	QhMiNwuUHYDYZPagls/eC1RO1KFlzhtGciL7dbwqqM28B4+epd8RKeqAnraSgW8d5VDEv9qYuhV
	8=
X-Gm-Gg: AeBDiesJv8YqhuLgsfhAjb/Tm4YArizRIlB5b212D9Stbpx59TlV8gQkF4SEcc41Hsy
	+hJlsk4jnemeo8Tr4Z/qodfwDYxENt0xIB6xqdYWJnXlqcoftlpnAm/DCPGsC8wQbmd0+iF+i6q
	uwF6N76Mn+jXi30tXovu4QuCa8v1D7jTK60Qw+n+cdWNa23SS01Q2LkStkkn6IQf/I7Jo93Dq83
	3DKLxkrgtLAJdfcSofauFodxohZ151HfuPYHT9SQ6v7EfF/VZj4W4QEWgxjRm+l05GaoH1Og+F8
	tgjNIko591qpTcecxNcvjA6ekvGTgx5RRPOuyPZ10ZPkixyn4xvak1gwTmY93Gtasnrx2xllKen
	eF+ubcAwSXMSYYLjHBAPVOi61pTRdw7cLDiwVDXjvTxhQTAMSwEppDv5qIbnXlYsEErz5IRArli
	h66hchuTh/ru2epPbKD6nTOLxpY91lFb52ghQc87RMyoosSw==
X-Received: by 2002:a05:6122:786:b0:56d:b337:4709 with SMTP id 71dfb90a1353d-573a555926bmr542842e0c.6.1777340518819;
        Mon, 27 Apr 2026 18:41:58 -0700 (PDT)
X-Received: by 2002:a05:6122:786:b0:56d:b337:4709 with SMTP id 71dfb90a1353d-573a555926bmr542820e0c.6.1777340518195;
        Mon, 27 Apr 2026 18:41:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3923f58cc6bsm2697611fa.37.2026.04.27.18.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 18:41:56 -0700 (PDT)
Date: Tue, 28 Apr 2026 04:41:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Diederik de Haas <diederik@cknow-tech.com>,
        Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v5 09/10] drm/rockchip: dw_hdmi_qp: Register HPD IRQ
 after connector setup
Message-ID: <hnbecmgviu7jl4xrsksna63sa376gpcaa6ate2qp2o5lgg35ot@wdthrayons3k>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-9-d778e70c317b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-9-d778e70c317b@collabora.com>
X-Proofpoint-GUID: 0z0ctOaXUjfWjxZbR2ACo-QD9msNNmzO
X-Proofpoint-ORIG-GUID: 0z0ctOaXUjfWjxZbR2ACo-QD9msNNmzO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI4MDAxNCBTYWx0ZWRfX7p0FGuSAE/wV
 2UBPsXeerqMqYquaDok6uTkede5cPwJpsCY1aaLXI3mWh6N+f8IAISSz3oYTlNqWhS/9sjyzRIG
 H0mMtxdBU9nYJ675cyid4HAahC39ll3kv4uPyQ8Rl0jdZkZxevG2UewQez1eCzpo0pgY9sRZuKw
 hMcxyW1oyffz0pZsyXxKHlcyEkdzgkVftxTNKKT1udouw+YzDnz9LnPDHdspv8me3Gl69838go2
 6TEChn9upG0bNB8gIicH3TMtu+Sa1TEfUIOH29eu+neWBSoojvkZ0S/bfpg35dldXgTgH7+5caI
 viZCuH0i4/EOKsCWpyktdy47BmGSu57iVjiLG7IIhgrrhQyTYnAWCfmZYd+B9FNXzjjvHtNUAeo
 GgM7/yz328X7EWwTIBeOOpZQhBweb34nKUxCF2arxvxuQF6SbionvbBjpptGledZ3INQoVPDVP6
 PzKkAI74tQ8AlApGnCQ==
X-Authority-Analysis: v=2.4 cv=FM8rAeos c=1 sm=1 tr=0 ts=69f01067 cx=c_pps
 a=wuOIiItHwq1biOnFUQQHKA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=JfrnYn6hAAAA:8
 a=MTERcTr8AAAA:8 a=69EAbJreAAAA:8 a=QX4gbG5DAAAA:8 a=XxVGwUkuwzZ9F3MZWY0A:9
 a=CjuIK1q_8ugA:10 a=XD7yVLdPMpWraOa8Un9W:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=1w2Y23rLpnaGpkO2nlKf:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 bulkscore=0 phishscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604280014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_184200_775518_AB6DFF9F 
X-CRM114-Status: GOOD (  24.06  )
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

On Sun, Apr 26, 2026 at 03:20:21AM +0300, Cristian Ciocaltea wrote:
> Move devm_request_threaded_irq() to the end of bind(), after
> drm_bridge_connector_init() and drm_connector_attach_encoder(), to
> ensure all DRM resources are ready before HPD interrupts can fire.
> 
> While at it, add error handling for drm_connector_attach_encoder().
> 
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>
> Tested-by: Maud Spierings <maud_spierings@hotmail.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> index 618d2aaa5c7d..fbbe26f8730c 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> @@ -577,14 +577,6 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  	if (irq < 0)
>  		return irq;
>  
> -	ret = devm_request_threaded_irq(dev, irq,
> -					cfg->ctrl_ops->hardirq_callback,
> -					cfg->ctrl_ops->irq_callback,
> -					IRQF_SHARED, "dw-hdmi-qp-hpd",
> -					hdmi);
> -	if (ret)
> -		return ret;
> -
>  	drm_encoder_helper_add(encoder, &dw_hdmi_qp_rockchip_encoder_helper_funcs);
>  	ret = drmm_encoder_init(drm, encoder, NULL, DRM_MODE_ENCODER_TMDS, NULL);
>  	if (ret)
> @@ -602,7 +594,15 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  		return dev_err_probe(dev, PTR_ERR(connector),
>  				     "Failed to init bridge connector\n");
>  
> -	return drm_connector_attach_encoder(connector, encoder);
> +	ret = drm_connector_attach_encoder(connector, encoder);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Failed to attach connector\n");
> +
> +	return devm_request_threaded_irq(dev, irq,
> +					 cfg->ctrl_ops->hardirq_callback,
> +					 cfg->ctrl_ops->irq_callback,
> +					 IRQF_SHARED, "dw-hdmi-qp-hpd",
> +					 hdmi);

And if requesting of the IRQ fails, you have a lot to unwind. It might
be better to request IRQ early enough with the IRQF_NO_AUTOEN flag and
then enable_irq() here.

>  }
>  
>  static void dw_hdmi_qp_rockchip_unbind(struct device *dev,
> 
> -- 
> 2.53.0
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
