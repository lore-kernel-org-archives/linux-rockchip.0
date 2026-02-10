Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6DF7EB2718
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 21:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkcoDoGn2APjZYMHTIn3M9FBQwrjlFVwIQnWcsQwsjA=; b=RZh/yN4lUWpdFm
	mhY9FpHJaaTb0wQS4lmKl0A6eJ2E9kXg4BTE1QxAjnPKDPjRorfaGVkEQsd3bq4WdG07IgeizwIcF
	4iaSjgb2kQ2omfEKSZSqn7RdskstqYMLY7zKV+fXbn1C4f+Exo2Nr0w+4QaVOzMXRpfVTnfsz48c7
	mtsxaZnC/ZFXwK47OaY1UofGKkjfdTNsX5sZM58v5XQZEbH5yswPZHnRz9cVtkM240KXj0jJg3lu0
	lX9v56PG7i6ZXRETf+3vOA9/LDaMChdanmI+Sz3nfV2pqOkd/yo3frdAA2nP0IBf0MgArWM22AiMr
	kyu4heg5yRcM67jcwZwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpuxQ-0000000HVMw-2lvk;
	Tue, 10 Feb 2026 21:07:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpuxO-0000000HVLq-0ArS
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Feb 2026 21:07:39 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AH3Ruj2943333
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 21:07:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WYekD6MnY0SEVsICbNMS91My
	xF2Htl8S3olx63sNyJE=; b=BOj42PKjqHWpHuUFFKX7fABB68llL9h3EjDxQ+m7
	RERiH64TbniHjMINOGhJxsL/cpuR5YC41SHlQk9ilvrSLQ5TzUeIPi+i09rdl2j2
	aAh48Z/KrFLSA4Q3VhLof+0nEPrq4Tsw2aVi8cvG+H57j7nheg60qt29lIzC/59H
	KDB9Ljm9wjXiNBP+W+TJPGxeKGosACMgNDLFAoBHrO80pUA9Msw1HWXhVgR11zsL
	spxo0TF6+3N4sa5NTOoD+34Pvymqqu+KcKOgL1bI7x/xGJ7Tzj2W8gvtiqfvYMPG
	lcNfvwfEZsxPldedJmGFaaJaxM1kQPqAUYd4+vQYw/u59A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c88r70tdm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 21:07:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-896f96458f3so162938246d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 13:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770757655; x=1771362455; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WYekD6MnY0SEVsICbNMS91MyxF2Htl8S3olx63sNyJE=;
        b=Kl+kQ3Q68sKtZ87XqAotBBWO6omN35q4CQ+VJCPAsfY6CONkU8pVL1NjreXj/KXZqn
         /8MH1nLaqlbEr4/uuOHaqqmJ1a+N1/wtsO8YMCkshYe9Z2tKnbDjsw2lvIBmSo8hKQZN
         FnO+94eZwHDqBlKDoksCwnpNg6l6tUWzsxLHxh7Vz9FDY9ngMEkn3ktJCezS/QDn4g+1
         JJXgHCLucIYK6YrfEp7m5ofXVIOCNI6jTyVfHBhNs1hVhCPlnlWWE6RvblLc7b0DJAaq
         kJ49fmuo+9iOkgvooZSf8jRjBaeyvdBbq4lWp1pGWZdNGzGZC12zpBiQSUosHIsjGTA7
         JRHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770757655; x=1771362455;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WYekD6MnY0SEVsICbNMS91MyxF2Htl8S3olx63sNyJE=;
        b=n8hZlFr+02AChVFvHV8+4nqrdSvi9ct03i+dn9fcOb2Q96b9z80JVq8mQwdpPdvFPw
         m1mcn4chOu4ELdMoIrJae3yOGq4AQYZ9cAfhibUqJ0zjY0LdleUZ2b04Grzw5ddKh60u
         YUCqZWeDIhX7C8suSCTGXlGnJU0Ai5r9t3+lHHrgKkr1d7dehc+N2Oxp19db8SxQHHTw
         DN2sLXf6XXTP2313E8y9K7xIqR41VHknYE8Exmjngprnd9D/yFXuRyG8rVJauHhN3Z2H
         7HZT1D9h0tY4oe0M05D2uLQmotOyHF8Ak6txL18AX/yWCehaP8n68UHNR7FvSjVvpZ/1
         mcPw==
X-Forwarded-Encrypted: i=1; AJvYcCXsCLpH5ZPjvd/Jzt6VTcMdXTNfdXYZGAjnGipV8/gQ5Hfhtia+WXs12/laPoGIyZ4e/VV1VmMFc9Vpyn5dmw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzhQMZwy6s12CdJuE9GN4V6j9N/Wzj6VNLpPKlEbZk8XOQcjxbi
	6GZ0P0pzvOZyzeIvHTgRNx9ESy8zbKeJDq9gwl6TjvywVqXBVaumV6oqqpEK+SoeXVU6uQbZeM8
	h0YsTM0bfM+yYy0qjeDRQybPQSxty2Jj+elVtRctlUQpabf6vO6bY/EYqmuDKmEczxM5IVSv4DR
	c=
X-Gm-Gg: AZuq6aIBaGBiTahYARmCXDsIoePWhKDhgsOQ3TpcgSabnFlNYA/OrIfFUg5i6bZjmdm
	eFON01iQl1yjOqD/bXaM4C7S3oj+ilcBGsWwNp8Sxdm7bZH6euIIFkK4YlAcZWECMDk4Npc/bSc
	smRuqSbu8o3D0InbJo/SspYRKm8VEoWUXbJMxBzi+j9ztwUnRCOV+zqndFzc56v1Z0DvvaIdfz7
	vaWAMAXY9ZIn1GPHSf6LjebamhJawBjzgaG39oTHsN9wGx5lfcvlNmanw/gRgeLGu06Qo2PFO1/
	/nZab9utWGRsO2TLLrWdlmOqhIteRr4xwq3dTZCawyzeB6lO9fgbRkhcpp2U9wsPu80hm6B1uSE
	98zNQLgtGBeOP/2lb+Agw/JtIXtUIoYSpvVvKdBlvKWnyQHPiKHANXisqzN8+/8HjZIALDEM3cN
	H1jGDpQr51BKiSZaWuYqNBN9v6gGpXLOqHZBM=
X-Received: by 2002:a05:620a:4492:b0:8ca:1240:4990 with SMTP id af79cd13be357-8cb280bc385mr75880585a.86.1770757655208;
        Tue, 10 Feb 2026 13:07:35 -0800 (PST)
X-Received: by 2002:a05:620a:4492:b0:8ca:1240:4990 with SMTP id af79cd13be357-8cb280bc385mr75876785a.86.1770757654672;
        Tue, 10 Feb 2026 13:07:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6ee4sm3514472e87.4.2026.02.10.13.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 13:07:34 -0800 (PST)
Date: Tue, 10 Feb 2026 23:07:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com,
        helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch,
        lumag@kernel.org, robdclark@gmail.com, robin.clark@oss.qualcomm.com,
        guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
        valentine.burley@collabora.com, linux-mediatek@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org,
        amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/5] drm/ci: uprev mesa
Message-ID: <sl7sjcaylfmemxnqfs72wcb4mv4smcn2knhcj4he7skmgawqey@mzgj7wwzjvgb>
References: <20260210071138.2256773-1-vignesh.raman@collabora.com>
 <20260210071138.2256773-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260210071138.2256773-4-vignesh.raman@collabora.com>
X-Proofpoint-ORIG-GUID: Ps_nRLfMM_HyzEKJIbxVtZuLtSGWtvw7
X-Authority-Analysis: v=2.4 cv=YaywJgRf c=1 sm=1 tr=0 ts=698b9e18 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=QX4gbG5DAAAA:8 a=eEoeB42FsikaTLMEZsIA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDE3NSBTYWx0ZWRfX2iNBpzscrEIz
 NYe6Dh6VsHoncFpqGlv5o3fkGkZn3PHPKnPsNnXHcENsdQ3dMhilAap7FGokkVuRp6BNTHRRKMq
 rRym8hgktnjnobXDL5libgCHa2GbZ/JtGvn7IeX4L/Jw3x5cWkqOLIm3voTU49ILqdZhJHPhRkg
 Gf89ow2PPoPSuAiAFRha9hj441HbgDZktE/1/yHEXUp9+99M+FjhC+CbzioRd123TuCK5kzPQ4M
 Mh93Kpwy4o0YCiRy8Al8vlTNSFAoZqvSAGl6IX4XkhBCin6/f1pzekGMfB6wtH+fR7rLj13Poi5
 qTEqad6M/M2WKPRh5aA7yZDDfv5iNyf2nc808T8TJd/49QR9+Dvwhg+z+m35oMVvoZjyA+x7E3j
 pQd+yO3L5tlTE7Hll6dF6HFzwZOrRN5lOuiSkB23hd0gReE8sYYH8FgTwnFlZdv/PbDmSbgVEh/
 SymAkQsRlSBSLHK/3lA==
X-Proofpoint-GUID: Ps_nRLfMM_HyzEKJIbxVtZuLtSGWtvw7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602100175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_130738_115520_E54D8FF1 
X-CRM114-Status: GOOD (  14.61  )
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

On Tue, Feb 10, 2026 at 12:41:32PM +0530, Vignesh Raman wrote:
> Uprev mesa to adapt to the latest changes in Mesa CI, such as:
>  - LAVA overlay-based firmware handling
>  - Container/job rule separation
>  - Removal of the python-artifacts job
>  - Use lava-job-submitter container to submit jobs
>  - Use of the Alpine container for LAVA jobs
>  - Various other CI improvements
>  - Remove bare-metal jobs and disable apq8016 and apq8096 jobs,
>    as these have been migrated to the Collabora LAVA farm
>  - Fix issues with rebase with external fixes branch
>  - Update expectation files
> 
> Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> Reviewed-by: Daniel Stone <daniels@collabora.com>
> ---
> 
> v2:
>   - Merge patch to fix issues with rebase with external fixes branch
>   - Remove bare-metal jobs and disable apq8016 and apq8096 jobs
>   - Update expectation files
> 

Thanks
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
