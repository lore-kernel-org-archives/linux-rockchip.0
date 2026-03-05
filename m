Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F3EEEF33C
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 09:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuDRNqU/yDB6tdnc5vaSYpn8AtGO8GjNUuqYUkC4hEg=; b=N6s/avm8KEQrgw
	vN6fnxeMzJqQUs0DcgrJZGs9TU2MGoo1+AnulWbMj0/5vZmnvsbluH6U7uQ8VXZZkVUrqhD7PekE8
	f8WDIRKVk7SwvYCQmVWQA7TkFvEvWe5FaAngH9JhYTcW9OIE6aIIchPCNaE779M+661iKCqO3DdZr
	OyW85DV2k6EF5LJGnH4aELdNhCI31Y+4BEu8Sk+SxmxSljTbARYpOQIzwQ77uep7Yvr+bPKjsf45c
	lodosRALrhc0rEvWfQ3Q+3FgMSq9kbmu66mBxgnz9h35I4ulNHX+WlrG7Q8L83DIhUUv44NkGbzgF
	IFOH5wQXv+WOxscG0/og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4k9-00000001KOJ-2UTL;
	Thu, 05 Mar 2026 09:11:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4k6-00000001KMV-3bL2
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 09:11:40 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6258av5X1193218
	for <linux-rockchip@lists.infradead.org>; Thu, 5 Mar 2026 09:11:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TypToE/9U/eP/4BcrjqQk96qrNbThgAgULngx0dU9VY=; b=W0Hi5Pu+/Kx9rub3
	1LuwoztTEiyin65jy0AFa9w9CeQosyQeKJh8uCqng/kW+AvyBzw620uEIw8ElxxS
	p7DgJXpyHxlQCgU7ZnXWh1fDC2kEZgsF+bNRtHfjWvvQQP20fzVlblnrbJN5YtJj
	cuXRnfwIw9A1WDVd75f5iR90V/hmIMXMAApDkJvz92wPoO8C6Cah4UDdFm28qxbm
	JkVKYxCSPSIeuDpcvHiSq5co1WnUKQ63+OjUFG3+cpPsRMO9kCFdRbA5AXYlIq+/
	D3NF4cr175vifDznzJXmfwFBgZlGYxgAmz/Vae9OYLQmqMJp28j53fTOD1MekVJb
	WfF0KQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpqwgav5m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 09:11:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb38346fdbso590836685a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 01:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701897; x=1773306697; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TypToE/9U/eP/4BcrjqQk96qrNbThgAgULngx0dU9VY=;
        b=FS0L6vTWVK3Ioka6gEGdZ/arYLbPOBxUv8+iKhznduPRuPq9O/QeJXMipB2KrvgwG6
         7pmCrWKVOVXgI40+VKZnWJozkdBNh8FLt6SlZB7DhbAJkadTdpNc/9OT9ZZzMHKpd1l/
         VYxng6JGsnPC2bd/CBLnYJTkieGo+T2emg4wW9GX0MOVxoxU8soI2BKn8VwvIb6bkysz
         A4ize1disV2bIV94Ajn2/xck3uB2BemIGotCym4KVOFRZJyzlgrAtIr8EoYQeJMydkmj
         l3GXOEYTKArS9xexhrlkhXd/nRk+it0/416Rc4tlmv/ZlzuLheEgv3sZs0syQ/VJ03JJ
         nqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701897; x=1773306697;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TypToE/9U/eP/4BcrjqQk96qrNbThgAgULngx0dU9VY=;
        b=U8VGIblIGoc80POu0XTFxDq4ZURQjZ4hsxb1s6xSSxW8VJsc7NVyXGfi2F70GXH7KE
         nlr9y3joRWoHLh+nPskXWDPC+fiHeqqLc8rvJ2mkWIgrGFvjUHS5s9sCXPzvtrNuwxY/
         gsR0V7J0yZu9t1qazSAp7yA2aVfeJfLclZKHI3pqsudmKPGMIsVxYEsIIfnXlPGdBgT5
         4z0Z/PGxqvghbX9H7Uf09RJQlsXzdKwA20LPI3Alw/KEBTil8RPDjVAnu+56m7OF9rEC
         BTqNLLdisZnzO+T0yDJIKigX25ElVNyyUwr7M0TzyLgxnRrW+WpdhnfzUw0Z0icC0Wms
         vYLw==
X-Forwarded-Encrypted: i=1; AJvYcCUmkRSFIO8Fd4AO/KwuQ+Ykeg5YZ+q2KxThZTCCoQmBDZ1b1Ivm3/8AY5xfqv9A25uivlz1Nvwqnx/0QpshRQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNFummpfqKmlQiNu1JSn4Pv6knY8TjG877choG/84oEykSip/v
	dGNHc9FhVLWsgwJLSPXp9kUEjfV0Q9Zd98X3/LKD1QdesikmIhUggbqjgR4X4tHWqh9xMmWcCMJ
	NUyEVSxtzi9DrEDp7KOH2oH1wdAkNpXx1iOmL0R3pG2Ym2utfmFUeOTvbBVX8Yksc5l5f3uQDdW
	8=
X-Gm-Gg: ATEYQzzPd2HdS1crnWSHXU9dKD7cutaEi+LxoFQMqN+9tESktoOXoCgVw0sXN10wgMz
	/7BYkjBlKSKeFlE5veZJ2dYT+g9xtx1yq54B05yk+liF2Ag61lDN7YJ0Q4PIhVqJcQ7+y1ncNNY
	8UQ3dOh681sYopsguridqbSFeSHqIy9XM7rGTpIEn7FAz/inpC/ztpVmHpfKyEtWZWYs4WWc5gW
	nMvRhD4zplE39DQ7fMF6WR+6TxOGS6wTvhGfiO3jQIvHe4Z5vrXVatefQVs6Y/hq/ACouJmi5Qy
	6ry7ZoMSYh4cbNAKWIiNrxmH+kVtRu23f+ghHZYYETZLn31H0M+E1HJHxFVFf8Dk7TUGNda9D7s
	FKrqHZz6amQ98pOZ3WpduKDyLr9eevz9gxsIZDQz9w3m0+jC9uUuM8TCrj6yVKW4kgEAE+hG2To
	RcpiU=
X-Received: by 2002:a05:620a:4156:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cd5afb0224mr487946085a.7.1772701897183;
        Thu, 05 Mar 2026 01:11:37 -0800 (PST)
X-Received: by 2002:a05:620a:4156:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cd5afb0224mr487942685a.7.1772701896576;
        Thu, 05 Mar 2026 01:11:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660bf4d8249sm2589351a12.17.2026.03.05.01.11.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 01:11:35 -0800 (PST)
Message-ID: <ebee2fcf-9069-4a9f-ae72-86f4471cd4f3@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 10:11:32 +0100
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
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260305085148.7cwo3yflp7vcfldf@skbuf>
X-Authority-Analysis: v=2.4 cv=bdlmkePB c=1 sm=1 tr=0 ts=69a948c9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=UIR2zDuwlqQ-mzEo0xkA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 3-pTtLSo8dVfmDnfjniy0SWhhAwK6W74
X-Proofpoint-ORIG-GUID: 3-pTtLSo8dVfmDnfjniy0SWhhAwK6W74
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfX9kfdYGYtkKfa
 jaNvpCtvK1bpf3IEdTwYfcukY2Hkx8g5MSLl3d2aKhcM+LCsemZpizaq3MV9DyymbDEh/WBjVPS
 2KFP1LwHcDcFrGQXZwjHdx912oM6iwqU09+fDwYKBfWOq8woozQOEBy3rDvQMzJEvX3VOVvLniE
 BkPyZVvRNwCzehhjluMboU+/QvERrCGMpXEee01YZu+EfvvehHwRxB79Lyttv55SRlNuNVvkjjy
 5tj/vBJhsp7lUKZRI4V8fjoiXLAIKKnLrI8dX/kyFhdPlZf0NhDPsY3Z0Op8MOEE9x6pAZMQhxP
 qVTZNbflTbMra2u9R7dhMUYiefVU+mQo25M8+QWkkfmfnNpiDbAoWAl8ybVKCca89s+p+VUx7Zs
 IvH5Q1GB/sb1M208PfwcBnX1Xst0Rq+dziUIx0mD5ZiByKDcMpEbPxkd8Hw5xuSTU+rfU4Y8F0c
 NDleNzJ7fCvQbRCu/+Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_011139_010080_FA2AD6E9 
X-CRM114-Status: GOOD (  13.40  )
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

On 3/5/26 9:51 AM, Vladimir Oltean wrote:
> Hello Konrad,
> 
> On Thu, Mar 05, 2026 at 09:39:35AM +0100, Konrad Dybcio wrote:
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 55af015174a5..bdfa47d9c774 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -10713,6 +10713,7 @@ F:    Documentation/devicetree/bindings/phy/
>>>  F:   drivers/phy/
>>>  F:   include/dt-bindings/phy/
>>>  F:   include/linux/phy/
>>> +K:   \b(devm_)?(of_)?phy_(create|destroy|init|exit|reset|power_(on|off)|configure|validate|calibrate|(get|set)_(mode|media|speed|bus_width|drvdata)|get_max_link_rate|pm_runtime_(get|put)|notify_(connect|disconnect|state)|get|put|optional_get|provider_(un)?register|simple_xlate|(create|remove)_lookup)\b|(struct\s+)?phy(_ops|_attrs|_lookup|_provider)?\b|linux/phy/phy\.h|phy-props\.h|phy-provider\.h
>>
>> Would looking for the devm/of_phy_ prefix followed by an open parentheses
>> not suffice for the 'has function call' case, instead of listing all
>> currently present exported functions?
> 
> This would maybe work when you run ./scripts/get_maintainer.pl on a file.
> But I would like it to have good coverage on individual patches too. And
> since the devm/of_phy prefix only matches when you "get" the PHY, not
> "use" it, my fear is we would still be missing out on the most important
> part of the patches.

But that's just '(devm_)?(of_)?phy_[a-z]+\(|includes.h'?

Konrad

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
