Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBAC0CCF2E8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jan 2026 11:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2ffLxaAojF3U9BQhBW9z5sgt5kpXU7RLVi31waIhRw=; b=blSGK1CAgqvlMi
	5fR+NyYfNmgvDMgYX299pjz3TMQ+kMjh5I6+k4PUxTng2mNgCvOJTJZLBumuTqxDATYpg9nXLBJYq
	EhoepiF+on47/CSd8gYDhqdgoRZrWOi5E4aFibmwd9c/5w9fHTA1teEncPWmLByu5bu3ov+DbgD6R
	3J700yi9FRaiIZGNU+zUGhEaEEx3xmGcINX6Q2lXPQQlaezZrRy2mr3V7F2wMOz/0mcXWd2rxodnF
	0dCzD0wSz2qFaE4DR7PwMNkKLUw0csAJ41roMdJsJ9sSGUzqNVGVQ5Ogm10ocgt5re7Do1OrBXMUB
	Jc8XtE0chyf4XqATRn7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnMP-00000001sw1-0djg;
	Mon, 19 Jan 2026 11:23:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhnMM-00000001sv4-2IVB
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jan 2026 11:23:51 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60JA7Vax597677
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 11:23:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Og2bNnMCiD+Qnx/yVwl7sa8q
	3E6jkBERvqpmHJS/OCs=; b=cK9FqWXf4YEzqdLtmjNxnI+ZOiB0a/BMinmgC5Nz
	A0AbGvNu5UOyKvZ0hNbB+39/iqnS/I12vuN96XYXVwIRHGFUFOuz/rWprlsueylL
	PQWRBkbUldWASFJjRUr39tMwOY6OkL4gvkdkJtFpDllq8yg0kJyY59jU+eUPomoF
	lXiiuN9bladCJM/XLOmMXcieoD/v13fH0X+G5EAgaeXu2Ig7SlYnwaj1rC/tYYEn
	iJJ4BhxhpRJA6mc7SDHc3fhCK2n6XbbZhTYUYz77Pc8cFSPmycdxwd+vaToy5vuV
	hgOJrzotIgsyd/6Qa1l7mqlNyzpXFhycJmPvnVadcv2aOA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsjk7g7q4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 11:23:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c5296c7e57so1528273685a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 03:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768821829; x=1769426629; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Og2bNnMCiD+Qnx/yVwl7sa8q3E6jkBERvqpmHJS/OCs=;
        b=iOJU8obiydeANC+Zg/gZQa2ZmBwexe7lIJabn2TvLGWfG9aB72VADTvIOETh+oGrTF
         H/5SYRttfA3fnlWjXVQvDGDqHpmzXXy+eimA2uKWUJkkbRisNq7pH1OXDYhGiucS8pKN
         zLcMPwibdy6kCCyEPi+aJ85sOckilP7A1JhtaK5YqG+bsyHBbJZ4o4feNNfgtDnf5tnG
         aqgbspoLwKqfmCOCiSIVYATslBCsTSFDVrSCqX6w4uGvQhjezkjPz0MQrQKIvMqNt9xg
         lWO0j28l9vVnfWPDX2ZQacKr6pc8l6OASemcAac5z0a4bB+0U+CC0D6RpQN28/Ltf++S
         vHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768821829; x=1769426629;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Og2bNnMCiD+Qnx/yVwl7sa8q3E6jkBERvqpmHJS/OCs=;
        b=h3ka7Ojck28Wm21kL3OzzvdSrY+1FLyYEZ1aLrf5cR9KS3nUKLpi2r1vWFnRTJ+8Oz
         rliFyxqSUPT2HLl86Ms70H1/9T7wu3+03otzS+y15jj0WxSure4X/EY5ymIcDz4p6hvi
         myKzPwRZv6R4eE39qBUgl54CvalioNqZkitc4+MMUdBpS24s/F6wEEsJy/saQblvL1v7
         sxjRITZkg2NP66Xd4hiy5fb2XA533/A+BifdmmMzNSaTFgmrsrqyEZ9RWOI9o+vUX3Py
         0jDuiV11blZ890l2SdLMUvAQf6bImyw2NczmMClb/ot1R3GuC8IuCagTUzbPs65Eoed/
         ivdw==
X-Forwarded-Encrypted: i=1; AJvYcCVKw7CC2fG5j2jXdhmNwv1LdOJUll+7M+QLQWzBfvNXHEqfp+D08biLgNChSOdXdj84rf/TGzQecdaKh5RQ1A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfchV2tkx5aoGruRRklfGx70aU51+58xGoT2f/aQqZcPwioHTm
	PYjkdX7xUNhmj5/9tYf13gluuPokjvTNwA2rf7wCFDM0AWwzmd+V2/MBsv2vMCT+YzA4VTLtU3m
	cCjHyBUxsXQPqkEVVMm0y/CRYiJPl6VjMS+/O6HXEHt3CLYixQJpmJqIbtgmt/LCE+76lWbylxQ
	8=
X-Gm-Gg: AY/fxX7qORckJ2BbN6u4zQRD6b9QOQDdTspkDiwPxvY1FEYa29tPAuU1q2ZT/6uts2k
	+JJoIoyNhLlewvqCgrTz7+eVGwoN/AZVKy9B8OTb2Al5N+ruz9HssSvsTT7MKay+yOrtFH+YfWG
	i4Hcsp4rzPkpR82+NwD83HWWv6d2x7vvtBigYUeQBM2QrSfAYhdWvCePFsPgWGsttVlWJOyfnS1
	eS9oAeZQhsuCopO5R6EOh9DGkvnG5W03dMo5EDrEH1foToH4Ov2a4Rzp50D3qCBank4d8450Jrp
	hHUIbulPssDwW0rLgEK44YoO6it+c3HX15Ruz+u/Y8Ef42gCaDzRreAXoVxGus61wkCkttLTBFy
	7XtlTtSiQ1c+EWQCm/D6SsGB7vbboEp2kbGgjzAxHBnw212p0dAQFC/Dg+IWyukMIzVSC3EPmXd
	78+onQc/OVkdof9b28gDGtCoU=
X-Received: by 2002:a05:620a:1788:b0:8c6:af59:5e2c with SMTP id af79cd13be357-8c6af595e6amr1169568485a.18.1768821828930;
        Mon, 19 Jan 2026 03:23:48 -0800 (PST)
X-Received: by 2002:a05:620a:1788:b0:8c6:af59:5e2c with SMTP id af79cd13be357-8c6af595e6amr1169563785a.18.1768821828488;
        Mon, 19 Jan 2026 03:23:48 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38384d8d5dcsm30685941fa.15.2026.01.19.03.23.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 03:23:47 -0800 (PST)
Date: Mon, 19 Jan 2026 13:23:45 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Chen-Yu Tsai <wens@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        David Airlie <airlied@gmail.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Liu Ying <victor.liu@nxp.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Samuel Holland <samuel@sholland.org>,
        Sandy Huang <hjc@rock-chips.com>, Sean Paul <sean@poorly.run>,
        Simona Vetter <simona@ffwll.ch>,
        Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v4 01/10] drm/tests: hdmi: check the infoframes behaviour
Message-ID: <yj3r6d3azwwfl5g5yo5wj65qy47f5hzrio5tvfmxhgzlc5bezo@ij4dctwhswls>
References: <20260107-limit-infoframes-2-v4-1-213d0d3bd490@oss.qualcomm.com>
 <2fb910198a3be542215592ac3f22d6b2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fb910198a3be542215592ac3f22d6b2@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA5NCBTYWx0ZWRfX2ynNJGumc50f
 CEg9iT9D9TUpXv+aCwGARjphGnO73/LRSsffdfRNJ2iN/pjnkPd8ccj2POdV97W/lH1R3+vkrRm
 DHACiKJIjZwQTVpUmq9OUSkYqzPvcah6qPoCPD0WpFjv2EovR9dCaxUbkJ4aLu0sY2WRZkja52u
 Js29uQuvxCGTHgnlnBJcA45cEPICdxsyP/xSkTLeF/rJbgBnhKh3J5LZTGJ27llxRpWsx3S3iJ0
 Fu2knunypE06UktXeoobTI2Jy4CiDUDZHp920bEGGFoVArajgNm/vxmrCStWpsCdvU6XBvxsz0N
 gUoLE0r8z6CDPfJUb/Nf0h5qJsI9NoakhJ5/lg+S5920Ss/Y5Y8RvWj5yg6g/sIsEQMvZ1PH9l/
 TeAv81gwYzBsPM3pIiZpKFELSHwH9tgt1oUfH9fZS7uqP9hUVv/ALj43qNqmww/g1sp44wihd7d
 DxtxmZIK0rNPSMcvSyA==
X-Proofpoint-ORIG-GUID: 3lF_iuFL-1p6vtKb-2hNeIUcBEi6p7jP
X-Authority-Analysis: v=2.4 cv=WoAm8Nfv c=1 sm=1 tr=0 ts=696e1445 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=VxRmli0-OQd2mcn04XsA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 3lF_iuFL-1p6vtKb-2hNeIUcBEi6p7jP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_032350_698819_820C0D23 
X-CRM114-Status: GOOD (  16.17  )
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

On Mon, Jan 19, 2026 at 10:13:43AM +0000, Maxime Ripard wrote:
> On Wed, 7 Jan 2026 20:14:58 +0200, Dmitry Baryshkov wrote:
> > Verify the InfoFrames behaviour. Check that reporting InfoFrame as
> > unsupported doesn't result in a commit error. Also check that HDR and
> > Audio InfoFrames are not triggered if corresponding features are not
> > enabled.
> > 
> > 
> > [ ... ]
> 
> Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks for all the discussions and the reviews!

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
