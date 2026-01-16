Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 480DCC79FBC
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 14:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09afBT9Z+mogH7fg1Ncp2ARxRvOkbtSbjODRJHQ3F6Q=; b=dICWegYd0nSE6z
	3cOa1or+GoI70vJtOAOvXmzS9TGDTiyds1uv3B1Gx65JU7Be8/7z/Jy75cX9omtKyZ3xDWCzY8Vgg
	XCheYBd4IX8Qxndy9/SG1ptcvgRgbQiSE6htSE4UO8loTJmZAtWU4wI2qD6Oh6f6mfO6bqs8o95YA
	Ljy+GHgn4zzHHFmU4zM8UN4UO6LnZ0tVudYV5XHn54iUP2SemlQaft9YnschjlT7AfEmj7gwub7OA
	FSJNRblPvjs48hqdsMgCNQxmjXEqptaQAH1P/oGDE+++IEH61QLoUKl+mAvw1iqpce7g6jNErG7fh
	8ZlTBZDCr0QcwKZnnVoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgktZ-0000000EGQr-3srQ;
	Fri, 16 Jan 2026 14:33:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgktY-0000000EGPd-065D
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 14:33:49 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8Nq6V4101350
	for <linux-rockchip@lists.infradead.org>; Fri, 16 Jan 2026 14:33:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZaHsD/0AD7lBzKkvh6XVMrU+9amfBPvv7vVc2iCwtKs=; b=UC5E7DrkZ1z5Uv+7
	FycRnXLQwY+1rTM48xRK/1J9gd975UbMQ7qofeEm5VskxtcczMF7hiwiuMVqgkeY
	8b/wVYSI+64va092l0RCPEsFiALYYQdESd4Y9DPP7MUioGHQ/2dYHI94XMdNpQJH
	/TZIUpqhnUIV0zDoZEqhfDoFclr5MM8EGfxx5I+7lTk2ykOip31lmlz6tCT+cc8Z
	dHSNqnS5rFpw60M0v4gbAfWrQN4EwMJdRMRX0TAia5dJJ1cC/zZcrgv26y6UMYjj
	4mJfQAVG0Vq34USJCP3DRvs9BhQvn+lakWgQa8MZTpQsgu8vF8E+MKM3CyVpPHLQ
	/BbdXA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9752f8e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Fri, 16 Jan 2026 14:33:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c5329ed28bso482561485a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Jan 2026 06:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768574025; x=1769178825; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZaHsD/0AD7lBzKkvh6XVMrU+9amfBPvv7vVc2iCwtKs=;
        b=UY1z3EQL5AoYEH7cnB/1sSG4N892pQemBXaQ6SLEbnZUs8g9RkoCC9O2VSiLbuy4fn
         Aj8OM2U7f37ndcUh3/AX5ULTlx28tcvHV13/AB9oKFPCCzgG8JSE+0uwbmG1Ha76pKf0
         8TPKDQ9vQ0HpnSwzBiV5TbISWqMTvnMq+96VDe3YNVn1dJJ+skAuBAR5tGPo41uRECXo
         ywt9emQBoFGpOP90r064iL6dD9YRRhxCZ6/9wswIv44lnmEaRsL5+/mixGeMj067x01X
         Mcf3XUPcdX0rAogEaXxQ4T05CwUT2NrEBJ1S3IOx17D4sOIQEH+442/vmAjKazkgJXdP
         J7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768574025; x=1769178825;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZaHsD/0AD7lBzKkvh6XVMrU+9amfBPvv7vVc2iCwtKs=;
        b=oDXCsdAcl3HXDPJ8E3FH6D8TyV9R8tdetYzmIPqZYVsMrXrEuWZ6R4eBuRX8Lx868u
         3TJiOzkwfj3VDrXfFwoxwFCyw87RhE5jr0eK45CjV//tt6cddaVVMo/0Pb3Ex/FVvYXr
         xyRd3GTeE0PSdBQmeOVUIcM7U7IJMH51fiqwUN6PfdpfP8vrRvka12RdVS/BoCfExeTV
         Kgj9867z/EFsox+fiiRvM/10BPHOqJXbHqbQPuYOlxlddLPq0zLthmAS98cIN8ibSgtq
         G/d6yz9vUTOBgrGFXVaJ1L0wOqnHujMQzJaKaIVkS4GYlVrfPAXSD9B3OQtJU3/xG9XU
         i9RA==
X-Forwarded-Encrypted: i=1; AJvYcCVaQYq+HosunIHWd6LPIOYUYXtJXklEc/iw8ZbiUOvpDSp+xjhxtn4hqf9lUfLkIlBcN8D83EWSnwd8hJFekw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+4Hp6U/U2E9k1WYGOHEMyrWEz14hvh/HvwUklunpm7dsTM+zw
	cO1kuUSFdt6+gI5vBOQEjMQcpK9G4Z309UZx150owx/fOzga4T4GXp8jfbS/37P5G1choWDs6Ap
	9tXEXvT7cOoAK2dbTjDR7gwKqshMU+baW3wB3hzZ5Wtn+VBu5T+Bgl+8L4y2tt4ELwmG3SaJDwi
	A=
X-Gm-Gg: AY/fxX7IV/tpDD6OFh1o9Qn5jgT8H7qkAYOsdM2kwnwfelNdotzuEzKdkyvlqSzSiqB
	XHJu+3e6vRcaXLidTQ3/aNQ3Cokr9WijObdEc7RnLbtgdn6hDGFZeeDjSGl2HzaHsyC/4W+mh0I
	Y64uvG9HTeDHR5q9IN7BwVtZD981N1AUTTFpahuvRudemckPs/nvnB2PQP8oPbBJw77zY2b/7N9
	nZFTPFbWdzMDMpGTiFJj9Svc8nLox6Jwj0pYG4BiV2w64/LD1C+S4cPZU+6ygLDavzm8Y9YqYAA
	Y93nvmdzQyAeWmgcvjOq7+I/uBZsU/p7audQAm82+XgKKS75hCE1dIWiKWbHA8j8V6VKnc+RRKl
	mQij26OaMdi49J0gDzQ74Zf6GHA0bEmkfZGQT2g==
X-Received: by 2002:a05:620a:28c5:b0:8c5:3045:3e7b with SMTP id af79cd13be357-8c6a66f1e53mr472486685a.26.1768574025476;
        Fri, 16 Jan 2026 06:33:45 -0800 (PST)
X-Received: by 2002:a05:620a:28c5:b0:8c5:3045:3e7b with SMTP id af79cd13be357-8c6a66f1e53mr472482485a.26.1768574025035;
        Fri, 16 Jan 2026 06:33:45 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43569921dedsm5623880f8f.9.2026.01.16.06.33.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 06:33:44 -0800 (PST)
Message-ID: <49ebb3b2-128c-4fe8-abea-51a3d47cce73@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 15:33:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] media: rockchip: add driver for the rockchip mipi
 csi-2 receiver
To: michael.riesch@collabora.com, Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Kever Yang <kever.yang@rock-chips.com>, Frank Li <Frank.li@nxp.com>,
        Mehdi Djait <mehdi.djait@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Hans Verkuil <hverkuil@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        Nicolas Dufresne <nicolas.dufresne@collabora.com>,
        Collabora Kernel Team <kernel@collabora.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251114-rockchip-mipi-receiver-v6-0-b7ce6e68b3fa@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20251114-rockchip-mipi-receiver-v6-0-b7ce6e68b3fa@collabora.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDEwMiBTYWx0ZWRfX/8L227Pw/Hit
 GsLpmoDr+kZldmoSTQr7pZKlSAhrm1iwBRmki9HOQ+zbB0c9M2GyWIA3Nd2jEJP490w9H4Pnl4g
 //M+k42x9InmUpWHlu/3i9+8AoxzakYYjk2wJi2aicn7YbcBeh/Z/YbnjhngyIja8wLMyKhQrvp
 hQEp0TOieMAN22CO1hMA4Doag/+/Iwfcw3sxuvrLK8+i7tm6PG/LrhquDnaVH+bSvemdN6WzZYK
 jLW3Dig1IHm0whJdUZgdCem5xIAOsP8/1mlzzH8JUCf3TjBVkAAEWVo0VDWh3pnU9aVzHQlmfYJ
 B8cul/Qu+SEdCzQAiB4oD3k71Z9Ppw2ReX9V4b3WKU8l732FiJpU3YQZ/PYg814/lCsyi/ekOAl
 JvaOggsC3iOv8Y96YIyd3GALt6m4pSrw8NbyMxP14VID6YCzxvW8g44qaddV85czY4mjRS0GH0K
 BzYWqOO1DaAb5jZpsQg==
X-Authority-Analysis: v=2.4 cv=Sv6dKfO0 c=1 sm=1 tr=0 ts=696a4c4a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=etG1dv-_i460GIfEFeoA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: LHbjyWlOqDsTFBnCNMBt1DnLzdrkSPpz
X-Proofpoint-ORIG-GUID: LHbjyWlOqDsTFBnCNMBt1DnLzdrkSPpz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_05,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_063348_094640_1574AA42 
X-CRM114-Status: GOOD (  10.29  )
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

On 16/01/2026 14:54, Michael Riesch via B4 Relay wrote:
> Habidere,
> 
> This series adds support for the Rockchip MIPI CSI-2 Receiver that is
> integrated into recent Rockchip SoCs, such as the RK3568 and the RK3588.
> 

Please slow down and post it once per 24h or 2-3 days. Not every 50
minutes. Allow people to actually review your code.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
