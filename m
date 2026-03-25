Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B852BFEA817
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 07:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbxuAvx9P/oPNqLqAiCYsc0lQyZlP2lJm5dDNFvl8+E=; b=vMURNk8Sdo+BJP
	XsNywdkcySLp3o4tyto+bORqVkOvMU6U8KHZHf9EfRqO+Lpv6GCI1GXUYqiFm2voG8IR3nDpIJUV+
	wMyKKUkgj9cGJWo39sbM5afv1N6HdmBXKP1p16TXWdEnOQIMJW6SHwfgJvBnKJ/8OxaDbWKVzFa1z
	ddDGwsCYcoq21EXTkuNezCq0f9aUmS1TFCwiB2YNZ6ZfjXd25+0UUpeccT/YNG2ZaQpa4ZqPoFHBm
	5Ac5DvuP10E1VCraJdzybY9BUELhPa56/xl9ex1925eUVruPscfMP3V/wt+PsTa6ceWZG+nweRI4y
	M2W/BZYAQBV2FdJtcJUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5IK8-00000002opX-2BWi;
	Wed, 25 Mar 2026 07:06:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5IK4-00000002ooH-1gAm
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 07:06:38 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62P3xZWM920422
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Mar 2026 07:06:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rQsKwSTJPFyNadQFvKFExVIv
	rmCLGMcz0vINVo0Po1s=; b=L0m3F5brvM58NyDoxlUV5OVWo1Jmej53m0CksRk2
	d7xYJYzAzCTsf6dALVssxvAmBjHQ58BM0efr51a4SfNSYzgt934DCxQN6bfSehkS
	zINpH9s22Q12DVReWnso1p0P4pm9QZ1mgPuHg+cTIRsQ2TqHEYMVU2expcqGhNR6
	YkQlfy6Wqy3rd7+uTLNpsW9CNqAKnq069HlEYoZSD8TTVvFpnwQfiToUSxk59VaM
	oHufhv/vnZjJJcoqFhcPqzdMHeAv7cS12NIa+4MUdEL9j2yCCpm97X4wQ7QdRHqn
	gwFqff4iulnucegoIQrymBFi4cTG8n4irD1sPINtVw/6KQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d489mgjmh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 25 Mar 2026 07:06:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50b802961ecso11391971cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Mar 2026 00:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774422395; x=1775027195; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rQsKwSTJPFyNadQFvKFExVIvrmCLGMcz0vINVo0Po1s=;
        b=YwPjyK5lDmXNpRweGJErjzFFpx8WBl9Q99HgIa2Um/q9ZF+mGUwc301PnTIpo/Lfq9
         RZrUykb589V09Q3TA+KdXCeIggG/TN2oi27tBRxWGdqTF+GytnxKpX2t0x3EZ4Ne/q2L
         KaGbXNzLuUF+LUDPeR81ZxyuSBCuwpfDPDomAANVZb2iLttt7spUqBCMNoeth0DlLNYi
         6fJvE/vRT0o0dvY7owA8BzNEYhKq0eZEGNcBUainG6TvYJyPBBKiFdXKSQt33epAax2m
         6Tm+lFSzfaWTSAABKfwiXQq/VFzanttrLwohk7WvDA11V27lBs1QK6fsO6YW7NGkw9g3
         v7Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774422395; x=1775027195;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rQsKwSTJPFyNadQFvKFExVIvrmCLGMcz0vINVo0Po1s=;
        b=pjOpw7XyPeja5gq/7VoRAQ175o625A1kapSgiT1mlelYySYsyBsTXtXCY+aOUGkGZU
         pK1MEh34dNgAMA/h5ryvuBc+rhyOZm6cOFu5+mzgAZmEZgQ824Sbd0Ws6UTbJhrta3CC
         grQxLEoSlCYx2dpWLgONXtkc0TW73sXs+2/NXYfduYxethESZhs0+1SwIDYd4qSBa1Ud
         QfJWdryAe0s6HnziwBzHBfFNudIitdxnb/q+YAX0d9Nr560eB+8O8E+d/JUwW9pC1j0W
         nHRjiZxxcf4hK4TdVEMlfCld8uJidOIZbn/VdUaPXeUj5LhnhXy99ObUVxgGlvhhZJ1U
         HBRA==
X-Forwarded-Encrypted: i=1; AJvYcCUVVvc2eH1srmcDzLG3A4EveVMz0Lq391XBGKRsouPbjB2CA1UukYtX/GLYxRGLFaUYu7t6ttdnev6pdxsedQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/EQLPWCqJMrzdWhEt/oSMZJ/Ars4aMcvkGV0lqF1UU5Y9dJYw
	jh/YUFQLSxSuQ3znwN+LPvQnO8A2OFxxkJ0xebMZxvbSmmDkJWg0rE1+9SReQDSvszL/M0ltVij
	QobM9RHA6X6vAdE5WG2MQYU8zL65jRlTVM+ufVPKDeJXM16q2GnUCD+38MHEaeFdK95zPpViTxW
	Q=
X-Gm-Gg: ATEYQzxrdHcb+2hYCCPgcaQ53PunBf27NQpaNfrybpgUQbqWiEGMtysXV9/8bcMYs4q
	sm4iRihAMM6RBbEc5gK9+FcTtflFqYTtApkLHptWFUJguTn1awCoZzbQkNl0I32UieGyt5sZLOM
	W6721lcSOrvRzxxiQ9AV1BlUYRIE9nlUsV/1MxL5MxmS7fZWJqFCmKsSm9L7u5Z64zvQey5cXiw
	ONjv7v6QICjAw+tXlJWncvruEtyjobW0xGIDjyKuKluG06viKv5UPNwrvjX3ccVoRtGZIjzFpRU
	vpUXNJrFgBnzSUA3Db9VKQHybbtCDDqRKj8XU4Z4TEO8wd9vh2FrXHkfpn4aZ+bbEflgmJ72akB
	FICKlN7+qHnWLAFMe+znaBld9wM6BhK7nqQXs5NrP7aX1WrQQAMl8bdpLX5zvcWh7Ev8vImM8Jd
	8Kw2BPufaj8ThyaYGlRp6kCjBn+bFAKc9Jm3k=
X-Received: by 2002:ac8:5cd0:0:b0:50b:3be7:b04 with SMTP id d75a77b69052e-50b80f01b6emr35059651cf.67.1774422394503;
        Wed, 25 Mar 2026 00:06:34 -0700 (PDT)
X-Received: by 2002:ac8:5cd0:0:b0:50b:3be7:b04 with SMTP id d75a77b69052e-50b80f01b6emr35059231cf.67.1774422393873;
        Wed, 25 Mar 2026 00:06:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a2852071edsm3641505e87.49.2026.03.25.00.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2026 00:06:32 -0700 (PDT)
Date: Wed, 25 Mar 2026 09:06:30 +0200
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
Subject: Re: [PATCH v2 0/5] drm/ci: add new jobs, uprev IGT and mesa
Message-ID: <pqa5xua2shwqpkmwbu2jitz2ogpbmgcd4wizb4nt6qtxstubse@4ltbfdvfpqxj>
References: <20260210071138.2256773-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260210071138.2256773-1-vignesh.raman@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzI1MDA0OSBTYWx0ZWRfX1wg9oNuNMvhm
 uUvH/OwNiWmlqfQiRxx42s8qZUT6HkPfiSp2sruXZBje6f+w1rQGa0scIk2jFPzP2VWcArrZFh6
 HwJ1KmteQo8DqSesMZIlrDkhYvTcwOXAOWcCsfV+My60NPVnJP/ZRtvcLXPaXlXxxIeZ23T9KTd
 /f+iunyODrJPksGAQ1JG0b/l4lRT00fRx1CFKQB/fV1DmncNiDJdTh0Z7M8ekHbjgW/4k28aLF8
 yMDCZc7dOEbjasDOBrfPjrX8ehaRjeCgCYQWJ7aWQFNpM79GfM5C3F3POgTJ+C0P0JwwJ6ZfWak
 Wh0B1KI49PBBCNKX5gz0ihF6yUdohE2X2DBWKNhNnKd77etX03QDKC0oXIZHlZg59osIjcvqa/n
 M7lawwZ2gKaLpludhhHhkDEBkiUaAVfL1MvkzDwqB1tlOH0DkYmVDEH53Q7Fq8WwcBxzYf2EwTq
 RPHMCJKeu41e9xOLmUA==
X-Proofpoint-GUID: dvFVwcLmpYW6hnqq-7gOmqBIIHxRjlrK
X-Proofpoint-ORIG-GUID: dvFVwcLmpYW6hnqq-7gOmqBIIHxRjlrK
X-Authority-Analysis: v=2.4 cv=AKSYvs3t c=1 sm=1 tr=0 ts=69c3897b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=e5mUnYsNAAAA:8
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=QX4gbG5DAAAA:8 a=LmRgrdqyE-cJMQzL5zkA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-25_02,2026-03-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603250049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_000636_468483_4EC934A3 
X-CRM114-Status: GOOD (  16.37  )
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

On Tue, Feb 10, 2026 at 12:41:29PM +0530, Vignesh Raman wrote:
> This series introduces new job to drm-ci for testing the following
> devices:
> - rk3588-rock-5b
> 
> Other updates include:
> - Adapting to recent changes in Mesa CI, such as:
>    - LAVA overlay-based firmware handling
>    - Container/job rule separation
>    - Removal of the python-artifacts job
>    - Use lava-job-submitter container to submit jobs
>    - Use of the Alpine container for LAVA jobs
>    - Remove bare-metal jobs and disable apq8016 and apq8096 jobs,
>      as these have been migrated to the Collabora LAVA farm
>    - Fix issues with rebase with external fixes branch
>    - Update expectation files  
>    - Various other CI improvements
> - Move bare-metal jobs for apq8016 and apq8096 to LAVA, as these devices
>   are migrated to Collabora LAVA farm.
> - Updating the runner tag for i915: cml (switching from hatch to puff)
>   to improve device availability.
> - Adjusting parallelism in jobs (sm8350-hdk, amly) to better utilize
>   test resources.
> 
> Pipeline: https://gitlab.freedesktop.org/vigneshraman/msm/-/pipelines/1601024
> MR: https://gitlab.freedesktop.org/drm/msm/-/merge_requests/213
> 
> mediatek:mt8183 fails and it is reported upstream - https://lore.kernel.org/linux-mediatek/CAAq5pW9o3itC0G16LnJO7KMAQ_XoqXUpB=cuJ_7e3-H11zKd5Q@mail.gmail.com/#r
> Few intel jobs fails, this will be investigated and a seperate patch to update xfails will be sent.
> 
> Link to v1: https://lore.kernel.org/dri-devel/20260127104406.200505-1-vignesh.raman@collabora.com/T/#t

Picked it into msm-next, thank you!

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
