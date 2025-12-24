Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22A2BE7849C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 22:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5EVPvcGEA6dIvxG8d8al8s9CXMW9oHzjLWQW3NQ3/k=; b=lmuIRpYIVZnq8X
	OSiKyOOaKtxt1aR2S345KNPnD+58eHgdGUVgzYuD0oGlZLVznotkMgpr6ggmFA6Qx6fuGKQ5bjqj5
	NpO6aAMkOOGFRZwrSVsT9Bcdc/K1j2IzlJcBO4/az65oqTuEcgqgvuQ+DMdby+iQ/U53u7KvHRMSc
	oSofdQzIoYHdohaCOz6RCCc/Xq0LpHWLAB/I1ptuQVi85I1Rzjn2Dn4lLTmTB9ItFZ0H+0E0aOydH
	TST9mCt7eXpe61/f0Gn5mmKPbf9dfblEMAKxOtNyDKJ8SvgudRc81t+3QZq8dwq0K8TLVQ2OU9q9Q
	8rxG7viv+CR5D4LCjPxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYXM2-0000000HSAf-0OMx;
	Wed, 24 Dec 2025 22:29:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYXLz-0000000HS8d-04VB
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 22:29:12 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOLD2SA4048381
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 22:29:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wvQVq6F9bvfy0ys8kp6NNiH3
	ITMTAjtxgfbrAUNz8cc=; b=aTbnioAZLkQRINCOhi4sq4N3TVWLG+eFdLcEDJW7
	6rOOQ0y/YFPW2n7mQrxHNvy6Vc6OXHt8cvfEn0Nxs1tkrHi+aqHCqbGq7qVT7TkL
	K4KdqH0+HxwO3MRI2oMDnXx9aeb4Go3JODpsWwe71RZNwbFXNc6rg5AqDKsJD2JJ
	TtJGeBtiAd+upAwtHaUvIY7jF8OlEV4cGJpfmpBgLM9CzKsmrUSxMO2p+fbkCYpK
	7znEvaMapoNNUT5ZeWNaVDdfNS+XKoj5qsvk3HPiOPe5E55cEqjhkJFCfvkZ3hnJ
	yI7T+ZQNsKs/jattVxcCLPcVIhXq/voS+uRzrG7ZJJqXVw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq3n5u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 22:29:10 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8888a6cb328so159029006d6.0
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 14:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766615348; x=1767220148; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wvQVq6F9bvfy0ys8kp6NNiH3ITMTAjtxgfbrAUNz8cc=;
        b=iljxHkqFNN2Ck/UoMhyRB7EgqkOstUWwsiHYIOc/ZFu0zFeEifcwqjKjfz7qQeLEaI
         2fGgl84WxWn1swv7ITsJ3f0oAA98Pd0xskp8O44NhaV7LudMNvT8U2J+SB7RUV96M/mj
         UeLKNns4Ws6XkGp/Gs9G7dLCBAcrpgcam6wOu0/vtlNFEJ4UDU3seswnzDhfoK7aIsd+
         gP4eLRMiHc0mLlvVrGvNSHnXSO/rBGxF4RXnwy2jtEo5pv4fdEV6z/xXf8DOCP3lobjQ
         AQBE/dGtg90fUUm24hFQ1eYtMyF1yoj3NGqKudnMSDncU61p7U89ip3Tuc/Mpsgiu0fk
         vgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766615348; x=1767220148;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wvQVq6F9bvfy0ys8kp6NNiH3ITMTAjtxgfbrAUNz8cc=;
        b=JPS2LT0dEVHWLIZs4OsYnMCjtX48njRNj3363gDARSazWa9WI7vV9F/PFT7/+IGL3E
         LGwRXWWv/qq8DD0isiK/0IWfmlTJyRCVj1xKNQYMIEG8jKtNLFASE+4G0Ql1xrUDCLX3
         hgnkA+KstZ0LaUaAPABVATEvx/n8aQdudBafgkRltr/8j6ItSyRc4a+fTLE17FMVBmGl
         oWAyy8J6BHnkrcedKXTTHr5jH1EoBMHjYNlghiLLwIA/C3+D+xyObtWQGp0aFK7+nyeD
         UoOG1OY5ovJQx1TH0KGJQXjat+3T+3Dkt+2MivvwGvl4kkzI9oKXMd1pIoIr0kUDXex8
         /B7g==
X-Forwarded-Encrypted: i=1; AJvYcCUWpztMEZqrjFD3FLT5/KezPwT2tkwd9HmkP8gyWtlQs8gjdrd1l3K/RFDaMvqdu/RKQC8IEVNOzx2blIwjdg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtuWEKAWD7L+BZsE0/9ND6cgIFdVFBHNXD+ymkbCtyqRnzrb5B
	TlvimVjyG0IGeHlDvjeHyXGupv1HSp6negvtrfNSW7a5v4yPzxi7TUpqQQmMS21H0fqj8jGSUyW
	QpvK/gWJKAu1tIUaSCeMLLK1Svu6c3xLAVhQtvjmIA7BSkLkBFly/keyHzqxn5FhXNwWsNTmXsG
	3+rKPkPMg=
X-Gm-Gg: AY/fxX5JJjOOoi4tjSMLMuMPHSOOWHCz3sOdlGoaf+mE1A/2Ehilzr/j0c7OdeOIvQt
	6rsPwLcg3cuvln5oJwczF93NgWjH04ggaG7dPyGatgM9xBYh985jxNBQewmzJbNei9l9c3cjnhs
	QqhML+D0ImwSEUPBl413GUyFU2Y9jWE2sngK4ucSgnhT4casbUKYeEF0EtJItcRS8hsWVR8mLw/
	kxJDaGl03fB+zLO4HJRLoRgIfRcD7Ij3eHxH/PAHi5HuPUDd5Nhn86B349dRXqOOzU6SGrg8LDz
	sY0ztF2QOclOdz6nhkfdWoPZ6TAkzTpXSzgps3OXifRy7viccs5lXv21HyBOdUk9alr+2DtzDVX
	2rDiFuPE0yRGjN8oqmrhU3Ur0TcJJeH1fdBdg1W9niHZcwUZtDcu+5sykPIkgwMWMDXQXZ/WeC4
	bneNdMuzqcoCNeyD3GadnWkhQ=
X-Received: by 2002:ad4:5aaa:0:b0:880:57b3:cd04 with SMTP id 6a1803df08f44-88d81668f4fmr311316776d6.1.1766615348585;
        Wed, 24 Dec 2025 14:29:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZ/U+oO/Wi5GUJsyhcFlaDH6iMTsM1T7URvZxN8P3ucroQ5KwYbZNXw/6bola6LCgTDOv+4A==
X-Received: by 2002:ad4:5aaa:0:b0:880:57b3:cd04 with SMTP id 6a1803df08f44-88d81668f4fmr311316426d6.1.1766615348127;
        Wed, 24 Dec 2025 14:29:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd90esm5381856e87.31.2025.12.24.14.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 14:29:07 -0800 (PST)
Date: Thu, 25 Dec 2025 00:29:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, mripard@kernel.org, neil.armstrong@linaro.org,
        andrzej.hajda@intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v8 2/2] MAINTAINERS: Add entry for Innosilicon hdmi
 bridge library
Message-ID: <qvyyiys4vxf7bosauha3lov7uttzwdzehf2kwsu32xxzwyn3cy@jhkdjc2cvwcn>
References: <20251016083843.76675-1-andyshrk@163.com>
 <20251016083843.76675-3-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251016083843.76675-3-andyshrk@163.com>
X-Proofpoint-ORIG-GUID: 4wL30-vF-kv_po3HMCNRJVo2l7Bn03Yu
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694c6936 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=7XDKy0GsjqpdM7yUEs8A:9 a=CjuIK1q_8ugA:10
 a=0lgtpPvCYYIA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-GUID: 4wL30-vF-kv_po3HMCNRJVo2l7Bn03Yu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDIwMiBTYWx0ZWRfX5Kej1WNa1I8c
 6F7dGfLTIPGiHNmaaLGvLVSzi0LpEUSLrGTIU0feHmkgx+fNkLUEVb0iK2m8pHLbFPcqFJ0ZIa4
 0SZK6tWRmvCn8jiOJPJcljydYtvOlgTPJG2M+iWRFycz7Rxywl2bU+lt+63g7Z5ThjCzGm+4YVX
 x+XlxXPvcixoLiak2e71WUqtH1vA6BGC3MwGdlIPx0n5kKC7UENg5vF/xmpTHgqWyogbNGV4lDP
 M9hqosT4k+cCAXbQx3ysmY3CWOiPLs/PotDWXRQsCzG2Tnx4JzTWjfiQhvm2fAqUnL4F2+HI3TG
 RPxJvi1uOakO23mZoReafJMeRFTjA55hBxSgW6DZgxFq565HPQz7jZp5AaefwHUU8TKMLu7JKDx
 9gggSBMHgcQgSYJeyTa1UfIrs55eg7nNhPvbEis5U0oqIcbPo5HgW/J0W43mWwJFeahfn9EBsOu
 lghdc+fIelGiIxkfKEg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_142911_078354_7071BC82 
X-CRM114-Status: GOOD (  13.09  )
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

On Thu, Oct 16, 2025 at 04:38:32PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add entry for Innosilicon hdmi bridge library
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
> (no changes since v1)
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
