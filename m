Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47407C83F1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 00:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWK+f8zuW6Qs0ceG/8RDwW7meAsGA9hMtzI1NaVyecA=; b=Rsxn34cwGUDTdd
	7d2maPLB8N0/5u6TcuGJGmEntHEB7QcFNGEJ6N969+vlbNRUtlSEJ188GayRuS/pH0Z93qUiZrEJa
	o8yHmufhXFsAJ4byguJ0p8UVYt+2J4ZCRD2QfXYO3KR6DizpyK94k5LcYqSwRQ8QOr0HKX9b8g/6N
	k07Q4IXj/d9bLSCV0R3E6vMIASlloJwvcy6N0GvNM+p3WD0a0XFbdXRAqASKiRKd31kMadyD5QR5e
	EHQxFfZur+OSLs1EZ2PnxlRm79+hkP1FNmClTwH1wktmHkJ7SmZyCMfSb66LZ1ym1Ft8ehooh5e9I
	OKb+M/8N8bhSO8zw/1Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubTK1-00000003c9H-08WN;
	Tue, 15 Jul 2025 00:15:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubSKC-00000003VXr-3jSC
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Jul 2025 23:11:10 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EIoePY013628
	for <linux-rockchip@lists.infradead.org>; Mon, 14 Jul 2025 23:11:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lnAbRsgM5Xpw854WTnr2PpxC
	p0fWTNuQo/r6LvQOASo=; b=Byi6Oq1mlQ2Du1UBtBznaIYzQY4p8hL5pynHWdSv
	aTDe7W6x/B7tNhEqPkO5Y+VCzcSxQOtr0SuJfn7PglX+uFZMeALZiw5WrQcMh9rf
	sJ/Mc7HQOsEFmM9uIhSp5TBa7YwgWQ1Y4TrG1gWWLFFEW0WjJs/h8KGUsIHfDcD2
	49jcgELppT87gxfGxfXrNE98HiZW3Wn2N2WeWsSdypESIKNDnuxrp27nFMZzD+bx
	yU9qvwOPSfNE3+VFAsukhHo6roMkV6ATzLPh7u6HFnfVKFPkYJtaWBlZlEnxipRV
	XPQa3LJW0KKZLLpv05ITsY9TLU5AbgQXd0WQ0ZKra56mOQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxax6aj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Mon, 14 Jul 2025 23:11:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d4576e83cdso1288543385a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Jul 2025 16:11:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752534667; x=1753139467;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lnAbRsgM5Xpw854WTnr2PpxCp0fWTNuQo/r6LvQOASo=;
        b=UD7lc+zY9sumwPmeI+lmoPy9VxI89PLjq1AwkwdCioT+4A/Sq4sTHm3VOB6gTGS+lk
         MYcefx+IsHWYgz9by0d+8VlTRhYUMpHhmvfLwYg7xFGg5obq+UlKdcJthHJaJzD90hOd
         qa9jb+xQgQJBNSJoehIULL/qhEuti6aWOjIatzW4667eHmjMbFkyA5E6VQQmQ+nraYDy
         TmYvSYAcGdRMd2/M0CurPs36EKimPtOqNIEObgYdTMiaA3LaMAxc3xYQpkwkD4nZH0ww
         4OYSM4JA+kAosiMRZJoTxiKSoS88IBh9nj7k3Smg9gOXCVYHkMETxkyH4cBEMXhB9zO0
         TMXg==
X-Forwarded-Encrypted: i=1; AJvYcCUU+SkOsCaJE3FyYoOoJLC3ex+MVqjSpR/8e5ElrIRDgJ5IZOI56P4P9BCljvaEfb87sAi9hEdj6GsoCksiEw==@lists.infradead.org
X-Gm-Message-State: AOJu0YztGFYmnxBPkFYNJ0QnuvEYtK7zwLLY80RwaMuSLeqP+wPS90w1
	71xUtP+SBzoHUh4zaPXsuA1XHhZDh/LJtUsNHsRYJsJnjnoquXt4zSkB4ReIZjrBZ1fPhdzXtk4
	hBbLYkPhFRsGee4na5ruzu0eU3KIZG6rxJbyUKRZTFFhqqdAJmCZt1umnoxKTB3qiywZEFQLsZp
	c=
X-Gm-Gg: ASbGncv+rp/RS8RG0ye7WQeUnF6Ya8B4qmO2X0hdv3Kqrdg/97lGl8KM3dWJKDfAeaZ
	o2czxbaiU7Z+sdjXaP9CR/ECYueOjKts6GXjjwW7utBlaFCJERuLcBQHiIXMMRMzRP2tXdqRnqU
	GnsT6HBWTuuKNohnGRsXolz/cwNT7PNr7k7i9CRsmpa0Auflvk2dUjAzlPsV3AwNyPNp9INliWj
	CRwFiiOe+gfSSrQ0sPQtJVQZCkOn2q16bIi6AzwK6EcJ4EdWYY9vOFpdwCYGKTgTAT/7Xh1ye+t
	VItPhexSRq0/BScEqbwSYn+6Wqhv+5Ozp97g1rHW/NKrZYCstRTnagGpwaYiPulwwBrixrfuiuZ
	Wt3BsLY+p8qFPVsjcNqGPwkjeGJk+oPFb07bShTpmmcHqyJiT5Qf7
X-Received: by 2002:a05:620a:394d:b0:7e1:f16c:16d6 with SMTP id af79cd13be357-7e1f16c171bmr1319843085a.8.1752534666760;
        Mon, 14 Jul 2025 16:11:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgcpRDGfh0tTeMaTiRAOLif3PtbYVlsrcAaMwHK8S/xvzLSUZaIFYJ4fcz95Qmvjsb6mBB+Q==
X-Received: by 2002:a05:620a:394d:b0:7e1:f16c:16d6 with SMTP id af79cd13be357-7e1f16c171bmr1319837885a.8.1752534666331;
        Mon, 14 Jul 2025 16:11:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b73366sm2094948e87.211.2025.07.14.16.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 16:11:04 -0700 (PDT)
Date: Tue, 15 Jul 2025 02:11:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v10 01/10] power: reset: reboot-mode: Add device tree
 node-based registration
Message-ID: <5zlix4hfxkz447g6e6imjlatmnf26pvunnsmfkol7mhvropq6o@k7wr6h4hyqtg>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-1-b2d3b882be85@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250710-arm-psci-system_reset2-vendor-reboots-v10-1-b2d3b882be85@oss.qualcomm.com>
X-Proofpoint-GUID: b0qxHOGaBSNKstMU2r2Wp2XWjYI8HFKd
X-Proofpoint-ORIG-GUID: b0qxHOGaBSNKstMU2r2Wp2XWjYI8HFKd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDE2MyBTYWx0ZWRfX8iTzTQg1CZ3+
 YGelKL17ZGRVQBZNO1EHY9JQLrrbI+rWCG/kYE+iJjfb+vYTIT4/57HodKWuZGsnJa7UVn9kKAG
 VjCWxKi3Q3NjeJol8scNVymj+UP+tYSQq0OroGwnNZgtGeLs9BVTDpHzx0isglj4WjqmyyZkGoj
 LHF6Uvlk5Ek0nMYiCeGAESRgVks9FhIqrOhVQ0OEOFcRXMWWZodjUH+DkrjbLRuhKS4rRGqvKCQ
 JlpCRENu+EF9sO0gbHLGSAi/ad5S9nXHyRDznnN6v665cIQISEgT1pDH8gULhjLrlWw5YkvSZJN
 +9v+YYuEy5weN98z+XF7tJv+kx/RMBbaL/Ps/Qd0SU9BlTs6yPOoijRJFGPyPOghOqnVoYrZhF8
 pd26mrdacos5QFG7Hx9XFrRRnN5PHbFXhBVZQeglEa1FOp3dx6xvkzvG8Qb7q//nj4ANQOS3
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=68758e8b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=SZ81-B_MNtUeYvdDzSwA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140163
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_161109_053865_E01A87C1 
X-CRM114-Status: GOOD (  22.20  )
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

On Thu, Jul 10, 2025 at 02:45:43PM +0530, Shivendra Pratap wrote:
> The reboot-mode driver does not have a strict requirement for
> device-based registration. It primarily uses the device's of_node
> to read mode-<cmd> properties and the device pointer for logging.
> 
> Remove the dependency on struct device and introduce support for
> Device Tree (DT) node-based registration. This enables drivers
> that are not associated with a struct device to leverage the
> reboot-mode framework.
> 
> Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
> ---
>  drivers/power/reset/reboot-mode.c | 23 +++++++++++++----------
>  include/linux/reboot-mode.h       |  2 +-
>  2 files changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index fba53f638da04655e756b5f8b7d2d666d1379535..61f647b23959789a313f3af0bd967abcad45fa43 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -12,6 +12,7 @@
>  #include <linux/reboot-mode.h>
>  
>  #define PREFIX "mode-"
> +#define pr_fmt(fmt)	"reboot-mode: " fmt

This wasn't really tested. If I remember correctly, it should be defined
before the first include.

>  
>  struct mode_info {
>  	const char *mode;

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
