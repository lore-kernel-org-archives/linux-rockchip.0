Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C13D5EFCE4D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 23:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnGPM1WBD8nGVglcckCebVeenpjO/HmyLx0Ls8Z/0eQ=; b=ec8dCkiuK/r9IM
	5/VWAC8PuRR/rGO1FQotPMc6obJdr/1CJev2cF4EsFBzqbEfjfEcU3c242N3xdrZiKUrnoHDYU73u
	Cy+yNeGd1oP0+rJB1uFJZbmfg6Wstr7v0COJ9LZ10oNOnOZPLbJhSK3BgQkNOsk7cwlEw0bRdJQwZ
	8TKDH+x5qd27jwKCSTmi5TmkQS3qCKS81KIqHdHJ1xKbkcQqVwIV05lytB8c5OqFak3iC92ORylw5
	PNDD/KWYU4/KbdRdI13FxY5XPDzcNkHAKrhVLTNxYWF1qpY0E9+kON297Z16geeLpIN9op2az731R
	GtKqcfhjFHK/g71eJ6/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw3C-00000000ekp-1mTG;
	Wed, 04 Mar 2026 23:54:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxw38-00000000eiN-1DVS
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 23:54:44 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624HHqd32495028
	for <linux-rockchip@lists.infradead.org>; Wed, 4 Mar 2026 23:54:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=D9sak1pWhxVBrwdJ2BGlDRM1
	u4FQCLLwnOBWXp3tU8M=; b=YDzVpAV36G9FJiGclgosp/BCt62vM9M9b056E3f0
	U+5xxlejiEUamIMH96BixcO5AaY77ZWBlSAKvu5XqmjeqoAku40urrsPuKmmnS9v
	3OkMLayFRlSKj3dBR7WZsu0j9iU2lRzpg2d7kLVS9w5ZRVAO2FJ6BsTzjCt69c98
	JFzB7UN71X/+3QF9qLWJGMzkqHwQXXEY1ttgq+wcei0KjxR3Fsb0D++XmNf1CbY5
	5aKHM5x6QqkmdYtjls//+oqXfFNFmC5IchUi4ZbV2wIf7afsnXeYSOnIz5G6c9dJ
	RXin04p5y380S3mSuZNgncUGt9sD1j/T6Lf+R7oqd/C+mg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wh1gf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:54:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70fadd9a3so360115385a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 15:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772668480; x=1773273280; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D9sak1pWhxVBrwdJ2BGlDRM1u4FQCLLwnOBWXp3tU8M=;
        b=RrnrL5IPAi7UNk8KJJ1ZF04ic178Rpjw93ebWO3/vEs/ZO9h/2vUQz9BE2wuoT8vfy
         rmNz+gmqRqR8ga9OrXyf2CX30Y/VVhSTMGoM80MEQEGFUQfubeco06SNDmCbkPmHhMsd
         4qyQtTUJgI78Mlrzwt3fnwFHcynhczoFJKrIGJVcPqT/1ZqsPuvPhPwMwVI6jcvXv15g
         MDibkBrqV2MlQqGWuDSf6E5Z0vywYp5lR2jRmHgb+odVhSnlWl9/xMgL/kK0ztqmVrTH
         GiWAisc/+pmg416JRB8IAp9T79nONly9tg52nKmk4GScF9EWqKVyg0NNsXjKfS3SzFTy
         vv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772668480; x=1773273280;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D9sak1pWhxVBrwdJ2BGlDRM1u4FQCLLwnOBWXp3tU8M=;
        b=Vk5zKylUiDRmdbUYVVA52qmJNp0MvjUabXX7fj8h3iXu20fTsOtSIxQI/ICYLQQjCR
         mTFpGy9tWdNtnHf7NotZGocB93ZeyM+Brp4ZD/xp/Z2DcHyZI8feUnUQmybFKCIvgptX
         gmTlES75eLetBf0r5EeXZdlkgcDByMxAgwU5ovJTg4rvRL4wbQVQrQTwL6qZxuVa6ocL
         nAZ4gDpDrAZoDrbonfMHIqZKvnBPwoNH9agci4SiYYRxvqcPgxgvZKmfQZ42LbrVXp/q
         mUJIiQ3N8o5ZbG0Cq9jBRrpaMYz162nT+UZqz5ukiB9vpT17prL4LidDeP7cmviKAy2a
         J4aA==
X-Forwarded-Encrypted: i=1; AJvYcCUPp/32e7q5OPh+5PxEaPB029zWqHRjIxTDs+ndl1Xtk1PitPouSKs8CA1C+e4imrlQ5W4pyMy0AgTKIc2RTQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzok5ofeQ+HSXNUPEV1RYxBiXQS2OZ4qOHk97Am44MofLWX0fO5
	ovU48sfdVUtT3GkeJlSLj7b+NeGAABqWulF7z/iBFjqUVjexQM2yaomVI8lt/ZkPN83RSyzT7Jd
	CkORapClxADXK/qNwcDJ+eG57Q+hlfTMdYZv0wcYJQficJC5tQLWlwAwgSpTNm/qtIq4uUfgGmw
	c=
X-Gm-Gg: ATEYQzw75QlQYcVw85iSZYjwQ1feLliedt7cKEv37iGJJkdGMtmo5feGkjSgCwmhEGi
	J6mho0wFYQEiTJ/KHD4ENX1OVhEVBb/VvodndeACbjmZMoDNEeV4Wq/F7S57fDxCaReCczSgV7+
	oI3QiPRaAZnthU7uDYKFS7C9e3L8uBaf3fds5/tuhf4Ikj5naoRTM3AgmBhJQvDfyTctVgy8/u4
	YdfVdL4RAscpGc7O2aZLjmiO35cSgVxPiOuBvN5tEFOSHAl3+xzwBOxd84sF/jHWHlRRsPh5Am0
	84HyfxYzNFNC7adQ1bLV1oRmfQQub2DBSI2I17Xg8ZK1jyMMCiVXolrgJcnUnukYFkKrq3S4k7I
	8QS2VN7dpY6v1DLYHHfRNc2NsgaiTs8F4DfTz1bBG0cJzUMMwq1XPRq8I96lU59rod83lgkckfy
	8dSddYbKy/Km9CIN3E/SMjglNw8Z1J95U3JuE=
X-Received: by 2002:a05:620a:2986:b0:8cb:5442:d537 with SMTP id af79cd13be357-8cd5aed61e0mr519314585a.12.1772668480062;
        Wed, 04 Mar 2026 15:54:40 -0800 (PST)
X-Received: by 2002:a05:620a:2986:b0:8cb:5442:d537 with SMTP id af79cd13be357-8cd5aed61e0mr519310585a.12.1772668479418;
        Wed, 04 Mar 2026 15:54:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123573c42sm1615588e87.72.2026.03.04.15.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 15:54:38 -0800 (PST)
Date: Thu, 5 Mar 2026 01:54:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 12/22] phy: move provider API out of public
 <linux/phy/phy.h>
Message-ID: <cleew6tvum3jnflztfcqfwtafu4hjizjvebzr7qrsbnnp7vvrx@fjqhyh57o5hw>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-13-vladimir.oltean@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304175735.2660419-13-vladimir.oltean@nxp.com>
X-Proofpoint-GUID: 4QZDovdGMDH1iEDzQAqFTLKHfn9ztlBF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5OCBTYWx0ZWRfX6JgothZ0GaqP
 GYur3TocFc8QW8ku+KFaIKk+cwrt3jof+GZjpNdRDMIYDovLGJS1g9G3XInGeXDTO9TmOYrAOIm
 AhEG2Z63l0lagYH7dpvf6xBOJiljV3nC+0wwMquunARKBcJPyOiBJHe3T9RZ5Wa2RhqBMP3o4/U
 L5refaCwR1IwEv+vwfYCKjH8bbBh0JiSqwNxRE/4cC4VfGcJAYJdKfNL4vZyZ4QCU4d3BOap4nv
 8ou2FPRrt8CUOaAX75tAR1y2AWx3S88S8/2WK7W7tzkC0v5K1hVRobAZbOpLSywynD/2elMwz1y
 ewoj6ZGVeV8YdoR1DOIdD7ATBIXAyDQElJggdPCrWBlCZe1mEHvuihooCxD0YFf8x3jrNFq+SKw
 ExJVF4TzJs1fUK6GUr7kAB1lmZz0r+ZM5tIYctXNndb1PDnHNj7+fUsDocd1dSOEvvMTwWvYQmY
 alqWxS77/J3SER+DpnA==
X-Authority-Analysis: v=2.4 cv=OYWVzxTY c=1 sm=1 tr=0 ts=69a8c640 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=8AirrxEcAAAA:8
 a=EUspDBNiAAAA:8 a=lO4ColjPjyWKUZOT0LYA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-ORIG-GUID: 4QZDovdGMDH1iEDzQAqFTLKHfn9ztlBF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_09,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_155442_456284_D9AEA405 
X-CRM114-Status: GOOD (  23.28  )
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

On Wed, Mar 04, 2026 at 07:57:25PM +0200, Vladimir Oltean wrote:
> The major goal is to hide the contents of struct phy from consumer
> drivers.
> 
> The idea with "phy-props.h" is that both consumers and providers make
> use of some data types. So both headers include "phy-props.h".
> 
> Two slight points of contention.
> 
> 1. phy_set_bus_width(): Vinod explains that despite the current caller
>    situation (9 providers, 1 consumer), it is a consumer API function.
> 
>    The use case is that the controller (for example UFS) may have
>    limitations and should set the expected lanes to be used and width on
>    those lanes. A number of Generic PHYs can support multiple lanes and
>    multiple width so this is way for controller telling I am using this
>    configuration.
> 
> 2. phy-provider.h should go to include/linux/phy/ or to drivers/phy/?
>    We do have 3 PHY providers outside of drivers/phy/:
> 
>    drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c
>    drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
>    drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
> 
>    but the practice is not encouraged, and with time, these should be
>    moved to the subsystem. This is not something that I can do now.
> 
> For temporary compatibility, keep including the provider header. This
> will be removed when abuses are all gotten rid of.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  drivers/phy/phy-core.c        |  34 +++
>  drivers/phy/phy-provider.h    | 256 +++++++++++++++++
>  include/linux/phy/phy-props.h |  75 +++++
>  include/linux/phy/phy.h       | 499 +++++++---------------------------
>  4 files changed, 458 insertions(+), 406 deletions(-)
>  create mode 100644 drivers/phy/phy-provider.h
>  create mode 100644 include/linux/phy/phy-props.h
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
