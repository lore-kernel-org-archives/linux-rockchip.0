Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F5DFC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 13:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xEAoHlsLZvak6RBryS555zD11GU7gAFoA4zdf+WiqA=; b=j03l28QR9gYLls
	05fIoTBMDrarzO7YZtcQjTQqL0lvV3BbYrLhjWRPB3ALyF7zgGoVycR1ThUrLiZYZm6CfEod/2ZjK
	eDDrfY5+O7FiXw4uAAPJ44chFKdl3YSckbMyu9M1Ib6k2kMYRdahyC8eJWqlYoVG44d/jlkvqSXpW
	SXP0H0VtMIAsiNX3v5stbvd8zcrgFE0Ceqhe4+WLUVP2YC3Neugv9YYYZicLI5FYIj5uONaMUz/QD
	9WOJHzqctC1xK8AcVBUSf9s3uiKDNJcihapJ8XO/nOFq6Hy6+OueAlqkjA7JECXxG5+AcIx24A4qJ
	AjeZ/fmgK08MKNTTTJLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfeMZ-00000007Ao1-3C1n;
	Fri, 03 Jul 2026 13:55:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfeMX-00000007AmJ-0oHh
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 13:55:26 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 663BOTbN2995006
	for <linux-rockchip@lists.infradead.org>; Fri, 3 Jul 2026 13:55:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=A2ITQjqnGvmrPumq1Lg0UMR0
	KWK9aB/bRTHDo6yM0WA=; b=WjRsnbQEoSG7b92R0ZHl5mxPd1UIQKYnvZMVzomx
	MzHsDMeryy5x6TXfxX0Tv8dq//hHUNGrc2b9/t9ZHQpa0LFvZu7Es/oKlZGSXnvL
	ZDXje4lzvun+y49QVm6VJXIyqpDUe+cez/zFSYIE0F3EYFFXCBhmsFuJFzFv+i4o
	n427a128BNFRHaYQevpHlf2skfYMLhKdi9gWmNClTd1WRlU4f8HpbPYwVbNG1jvE
	BEKoq4hV8T/gHHQ5Znz7eMQpMEXm9rGhJgjDF4EMmiWxUxn7EwvQvl6oRfns81kA
	OPuzlDpG6yJiqKh38J3u4O/RtD1gl4+of15QEPjoV4sj2w==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f648n2nrf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 13:55:23 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5954c5fbcc7so465514e0c.0
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 06:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783086923; x=1783691723; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A2ITQjqnGvmrPumq1Lg0UMR0KWK9aB/bRTHDo6yM0WA=;
        b=Wm0WuLcMrCISeZqqmmye1qel0+CK0oaXu74JfD38jvTigKQRBPHN6TSWuc31j3d4sr
         Z/ZPhJucDKw/avgVwUt0SsSyqlJ0w3cHySUZ21tcBgXITdt3W2sEuuHPk6jLq0Uklm+r
         vRwjNU7sTL74F4Lb1zgLiyD4BQO0Sw1tZAV88L48GYel1eUBY+LmkBcvKgWcURpEretr
         ytR0thMn3kHjlSohMBDdrG7/CNYAdvZhc6UEWdNu74XP1Q0ML2bIEY/4HVvnproNc2hk
         2s4Or6VMWpK+7jElpBzQtDXxxu99oGNjsSKc+Mqr63mi0Z8f0J5sVePW4iR8McKGD0cK
         B7pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783086923; x=1783691723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A2ITQjqnGvmrPumq1Lg0UMR0KWK9aB/bRTHDo6yM0WA=;
        b=HqEDkcbdm1d4RpSSJaU3xz6a9h4hKcn2UV3F3LhOThX8eMx6JofuylThWF0nQCg28o
         ysauMTJfv4EIuyxiiY1bJDjipU+AKMKDrL2DGDGloz4qJcubnemOowsArYcwFdE0Xlpb
         CxnxAO50sKqyQAUM0eVanzPeM1RulNyXA4Grpb5JRcMthNBRsuHb/s110ZkkP2g+t0DE
         ODeQftwgfeLffWfp+owhcdtGBKPtV/XosDh1gCHg8006mzPOhTaSy+GXK8oCEJdm6yCA
         PN4tTVrdoyY/SCV0VquSRvrSDpDq1HV+ejIL/NszFNUmdVPxmEqOKaRqsGFlC82MqBww
         14EA==
X-Forwarded-Encrypted: i=1; AHgh+Ro67msHrW+9CNdIBVBvZRrFbXpuT7k2eYuY33hja0ZXLO8JCHCfByGd/Kwl7Xf7aWqe169XDiIQf5C3mzMeow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9EHHVxoBRqB6cEIJVEeZlSWLEZ/emJYAxsNlUEKkQreF9/VAq
	RHwHYfn6t40Mzyh5bkNHVVnMrkj48aGVTEM45+jSdr119goryu84z/y1WzfstjfseN2c163WDrQ
	k2Vzwag2CoqeB5tTq5wM2ekJnt7pLnFK82Rc3Cj+FDbodp5QuhLkibJ6qF8y5dfhO52w751G5sb
	A=
X-Gm-Gg: AfdE7cnw63dTzvbr6Dr14GQ1jB99hugx2XbkDOT7ql78F9ETGpyQJIwGqUM9XbhDg67
	5WDZXzomDo1zV3RucH4sUQd+uDsznJtRvwZ3D/T82bbPe65mGrF/QbfHah18Vaw801x6Ula4Gn1
	JTdoW3yFc6DxmKooN2Y7RiCqjJfo9QkVbGWUzLHgLCzn3MlG90Ng+GP4IPII3Ej5fnyIPgu/s5h
	UFY+oxyrrVSJrgHPF8keyOe8TPlw+ecNV01XNUFihS8KhRnQzivaTuLYeW0F/25QIZtzlQz/+X2
	g6fxEV1/8TCjlw53BKjp9QxYBEEglXkfC7cCSvCDnuOYArXlUd2Hw7NtgNccommpV+ANcAo3KeH
	9dXdfc85MJOTrdXlybCF85WyF+hetHUrd39Lizf7OHNoD3xi3h6r0dPzDycKCKl5Gr+poDKuTep
	I143WYCuI/m6mgYGtoVvgeaDyn
X-Received: by 2002:a05:6122:1785:b0:5a2:5669:d6d7 with SMTP id 71dfb90a1353d-5bddf66e951mr3967952e0c.9.1783086922951;
        Fri, 03 Jul 2026 06:55:22 -0700 (PDT)
X-Received: by 2002:a05:6122:1785:b0:5a2:5669:d6d7 with SMTP id 71dfb90a1353d-5bddf66e951mr3967937e0c.9.1783086922479;
        Fri, 03 Jul 2026 06:55:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aed13bfde7sm487894e87.56.2026.07.03.06.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2026 06:55:21 -0700 (PDT)
Date: Fri, 3 Jul 2026 16:55:19 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
        Andy Yan <andy.yan@rock-chips.com>,
        Daniel Stone <daniels@collabora.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
        Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
        kernel@collabora.com, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v8 01/39] video/hdmi: Introduce HDMI version enum
Message-ID: <vnledtvhanfj7owf6wbu35up55jv7vsb5qvd5vmv6cgzfo4pox@dbvfatear4vx>
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-1-d79890d00b6a@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702-dw-hdmi-qp-scramb-v8-1-d79890d00b6a@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAzMDEzNyBTYWx0ZWRfXx7+9pXR3jdTq
 Y/bb9doOm84yNpfVsm/EA5hjPdwTl6uqNmqmC8c7RVBBACNfLy4c4GJyiMayWbPkK2qdqkcD3i4
 aX1ddVuW53Pmp59883SsrO/onJW89Ok=
X-Proofpoint-ORIG-GUID: PS7kcHgszW90OHyI9Qezkx5Dq_NvKkL6
X-Authority-Analysis: v=2.4 cv=O4wJeh9W c=1 sm=1 tr=0 ts=6a47bf4b cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=VFBjkeCnKAITTyYkkK0A:9 a=CjuIK1q_8ugA:10
 a=tNoRWFLymzeba-QzToBc:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: PS7kcHgszW90OHyI9Qezkx5Dq_NvKkL6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAzMDEzNyBTYWx0ZWRfX4JXOpNFC7weR
 NC+cvRsHWrA/LeF9b9mVGdtGdodF0rTk74KKKJ86p/GxVLLob6PXDSnjwzNzZYZ1JKU5FNYCR17
 9lGlrTSCMwwQ5YSEL3DVGGDzwOeSuU/EG17BfiJJiV75XpYeKbQnNpS88EHAjQOZMznWFWNuaqz
 mWWGmnIpnkVKEPeDBKFcFxqTbzyciTVDTYw+Q79u0Tk3afsRbqFNzAOkpnjJLCY3n0xmcbPFw2j
 ykBRERp4xVG6Sl6DTcnreDspQy0JyxO1le30WsFllIO5RfyI3kY8mWIZto7k6fDRxQ9n0WFps2L
 su49sfus2aVwnRWzSp4M3hXoJ3ZZ2p75fxsGb9qc+a7dvFCN7+0z9gU8Lwaputvst6tpC2ZyNEu
 SRWre3iBP6bSYrEQGmiLRglG2PvvtxhoN8RUV3ATx3vfNayFBhkGTmRsUU3moTuLZvDYlPx0NdW
 3i8MyDAEFvZ583th+XA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-03_02,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607030137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_065525_343897_70F73E28 
X-CRM114-Status: GOOD (  13.67  )
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

On Thu, Jul 02, 2026 at 05:46:14PM +0300, Cristian Ciocaltea wrote:
> Add an enum to represent HDMI specification versions.  This will be used
> by upcoming changes to associate HDMI connectors and bridges with a
> maximum supported version and to simplify handling of version-dependent
> features.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  include/linux/hdmi.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
