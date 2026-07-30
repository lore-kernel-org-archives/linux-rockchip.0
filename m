Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F43AC55164
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 14:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgz3fs+XfoGGfgtjCxeP2X7aoMJ9RB9HcO5olC4AioQ=; b=IJ/KWE52Dd1nrr
	A6iIElLnEIVPQU6JIlcSrqox11GaOhokz1foq4BGFxxBolU8WoNILxVlh7fQadgeLAAehck3fH0Nt
	S6mVzqmRaexX9JJbN10qIhiQvqCtUz9CZqmmCxVx55D5wDsbbll4Ppk1XB38jvBTes+6F/a8W0CwK
	wRcbQ3o88pH7Z3AJqbrBuKv96vpwPVN75lK4rNGZrzJDZOuXMy4SPDtvQZDp61AvNvHPJwOhwHJqi
	yUn9ZvpUX01pvUa9JnE4l6jXoYTKQnl+p8rI4ptZlOChYxJaCQzDtbCFm5ihNzu6udLBrca49pvRa
	/z0fQobPTUak2uceCuSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRn1-0000000AkjW-0QmX;
	Thu, 30 Jul 2026 14:31:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpRmw-0000000AkhO-0SzE
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 14:31:13 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66UEG7f0922746
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:31:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JCT3EPO7gLLjh/8pAuKmI/lG
	uSDERijqki/K1oJAcNU=; b=Mgj3dnWsw42JT8wCEe7gC0WI0m0wu9ltMTFEzBqx
	cAVV1sX1YGzCvyt5oYGWXMEOh57YBzudwbAbemMddwEkTyaU+JHpLkz34sqEyOQO
	3ejldVR3fxiH1F44uSYVnueLQKjWVCDjjRU/3Anjgn8LfomDsBUMM0KufS5LVam+
	ekbDM4DwSQHmoG591C2HZzjNu4hnWIgy9zW3JoSoQxLNpRUW1Cd5dzwv+nPLl+gn
	EHCiA5lIpNhiO1H739gFU1XJPBtX46AVIWbWBzORlC0Fe8aUvRX8c4LFu5zc25aT
	qd/m4Rg4r3aP76j3MdokIfVmGfte9HijtCo0fx4MIHkbow==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr87k8239-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 14:31:01 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-5174a23afcbso22591101cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 07:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785421861; x=1786026661; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=JCT3EPO7gLLjh/8pAuKmI/lGuSDERijqki/K1oJAcNU=;
        b=Eg1QhaUxEXGzYnQQZAT/dXk8Z6jObvEG7AIVeiyigQv2ki4oB63w4RcZdYNc6+QqQT
         eCCvuGO1s+f2oPF1DQZnfYTE2CxAWfxxou4QXqiaeQGqswszMyQJMYuHZNrfl0J+Jorc
         IM/L9PiCJ22iBWxKMtPGNB/3K8KN4upNoWXKvYaizvWTghgGW4xwzUGuAjsOr5tKFg9i
         n3ftfoKVHqSQztAWVj66/XdZDbl1uf64tv5maO5tJXLkx++KnuNhsZAJnOpWSFnMKR2z
         17UWh9JIrBM/+dR/F8rDasXYJxzXXRHggkAFt03v56qA292KLLOaufvX2krwCuldfuDw
         conA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785421861; x=1786026661;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JCT3EPO7gLLjh/8pAuKmI/lGuSDERijqki/K1oJAcNU=;
        b=CgW8cBRiox5EfOaoxzx8epBE9ciIVs/wm2RdDlpfG6vR3p0VUvEmyGxJfUWV0uD7C/
         iKlWdWaOSCO7X3tJU9EnxsGWaDI+DHuzZW9p4WDKuOKgZB43rQNUklIWhVhHtliQGvux
         qVY4In/nfaVRFKe6G15qMoikGriN1zc0MUOF4wVagAd4Usjdo76cToy225aREY9pkCU4
         9zB8qcZmQF3NJmUO4DT1VSSagPJPSGMMvQa6evKtGzqGWrOzXT5mF1ivKK3mYCrZKhlk
         iSlLD0EbDudsyt3rNWRl3bHYmOnGFtC/0qlo6HhSZhyOnOC6DrpAyOYnPhhM+tV+ZmTp
         LEAw==
X-Forwarded-Encrypted: i=1; AHgh+RrbWz2F0X6ijonbpkirN4Sr8Tj3mTT1X5l+x2mMtwgkhyDTDONnaaw7ME+D1Q4ZxEvFV0LZjA3s404iTUU9tA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx39p3Y9lt+qnHAbgUX+swXIvkGG49xrlqLr6hEMef1KJ/QJNVh
	fnXRKdZW5lTZ1MgXDJt32iJiN7BFXKiivcIN4DJ8GBPepgc29VQbX3u18TvIKaUlQEi8j652i3P
	QaCl8AIwDJDytV9OuxjDg8m1PPhjMg08qtHrCGl5z3ZXJk+YO7SfG1d0YFcmrGZHpXy10OxlKb/
	0=
X-Gm-Gg: AR+sD13MaJfAhTrp3puVPh953uJ4kfhyjA+GLuK1FepHAKYgXLl0A1HmAimK2GWH9fk
	thVVbNGXYK9dJl4o66lmfZd2gBVtkiEsXU13iVW79p178fZhxk+ViUZyvXc8ogf+8eCcMogdRCy
	plzD0pVzUM8BAmqteR5m9REDTVxDfvM+7EKyaiYeldZx249MDCqaBoklZzlJfoAMeRWQjLcI/M2
	6xrilMXWVSegknLpGyAltaohUI4W37vKz420mGPyGmNkOHMHOvfbzw01HZ4OIpDx43o6/3CBAiy
	fJ4E5Ru9300Hh4BaZ/IT417teBsvXSFP4fY5jXZIGtLAF6eDGVis9gbLSRg3hvFKSGKkSBK9bxY
	1eu1yetvD/+3IF9gT3Q6J3o9TYdTjUt4tTPR9scjqdWK6ORKGk6zT1vQ7S+R7MGs+UozVHbkYDo
	9vrPCtVYYFsnWghw==
X-Received: by 2002:ac8:5f07:0:b0:51c:7b12:1201 with SMTP id d75a77b69052e-52b386c7b4emr31713441cf.79.1785421861205;
        Thu, 30 Jul 2026 07:31:01 -0700 (PDT)
X-Received: by 2002:ac8:5f07:0:b0:51c:7b12:1201 with SMTP id d75a77b69052e-52b386c7b4emr31712241cf.79.1785421860267;
        Thu, 30 Jul 2026 07:31:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2db9c5196sm377549e87.56.2026.07.30.07.30.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 07:30:59 -0700 (PDT)
Date: Thu, 30 Jul 2026 17:30:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        "Joerg Roedel (AMD)" <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Joerg Roedel <jroedel@suse.de>, Russell King <linux@armlinux.org.uk>,
        Lu Baolu <baolu.lu@linux.intel.com>,
        Jerry Snitselaar <jsnitsel@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Heiko Stuebner <heiko@sntech.de>, linux-arm-msm@vger.kernel.org,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] iommu/msm: track a context master per device and
 IOMMU
Message-ID: <ketiunovezpn76nxocpima27esjt66vve6tmqg3e4murz3yjga@pxl6kikpbk5l>
References: <20260730-fix-qcom-smmu-v1-0-b12fa067804e@oss.qualcomm.com>
 <20260730-fix-qcom-smmu-v1-1-b12fa067804e@oss.qualcomm.com>
 <c77db81f-9fb8-4803-8efb-078b8cf70fab@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c77db81f-9fb8-4803-8efb-078b8cf70fab@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Y9rIdBeN c=1 sm=1 tr=0 ts=6a6b6025 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=6Z1frLYTuOUDIWW9GX8A:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDExMCBTYWx0ZWRfX3iZsoq2AJDMO
 ZQaQHED4qzi9fC39N9AybTjS+VH706AN0PhgPX5yzAXHaAG+Zej1/eFE1KLfF/nFdvuEXfe30AR
 7ysYKnV3ZHpBB8UbbhBu54uVpC/fXqk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDExMCBTYWx0ZWRfX5g/AMPZOjq6S
 71HugALAFkF+bcGK+puqfeJX/Clt8h++znPqIDtfNHdYiQJtetESTExqTX48g9VU+iJ8k6ixP9/
 HzAD+Hks379iJ+4u2CqlndO+9l8mgdN/RrECiJRrmuWwoBxAf1Pd1W86ZgQ5L/5abVuPXfhHx5F
 bCuuJiWd1XXAGQa1kj9qCjwHyxk7kksjc/UN7f9DHnVwYMsTocNzfyaUIkMEy5r6YcYSoXgrDtn
 TujWhZ/4wPFENlACntcGEd83bK0TwPVibymU+TSLqaUs4FBkPfZH7GATLLjcQlIquC+aGUnkKEC
 qJBWqE8DSxeyV/q2wEq7qoIp6xC9RTPK0ueUyyyHYnWl2bIGh6DmhQCg8rHQt/w4Nykz+B5ESQi
 2HNPPyNmEUNvqBSbmWc3IulyTnrLtb6zdxFl856WrwXcjrymCV7X8d+zr0ThrAGDz4sURJSrhJ5
 q5DVXmAxqadZHI2bdLw==
X-Proofpoint-GUID: nkbTAm53_hLB60Az2xBlLkQMkQ20vSSd
X-Proofpoint-ORIG-GUID: nkbTAm53_hLB60Az2xBlLkQMkQ20vSSd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_04,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300110
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_073110_260668_09507EE6 
X-CRM114-Status: GOOD (  14.18  )
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

On Thu, Jul 30, 2026 at 03:57:42PM +0200, Konrad Dybcio wrote:
> On 7/30/26 3:29 PM, Dmitry Baryshkov wrote:
> > insert_iommu_master() decided whether to allocate a struct
> > msm_iommu_ctx_dev by testing whether the IOMMU's ctx_list was empty,
> > caching the result in dev_iommu_priv, then unconditionally dereferenced
> > the master:
> 
> [...]
> 
> > -			dev_warn(dev, "Stream ID 0x%x repeated; ignoring\n",
> > -				 sid);
> > +			dev_dbg(dev, "Stream ID 0x%x repeated; ignoring\n",
> > +				sid);
> 
> Is this intentionally part of the patch?

It can be dropped, yes.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
