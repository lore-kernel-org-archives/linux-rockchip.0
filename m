Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1A8AD78787
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+a0QR0w6Urmc1FdM5oemPDaCXjxksumVg9vQOUHbw8=; b=BcsQnEKTLEdjML
	0GUO/X9VN56U8dny+C5UOvELX54X4AcDkHyhGiLAxe5Qc8vEuaz3CKrvAAWqnRgwTBvcC6gl+WDeL
	EH3qdXFwaj3Y6mW4HPuPpuMRl8gg59lZEm0TZMq+K7qqj1pUF5McZ6xui866gXy7i07AhnFFkQb2Z
	tVX2WO7mlB7R0iy51YhJU7RAawvZ15ppCSusJHEe4zepjZ7wkeHnaL6FqKbKP35liXpJ07KF9ljs0
	VmIJJ1pNDXZVXH1Hfy1KVF6g+fJVokeJFIdKmnggNLT0fXRARr7pSWUIE4bGNLy6SNwpE2q4E1UYZ
	heJ7SxSRuQJEI+/RP2TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWblE-0000000ARrK-0JzB;
	Fri, 19 Dec 2025 14:47:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWblB-0000000ARqD-1RdY
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Dec 2025 14:47:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJB9Ed91772385
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:47:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2llrig2VlkvP/lmBhRWbS2Hi5oOu1YmedcLpczcjcPg=; b=flCd99WdIB49zGTc
	An1q1Hdk9XGhbN7baTxHWBodnU9IW1OuTO4Ri0dNVIe8iKl7+QAxfGOpvzuCuLEy
	xutFuVjEyrqw13VgdUvVFv/TcsBADcZ40zRSGu56JCSh58KPtaX2B8Zqa5wSJ3dT
	4QNz3wM7Ej+VVrSQg244rwJ0Vw048cNys4KRXIQjG6w5u1PeVzz6WSn8qLflojB1
	JlEIWc3hcVgEKy2lZwJ6hWJouHkUytIFY5KwMWr+GVd1+YiAaXWBg3lHj/+Ak8Zq
	+mBm1TjcUcEm0SnXRB7dSKGsjp+mO3B4MpXuM+moWgwrG0kO++3MO2VScncdD5Jh
	1Fgk+Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2bk01f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 14:47:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b1be0fdfe1so68203385a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Dec 2025 06:47:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766155631; x=1766760431; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2llrig2VlkvP/lmBhRWbS2Hi5oOu1YmedcLpczcjcPg=;
        b=Wc1nF0pSAhiJOJ3HHK49w7EsTS0n5DC2Y4ew/+3E3fAFfJSZkvYUz/PusNktPtfluC
         J069hRL62yQN98QbGg1uLcgxSWDwINbEqfCkmKNrKZTmF+Qloiytwnz4E+Eq5LpfnUuQ
         IzzxjZAL/OsoDbCTySMCA3b/o2/e/bKe51z/0gRAR6vvJuy+UKAxZ4u5Zwsto/cYU3DF
         cZKjZNcfd9AbBds2b99pfuRRiL2lMIjj8fbo1H8uQhwUrDXm4WsU7rhIiKNLHISjz8Dw
         m2/kSjNGakWlsnXGkcfuzqYKNWSCeIVnHLxgvjX6cSJdHPFL3xdSsztmZgM7NQgk/dTU
         dzfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766155631; x=1766760431;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2llrig2VlkvP/lmBhRWbS2Hi5oOu1YmedcLpczcjcPg=;
        b=AJaAUXiKlwjoL+9rlHrWTtIQAcn3I57tJvrzwKpDokla6ntycSKGgADcN6OiOPyCc4
         5XoeB9P9uLNKisuvtcjd9r0TS7pcshWqI5qAB2DYUFLWBjAbOFdEjuvQk8cWbPSLK7aV
         jtkKySrgxioA1V/TfyeJCz8jrwMnOQN30SOne6qD1dToLlu2gIyex4f07XkY5uALE2Lz
         rbgj4amyQ6l5QT/CL8R8XJYzKyET1Capu/sQjdhuqDWdM4pKf4VVLVsB8yr5qlk1jFg4
         IRl7kx/bo5kYv2GzqdkZFAgnnS4VMuJhOqjpQqsnH7SsO22PJrdG0GfsjLI5yZuuzlFb
         a2Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWFwFjQ7eIaxX39DyO4PjFIN/5Hz0vzopS98UJaNFwt6WfIdT4BFlQMb/l3e90dP12iNBY0y11qzY87715psA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyii7M4cz2DAgvA+JHxh9fKfzNZEx9PUhc0VzhhNOKLffhwsLub
	WKsaHrVXaobhRW0sapfH89b7Xmyod/JI/XbBg8RCmJATnTEx33PEDuATPIyG0Q6G/eMcDh21rdl
	nH4bnwHat/ttmzVmrsyTQ6uoUkzcy+CYAsZqF93Z7F97nb/xtl5gz58oe9KnpG/BsL33wza0vNc
	c=
X-Gm-Gg: AY/fxX7XJVf5CZPHezDytaNJ7irkiO3wmQiFWaDukrOca9wJB7cZM0znt252Kg8tcHs
	RXndTq6cAcaNPvuPwm8EayV6gf9e1a/RkJUR56SxUASCqA/coeYwfTepQgbVPnN6Zq+Sskqs4s2
	JGY7uSgTFQNzUxhI0jHnvMiRfi9mFPWfJZzbsAJ84mL/v3Fa0kKOa5H4Q75gMPopquV5qQI3RIe
	CHsTAA9QTWzt+MNjVxlWucrRd22/FhvCF8cd/JP/LU3CPr3Kes3p4vdYMZu8Aivc72Cwj5nPZyf
	6vYIyt1iNo/nfKf9cE2mNU1TRdiB8t5TllvtUWif5f0w3u0UFwNMOtbZ9MMLGpKUCcOaS12NnF+
	jEIMhiYmfJa2r5vi7cxBlBe1hLHOwW6YgbV00R6cYDvfexAjvTI+V3d+fVPVKwoSvSA==
X-Received: by 2002:a05:620a:2911:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c08fbbc3damr339355885a.11.1766155631502;
        Fri, 19 Dec 2025 06:47:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEve108+vsMnz6uQvHSLsQBNpRTIRrSI8CXrS6ViEziIGCv/1+cO2DfuCTVgDsGgQRx9jhOg==
X-Received: by 2002:a05:620a:2911:b0:8a2:568c:a88b with SMTP id af79cd13be357-8c08fbbc3damr339351385a.11.1766155630854;
        Fri, 19 Dec 2025 06:47:10 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9105b31esm2309173a12.13.2025.12.19.06.47.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 06:47:10 -0800 (PST)
Message-ID: <528cf0f7-6025-45de-a061-2d4f6fcc5bce@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 15:47:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] iio: adc: qcom-spmi-rradc: Simplify with
 dev_err_probe
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Jonathan Cameron <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@codeconstruct.com.au>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Alim Akhtar
 <alim.akhtar@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>, Orson Zhai <orsonzhai@gmail.com>,
        Baolin Wang
 <baolin.wang@linux.alibaba.com>,
        Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-rockchip@lists.infradead.org
References: <20251219-iio-dev-err-probe-v1-0-bd0fbc83c8a0@oss.qualcomm.com>
 <20251219-iio-dev-err-probe-v1-3-bd0fbc83c8a0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251219-iio-dev-err-probe-v1-3-bd0fbc83c8a0@oss.qualcomm.com>
X-Proofpoint-GUID: K99w6WOV6CbC6o9ei8WJhSx1GyVkyQqV
X-Proofpoint-ORIG-GUID: K99w6WOV6CbC6o9ei8WJhSx1GyVkyQqV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyNCBTYWx0ZWRfX3i+CJPz9sk3/
 hF9aymAIi1VHRzVhgpcIAb73PtElppjFNdPqFFUIFG6GvYiQ2f1jrKQimLKWhY+S5vBemIrBMt0
 KC+93Z0YZ8MfZrBSW9Wc6vdw4nDmJA33NZmLauO6VghkOpgVMRbpEJf3IjE1Wg+NcKu9PhtSkNy
 c1KTy2JdgN1S0uU0Mkc07QWmwWaCpIerGCAMnAfutu3fkdcLnZ+ekKD/v807X+pCjhAxDHdKWAO
 ElmD/QlveKnCRVOGRpoMt6svFfE4M1QfFqh2oy8s82s7PURbrYQQURZDFWBTE/qfV7XJZ/72fkJ
 ChahMoJQN8xSTl+pwTRAgbn5vxlM6Xl4ecklXbqRmk5zGH55BHyczNvJhrw3UrFni/c85JPubQ2
 v+13c8uSiAJYsCE9fnmSD27gBW7MXslfJx/xu+2/DC/fgNSyxdtiy5J6Qd0E1rFgV7+jhoky8cH
 kjIASQ3Qw9F46SjgoKw==
X-Authority-Analysis: v=2.4 cv=WYwBqkhX c=1 sm=1 tr=0 ts=69456570 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Y9TzTQZwL3x8CsvTrzoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190124
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_064713_397490_29113DB1 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
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

On 12/19/25 3:31 PM, Krzysztof Kozlowski wrote:
> Use dev_err_probe() to make error code handling simpler.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
