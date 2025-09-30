Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F913CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Sep 2025 20:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3aaKhdyT0qDoHxa9s3wV5jNVFhA0NjLXUjlcduRxLMc=; b=WgTq6dfDUqAru6
	oUMxEk8b2EULzv1Xd9nPiXLz5gWmgKVoLEjrISuCZ3r2GDBuiYJGnU8kBmbYI2YaCwuYJNtmrT86l
	S4NyvwjAVoEvEqnq2CtcvDGYZNw/I+tNI6cdaSMd8MK/SuBjbaT7XM0TUftvA4h7UPnqtBKFfv0LB
	Z8Y+iYUmSGxlIUhrxeLU5IxqJZTB9aMpze0CqKcXuistZusiJKiOUjtHGW0n8B/F4x3sosu4wt3hx
	dQMw9IDnW3SevUj4rLGXLAsusZ6OdZPMQRDeA6wQArktJC24l7xQSkEtDxbYUTlGewmt99KeEuEt4
	6r0m2cogIkK6drgnazpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3h59-00000006CAK-27eO;
	Tue, 30 Sep 2025 20:36:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3h57-00000006C9Z-0Wng
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Sep 2025 20:36:18 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCFF23021155
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:36:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yRYR8mKHUZFaYtXuWtiKtjrk
	y868kXbSvHpGdSOUABY=; b=aYaUOS+VDv+kxGuS0EJOBn3jZsRvgFGBxtozbsMR
	Ac9vrucmrZxwlJT/bwVES0C71Pifkfd7jEhfBwDX8PcD1l+BQYW94SrM/q2VQYFW
	DSfhw+ZrjsVgjnjN/gMX7X9pHlZBAnLC3pmHy6IGvzJ7/kW1NQ3nkMSWJJZNaB5Y
	fqwcbk6Vrrulg2sTCgxyVF1pVKVHnRxqEWiY6/V6mgv48P3LGjUP3xBoVnS0bCFE
	J/FQSPRuSa+6FvqfGXqEGpQVYAki1/LYqW1e3mKgBLGbDe3SGHhm9zt334YhoCu6
	nz5g1QtR41tllKQaQNXpN4HQjHYEMTJQgrL4TMs19jbcUA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5th87-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 20:36:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4de23c3b40aso128124681cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Sep 2025 13:36:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759264575; x=1759869375;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yRYR8mKHUZFaYtXuWtiKtjrky868kXbSvHpGdSOUABY=;
        b=b/y4wEqb0/akQC88Rxlzb/HfeBHCdzOEtAwxsdziAb2nAnHgy5Kg8UHpgu0D7dEhG9
         PNKA3ro2036UOny1pnlEPmefsKrY1UEb2kWa/Tb/Qg4uPOXxlD6qNHMCconrc6K1dS9+
         99O+CR3lcm7+gpyIl4bgv+sftwPWp7r0mRl6ZYq1q2SzmQ01nhNjhTji7G3qCAlJMs9t
         vf98cPdarcyiWmdHtYzzZdHuQpD0faOEvx9lukW6I+RK9yIG0gPdXmWoCuikge9agZxf
         1noK5Dutht1uXSiKJrFz6f0WPi6H9jlmo2vzxAQmZnEis+by99wtiF93kjSxSoKZGS/w
         D1rQ==
X-Forwarded-Encrypted: i=1; AJvYcCVC7kLyoc0aHI/31xxWCpcX2bOOuOngpujSrxLpT/uZ+j/09lOuw6rVnWEsq82EHYuBJSZUNaClygkQhAMTVw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0ASR7SimbaELMvjJB6+SeLYDb935jvW/kcjr/18S9OS+yHD26
	EyrHLI8M94OMFDqhLG1WT/yhDYEfhj70eZMJ42J9ZTdy9lc+b/nyKUC6IZ4Wt3c4Dl78ze98aYK
	Wdg80Ng8/WAIK7CHR25TVNoeelR3wuCkx6d2FSjSEl8rSwrUtXAn0orAeR5wGQ+90SYjwSBr8Ll
	s=
X-Gm-Gg: ASbGncsclCjzMk0fWJGrdNJuRcbABpDMogE+Sz0imLexYxFS7A7uCJ/wms2XOJG7xH5
	2mDcfd1M93lqAqFIpioCG6hzFAi12x56v5lZTsga01FTHJ32pPAOgCdQHvYbeguKH8O65UQ3CLW
	Ehf+iaD7o137slPhZsxCcnbqY0xKR0tmVXDwFdH3TXqRn3Meg0POr/WV+18vKDUpjDL6q7UhECj
	xbKLOFmEIMkn50QQsyBTRe9+Jeg0F1LEOJQttdsBZmxjJr4Zj3Zpr+U1/NX7ipVNz3cwnW511E2
	RpZnjXR1T322UTXwKY4njyorWo0nMMPeQUIwKoZK78I1l/yyyyEHnVE/CIn9BcPmoNoSdQChmZz
	CdwF3mDs3K/icTazEOZkeP1G2KHBaV4WTrurBHgMcCPxUdOHTPzk2/dsCRQ==
X-Received: by 2002:a05:622a:1f09:b0:4ce:dcd9:20e5 with SMTP id d75a77b69052e-4e41e2553a4mr14266871cf.61.1759264575287;
        Tue, 30 Sep 2025 13:36:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFuPPlCXIV5zyuzMgVAJcVfckSn/45lViJoli6ItFTToo3aAOYLqDps3QFpjsl6dnCqLcS/g==
X-Received: by 2002:a05:622a:1f09:b0:4ce:dcd9:20e5 with SMTP id d75a77b69052e-4e41e2553a4mr14266301cf.61.1759264574813;
        Tue, 30 Sep 2025 13:36:14 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7710474sm34821171fa.33.2025.09.30.13.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 13:36:13 -0700 (PDT)
Date: Tue, 30 Sep 2025 23:36:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, jingoohan1@gmail.com, p.zabel@pengutronix.de,
        hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
        dianders@chromium.org, m.szyprowski@samsung.com,
        luca.ceresoli@bootlin.com, jani.nikula@intel.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 18/18] drm/bridge: analogix_dp: Apply panel_bridge
 helper
Message-ID: <aeby4ds46ehzkrvc32pjcrxz2aalpc7icuis4y4zxfm5kvgcg4@ie7m7s6rcnqu>
References: <20250930094251.131314-1-damon.ding@rock-chips.com>
 <20250930094251.131314-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250930094251.131314-5-damon.ding@rock-chips.com>
X-Proofpoint-GUID: uY-Q5YanUMqTJi871M9frfdh5H95pxKw
X-Proofpoint-ORIG-GUID: uY-Q5YanUMqTJi871M9frfdh5H95pxKw
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dc3f40 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=hD80L64hAAAA:8 a=EUspDBNiAAAA:8
 a=rSdC-L6FqKhTve90478A:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX4dKgQdXXd6lv
 PRIZacI+q9Kuxgp66ze/5NWMHLe037h/hieEZg3ALXu/YkfGOKOnTUJPqHdmRMVabOsd7l11AaD
 AZQ45JIU4oNZIeJn8+QL/TeniPDANt+CyRd6XlAF2PGJUDS1YZGWzZGIJQ9g9V0fd+0ML5qL+zD
 YIAOF617x66Wqupdjz2lrhs8BKbOOeSvBjxU48kjF4DT7wUXnLik5d39hK+c1BwGtfInQDVP/fD
 a7MsIVDSdlPEfD+egMrmmN536IhC1x7mh82ML7c4J5ZjHRW5qdA2zGW4pQvLa0bSyugWMN32qNy
 y/psCnevpdPx7VAc2e9haix8jU3achkxXeWnL72D0yVwvh211pMK/LRkrcYYVn1Vrf7NRRDUJW6
 YSwQARGQo4vCYMxH9wKVKA4SUoI6iA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_133617_285204_3A5592FE 
X-CRM114-Status: GOOD (  15.06  )
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

On Tue, Sep 30, 2025 at 05:42:51PM +0800, Damon Ding wrote:
> In order to unify the handling of the panel and bridge, apply
> panel_bridge helpers for Analogix DP driver. With this patch, the
> bridge support will also become available.
> 
> The following changes have ben made:
> - Apply plane_bridge helper to wrap the panel as the bridge.
> - Remove the explicit panel APIs calls, which can be replaced with
>   the automic bridge APIs calls wrapped by the panel.
> - Remove the unnecessary analogix_dp_bridge_get_modes().
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
