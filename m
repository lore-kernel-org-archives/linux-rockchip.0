Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9104EA71B9
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Apr 2026 03:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KcuyGCQfN/iZ4G5DLcy9d4hiLWRwcWlXMzK2T/J2HbI=; b=PosqwoSvih/3ac
	gQEeHDYi89IE9RUnqkOpeFkQYzFaH44Vj+maZjtG+BIedqR/MM3gT7aEoPZ1k4dGn4oLeTNn8JxFw
	zruHAty2DsKaKYzh5dxHnHyoeNW0ue0Y+SOvLpZoREnikAguM/kdHUvizXYCy8amy9yGE8CghLzBj
	6tHu4T6UERkYklqtBwr8nd87jHenCiJFeE8juiLRzLzBub+BtAuROXBhohyja1u5pmxrWcTvNyEgk
	bYrM3AX41ZKC+otXXRLavUZrltAP8T3HPRNDV6UZBE6z0Vxsa5t1BLJf/q8pnzDEMbHDublFnKW3s
	gAFEfyGMtgVQf1+YLgAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEeyD-00000006LtG-12RI;
	Mon, 20 Apr 2026 03:06:45 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEey9-00000006Ls4-3m6F
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Apr 2026 03:06:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63JIrMOR2431668
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Apr 2026 03:06:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=rtl+6BW8W96h2knkFuBlb08o
	nlTQOueBJrF/qpTFCGo=; b=EeAm3O+xDAnsqjBWSwWHXLk5w3dFL5VST11xec3M
	cJUYoLpE/IFBcdaW2/WljOzUUeBxyoKuGjdMM6G8j1dRsN4CFMGXyZvBdwnTr/rE
	7GOwa4sBPnBAmAFG29EyLqaSwdYlzw8WZAaAc5VeW8H6UVf5kvs4Cc81H8JvE0Xv
	oRiUSzF9UPLUhbGVZ52mWGcXfFBY7c6krllIcr5bJr1J+R5Z0W6N2n6RvMeydSN3
	A50LJttDcwowVNGL+wS95T2fADXR0GOyCkaOWhNvGXzFXx+iwI+2XE/56qmLNa3y
	LxivIIS/zArdFaR5TDf/ANpnmhHnSHoBzFhVFsZ+8rR8yg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dm0y63wfd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 20 Apr 2026 03:06:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d5d1c2289so55715911cf.2
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Apr 2026 20:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776654400; x=1777259200; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rtl+6BW8W96h2knkFuBlb08onlTQOueBJrF/qpTFCGo=;
        b=Op1/IQlskcuQeeF5gO3hL0Fr2kwASPqCAetg0gfMk2j1CeCfXz7k0hHoBRudgw0f4Q
         9WxPT0u0RB2kLAyVa55zLKMHQK/GLEVrj5KMqhcFk9l6BGkxjKLvRlqM3s7gTVvJIjU7
         Bw5xsCbEtPwH9q10Zr5z+VfLm+rpXBxPbqikRrJ7eTNe1dtoLWG4DH9nbhGdinlKgel5
         kKgLR6q6bA5L1gEmNG8Ede7XdQP2E0EbOjdsTL/ZbBOn66eWkgFkX/TFwYmZa1Z/Q836
         CVpMgkZQhD3BaTBGfAQLzmLjb/HnLxZQ5vhEmQiIGbGxDBTAk22GBDwvQ106F29pGmOH
         K1Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776654400; x=1777259200;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rtl+6BW8W96h2knkFuBlb08onlTQOueBJrF/qpTFCGo=;
        b=EKN+YrqDe9ogGyeticmN1MtOP4R0H3ezrjrmPI7CEQsrTFBB6MRGBs7KlL4VX4UFhW
         Npww8xPHbb1r9Z8sZKniv1hS/YSnhXpA8oDKqGPxx3EWfIhL8fFg2m0N1+0bos7aK5sb
         aDdy63ZMOeqOxqTocjEloDOz3bBlMdfHjnZVAjFvIGes/wGt9mcHKizVUJU4uCA7YJ3q
         j0k+n0N4PJZLl4r4OuVGvsUYvsT9hvq2AmBVtxk+aQSAeEf+Ae60emxBdhxfBIHcZM13
         E2S80l1Fx9Rknd2lfb6pKEOYLRfIhcGoI+2CnCoUWzzs6B0fgJR/nnuxa3we27PWYaje
         npcA==
X-Forwarded-Encrypted: i=1; AFNElJ8PbdtjvGHp6x6NgAOQsUzWKSUeo3eY+X7AikeKdg9oXEYBSYiR1QXxIQUUJ8nnuvQzABZDFE4gRtYilrTRcw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUtjhczp9W2bK+cGZOBEA6X7rhYL0UaK1YVYIwFNQInqn20M0K
	hggOIsn3v/8bEEeCwYSJq+fyi78GAjXTcTYNj7+6GFhwAgIhxCLjcZ0u1DO28RJdaf4JNL0Pe34
	2VxFFe0PY3BEvADkB3fXgTJQjokwZ7KxkmLM8dhRGV0P9hrMTzHkaiHzFqbheeJxqLK+E753+tt
	k=
X-Gm-Gg: AeBDieuO8FLRQB6+i6YDqJCmJ9qGB/7nWgTUun2Kkg+ocPCvN8POyoZ3AjzpV+H1VUb
	qBjFk93a5I2rWXncFIueIlKDGNqoUB8t6Pjo+6xRahOEWTB8tAFxH1oS67PCS02D0xvczxn5rUP
	qhAI2Yud5YL5X4j0GlvIwLu9XTchRAvHEs3bzZRgt0zMeD28gb+TN7djaDmumYRKusRQdLXcOS8
	mk7NADM5IlaC4rtu4z/mivzfZZMI2ZJP2dx5RIMK9JOXMxnRU8xc3SxGVzWyPhVkwa6GSDYF+4r
	hbCKucTf9sArzTlBIGzjelGICiNUYWDtdJPuok/PU4I1AXf8Z3U8VYklnZjHUrOmHZWZ0tdvVFe
	hO5vDVWsLadqupBGnQTgDop6onwpFyLMLhIxUSBlZxago/pNV9LrmIN7B3R+CSmuqiN7Zxcxts7
	tBYzLylaPmQGrWk2lOPPOg2QjfhF2towJdGVAQPZ56usLVaQ==
X-Received: by 2002:a05:622a:4189:b0:509:35d1:ca37 with SMTP id d75a77b69052e-50e3693d07amr181294501cf.16.1776654400025;
        Sun, 19 Apr 2026 20:06:40 -0700 (PDT)
X-Received: by 2002:a05:622a:4189:b0:509:35d1:ca37 with SMTP id d75a77b69052e-50e3693d07amr181294201cf.16.1776654399547;
        Sun, 19 Apr 2026 20:06:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a4187e1116sm2667146e87.54.2026.04.19.20.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Apr 2026 20:06:38 -0700 (PDT)
Date: Mon, 20 Apr 2026 06:06:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dennis Gilmore <dennis@ausil.us>
Cc: Alexey Charkov <alchark@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        FUKAUMI Naoki <naoki@radxa.com>, Heiko Stuebner <heiko@sntech.de>,
        Hsun Lai <i@chainsx.cn>, Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jimmy Hon <honyuenkwun@gmail.com>, John Clark <inindev@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Michael Opdenacker <michael.opdenacker@rootcommit.com>,
        Michael Riesch <michael.riesch@collabora.com>,
        Mykola Kvach <xakep.amatop@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Robinson <pbrobinson@gmail.com>,
        Quentin Schulz <quentin.schulz@cherry.de>,
        Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>,
        Simona Vetter <simona@ffwll.ch>,
        Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v7 3/6] drm/bridge: simple: Add the Lontium LT8711UXD
 DP-to-HDMI bridge
Message-ID: <ilprfltw6ju2jpo4hrrypscljrlw3xqi7h2mf5sv2k2iy3xeu5@4d76innmpoav>
References: <20260414214104.1363987-1-dennis@ausil.us>
 <20260414214104.1363987-4-dennis@ausil.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260414214104.1363987-4-dennis@ausil.us>
X-Proofpoint-ORIG-GUID: 6VFi2X8cNTmsAVNOZhOuXcT1ghnYjAi6
X-Authority-Analysis: v=2.4 cv=Fpo1OWrq c=1 sm=1 tr=0 ts=69e59840 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=R0GiLmRpmYWNx10LZcEA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 6VFi2X8cNTmsAVNOZhOuXcT1ghnYjAi6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDAyNyBTYWx0ZWRfX2LvKTeQZpCmW
 NiWbYn3S8cRwjUGMerwrkgx90cz6LWDT30RWCpdpuWmT2fXRI3OvnfUn86W74RjF/Ipfp3Pfxt5
 /CoxGOd1j4nZLql3pAqFZqF2vkKhIOrSnmMyjijYsD0OvK1t6sfZ/WYtGOGMgA9AYlIRI7gOK4O
 70O0MA8f94NQDmI2XFTqYMtQMTB/zr2IqmdtpqN5WFPKiI1TZn3JoKvW9uaQ04dVr4hne/TMBFi
 9N4mWG+12IgCHwux3m695A1+fxqLrAizWpRGGPRRCaMW6YXEHctl/tLDaDp4rttmP1vtio1msL2
 Zib+k7qVMF6s4JZ7mhXP+WLHvgOCC3o2pFDLyVKkzf7b0/haNrP5iIKlcUVlmJ+Rb42nMIcD5mo
 ZPblkzpGGSr3wkgKJTRqy6Naq2vdHjh2+95cCoJlsBdu0CKoqt3GlsXCd5wvm3hluRmhchLqxlj
 iQTli6D3KeNJfumLkXQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-19_07,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200027
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260419_200642_047952_6E68474B 
X-CRM114-Status: GOOD (  13.06  )
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

On Tue, Apr 14, 2026 at 04:40:54PM -0500, Dennis Gilmore wrote:
> The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
> to HDMI2.0 converter, designed to connect a USB Type-C source or
> a DP1.4 source to an HDMI2.0 sink.
> 
> Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
