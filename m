Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98DC9CC6B2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 23:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFViuHwIdlfux5uiqfuS/vzeqN4ruOdHHhWGdHC5zYk=; b=4vtWgZ2lIFtrQ8
	uG4IC+ijiICloGnZ/znTCYj9MhJckAJqqI+N3iTrkTHUvbsjtSuaE+A0V5iga0yhxIzS1JOTsE5ca
	O+AonC9t8ogxov3VhlcuEiSwGYN3/OSKtdjhYNypBL8crQMDeQ1QbAq8/2Z+oTM5BjrekovrvskRa
	mLD/jMhBl0BkLoSsr/XC5XEamERuyfVeXCWJKiyEKQQP3AYShG1lPvmq2+qz0EII2X0Y9Hac3Kiap
	h6IctocacHqWfoubfVXf9DQPX6i3O4h+TMimzDZ58I6nqRSY9CE5XjaNswX8sBOv7btzeypY5q+fW
	CRxBU9Xu3/7xqc4RKb7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH8g1-0000000GSmF-07gg;
	Wed, 14 Oct 2026 23:46:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH8fx-0000000GSl4-2Q4M
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 23:46:26 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69EMFWmv905402
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 23:46:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ReKVbNx+D5AMrmxj0HiDzNjM
	MNMqfQtzg8j7u13LE9k=; b=O46HmpVJH9qI9Cc9w+33CO6yrWJ1EBw2T2z9pILQ
	Vh4AvXalBt4x0JsyiRg1RtPbCzoKDNZm+GzJRjwbIDX+gf2xYpNGMB+1mHxtzPk0
	P7/80k4m4HKkXINqmyQPdWn0BKSxPZUlVdjJpn8aChpLv5AFvvqlOV8PAop83o0y
	i46jyUhlJ/zq4LGG+MHe60GCNAclB56uAJUrgf6LRmaqJSJDYCsCrp2jqWto/hrP
	JO3HL0jp9VAEUNU+pQYgZdxCeExA36f6FabsbimVXTdpKslfgCJarrrr/8qXhwFJ
	vMTIP4UXyomjpEp7IAiuPUkjHOFKT74/8muEUeqSw6kidw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ha42p40ft-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 23:46:23 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-939c30aa9a0so107260185a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 16:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792021583; x=1792626383; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ReKVbNx+D5AMrmxj0HiDzNjMMNMqfQtzg8j7u13LE9k=;
        b=bkVtlfBtCQDjoyssGrNIcRnwWFZ/SvA4Sj1fTMtjjuOd4PWyApCG6nN0i2paTUyUhQ
         BTAwYmEdxTOREp9pMZ8h4hJrLDd5zyFlA+eSnJXgynx6n4RO3sEgb6HeejwVjLQm5GYT
         EpFlGVKQUSR5mK3HD5qoe5QVJnQLESM0IELHimdoz9zlRw+iLEgXQb2mjzXZr4ZHMaIq
         pXuO+kfSY6s/GSdX5HPVKFGpWxP8vO9s42gWbR0fhaVGBW+L2zyHKfb9QhDKqxL/G3OB
         9ewWoC1x1PN+EdZHvE0HxfgwP1uHIQgBc/L+wb6FcnWHAXS3f00raCM4ut0ucIe0KXT4
         ToUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792021583; x=1792626383;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ReKVbNx+D5AMrmxj0HiDzNjMMNMqfQtzg8j7u13LE9k=;
        b=rkOqM8V74xcDvIxFObCigm4gzsr8yin3xZBPCnroUv0Z/p+kzxEsfOS7XSfxKpAYOW
         Du+fwI5EuADJG1MdEovGHBAOSHyAgBa5jIH93A6QY229wY7IjAi2Fk9u4dodglzGP4/G
         gIiX4MRcaMEP3YhaKNrWTcFbPZhKkqS1pMq3ysbv2idQ3lgaDoGRveBjsLB9ZLPT10l7
         47rJWgsyz27mqX4Wfol5OvgymyJGU1fo2k5HxhAxz89YUPLhjvj0rUx/qx7cQHS5+hGx
         LfQKGcMxV4ToRlb+R9tzAT5lgTgWV0od4e6SdEPCM1/JXk3AhjAt5HcooMV9BLiTYRxF
         wcPQ==
X-Forwarded-Encrypted: i=1; AKwUvBx72AlYhfwtUcOiqlNeS15MHcqb0T2XDuuiw89wwJIXhiWIRhFR0lfFmBJwJYS1+uc/Vs0LlHhPyckS2Sw/Pw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLfLHcvMhTxnCp0GbqyigCFkAVzPYTzUzL/wB7sQiehFdKPiAjb
	qQhvAffaDiocvGXXZs7Q8KS774C9SyOkHc/Z1LTpq7QyUarhUj5WjNbYbcu5hNjqC67k5W7hXu0
	wMbCeVFxcUCAliyhxcW3nju9NpX9WcX6ZSkPEPirLEHlqcD6CsqYCgJZA1AiHxH3ZOay0JdfPj2
	A=
X-Gm-Gg: AYBFou1cTnSPdJjGypNE2RHj5l3povHgrS5vqwrdhckmG7KFCIp9P4gqfT8+LGApKnz
	8guUN3SXYaJbs3qWcQ/mZ7n4e7Z4t2igi3Ndg4amt2JIDIyMQwH55JrrvBLK+HXyi/qt+gumQJU
	rHztXEXyGiQGIJAyMAZcT6ElqXQgTN0NhP4flv+SBHPdGVj+PRVsgw8+ee5iQOpEzGCFm8pURJE
	Gc7GWxaVumnyzx/o04ViMBetMVyp0k3g2NxH32F5R8H2C0n6NRWVRzDu1DJJ+cxB4YQXoENZhvK
	NVfL11JAKBqCV08CqxasFs0iICg5gm0SAJSZcvT5h2mfyGQwLG7EU6gW2Jw02pw6VX3YBvPQLwu
	HAakSBdAnDIlcxI30xWZKR0qGtZAEc8/IkiAc7vR8g1Z5hsE3GWL874zreD2+u6wT7TBjKNevT/
	Awz3Iq8FYn0fxw
X-Received: by 2002:a05:620a:4693:b0:93a:9ef5:d370 with SMTP id af79cd13be357-93ebd0be3d8mr2916449185a.1.1792021582969;
        Wed, 14 Oct 2026 16:46:22 -0700 (PDT)
X-Received: by 2002:a05:620a:4693:b0:93a:9ef5:d370 with SMTP id af79cd13be357-93ebd0be3d8mr2916446585a.1.1792021582503;
        Wed, 14 Oct 2026 16:46:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5be33d90ce5sm957598e87.59.2026.10.14.16.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 16:46:20 -0700 (PDT)
Date: Thu, 15 Oct 2026 02:46:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sebastian Reichel <sre@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, kernel@collabora.com,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: connector: Add DP AltMode VDO
 definitions
Message-ID: <otk44i4caul5k5dhqsprgmv4hr4jrvtpq2nhcyhgc7ngul5iyl@jmz2ebrwhcgc>
References: <20261014-dp-altmode-dt-defines-v1-0-b657c9b6e4c3@collabora.com>
 <20261014-dp-altmode-dt-defines-v1-1-b657c9b6e4c3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014-dp-altmode-dt-defines-v1-1-b657c9b6e4c3@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA5NCBTYWx0ZWRfX8t35/o17SW2f
 /35MxmUnVzV/FoIbcxVgtgI4HyxMuq1i/FYqd0Ls54rvUYdPM+fF0bKXYoQKStbI/gq0HfOn9X3
 FfQyy+2Hmx1gp8YzhOsLeaovYp3yGk0=
X-Proofpoint-ORIG-GUID: xdKTgjCfzhqc1TFTMeKdvP_LpaP87gON
X-Authority-Analysis: v=2.4 cv=aeb0Dhot c=1 sm=1 tr=0 ts=6ad0144f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=YnuTlg8LRq0IA_Y-aJEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA5NCBTYWx0ZWRfX+pB4AgHtcnRs
 UeZ/bF1wSflDWxdO+cl2iijKoU3CMfDmUmsd63uCU58wgUMrco27T6/cDNAAH0MQ6H5CtbX9c7M
 7OFX0l9TSIPi5lc1lAZ4SixC9vUMiRttDqu9bX34T0HROzYT2T8ojXnjAsjjqSZ5fWcuNCjSh+P
 SsYaDX8gGEB0GiNoS1SUk+SzsTqxqiX7S03r/aD+Wi6tWaLs3EsF1rnpefwju/lTYjBQuwatU7K
 2zzJGOPctjGlk1RBOHOdfQFTOl596Az1Tp7jFba5UvVKVV/mZu3EOO695qjLLZ3TK7aaNj8D+eR
 MWJ6QExnN+gJFpK6HC5/eLwHm/kYuMzipNmgFqLiN697hwWmGNUzMaSTEDmU6nznwDKdGLcw33W
 MQLRdt4k3WF8BJSnxwWHqOF3Oirtmc0bl26EHxCT1c+RzGqMm5SVlUsUl1K2DpXZKEruRUw8Yt/
 ZdvNxRSeIS5DcrtomVA==
X-Proofpoint-GUID: xdKTgjCfzhqc1TFTMeKdvP_LpaP87gON
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 impostorscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610140094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_164625_731058_39C64903 
X-CRM114-Status: GOOD (  16.27  )
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

On Wed, Oct 14, 2026 at 11:31:49PM +0200, Sebastian Reichel wrote:
> From: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> The typical USB-C DisplayPort AltMode capabilities for a down facing
> port (i.e. sending out video data) looks like this:
> 
> altmodes {
> 	displayport {
> 		svid = /bits/ 16 <0xff01>;
> 		vdo = <0x00001c46>;
> 	};
> };
> 
> Improve the readability by adding defines for the numbers, so that
> the above instead looks like this:
> 
> altmodes {
> 	displayport {
> 		svid = /bits/ 16 <USB_SVID_DP_ALTMODE>;
> 		vdo = <VDO_DP(DP_CAP_DPAM_V2_0, DP_CAP_CABLE_TYPE_PASSIVE,
> 			      DP_CAP_UHBR_13_5_UNSUPPORTED,
> 			      DP_PIN_UFP_NONE, DP_PIN_DFP_C_D_E,
> 			      DP_CAP_USB2_USED, DP_CAP_RECEPTACLE,
> 			      DP_CAP_SIGNALLING_HBR3, DP_CAP_DFP_D)>;
> 	};
> };
> 
> The generated DT binary will stay unchanged.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  include/dt-bindings/usb/pd.h | 58 ++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
