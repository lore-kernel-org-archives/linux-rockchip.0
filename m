Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E798C28B30
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 05:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pjZO7pf7zAaAmXl1Sf1la6dIGjW7twGEJw8udbY6uZ4=; b=fqQ0yonrR8xvC8
	Qpofvrs9oRaxXPisoX1HUunCWDQGRuHepDHjMGQrFF9BcTGIuFDn9lIIg9umUTiKUzdJKq7I69LO2
	bsNaevTxAmu3NCbSsiDmbtXyRncxK62pDOtswWaAbzDqNdfiVzy2qDBpzbLvjVTQJQdhJ3t0WIvjC
	2nyr76qrU526cKH9ptzLYpnCneQ4mzQRa5EOjmJFgOySOrAXxcq7c/RuwvbhIzXEJT9UNJKOTCVZj
	lBBF9Fc3Gs07TH798/Wo1U9ZPEoawYMDJPq41AM2G6CueFsuVB8u+ygSdrKqOo7iNX98P2CwRyeFH
	ClS48D93jDGyYpFWjaEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxwM-0000000D8Gt-05tA;
	Fri, 14 Mar 2025 05:50:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxwJ-0000000D8GX-2qod
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 05:50:36 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DHEn0I019811
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:50:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3Vqxj6maQ/0C/cPzwEDinVuW
	MwBoOyHaKfn988vLW5s=; b=I4B8ihRu1/JmzruSlUojarpk8yt/sShTOxcsxqNn
	Qvr49/e5vNMeFJ7g6xmfoONY5yb/tVgZZHdM94piJbjgVYfVk048dtyiQWe2HKYR
	39yETdO3YToK6KHqfoai3VPeYS3q7OiZVvD4VC+PqQbIc/53WOKpj2Gvb/uKPrqm
	Njg9nZ1YHsoGm/UlsK4iqiOi0LMjU+eAt6EgRVhkp3ejw3tf1ql1EztV2sWTq0tb
	HXwEqFvQNtxDjfrcNPi7JE85F4Jxkx8PTf4age/XXe4Nq9ft3B8JteS5K0Is19wu
	GnO+BUJVnDM94+gj3ds6kXoOgLAy3GgW5GQvMVjvm3S6Lw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45bts0k7yg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:50:34 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4766afee192so53949931cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 22:50:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741931434; x=1742536234;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Vqxj6maQ/0C/cPzwEDinVuWMwBoOyHaKfn988vLW5s=;
        b=WVq7p+IRZU2fSeoJd7NNLDi1HeFSrNJTSPeRUxuupuyZyLYuhJpqpen3TsBgiCNS7e
         lFIsk6OgxV0oIy5GtHcKAY3Ek6lH6DqCQo/D1I7sbfTcJTJgNsaQaplBXK9iBg0MItsV
         fKZSLrBYn0LhsIlqRk31kQG+QPdCYdnxn7H6PgjZWMoxwx8Pl3ZVXEzYQf2+5pDVM/8f
         a1hYLki1y2yREJxXD+cB9MBCpS6AaAwD0EwriBlhg/XnbJDtqKAknPEJ8P4oqOpI0VZF
         vVne5JgHT+n5O5mvyS6AWZeSBbqIHt1+nyCo7+y9Bv7w1TW9pXXl+t9J2boDJinqCT+5
         cDkg==
X-Forwarded-Encrypted: i=1; AJvYcCWoS+Ozi1Z1JveJRIrJ3Xgy9Kz4VzdPs5jXQ7UEdinxVv4kRqkRP+gSuUSABdU1oBPMnJTy4EJQcSL+oGEIBg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxM3UKZSSkmhvTs02z4tw8FiLZK90MPvU3Ra/PEawyK55djqNjq
	F/ZY3QzuE9b1BtnPtK89rDSt7vquxXJH0mOQhtszvE2wCRI5NSBQtFu74GRXvF/fAXeC2igLlEN
	RCKCXVtHZ+YBBKdq2XFFIXtkMv0hpWuna2RrYlZuAdLomuyfBrCjak+l89GY9jVdCIw+SUa4=
X-Gm-Gg: ASbGncsqqoDM+2S1wwDoJjPOxxAY/wGL+w6YOqI+DlehUkT2XifUp8GjLZUT+XZ8Lj2
	En5eed1RLz5+M4lFzc76Q0z6qIh0UVwz1zmB6bnzXGhgS53hW4bqihn14FZ0EqQaSgSi5RdhN2U
	8T0EYg3UtU90wdF/hOZsKlcPJa1oF7UiUhCTpN54rkQUcj3RaSQPvrWht4oljQWBBjG3WNECE9F
	KJApx2FSCGafrIyxuhInA7pOhcDKTXgKmYmgNtFxe2BqzdrX2R64aa7Yy9BUv6FrjaAVOzH8cku
	LHdCvb0V4a8nikyednMPKolzVszfgpyU4HK9ebOyMdqueTcVqArrjpPKzuIdCJf9/0pKyZz4+29
	SNeI=
X-Received: by 2002:ac8:5802:0:b0:476:7e72:3538 with SMTP id d75a77b69052e-476c81d8e94mr24369581cf.50.1741931434042;
        Thu, 13 Mar 2025 22:50:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERZKvu85dCT1ENeUCj93BWd9WRGZX/y/rSiMeTSVd0DTfMzXYptv9kVVt0BKY5U8uIYW3diw==
X-Received: by 2002:ac8:5802:0:b0:476:7e72:3538 with SMTP id d75a77b69052e-476c81d8e94mr24369301cf.50.1741931433761;
        Thu, 13 Mar 2025 22:50:33 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a9257sm430070e87.47.2025.03.13.22.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 22:50:31 -0700 (PDT)
Date: Fri, 14 Mar 2025 07:50:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: lumag@kernel.org, mripard@kernel.org, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, dianders@chromium.org,
        jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
        thierry.reding@gmail.com, victor.liu@nxp.com, rfoss@kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 3/5] drm/bridge: anx6345: Switch to common helpers to
 power up/down dp link
Message-ID: <srzceyged7kezgn2bmqnroyjo4gxdtwuak6tdwrwmmsw24ziwa@v5i7ku5jun5w>
References: <20250314033856.538352-1-andyshrk@163.com>
 <20250314033856.538352-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250314033856.538352-3-andyshrk@163.com>
X-Proofpoint-ORIG-GUID: qxMd1s4nXSAJiJJhB2ZFpIBGxNqKWggV
X-Authority-Analysis: v=2.4 cv=DNSP4zNb c=1 sm=1 tr=0 ts=67d3c3aa cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=OWrNmNDVMPCQDSv4SXMA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=kacYvNCVWA4VmyqE58fU:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: qxMd1s4nXSAJiJJhB2ZFpIBGxNqKWggV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 phishscore=0 malwarescore=0 mlxlogscore=854
 priorityscore=1501 mlxscore=0 spamscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_225035_835270_88C7877F 
X-CRM114-Status: GOOD (  12.55  )
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

On Fri, Mar 14, 2025 at 11:38:42AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Use the common dp link power up/down helpers to avoid duplicating code.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../drm/bridge/analogix/analogix-anx6345.c    | 30 +------------------
>  1 file changed, 1 insertion(+), 29 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
