Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1B0EEEF332
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 09:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xZVoaOJXHbsJT30oSE74Fr8lvRBZ9VRy27FGnja8y1g=; b=dP6BB6wycNgfDw
	3gdgYMA0e9KsfOESoiQBrGiuNbO+6nf3JVVNXw7eJZCcLaag39ZcWyAblqeEQFmyuGG9HKX8Je0y5
	bWoavdEtxzgcprLCC7IU0fdXSP84wiWhhd4BiuuOD9BLIcqdvpdnRQAr1DlWfWuA6wMfumQxRzI4U
	fBQrJ6pEZ04cQBcy+nQmpKJveRujUwGGNJacIrbzXwSZgKvWRkUFPAgkX4LKuLvx+ujY4ci4uXKqp
	1TT0djfpLx+nAcaQUS95IptqqP+xugEnGI1P3bYqTy5MO0tPiw7gb6QLl7Z8VwtBC3yk13d3i31GT
	VIw0lSTcvzxC0cNE+3lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4nc-00000001LCs-2KHr;
	Thu, 05 Mar 2026 09:15:16 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4nZ-00000001LB0-2xEl
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 09:15:14 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6259C2UB3604128
	for <linux-rockchip@lists.infradead.org>; Thu, 5 Mar 2026 09:15:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lB2MyXzqwL2fKx+Ie3b2ww9IDsTWQhJEMy9qeDpkHuo=; b=fQRkPmX+D74BHrMb
	asyUwF1awRSU41+Alv6Wnw7Gs81vmURRSipvQe26gecP5AjxUQs2FjH2evlpCBle
	EvlJTGeq7/hZa7TgbL/eiwIfLm9VDQ84HkWp0PDa9k8zC3mFxWdX2oUrXIvDSeUO
	MJlRb3hfiqoNxb4lqLQBC5yk39pNljrdNKN9SvZotseq/6rNLYILsr5slIzaGT2r
	CXRqeu0rHZQRIblzagGnKAQ//HjjGknA7AXeqY14HW8GLv/JQd3X9Okrf7xmxJF5
	2NdQ/R4sUdq3+kMqXrOnJ6N/9Kl6X1z8XshPF4tixarfRUFzzIjQtTlkBNy1zXbb
	lHd6eg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wakxx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 09:15:13 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a086578c5so18447156d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 01:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772702112; x=1773306912; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lB2MyXzqwL2fKx+Ie3b2ww9IDsTWQhJEMy9qeDpkHuo=;
        b=K92E+J72d4YdgT8zwHgN04tiBU4GImQn5Mt65/nXbxPrEcy+zs4BlQ/QZyUyv0s2At
         pwNZxUi8TrLT1j4dkyLPqS7c1cn1yeiSrlyy5w8Xr9uTGJ2OXJdTVLEjuLqumeLwmJSQ
         TFoCHo+vQBL79HAXeTfs7e+jMV4MSHvZAQ3OLmRp2drI88xiz0R6Xz2BMPqrAxOyaDc1
         WTyYLdDahDPt+IAatRJ2Q2pgcgPMrAauFkqxNV/63Ge3ZytQHi69RzBUWBsMrJqDSs80
         b4jaRHH2WOSFHeTJ8p1o1R5ivLMgNKfX9Rc+5SEr53wfopHQ95fkD48jsbPiJibk1aaH
         h19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772702112; x=1773306912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lB2MyXzqwL2fKx+Ie3b2ww9IDsTWQhJEMy9qeDpkHuo=;
        b=KghXRWJ2YSsiKdVej8AbckV09h6DtHhMhUcrsxPqlUBADKMHFLDOxAigB/HKrzXyjQ
         PSAtJRwOf6DFuknJqhNEGckNvCEW+JjFNjHT7OC4CKb4GcKTv/oyhooD/YPA4Fk7Ucld
         VqisaLzkqdV/G9t69b8s0sE4AjPJiVr3ypXt5wl4Eft2BsrihLnpqgWJnejIBGZWCXiO
         d9dpz1QsSauvSlUjzln1GJFX8IYlqAAnQff80fVHnz6M3ZpE4tkhEAPrzOD7aevxE+Ph
         Wf+JIKjKG5EBzBGQueM+JIPh3y7T/qI/9wHowikdqYAMPV8Pyv6EftiWmIUXbqklrl/s
         Z8Uw==
X-Forwarded-Encrypted: i=1; AJvYcCWbMyxPruc0vyz6s81Mhx9XPRpxfZZXet9GqiZCboaDR4UogJSIviQ+2tnRQqnHoo61dWynYkvbUX3VzZW/JA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2Gcl4JznHZB9TbhEgjH9Gwi/QJqDfAGx1oaaTy8RGVkUPt8lJ
	Hf3igLBg30aXytf8kwF7+hO3QrEs17wtPuabXjqzmotw5tfkOfNOXIUWc1s3NkH9fuNl7mxI3ih
	fpLsl/fdFgfattb0GPKkWdbhFZRsWKsPtHpNi/B5rO+3EHuw98NLPZF07v5oa0rttr7+MWGY3lV
	0=
X-Gm-Gg: ATEYQzxvgKiohYoQmsQyPoPURafNBu0uGGL/+nNmrlC/doPYv9CO0oFVmK3FDJyokX2
	TbsJBnzGAXdE30Gc87PFC4DQzkLwxKko4RIyvdnqfx2S/v97kN06EPLPfocQyN7OkHXRDxtsPY/
	E71LCNCfIZ9QwxU5C0ulJKvtd4HrYNrEEtU2fNNPmrnvp3Dv20RQ+yV0t8VdNcCbbQrKXrtohJx
	2rmNxB8X7UVQ8H3ZiJOzIZpgMchwE28whqVBKAh5q9sZbgqdd0BsGWMQYJqU/UN9Ezu5R64g7Lx
	a8NEFKez9hKk+FSEEPeZUSkDwFx/TojSQvg6FoQEkwlWym9u/p93LghV/0Es9Ctt3HX7vlHsIVp
	Pj2yL++cToTYNELQ1nKwsZSGOFeDLVo5rVaF48jrVzoYkYTk43L2E1oZGrzVpsYOzklhVm01Lfe
	HDuX4=
X-Received: by 2002:a05:6214:4842:b0:89a:1720:4c5f with SMTP id 6a1803df08f44-89a19aefda8mr48644736d6.3.1772702112248;
        Thu, 05 Mar 2026 01:15:12 -0800 (PST)
X-Received: by 2002:a05:6214:4842:b0:89a:1720:4c5f with SMTP id 6a1803df08f44-89a19aefda8mr48644286d6.3.1772702111839;
        Thu, 05 Mar 2026 01:15:11 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ae666eesm878784966b.35.2026.03.05.01.15.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 01:15:10 -0800 (PST)
Message-ID: <19c70059-ee24-4b16-8df2-d5c9274ac6c4@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 10:15:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
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
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <ebee2fcf-9069-4a9f-ae72-86f4471cd4f3@oss.qualcomm.com>
 <20260305091336.ls3k24ieehntxf4f@skbuf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260305091336.ls3k24ieehntxf4f@skbuf>
X-Proofpoint-GUID: Vg5jzHBEz2zARFgRS0iWshKO0OcWkCIw
X-Authority-Analysis: v=2.4 cv=BNK+bVQG c=1 sm=1 tr=0 ts=69a949a1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=6df94im0sWgtjZpQi0gA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfX70a5msgXiuHk
 q+M/yCjkB8XWAris0Jupmv1dLHYFdiXCWvPV0d9JNjrUb+DqhRkS1AdrKiDT9nloqTjXcKbsibK
 Pu28GtOao4XgF/L08e1r5ezNIELDkDGPm1AfnMHq84JJcJoTP4gt+uujm2Kx0sVuKS9VaUcoqA7
 JurIsDzHd5k/S1mPofN8b48ngg+utKybwET1qC6WWrntOSbBjIwqhuAJunY7my/g3s5rZW/umXm
 SkACL0IjXVPAkKBgaxS1ROwMjybz5VDEwlwIhOF5qcKkm31w6sexdH0oHchg+SaOA7+OheF4FZe
 YHDxk61g0r8ss3G/x7PQy44RiV0o2HTXEvAwnGxyEgr0mgEhM2jckKAWYMWPcBNncDupXmBBbzU
 JbTbiQ6FOln43maw9s8mHQYv7UbW/MtE+2dm0nOK64LndRvOwEdO/dC4nI1eR7P81Ds+7lXyI0C
 5nxEGyePmv2mBVFSBsg==
X-Proofpoint-ORIG-GUID: Vg5jzHBEz2zARFgRS0iWshKO0OcWkCIw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_011513_753200_9B3C6DAD 
X-CRM114-Status: GOOD (  12.51  )
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

On 3/5/26 10:13 AM, Vladimir Oltean wrote:
> On Thu, Mar 05, 2026 at 10:11:32AM +0100, Konrad Dybcio wrote:
>> On 3/5/26 9:51 AM, Vladimir Oltean wrote:
>>> Hello Konrad,
>>>
>>> On Thu, Mar 05, 2026 at 09:39:35AM +0100, Konrad Dybcio wrote:
>>>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>>>> index 55af015174a5..bdfa47d9c774 100644
>>>>> --- a/MAINTAINERS
>>>>> +++ b/MAINTAINERS
>>>>> @@ -10713,6 +10713,7 @@ F:    Documentation/devicetree/bindings/phy/
>>>>>  F:   drivers/phy/
>>>>>  F:   include/dt-bindings/phy/
>>>>>  F:   include/linux/phy/
>>>>> +K:   \b(devm_)?(of_)?phy_(create|destroy|init|exit|reset|power_(on|off)|configure|validate|calibrate|(get|set)_(mode|media|speed|bus_width|drvdata)|get_max_link_rate|pm_runtime_(get|put)|notify_(connect|disconnect|state)|get|put|optional_get|provider_(un)?register|simple_xlate|(create|remove)_lookup)\b|(struct\s+)?phy(_ops|_attrs|_lookup|_provider)?\b|linux/phy/phy\.h|phy-props\.h|phy-provider\.h
>>>>
>>>> Would looking for the devm/of_phy_ prefix followed by an open parentheses
>>>> not suffice for the 'has function call' case, instead of listing all
>>>> currently present exported functions?
>>>
>>> This would maybe work when you run ./scripts/get_maintainer.pl on a file.
>>> But I would like it to have good coverage on individual patches too. And
>>> since the devm/of_phy prefix only matches when you "get" the PHY, not
>>> "use" it, my fear is we would still be missing out on the most important
>>> part of the patches.
>>
>> But that's just '(devm_)?(of_)?phy_[a-z]+\(|includes.h'?
> 
> Yeah, but what about the networking PHY API, phy_start(), phy_connect(),
> phy_inband_caps() etc?

OK I wasn't aware of that poor namespacing..

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
