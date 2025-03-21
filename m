Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C488C36000
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 16:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Tj7MEAzh0hPOmIWCYPOxVHuDU7csdAerQJ1zIMAYR4=; b=gPuDcGenhoNHe2
	2YhRWhbjK4PMO2em188PALH/X0z4C4hg8PYQSaFxKx/GJp1NvmHzMWX9jRk4kx/lVhYOVBE/H/qlx
	IcdHBwLZxjsPoaFrUqnhhBhhHar+fIq8e+AeSxpcS4+dqCDQJgRbhjwZqrJ+KHOSVQaSRRTO+THSC
	Wd0JIGKhTe1Q/xwW3VEW2mwT20fjQ+2OH6lksYr7Dssknhh2d1M0hbCKWaZkN6InzpNL/96zVg/rE
	BIPcHRSYpIetcwzI6xMo9ent+84LUdXWnfYF6j1irPRNmnDo/XaKVH4x3CX4pxSmN33mwHOUxHapj
	qfVwVPo2Tho67Y5kT7lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfCO-0000000FV4x-1Lw3;
	Fri, 21 Mar 2025 16:26:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvfAh-0000000FUgo-1hRN
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Mar 2025 16:24:37 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LAThNm015854
	for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 16:24:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ezUvZQcZtwMrgBYlUmzB77M/ia6WCeZ5frQ98fyadU8=; b=ZtbrNKnjtpjQrL4p
	ofV1Qu+ShD8CFFWgmB+lu1aU3ZVNz8K9Sn7/Fabi5p5bphNEkQ0rtdMlR7NMoADQ
	c4fUcprPbP2b2U1uFkOcZQoqMvWgwoFWpCETImYmNMTUQf0OuIijCcaUS6lrO6xC
	AM1v1jlDboyDc/6ffHPUNg7jZpGDWo9yQsP8AXrfkL7f2TSS55YJqB2C/mhnmjy6
	d2vL4iIGUqJWukz6SFeZD/3eMI7Cdr59fB1wbPcrya0VJFyYn/Z7WwYxQ4aHj3SC
	FLYOEkPchfiPNE8nQRLwuHAW/T7lxcrfvXkwD0HLD6W8jtiZckSdbX+4q/IzAdBf
	mL6KVA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45gbngnk35-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 16:24:34 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8f9450b19so40201406d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 09:24:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742574273; x=1743179073;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ezUvZQcZtwMrgBYlUmzB77M/ia6WCeZ5frQ98fyadU8=;
        b=BpjAG8G5+++lY9423TmbaHAbcGSrvyvkkeEViINVjHZ4P8ZsFUba6QtWZEJOrsOTZH
         XqfHKfcDUhEvpGaDxEoPLnidiAly3NT+k1t+tlka4J+RpbQmbWpwhWAKul6QwMSdOjTj
         W6ETUAb7VLSrRYkaH3as22UwaauZf5I5N5dHfREpDoz29gEqVdCDpfxxOP7Fpp03loqv
         kQvxC9HimuLGnX+1fE3t6GK9vBYmGjXQB4unHI9WzEAu0wUEBgU/z2m9Zw3IW5lEyQdn
         c3FD7MCjPbrhEn5Bnt8U761IXl2Dy3rqe8wrYxEfj6HVOOqzMAWVqXk1VD2xc8kMbmEM
         2gzA==
X-Forwarded-Encrypted: i=1; AJvYcCV4NgayCHlSIhkI3xEMR8CVRjq5zgLbqtD/mCCvh3KjvK3iEcyCd30H3LgjU+ngd7RAqk7TYAOvA1q/avlNWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPrxnKpl/BMutUcPRqb4uE6Uxo4to5wxrGHRSsSQfzXoy08x3p
	bA/0Ph3O08SZkL34GgRfy0tbBUgZJhKotkMzrhNmy1UDuZaakQtq+wpmHVUSti0asRrSmCS031b
	g9vbHoOupIl2XFLgZOuVB4vcxw4lNSP/l4pIQ8VkqYk3ebnKn6033rl85LJRbxCvTukFzrNU=
X-Gm-Gg: ASbGncuTTPKgGVTn57hjuSwTc2FBIFk37n20NYATeoKfk59YC13BYn1HNLMelVVw4ca
	5+EkJqW3jnPktf8qDlUTpbVpwBceeqEyfa6CGhm/f7hroOQLerANNdnQLbj3o9cSqdZhf2mPqvO
	LtnWNMMEnrb54quOSXzZwCtYGXRtZ/MK5Sd6Lmz/KfFb4KO1NSS1AkDShmTvzZU1yI+M+Ox57Rm
	GwDnBxnpW3xqoslIkM9rEpvLLw02eq6KsjPpnc7fbCXOgm4J0yYaKVyXqmnIqKJJUUcFgY4d8rx
	e2UF3ylLGVkzbZ2mCk1Dpiyk5ehO79fo2+M5l3MJSkj6cssmP1Voz4t4Acxd3MOVfQMfKq5RPaW
	7KCzGnju1p/tFWj/VbiiM+pMWT2vKDqhLqi0amM6F+e2hlD/dk/cVacLiHw8fxK3EQQrk
X-Received: by 2002:ad4:5caa:0:b0:6ea:d604:9e4f with SMTP id 6a1803df08f44-6eb34a27d9emr122911846d6.19.1742574273438;
        Fri, 21 Mar 2025 09:24:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFfSGRUC3naAh8M1yxzEOqb0ryoZ43qJS30vtSLWnzr26EwF+jPBOlX+Bn9WciwgRg5g9565g==
X-Received: by 2002:ad4:5caa:0:b0:6ea:d604:9e4f with SMTP id 6a1803df08f44-6eb34a27d9emr122911386d6.19.1742574273001;
        Fri, 21 Mar 2025 09:24:33 -0700 (PDT)
Received: from ?IPV6:2001:14bb:c2:310f:a0b3:1d12:b116:f8e6? (2001-14bb-c2-310f-a0b3-1d12-b116-f8e6.rev.dnainternet.fi. [2001:14bb:c2:310f:a0b3:1d12:b116:f8e6])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647b423sm214685e87.64.2025.03.21.09.24.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Mar 2025 09:24:30 -0700 (PDT)
Message-ID: <8eba44d0-1f4d-44df-a13f-994bd766dd31@oss.qualcomm.com>
Date: Fri, 21 Mar 2025 18:24:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/14] phy: rockchip: samsung-hdptx: Avoid Hz<->hHz
 unit conversion overhead
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc: Algea Cao <algea.cao@rock-chips.com>, Sandor Yu <Sandor.yu@nxp.com>,
        Maxime Ripard <mripard@kernel.org>, kernel@collabora.com,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250318-phy-sam-hdptx-bpc-v6-0-8cb1678e7663@collabora.com>
 <20250318-phy-sam-hdptx-bpc-v6-8-8cb1678e7663@collabora.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250318-phy-sam-hdptx-bpc-v6-8-8cb1678e7663@collabora.com>
X-Proofpoint-GUID: QhIxUb8osWS1LfMUETCgefy91VthOKiX
X-Authority-Analysis: v=2.4 cv=MJ5gmNZl c=1 sm=1 tr=0 ts=67dd92c2 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=QX4gbG5DAAAA:8 a=EUspDBNiAAAA:8 a=_XDy0L4iob18M6GPC-sA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: QhIxUb8osWS1LfMUETCgefy91VthOKiX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 spamscore=0 priorityscore=1501 mlxscore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_092435_448106_D94AB4DC 
X-CRM114-Status: GOOD (  11.43  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 18/03/2025 14:35, Cristian Ciocaltea wrote:
> The ropll_tmds_cfg table used to identify the configuration params for
> the supported rates expects the search key, i.e. bit_rate member of
> struct ropll_config, to be provided in hHz rather than Hz (1 hHz = 100
> Hz).  This requires multiple conversions between these units being
> performed at runtime.
> 
> Improve implementation clarity and efficiency by consistently using the
> Hz unit throughout driver's internal data structures and functions.
> Also rename the rather misleading struct member.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 79 +++++++++++------------
>   1 file changed, 39 insertions(+), 40 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
