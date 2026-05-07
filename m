Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D060CD3427
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 May 2026 10:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XgUZWDIn06jBSyNQaEnyqpSiA81ZvzSzhvX8BNIJqdM=; b=3Ssh7XJl47Jm3u
	RlNT2AYf78tGMAsZl/0xKBIMwzIKKiO8mjmu/nJPJwudVtW6ZRqsVyc1klGBdJMpOFetioxslRjfj
	Z1kND7AC9hE51PUYET0xa87h0U+IGsVtcqUsa1QeC0kzucwgeH/lQvoeuHzXgYJQDFlcUKANSwL7k
	vV3CAP4KBfNQFxDejhBV733He7BVZi+A6S19bhcVJPq8WxiHYK4v5jwZWUV9T+7w5LeKwI6TEDMaB
	abUVuEtZwB8/Ph6n5+byjS1kvv8mHBzg25P6drHei5uNlSrEO4+1sVapWTrpCV3EoF8NDseho/YhJ
	n6Fu0QLdKHgkQs6mH1qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKvu1-00000003TdN-0qdm;
	Thu, 07 May 2026 10:24:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKvtz-00000003TcW-12Cz
	for linux-rockchip@lists.infradead.org;
	Thu, 07 May 2026 10:24:20 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6475wbPc1926382
	for <linux-rockchip@lists.infradead.org>; Thu, 7 May 2026 10:24:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JoRWGgOZZS3G91zVwdG4c9Lr
	n6Mvfm03iqOH0vlvM/U=; b=TkUzYLVdDiDMQQqwZkOHH0vOVJwRA6Fw9vGkCznr
	P8/7iK/sHrwHY8tJTuFv67LAHfocEBWPmPzwLzOiq0RdZmXlt2DBqAGBnW1eo35L
	cHbnbTy0xVf6ITKvwk5QV0pR/K2lsaCdRkZhMJKdTzaLWiHJeXN4Tek1xCn4MUBt
	zk5zvD7ZX9wKua1nA/kGk08oZxomwuJDb5mMxHicFnb6RA9vjBCqY1MVMT8Zq7/b
	HzkyYbDDUlWhcWz1MCIpGGh7Q3kkM800DjV9rV/CD2ipSvNG+UgAjabH/5dGtAU4
	cKiWwlr1JRVNBZ+M+oxzMKTHXjP+B6QwlIoA4VWWCZwjWw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e0n2g91ec-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 07 May 2026 10:24:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50e2592ea3bso6212411cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 07 May 2026 03:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778149458; x=1778754258; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JoRWGgOZZS3G91zVwdG4c9Lrn6Mvfm03iqOH0vlvM/U=;
        b=fw8scXAqpXNpCfEHCPK+Bi19Z1M7/++ymuZFXwzWEZzNn7Mu5faohLeiEjSSMifWTQ
         wafNtIit8gsZpELpKnWcQchlrlZe+B+U8gHN+l1+B4AhPnY3C6Y3MuTcH8xX9JNMIDyS
         EdjBjbyVVCC5BIBkHbAzP3piAk6s60H3orDouUb2djCOtc0VaI3TyDjr84n02HEddcxy
         hS3HcZBuZ9XuPFp5oVPrnsKiyTdeiROG3xIllEkGJL2tAW1oeD3RnjGWUMen+uOWjKcb
         W+caiEe3LxZ5RS+cQdq7rnN8C8nMzGA/3ElrCq6AZwgtNcQSxb02C5WZCawVSivD9ORP
         jp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778149458; x=1778754258;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JoRWGgOZZS3G91zVwdG4c9Lrn6Mvfm03iqOH0vlvM/U=;
        b=ncqErRnSN4Idi8KM91B6aCUfTxisAJ0kDlMMwiAiy+WlJ2hncua9qnQulLOtueOafi
         IQQRjmBEBMNwRagcAcQCKiE7AsCIUM2nAsl2cTN8UeviSJWjZRXxRcU4JIu+9r38vG/+
         4iRpivpt3kLfl98lPn0kYtsTYsW1lsWNgyNvCEpgyjhVGKTMnbzquQy8sl9L7urPN8ki
         ySdkt4WCyvecb8ZsBD2FXz1IavyikfVtbszaKRT9mXKOZD1Mx/utl0xvxIrQt5AXGW++
         Mq2Az355fSa6B9Y3k/g5capO/E1muDRUz3lOGh6FyZxqWydkr/CvxSvVkV6mqXbcaxZd
         xFxA==
X-Forwarded-Encrypted: i=1; AFNElJ8eqzqOLr8hKOLAAHxKhgnhjP1qpGLvHn7Shr71whKg7aiagtnxdv8KFgP9kRi+FE/HX5kNYOK1G33ViKtmFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2vKrWcg79B3ydX2G7J5EJ1IPI5xhL+RQJLF0HqdXPGZGoLolF
	IKwGgkmBgCsuTlgiO+Efgjqfia8nTCFrVTS4yveyf7GfBWZERamfYQRQMgeI+tyo4tqeVRRA9Wv
	VPeOXk/k9SZaSLtS2iPnyJwYA15q2DIDk2dBM21eDNF2ZyfqCjMxr1jVqQcXOJy38bvjuUMo0fG
	Q=
X-Gm-Gg: AeBDietwpltJ2yZ859J5tSgBKuHq0TyH4iKCV3tgBFfC5bH9V+L1wioYZ5RIlnwwdk9
	hi23Th603uWQdhplACjPUhPu8KXR6ULhcZLps74mhnhDQrvlc9nAHIfb92V7OWGyrvsAGuuIY2V
	fR/ITb19MY+AJIKMjqr4fg/66eEQer1ZFPYem+C69wVWJpb9RkIZaamb0bYYqYSxbFC+CrKnbMn
	dGv6SY/PllI366XTKTYsckfvZc/DebL1Dsi27RInbnhCYhmjjReLhqja4XXqBcdbJsPbq3d9Hvq
	qR4jti5tdDJIMXrwis6ZPdIhhS3+lD405xgVvC4SbMnfCQ84FVAhYtjJgwmUeZOgnnFdA/W4WzY
	y3jZdUzx6zKx0zVJnivjCzCTtCdMsCUtxf1zvVfI873uAItuKod5qMQrIv9OXeYPOR47T79PHba
	Q1AorweoJdNzQIgT13OSCyMGrknD0Qy1ELHhjZdqwUa8eHSg==
X-Received: by 2002:a05:622a:4a8e:b0:50f:ade2:2da with SMTP id d75a77b69052e-51461fcdddamr103694191cf.44.1778149456952;
        Thu, 07 May 2026 03:24:16 -0700 (PDT)
X-Received: by 2002:a05:622a:4a8e:b0:50f:ade2:2da with SMTP id d75a77b69052e-51461fcdddamr103690731cf.44.1778149455632;
        Thu, 07 May 2026 03:24:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3939a58fa47sm37503021fa.37.2026.05.07.03.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 03:24:13 -0700 (PDT)
Date: Thu, 7 May 2026 13:24:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: x@2005.tr
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Open-code drm_simple_encoder_init()
Message-ID: <g7p4goe3fhnfxgp2tsopvvgbqmvvkktji25h4rsrbkavxac2es@ghc5v7xjw64e>
References: <20260506165346.19819-1-x@2005.tr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260506165346.19819-1-x@2005.tr>
X-Authority-Analysis: v=2.4 cv=Wv4b99fv c=1 sm=1 tr=0 ts=69fc6852 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=K37GZDC8KpGTtN--OQ8A:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: y73XxjDLDkB58OxrkANOWk0INeuhKD-0
X-Proofpoint-GUID: y73XxjDLDkB58OxrkANOWk0INeuhKD-0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA3MDEwMyBTYWx0ZWRfX4XTZ6zlB9G3u
 yttoZW9dwAp82m7ZquV5UWuSgZbcQ7OlxkgsEdkNqW8Zkp49eQsFSb4Ajfa9RCVcoB/9SEAQJ4G
 6q3eM+KdpdRscoIBJ/3r7bdiI9vtcsQCwzACwJBvkGC2V+PA+gl9iIAu+9ioEhCxbe+hj9cA8ar
 O3sHTlyM6SzRawUIqVxW4brlU4Unp/xBvDu1Rg3Y4GNZke1U82awj7HdHSkX2x27kMzWPvQODvq
 /m+OR/EFd9IiHa/qWRlwkSqC4GvMKod+zl85MZujJ7JVk7b5HWYk7mZ1DXZpW4D/WwB4Phj0W5l
 HLoaX/2P61mrB/0C6bXVdlMtO5+7H6qy/uEce/ZRsf1cZJmEY38P9qMuCXVHVN2L4gqfJaaqS0T
 atHmbYWiEZrviLbp70I0u0SKGm79686ofKnNmXuOwnrLSMCI1j8ga1WW6CBPOuger+ulcpgtgY8
 n3EsY8BSgcKAI92DtLQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-06_02,2026-05-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605070103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_032419_293010_E911361C 
X-CRM114-Status: GOOD (  13.50  )
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

On Wed, May 06, 2026 at 07:53:45PM +0300, x@2005.tr wrote:
> From: Favilances Noir <favilances@proton.me>
> 
> drm_simple_encoder_init() wraps drm_encoder_init().
> 
> It uses drm_encoder_cleanup() as the encoder destroy callback.
> 
> Add driver-local drm_encoder_funcs and call drm_encoder_init() directly.
> 
> This is a TODO cleanup towards removing drm_simple_encoder_init().
> 
> No functional change intended.
> 
> Signed-off-by: Favilances Noir <favilances@proton.me>
> ---
>  drivers/gpu/drm/rockchip/rockchip_rgb.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
