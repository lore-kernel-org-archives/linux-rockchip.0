Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529C7CAC582
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 11:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qquvCoF5QrmBHIM8Rxls3cFiFZGtEk5HmkWEyqwUc70=; b=w+fFVnLSqeVybI
	KdBS/XIECUMxNfRYf47Mz72BOFWjfsIT4Pns5+f3UBdikZ+O0LDNxNSDul3jlL6wdUk1RtBJFiTbr
	mezSwyMOR5yEMLOYZ7CFXsiGiX1CJkUupQ5gtirYDY6kVcBewT1eFNNEsFtlYRRNrctqgzy+IvYiK
	H0xSyJqodvAAq60vkfIqnYctQodnH0v0xylEnKSC/zwEKoLfk0417WrRsBSoH+zdlnKl+7rpdUVo8
	aioxhHtWPQuwTIukMfdrvhThEdOn67Imwo4dYCsscBbRIQxJdnhYzh2RmncQ6lvq7HGSTsNgO3H1C
	p0HLOOIf4PUvf/Qqjpvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1Zc-00000008lEa-0lFG;
	Fri, 12 Sep 2025 11:04:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux1ZZ-00000008lDK-2rm3
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Sep 2025 11:04:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fY1P011119
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:04:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uRiYWVeZhrzAaBhip5FSqu8N
	Vj+JbFtrHaupfkSzC2o=; b=CuqdSLRNCdEV/s+X64vOANtGFRmvkltCIFvt4Ewy
	xOYei2Qeg/sF/VMSdAIlrYtP0/Ce5tdo3BTI8sjsWbQtVqOH7W5E7tPcmPu9iu8/
	eITClcBMzIpIMk2mIyA5aMxHzUroJLDOa4HqHAjHJZnLe1H+ZHZPZz6fh1Mre9dz
	rntPktZakUi3N9DjqD6Cmo/LpbDd3fq5URTE4RmTc8deNRHN1yp+Q9Fm4Bl+2kv1
	P3e3WY3zVsNLoVfrAzvtQ/RwG+M3sqJCf7iFn8Y/AkbrGmSFGK+Mo7YdzGM+Qu23
	Y4ghqbneuIMryL05pvUv4oEoRShSO1sKFxJzjgbgpMvmRw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4mb6wb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 11:04:09 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-764f0158a44so37599536d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Sep 2025 04:04:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757675048; x=1758279848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uRiYWVeZhrzAaBhip5FSqu8NVj+JbFtrHaupfkSzC2o=;
        b=e0PXA3wVFBm+1tqC+0d8QXUrgdzScUBlspfKgI34bvr5638XLMv9ld4efzsUUrQaoo
         avuHTa9leCgkEPgUUJIMTb6S0MAN2c7UurylY3PaQVmVpcWlDT9FToIK2oWgd1d8jTOy
         V7vYMnOZ9UIc08gky+V/j5sOWI/wcf3woa9W0ZhyI8s+BuWMjd8LhPsgATg/LhubLYtE
         6L+bitGG5nwbWxzZIdOrRhXlbYwyZqeVu54ZG2WtxKUbL5XSBy1Cax5VvRdwYy9MOT6z
         dugqHrR21nkMX13UeuUCXCSs/EDsXdJAi3HtCpRIZSs5abOcY/Q85dDd6JCP2GIcROiB
         DfbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPsWV6VfmqzmReMG8fR2cDpLD8Hk3lWAc05ElphTrTqJrg2fkN+b1svhRY64QbBxmL9Z9b+2clWKVRp5DekA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzwYiEKs/qO1BU2AUkUpn/CVZEOtoOSCVQaOZ4goYZoNkuZrldm
	wAhlpS1EY0ShuHnEucfakKQYeWH4bqHJku2fPRyxsQ9RSqVjvMwhRJhPVJ8sJ605YwTJLFhjMz1
	9DxB3UO+bRZbOc5cisWAVJKf8iWlm8OSkBgQHVUGYeAzoUyg59NE+qhTM4tBg2GDVosHhIEdkuU
	A=
X-Gm-Gg: ASbGncv3HRBSkWKrUBthaVljPgqf0kdCkRGKL1lZJ/Cyi0Xyf/vc9fqnTl+rPxX4juu
	+9oh+Oo9u9bKCJ1vNzQVK1H9Jgg9w7zWmoejNEgFmQm0RA4uXMDdqYvS7OSugvm90vp0TFE+TPk
	tOPJ+ROpzFWK1iEK0p4vd+jcX0XAvJaoPmOSYrcaQlpLCcSkLEXaDww1Re+/OaXJfT6VbcCfEON
	/K6Y9kViBKKUX+8+e3P5Du1L8QZWjBEnQjJW/o+WPwHBySs0o0uD7BQcebQ0mLOwSR5RnhNNYUm
	TwAC5dxCBda8bG1ejFi1LfvusnhtYmVhWgihzpIlIlXEjiGXNadlA7jxX2c+9UIdBjZHOnfwgje
	JBwseaLvQKTkrJHgzx8jZY6+7gJawICSM8GNQVssxHs05eDttSQE3
X-Received: by 2002:a05:6214:20a1:b0:70d:d8e8:c5ad with SMTP id 6a1803df08f44-767c50643c3mr31652766d6.50.1757675047499;
        Fri, 12 Sep 2025 04:04:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGWK5ie/2oncU/4OssIMnMH7lHSxzphQkEo1qeToGVNk2BXrTzFDbaZYLruQvm7dYwaukXQA==
X-Received: by 2002:a05:6214:20a1:b0:70d:d8e8:c5ad with SMTP id 6a1803df08f44-767c50643c3mr31652086d6.50.1757675046952;
        Fri, 12 Sep 2025 04:04:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b622fsm1079317e87.2.2025.09.12.04.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 04:04:06 -0700 (PDT)
Date: Fri, 12 Sep 2025 14:04:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, dianders@chromium.org,
        m.szyprowski@samsung.com, luca.ceresoli@bootlin.com,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 11/17] drm/bridge: analogix_dp: Add new API
 analogix_dp_finish_probe()
Message-ID: <xaasoza4346jao6ihbdb4payecfi73qekaynkfa2vqqdp2slb4@2onoar4qvw6c>
References: <20250912085846.7349-1-damon.ding@rock-chips.com>
 <20250912085846.7349-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250912085846.7349-12-damon.ding@rock-chips.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX3bxvxMnu0Eym
 UxAkP+V8jaxrb5N+Hm+rssZbLhfScocL3Jz0aleDRiZDen/t8pHaIw1w8bDU0LX1JzIgB1xYYwU
 GRE3VNpgj5m5/ldStNrjVym8TtYe/LYFmcPdf7QKlTepA5Kmn+D6LtgvZd+SnAq0LWx9Q93YSd1
 RNq3l2PEJxcSRuqEVCXZwtFzaI6ioetviesmeyiquQzEeyOt+pECEDyl37VVLTtAz6TBcQrjZ+P
 9LIkBdb+uL6MxunMkQYybpqPCmH6o4Iimmaiz6xxTGlVclnW2vTvD3+x9Am0ZfJZNDNq3RVD6jo
 rOxnMqGoB9GRo+Oo9pX9dtkKu5WZwjEICPV030sh7rbzFI0hzjsuYAi8vxTdtNIp+9bgelucGtb
 g5cjO6Bb
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c3fe29 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=RmiVBL_TxkOMKIEFt2wA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: yOJC0XmeDt51P-ybqVSnwX0XGKXHu8YZ
X-Proofpoint-ORIG-GUID: yOJC0XmeDt51P-ybqVSnwX0XGKXHu8YZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_040409_733951_062EBF46 
X-CRM114-Status: GOOD (  13.41  )
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

On Fri, Sep 12, 2025 at 04:58:40PM +0800, Damon Ding wrote:
> Since the panel/bridge should logically be positioned behind the
> Analogix bridge in the display pipeline, it makes sense to handle
> the panel/bridge parsing on the Analogix side. Therefore, we add
> a new API analogix_dp_finish_probe(), which combines the panel/bridge
> parsing with component addition, to do it.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
