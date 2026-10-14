Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27FA4CC6B2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CMIzD93cKfWzxTt75otseM5WmhaLwPQZRwNYC6GbV3I=; b=ABg4bAL9T50+hW
	/FggjCbtMx4Y/VwLE3aJ/Cvg5nmn1F95sPo+0ZVM4GyWJ2syYEfhWMz3wFEKDIXUcjYiIQfmFIi/m
	9R+rBJWclWYzZU53Ntq5yLanA20f0lCKvpvWfemKneB+riW+SiVb+bB4/TeJLa/SsT0HlQVOM0Apa
	tpm66ymbTWaOQYjfnC1dUdrEoBm0FX2z2/HrcqvWYTmxXBAIQYrNPxwvTZJ5mA8oeOBYzhbd1rA0F
	mKXBiGbGhT4jkx+tbRJ00qpo5iwtx8iKYg3sGSEC5kyZp9LXG0C3U7FUrRjFdMDETkSadUYnDlq3r
	qxqELEnN5zV9PCWHWjhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH8gJ-0000000GSs6-11Ju;
	Wed, 14 Oct 2026 23:46:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH8gG-0000000GSq0-3E9N
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 23:46:46 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69EHRCIW842056
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 23:46:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iGsSHjvhagPRXiAvKSbTu3/S
	aEhQGd0uTphQRGhmwdI=; b=JxiEO0CryCiXsww03jKFnqlfHqxReTyDdp5kUXLv
	QULPpT3bTqj+lWLIHihri1ovAEzk4GyRNwUyYc/O1WY/L399eRXvkjwpN9Ee8tVu
	nhgkYjZjLiTdRDYUVYMLrSBTFDhmOGT3/Y28aeetbLENcyaTTlVKEuXjH7X/WcEj
	K2IOA8BZL0305lUDw7JTpuHTaDg91pAaoVRygueHQaxER3u2nvoE/fUO4GW53Gss
	j6cJAhqRwH7uSPC6qXxRXstO7FEHXCa34JNB7E20gEeMmSBsyrG7ZttvWpI2iU49
	/nvUSTC4mSVM0y+b4hcbwVhZsv2IkP0fgS2FvCf5K0Xh6Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hae4ws6pd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 23:46:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-917a7fffbe0so107477656d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 16:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792021603; x=1792626403; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=iGsSHjvhagPRXiAvKSbTu3/SaEhQGd0uTphQRGhmwdI=;
        b=HktctQ374cPd+SpyLS3irbTL77aLqlJSX0vC/eE7QhFqAX5xlDBZtvy9BQP5kVkmWh
         lZTngvf2Cny83Vou2DLnSEpegqU0uVnflxuJAUdboMltuXCp0ZHwn1nGhCL4VujhvCCt
         W8cIrDZPhUnzMu5Xt8t7yg4BpCykUUkngpSnQE66In45B1130FntDUElX4wj5WSm4/pG
         1lQiaH+hYDZZg7ZMzVcmai9lCcoJWBDdBxeBZZvGKjliIFVNvlZbAkf4zCZmTH8hsFO2
         +CAILkizYsw27VnU1JI+kCeVtq9cc7Vn6+3hcMbjcYny9bkUAaX25RPgMfwisAzWs9my
         JdaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792021603; x=1792626403;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=iGsSHjvhagPRXiAvKSbTu3/SaEhQGd0uTphQRGhmwdI=;
        b=FwieuNZz8852YXTUY14jk/NFHqhKPnPrznAzBTIL1FcqgN1VbpxUCNqAuvyDCC+z+h
         wWYN74QxDRGUl2bzAtb7mTMmPMuFENh3g4JEp4QpCdVK9YJg5eY+bcRnQbhnBPlTSZ4e
         53TRFROaEHTrDCq6JtxUBhjIK51eBElAdeajRgxI50WWGLETgAoMlqjneWlw7ahaak77
         z+BEy8WmOu0h4ZAz/yMKWoWCbMrzZ2pmPUMzx6ojhi1/DBJYskgsMpigC1W6LQ5uPPk6
         bK02cDRLy/Af5xg0kw605VyQS21cKi2iWMFEwSmtxeYwB/N0M0HBnsKqCGpSskfzaGIP
         5Ckg==
X-Forwarded-Encrypted: i=1; AKwUvBybeYovtMKQYkyDfDUwxmOyL4Q1JEey4YhlAJewRPLCPoP2+LRwb425Ntkak028GRvx4RRW+N5Ow4cVvXqcmQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIR2yLkGMlgk2wVb8pSjLkTaSPjNhLgMNhn3GtDGEbGdkyDFYP5
	I7WHoThb+8z3z+F89h4BalxO1X+nthPDvSD8SZpOZcfba3GsFKizNeMzeYEKSmlKnK4e19yLqJk
	3ysoJrWi3GjxspAUdSQagYTHAetYrAzbiPm7tSY4HjIsb9186iwH51ifF4oBUz26G+GTEy0EyLm
	A=
X-Gm-Gg: AYBFou2bwqR7wYqZW8tcI/b2emJTlGpV46Z7PvQsdcwR+m7cxhbTh0wbiigI8l5TOsC
	Tu/LdfHOz9v0gQFeQ9X4h1Tn2PrVXKMwjdhhP13eGust0hUgeRbIF360HYf+VAna3+CC6HFmKNY
	si0L9aOrybG5vYYihIjUmO6PmT/0OaugKdshPyB44npbqkYUzmHfWafY8Mpi97suiSxJsYExG39
	JDPKKZRRFr/vbSDqssMQ69yKEEKHCuvGjsj/c7EQ/C/gQXUBUxcqVWb8cEVHVmbAVhydRm2FaYh
	OhP8AJ8MS4d6oGxvR6W6eYA5gZD3mtw+fAKRpuVBLsJ7fMk0ov7xBgj0fsc+7hWlGAWbkerCMrt
	8yIo7BqJKX5oYywvyZfEnG6nbTIgMEG0DVojPAwoYtEXfX4n5LDt7/0O8+5WQb69m259naiyME3
	jHAWzgscJdtYNc
X-Received: by 2002:a05:620a:2691:b0:93e:a51e:7ffb with SMTP id af79cd13be357-93ebd0bfcd2mr2871711285a.2.1792021602940;
        Wed, 14 Oct 2026 16:46:42 -0700 (PDT)
X-Received: by 2002:a05:620a:2691:b0:93e:a51e:7ffb with SMTP id af79cd13be357-93ebd0bfcd2mr2871707385a.2.1792021602398;
        Wed, 14 Oct 2026 16:46:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5be33d93e00sm939809e87.66.2026.10.14.16.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 16:46:40 -0700 (PDT)
Date: Thu, 15 Oct 2026 02:46:38 +0300
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
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Use DP AltMode defines
Message-ID: <qgkw2qvqwmchclsdf3k5omanjd7qvm6wyxfjy7bb66w4koarnz@6s5k35dmqvai>
References: <20261014-dp-altmode-dt-defines-v1-0-b657c9b6e4c3@collabora.com>
 <20261014-dp-altmode-dt-defines-v1-2-b657c9b6e4c3@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261014-dp-altmode-dt-defines-v1-2-b657c9b6e4c3@collabora.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDA5NCBTYWx0ZWRfX/JUC7EsWFgPS
 CgfbL45zw3W6h9A85Tm0wFhgLigyaNZrI4h9SNgk4AZOWAWuu3bEJ3wI9jWu8QVuS8aCMPMLkIp
 un79gb7Pu8bHPuXSl/oUCrbGsMabwBo=
X-Proofpoint-ORIG-GUID: bPIlT2qvdwd3_T_-H4WvLHbEIe2bTPvf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDA5NCBTYWx0ZWRfX9gWmAKX4NYgY
 QgxpmZaLblSCDUR4rTVGmahJpVl6ih4gBonjj6+UcSID8CFQl66WpLrujQ1Ov/WrXlTQ5FSgF2R
 l7btpexk/Ffpn+1iQGjSNUXchmqO7lIqqC1d3A+eGJTknUYr7/T5zl/GyN4+affoDKQspQySvci
 X3Yg/l7sdQb1n7cBLVcVjqbRLTChpwy+kNPBFUFDuZKwPymbeA1B27Pmr4VXkw0tvhpmxnRIGZ/
 Ln+8U7EFtuSJaEUccBZLz32U5X6f2+wsc8qh3PfZspU0rRNbnusQo0GoonpO5o1VPjsW5s6fZZS
 FaiTfNZTvHSyEg/PRJQkRgqW6CDC7eo9No0CFGD6Zh5IT5PTeEWtpOyFgDFjvHFw83QSKL5f1+i
 LO0nPD+ZcA71rGMsXVyeyifMHnfZZD5yHkMBF9zcAKekcEOEya4rGSz4/9cu0mUan+PSjznTk5V
 bRVq1CvlgSouZgLUKyw==
X-Authority-Analysis: v=2.4 cv=E8BYNqdl c=1 sm=1 tr=0 ts=6ad01463 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=QX4gbG5DAAAA:8
 a=EUspDBNiAAAA:8 a=oov9_tbh0Q946gG9V5gA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-GUID: bPIlT2qvdwd3_T_-H4WvLHbEIe2bTPvf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610140094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_164644_924435_7CDFA654 
X-CRM114-Status: GOOD (  16.73  )
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

On Wed, Oct 14, 2026 at 11:31:50PM +0200, Sebastian Reichel wrote:
> From: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Use the new USB-C DP AltMode defines for the SVID and the capabilities
> VDO to make the DTs more readable. This also fixes up announcing
> 0xffffffff, which is simply wrong as that allows using the port in
> upfacing mode (i.e. the board receiving DisplayPort data, bandwidth
> above HBR3 or pin configurations not handled by USBDP.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts | 8 ++++++--
>  arch/arm64/boot/dts/rockchip/rk3576-armsom-cm5-io.dts        | 8 ++++++--
>  arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts         | 8 ++++++--
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi      | 8 ++++++--
>  arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts     | 8 ++++++--
>  5 files changed, 30 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
