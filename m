Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1798C87FCA
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 12:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Et0rfycxwUxhBO8NWRcG9+ftW7ry/N8r0fMButN3+ys=; b=3zbO+pfYOYBB5V
	zFnTYWs1gn+3At44XGXpVNcLv/N4mzDRYOiIbQjHsaNnZvy2JYrS77Qf46a381mXr95F4Qs70N0cx
	Fq7HqD5/cBVb0ohs5KpoFOMuUWSZzpB60fCJx01AjCxoWUCdpPEejuWdE8saZjgwiMufl23xEGKZS
	YlaCuMJvpUWKhpV3A4FIYzv0nNvpZ9h7YnZk6sGp0yC9VpgwR7hp8ZkDehqY1bFKAxwD+HelFGn+G
	zzKAoVFDN2zZBcAX9zlyHA/gL8tOE/xGtu+52FH1hyLCXaSOKxsDOtwhudobqWa0mt4aup0eLyvmp
	UgFKBcDQbbbzsn/vtZbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufdfP-0000000BQcm-0Jua;
	Sat, 26 Jul 2025 12:06:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufddE-0000000BQOQ-16TL
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Jul 2025 12:04:05 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56QBqHfM010804
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 12:04:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VoyOpXRtg8gribBcwI2od48J
	idopHaqstqRQI8GRAvQ=; b=Uic5+gBJ9Cg+damRxJqNwUobzHWxb0WUFthMrxQ5
	82CAhudDKkbCP1zzrv/qSse5/vBH405bLWg/Zt5Z/h2L7RgyrDAO/2dJi4Upups1
	23cW9WrrbUVAiVKjQOd8HXVmMdEJNZkKlTZGXc1Ze5GqNdNhRFFuIwHUcXJnxB01
	CSDLSBgXOZA2skOgtyuOOgv2F9Pb3wNWpaTcLA6j0dINwirELFTURIs8MVIPmcXB
	LGSuTAzFxblbw9a4VNTarVC32W1p2HUdmCrW7Sg6a9toI4PQZicsjHYyaVa0iuI3
	onYYM6JuMSpfi56WDDAtDVSfogo/7h3X969T26iYpa9aRA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1a8n3u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 12:04:03 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7073a5f61a6so1517016d6.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Jul 2025 05:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753531442; x=1754136242;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VoyOpXRtg8gribBcwI2od48JidopHaqstqRQI8GRAvQ=;
        b=LzJFDiZZuWwo8iXq1ukZuI1H51aE4G0LPyB5xJnz7mWt/fkYLalJk14ZOsecmfnEH9
         XpI1fW6zshio77USUXNRbOUsBSl6zaFHJtfaZ3Y5CV7HzDD1qh5t4ThLoF8Vph5gkrmZ
         kPitv/QzqKj7Nb3YBuIywseCuOwkdQC0ondkXV92YjwxeIfa3rgp3a9OSjXCGN1Ttshn
         TI5UT5+Bk9dJXH7GH9FccDuGAEkzYJhmxUgsve91sgflKsbgMN3BiG+bmfXlv+vBF6NO
         BspMey0fPWdUd73RH6YIh5A3Q053evGnh8n1qv+W2T3L0yg+HYIc6ve7JIj0hpAPl6iQ
         b6zg==
X-Forwarded-Encrypted: i=1; AJvYcCXSIwpeO4BUlIouNF3hGSWA3OW9VaN1tMSaqg7v87kwIZU208bohyb6fkArOVesr/Hm60BaEuhuqcj2UwcoTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZEHQYLnc+Jkd5q3As39fgQepFWg1iJwAR5u8YRAYErxvgntj/
	P7b/oGrz8csK8581n+H9pckNxrttjh/DQQQq2oebNSn+f1+P+X/EjnuyrG6bdNEAqHJ/hNn1B4p
	wKj82wNAj/rGIUenBn0Kayje10I3NjCc5BFolwDU7V0mek82tG1RY1BHKqx3VZVyGSXjEqlvkse
	o=
X-Gm-Gg: ASbGncsnMWTc/ZCC94qHs8dXvJGwlDgzgax9BJft/ARgV8kZRXCGTRTTU3SZ9DXT+L7
	Jy6p4Czj3dcu59KGNVs2StHI4Ufd4d0BC/aYb4On7JBgCF8vYGD3aA6cFCBJ9oXpoEfxMDcRyMe
	z3pUt62B0hfCkGkDyeUOo3e7mCJL0q5DDxfnqBBOVBLOdD5gdFYWn5dQs4aEWxq4XmqXKD1PzxY
	zbZHthNVpUcjAcqjaaXFOSxg/Ri1ZqVN8xNPwGjGbzn7mmvW88XYyuZDdNKhmxtMa8O6UAEQ74/
	tCg3JWuxWobukSFfPr5vxNHul220Drbx/bSc+DLuh7oIjFWs9po1xiZmhQZWOaXPO1ISSIng3TQ
	Kt+K3fScLbft+vWMEO7trMa8YPpH8v/uYggS62wOk2Hh6EnLfvLQb
X-Received: by 2002:a05:6214:21e9:b0:707:2c79:e7d4 with SMTP id 6a1803df08f44-7072c79f177mr39705126d6.7.1753531442331;
        Sat, 26 Jul 2025 05:04:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE58ci26k7CLxO9KIg2k91tBSPq0VEHMytUV57ob5dO9j8+ZCHVsrHrzcPy3gVkj6+ng5cHLw==
X-Received: by 2002:a05:6214:21e9:b0:707:2c79:e7d4 with SMTP id 6a1803df08f44-7072c79f177mr39704146d6.7.1753531441626;
        Sat, 26 Jul 2025 05:04:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b6316d924sm413275e87.43.2025.07.26.05.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 05:03:59 -0700 (PDT)
Date: Sat, 26 Jul 2025 15:03:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Damon Ding <damon.ding@rock-chips.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, jingoohan1@gmail.com, inki.dae@samsung.com,
        sw0312.kim@samsung.com, kyungmin.park@samsung.com, krzk@kernel.org,
        alim.akhtar@samsung.com, hjc@rock-chips.com, heiko@sntech.de,
        andy.yan@rock-chips.com, l.stach@pengutronix.de, dianders@chromium.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 10/14] drm/rockchip: analogix_dp: Apply
 analogix_dp_find_panel_or_bridge()
Message-ID: <c3a7fptnm7vxpcz3ouzyov2woi4btknb2so7np6z4iq4anyodp@ajgkwlc4khga>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-11-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250724080304.3572457-11-damon.ding@rock-chips.com>
X-Proofpoint-ORIG-GUID: kj9ElvzXNEszX17RVHiDjcbEOFixv68u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDEwNCBTYWx0ZWRfX+XEiig/v7i3D
 H8iYxs6W3F2HU9hfeC9UbfOxxLoo4dB9ug57gX7tRu0g+ZWPWYzKqH6IuwGagM9bAPWGiqD9uPp
 Wqjm+5VYYa+mA5t4DweYmFc0u9NiRIopI2OVD6Ln+iEBvdttFPoLq0x+Hzld6yRDTxARoIC1UU6
 FYcdjFU6Xqy84BR4TIT7BFIVMyu/nhUTg8SpL0cu0gjd+8xSe8D+YSy9bFuiguv0ZxUMaIZRnmZ
 MM4if8zxrowuoOKN7lAHXGaIdeLjrqVwgx2qSQ1jdZcERNEVj+Hkk22ra9DwjcHGs6UwAi8XTYI
 QO+jOLM4U2T7oo2Ybze2w+somopN67vJe0AHr1JJpuMX4HseqqmZpbLnLQPYJb3XXZudEjBRYmt
 cqwrGNT1eF+4kxkJA31W5iCtB66BZBcI+rDL2TEKl5R8G199AQJDz5CpJpsiYZbBcgxmSlkJ
X-Proofpoint-GUID: kj9ElvzXNEszX17RVHiDjcbEOFixv68u
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=6884c433 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=23ZsHGXRUfRepE-eGp0A:9
 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=761 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507260104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250726_050404_419369_D9CEA6C3 
X-CRM114-Status: GOOD (  12.51  )
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

On Thu, Jul 24, 2025 at 04:03:00PM +0800, Damon Ding wrote:
> Apply analogix_dp_find_panel_or_bridge() in order to move the
> panel/bridge parsing from Rockchip side to the Analogix side.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 38 +------------------
>  1 file changed, 2 insertions(+), 36 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
