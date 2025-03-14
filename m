Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85362C28B30
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 05:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsnBV+BucbWXfzys+Zg5O7+3vrWIE7tQVV0wYV1JEf0=; b=z+Do9eMPYMTa3p
	yVk8ZUH5+jReP2Um7+CiwDBOQLiGjheRZM0vK+amMTuCXao5YRZjOoK8TfNxjf9yTtIx7t2JbIQnO
	tZdhf0SGIV+abVWzw/iAUS0Q7tbjm/xifgyhxI0H8hKmUZI+ai9jsQkLVaSB+TtKIttXbstt836Iz
	/pxtqVwJdPQl0n1eXjpMaUo9AG/cAHSU9REz3GtGP+VBiyryqFj9Xx5S09TzUMK5GyZ55bZmbEWL8
	bDdOXN1iIYlaIDxX7R+GCUEl3YXVBQNv1x7/oeYgHiR2XOJa+qGQVWNjFJRm6SMC8AtwX7PdnRWY0
	AYZR1/kUaXIB8KGAxvHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxwe-0000000D8Kx-1and;
	Fri, 14 Mar 2025 05:50:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsxwb-0000000D8KD-2IoK
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 05:50:54 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DLJLKk018375
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:50:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OzkavVZsstBwDQHn8F4CFckg
	sxXPOJSOGMUrxeWpvZo=; b=o6DpXujvXX6DCL7ULw95qPF98u+bxG5/1nBkGzR0
	uH5dmB3Be7QrR8GibF524afbJf76TNPEExcFO8Vig+qEEXLHzC+s5cHwM3wB+q3X
	DXBlo6msggxN58907+IoXTjUK4OyCAW66LT3gBDQw/Qt9Q83ov4B+Aet9d3smYFf
	K09EcqwJciQ9YMPbJBbblkOYdLZgdFL7mNM7/yADftD5ObiwQeNKCrFTzKJ93aSm
	oEDBMfwjnnkPVnPltVG4Frqq/ATZzMCdMYQa3kbHUy/iHQJAl/PsrmRd1Wk2itaG
	swyQspbag4LSzoNWP/HUBGxcrb3ewkySeVLl+h9blWAVAg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2p07uq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 14 Mar 2025 05:50:52 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8ff626b73so36349226d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 22:50:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741931452; x=1742536252;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OzkavVZsstBwDQHn8F4CFckgsxXPOJSOGMUrxeWpvZo=;
        b=J/pnGNJC88RvqYtJFNbUC0vsPF1nw6ropsOgMJ3nGaAykLtLmdbHNQI+iGUhtZ6wmV
         F9UKUxJvaMKl1VB/8ECJCdWuHJDnbmFm5dgEqkPB7uTHQ3tfsQj9taXrJfC+0Yauk/sx
         TRLycLI3jfpxRaMMyey6Urvkgl5xR43GgTF780t1OU6K9cA0BhaPRfzar+dTul9fU2z3
         c57t1bz1vXf9wrMhWsK1jzSqQZhKqmmCOaIvgFbrPKjBeXEKxDv7HOkTEeTug9BwhHMz
         r0ouGQLgjCYhqfJeBeIt4lkkluGW9PvZNanFBoxufDN3ygDnl2/zp83SSPO3ASXGuhCJ
         fdhw==
X-Forwarded-Encrypted: i=1; AJvYcCWTThkU9vCE8eRg+aTqj95yfBYxHnT76h+tkSjQxWcou1wAKRUd98JhLiURaQ1lRMhm8mUlZm/VcA66/BP+Aw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ9szFkHLcpNrL3ikYaJXNffHSC2CuEXuNYtkNqVOPUHaIGJUw
	QFb8lmsCYZFLUtnzzwzLSc3NRSSd+CrEBKsGL2hbB3Lf0lfXuQ6Vl9nKR9Xv6hGUUiLIgjymi8A
	KjJdhzI1ou+Xdr6Pxm+1MJ2kOL712WNzJmuaHoZsOmCjQwJk8Hvw6EzDzoFLj/NL3Nr6tNOo=
X-Gm-Gg: ASbGncsWPez4ne0ez1Cl8JnQkjPK9vZidf71Dcc1RjO5jcW3ewsJ8w9IniAg41PXPBK
	E/KScRaRscukkWgQnoJfilevX7sDfRc5BtM5i5F5koqd91WoIofkmPCiNhrQUc/3b4pjJHERZ+d
	d5TIj1rNTyHuNXdJTeppwiwk9o34gxEdjx7GRW0ujm9vsy6P8mX+7CSaExy3ppnY9X0HXFa3j/E
	GAnNH64idokNa35myLu/r7Dbl3qwD8AbApCAnMg1VwLHNL0R9Y5kMfIeFGHINrdVrMx6a4rqVs2
	qBSL0mfVo2APqaF+vzHN3VMJx77LlMsAH/FH14At4f9F4/jCr6wXaumK0DlSPDOCjh4zToIHYr3
	0cNs=
X-Received: by 2002:ad4:5aae:0:b0:6ea:d69c:a22e with SMTP id 6a1803df08f44-6eaeaae36f5mr14293406d6.30.1741931451826;
        Thu, 13 Mar 2025 22:50:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfFi+RIJi85UCumWdBfV3/KZOuBVYrqq0wIh32Nic+7e+RF3GDbnXddiHGTfQszo36Y4MhZQ==
X-Received: by 2002:ad4:5aae:0:b0:6ea:d69c:a22e with SMTP id 6a1803df08f44-6eaeaae36f5mr14293216d6.30.1741931451521;
        Thu, 13 Mar 2025 22:50:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1dbf8esm4532231fa.102.2025.03.13.22.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 22:50:49 -0700 (PDT)
Date: Fri, 14 Mar 2025 07:50:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: lumag@kernel.org, mripard@kernel.org, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, dianders@chromium.org,
        jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
        thierry.reding@gmail.com, victor.liu@nxp.com, rfoss@kernel.org,
        linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 4/5] drm/bridge: anx78xx: Switch to common helpers to
 power up/down dp link
Message-ID: <7izwo6p2pyxmbwj3mqkccw6qgczqkfco5a7ldxtyvn26w7gw5v@okuvpnctiagu>
References: <20250314033856.538352-1-andyshrk@163.com>
 <20250314033856.538352-4-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250314033856.538352-4-andyshrk@163.com>
X-Proofpoint-GUID: LIP66UpwRaGVKz808YNGpD1TROK3jAxr
X-Authority-Analysis: v=2.4 cv=Q4XS452a c=1 sm=1 tr=0 ts=67d3c3bc cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=GH56pXrWIHJkkU-sqzUA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: LIP66UpwRaGVKz808YNGpD1TROK3jAxr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=854 adultscore=0
 lowpriorityscore=0 mlxscore=0 clxscore=1015 phishscore=0 malwarescore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_225053_702675_45350ABE 
X-CRM114-Status: GOOD (  12.57  )
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

On Fri, Mar 14, 2025 at 11:38:43AM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Use the common dp link power up/down helpers to avoid duplicating code.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../drm/bridge/analogix/analogix-anx78xx.c    | 30 +------------------
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
