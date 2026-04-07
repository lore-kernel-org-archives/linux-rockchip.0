Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F7C7EDB7F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Apr 2026 10:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpXwbXITt9/r6uBjdDzgr+UXh1ddUK1ApzDavwyYXe4=; b=km6h78ECrxcGBu
	r2fDFPeDRBim+gZCtgjPZCKPVJ3mkkp9vpdA5MaFb6MOiGbB0t7jXMlF9wCDaoJs1b8EkLsPtpz+b
	eJeYuyqvXsG8xLJHVnL5oCUnLzL1D59XwCWh1kLlFkPYqKfFIrFPrJBJ94qVLMJub1iF6aEGC5k77
	4b7xYb/gfZOo9vJ8K6JjgEktE67vv4XPz0cBwI4qecFQAK9271cu0SBjHJDFA+q2khBXRGnZ8T92Y
	2bp0B3PrAzdF41rEhxeW0M3DgoWQPW5+iK0XyGHNK8pQEmQnE0FtX9WeZEBsefcYg88evBAOPNAcx
	UEI1N5mTX1+tGNsUuNIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA3uv-00000006KNh-395p;
	Tue, 07 Apr 2026 10:44:21 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA3ut-00000006KMi-04IZ
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Apr 2026 10:44:20 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6376Y9nX3402629
	for <linux-rockchip@lists.infradead.org>; Tue, 7 Apr 2026 10:44:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eS4N6TgfHY9JIA+dLNnZEfvbVbEFjB8JDDLUZGURX/U=; b=p1NDe8s/lXqYcmz+
	xUlY166SHSNP4lZqujGffxN14B02RnCbVA7GzCL9Nt6AsN2e+AQ3A5VtMIQcOYcV
	jCVdJPIDlFpCQg8xcUggbDXcFUKmqgRI5eRTIFrfNUPz6XrFufa8ZHz5FbeleSrh
	0c19pWvmu5TE+/4DlyXxZBcN8qltChqPFZ6/4SbFjyWaK4yU5k9qBUQQr6SQbcWj
	hkBcsikSW+7rH3+NfZBwsx071z7SKUO5Cm0pG+N80fyAyUB7+Im2WczkEA23N9Pw
	3dVb18Aj8Gd8CDU26TeDhtF3oHr1XLulKTCl8+9AvFLSNgETLU+iaV8E6NAJCUPj
	pgIhcw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dcmrhtasq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2026 10:44:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50b4987c698so134065881cf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Apr 2026 03:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775558657; x=1776163457; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eS4N6TgfHY9JIA+dLNnZEfvbVbEFjB8JDDLUZGURX/U=;
        b=N4leNwclqyy6Zl6Kubnqwk820XGesOHNYSitYB3sC/CpMTjkQp3/izcI9h2t/VCf3w
         xUxXND0KQs4ChP1ue40L51cxK3Is8MNOySoQs6Lb2GIXZYK2IEpYnblVABSiPfmfpRa/
         HWsoYiR8dRs9QLnq+MPv3vh/HFUbHscKVOIwmjYjjrh+1jLFusi9OCoMK4LMZQJbSx3f
         gEmYQ7SB1y3rBKGpVdkxzhNklPBw87ghP3W0/+2CQZs+Qh32reRhjHfNd5ZJ79A1u9AP
         pVnO+VGk0CZYxTw+PjW+0Fw+PBiB7Bg9Dv921Ifu9fXSg545Ydf48lei3FSx0AJ46SWl
         8J2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775558657; x=1776163457;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eS4N6TgfHY9JIA+dLNnZEfvbVbEFjB8JDDLUZGURX/U=;
        b=CELO1R9bQtyRx29fEaQH+Uf1SADnvf8SR2/fXJqyNslTDKYJxTi3Mk4rPrlO+48QIa
         LS24OL0U7gcAhvV4ZPw4mmL0X0BjiBqDZDye2YVOaUvGthyyodtHRrjAGKFL6Tk2Cwg3
         J7ogYueB79PTW0ytE85JC/qIV6XRqpcxpgEo9ETTPMv8XBxnfIDSn8MHKCBr1WrfFfaq
         +5J0cIboaza2jXIbPOfqfRpoakzN0KDiHJQQJnCN5mjXLljGLPSFdC7J2fxt/FS+l3h0
         OF/bo3AvG6nKKpgaZG3PiK3+OZJarDqqvPzJIopH5QhPfPEO3VhzV0Hw+9jaEzsjfLDM
         7h0w==
X-Forwarded-Encrypted: i=1; AJvYcCUeiywZPo/RDGJ+9LKThYYN6zhXpv42+1TObpB4+cwBYLCbCq8mejwWOuxGMCB+V///gTaJLjrIk83uEpGi8w==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywok1+CXjEZI0THg9vtqtBZo6+3irxZtAuWVqknBXO2lvIzetel
	2bvmqwUA5g+i//S54+jpnxJXdD2HFJv2srutZeOPNIfK0vhlqKqXC4cpkPpLNOrGVT4F2xfv3Bg
	XmPW7HSBFk1U4FwCvdaetpuR+ly54JMlma1ylxNAgUxpY7wBIsnNu6ZnEY0DUOt6Q7ohts1oame
	NctJDkHps=
X-Gm-Gg: AeBDievwICK9Z+ebYddlvN96P/Yj1FuUnAs38TIrvxg68phkdEnAm8a1yVumFWd7DzN
	+IcXybDxRDBltoXgvq29ac7od/yuNR0cR78hYOqCDJDkA+1IxGh11y8WJqqxO6NHtMq/7Gu9gvE
	09/GTogCfdedcRsoZhN9WhkTYHa5rQ0UJFwkqeaLBEQdX73xpcZzFsRL+k4fjL88QgeBDnTlanj
	DQ1w+kLOI6NbhLgupkDDyxiHNNiK6t72nzms6YET9Y4WZIPskJOKf9x9YlpRdP/HxY3Y88NpsX7
	9xkxaFLhhs0pCHvDS5f2dfZUuP6pbScPGYqQUrN+/sQxQmRDK2jzUQ1luk4laBxOEu2LB/XJl2P
	ylTiiGi7bmF2a03aLTbOFkDE8J601dorGYQHMF0yMgF1IavvKNg==
X-Received: by 2002:a05:622a:148e:b0:50d:3efd:bd93 with SMTP id d75a77b69052e-50d4fa6ef2cmr242427571cf.11.1775558657477;
        Tue, 07 Apr 2026 03:44:17 -0700 (PDT)
X-Received: by 2002:a05:622a:148e:b0:50d:3efd:bd93 with SMTP id d75a77b69052e-50d4fa6ef2cmr242427321cf.11.1775558657001;
        Tue, 07 Apr 2026 03:44:17 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:b36f:5370:5f91:2d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488bfc31418sm64902885e9.3.2026.04.07.03.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2026 03:44:16 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
        ye.zhang@rock-chips.com
Subject: Re: [PATCH] gpio: rockchip: convert to dynamic GPIO base allocation
Date: Tue,  7 Apr 2026 12:44:06 +0200
Message-ID: <177555863867.54615.16332353553973697862.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1774864401-177149-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDA3MDA5OSBTYWx0ZWRfX7rtKR89GdVYL
 sWNJPaRXa6ng+lHtZbBu+/u/a9Bodm0zOvqjLf/aBukbTdpeabAKNsaMI1MnVZu15e+Ua8aWTzx
 qDufGkPhZws3Jj5mzg909eiSwjQn8BV0BQxcwyFlFAC9P8YnyPB0PM3YPNcWNlV50tNHf4zkU5S
 3ZifVocTVeKhnvOf2hzymfDs1no6lzv1qLUmBGczNoLz6q2IGHyHhJa1r+CFZK7/fBmorM8sXEA
 I0qn2obtkW5bXw8VkoorL8HtA67e5DW7A/4+5UWUr3qR9BLh7qUjr9zvyskIRC55RTz94rpJNgS
 l+utEdi9cUdn0taeVA2xO67bMYmfD8jALQlS4RF6kJygjT8umyTKUfqGP0HGrPRlfiSlLBzc8PM
 8q5CfYRbQO+vNAf2tvHtSt1cZc+66aaXmcB1FUARPHvMN2Gqm+PdjyewZS1a/ka/dKe6voJJ2TZ
 I+Opi4BmU5I2Ob2SC9w==
X-Proofpoint-GUID: Ru8aZuo09Xq1AwRtbfNO1VephEqTXUGc
X-Authority-Analysis: v=2.4 cv=XPUAjwhE c=1 sm=1 tr=0 ts=69d4e002 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=QVjJd4C4N858rfVIHLwA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: Ru8aZuo09Xq1AwRtbfNO1VephEqTXUGc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-07_02,2026-04-07_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 clxscore=1015 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604070099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_034419_171503_7226977E 
X-CRM114-Status: GOOD (  10.68  )
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


On Mon, 30 Mar 2026 17:53:21 +0800, Shawn Lin wrote:
> This driver is used on device tree based platform. Use dynamic
> GPIO numberspace base to suppress the warning:
> 
> gpio gpiochip0: Static allocation of GPIO base is deprecated, use dynamic allocation.
> gpio gpiochip1: Static allocation of GPIO base is deprecated, use dynamic allocation.
> gpio gpiochip2: Static allocation of GPIO base is deprecated, use dynamic allocation.
> gpio gpiochip3: Static allocation of GPIO base is deprecated, use dynamic allocation.
> gpio gpiochip4: Static allocation of GPIO base is deprecated, use dynamic allocation.
> 
> [...]

Applied, thanks!

[1/1] gpio: rockchip: convert to dynamic GPIO base allocation
      https://git.kernel.org/brgl/c/c8079f83e0bf312645050c17d9c87deb707369c1

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
