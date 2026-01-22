Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBEFAD4695A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 01:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxiag/RufJhRzq7MQAPspM31g7bLwDHOQgaLiMY2rI4=; b=QzVEmIOnUhQEyo
	OluKJIgBsonvA8Nf7eXrGpUVOQyTjEnQzeOTmpb22rANH4gGZUKYLhlLLaACuuJhdjCqAP33ZS+eN
	BAY6ffyAkNVFJvzjNRG8k+4gJQ95FU6Kfzdz88d6INlh7avdJpkUjXCFUSy2InM+XRKRb6E/thG0O
	rTthY+1uE4A0GppfYNvCO/osXQ8BpQCVhZWddsn6V8YEDWIYtm6GmVkchfOL1hKa3OuBbL+4QUfUX
	6d4YMLxhdx+mULCQEAwgo7ueKrnavZl/7Ql/D3jN3BdVgOAxm4MvZ3g0RgRJH6Fn0gjX2Fsv24CSX
	nhsMzJZRCBsZlrtW0Olg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vijfJ-00000006HDD-40Ue;
	Thu, 22 Jan 2026 01:39:17 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vijfG-00000006HCX-2fPP;
	Thu, 22 Jan 2026 01:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1769045903;
	bh=cPE0p9RxdCG7EUodZ3CA4dL1d1UqXwSbCEzSbu8JCNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=clZNS/HvgFMGLO8/4q8wZ4fl6p8LfQGAaO4BzkRGGg8wYclcannzxH9HiiiAaLMVU
	 IiZhYpnnTpXHCX2r2IKi07qbHgsV3BMTHAj794b4WS8pzTYgnQAhoznPDIfZZruIIR
	 JDTHSvtKjAHmZEbuMliKlP6DgrBJI+J9cVMsSUrU=
X-QQ-mid: zesmtpgz8t1769045901tf13cdf21
X-QQ-Originating-IP: 94fsbE6w7nripzqNc9kOAoVpUQgk+IWMUu5xSnZT8bk=
Received: from [127.0.0.1] ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 22 Jan 2026 09:38:19 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5162936988609351219
EX-QQ-RecipientCnt: 17
Message-ID: <81D509A8F65F0243+c7b58aef-95a4-4f2a-a423-7e8b2c0bbeab@airkyi.com>
Date: Thu, 22 Jan 2026 09:38:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Andy Yan
 <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260121031548.402-1-kernel@airkyi.com>
 <20260121031548.402-2-kernel@airkyi.com>
 <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
Content-Language: en-US
From: Chaoyi Chen <kernel@airkyi.com>
In-Reply-To: <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: N7bzzhFwp0G2UFyEb0wIrBnWrtYCHOLXAjMak90+CIQ6/WVfi7359wKn
	lI4oG5CTJjC3kqy8Vkqex/WKvNhszPpm6qDItcz/HRPFwMCQhrX1mltwM5X+/c3vtB7ihwl
	xZnlgaca+YImizL8QTsDa/6/TXV8W/SXt5xbdk4gzQVdB+TUpE1RfTezoZQLM6aN7GiPczk
	KKQSg5UyTnU2ACylYL5BowYJoVkiWbB0qJPAWvKYlWecaiwSP261/IZXL7OvUzgVuTGAGmj
	WuBHDBYiI96/OmoM1IdLhXqd4waw0EMvktenlofjYQ8GxK1BXd+Q3cRbBjlsr5HJxXQ3yp5
	SrWmuv0ejr0ZaaowTsiQdAji1xwnHuqEWRJD40GroVj3trGuFVoEEuRemVnqgJdr+apH5lr
	a9X5UzUulgLml0PBjJuLk3+7KCUv3ICwRCGj3AlcNM8SHvGx6cfysnOTCu4uwXhG33Rcx2F
	9dhwk1WWT+GiU1VE2makFz0u9o0DwJfwHsXtZxJdhX60DtgsSntt2lEDDZXv0RuwJx7hvGh
	F97vs2WGExX4JSb3NIaQz+IKRAMnWcbZf4e4AQFTVV+1vOwg4eTYvm6ePPncYQon3/RNDgD
	V+ee9MU8+1tcEzHTaqNBSYvJ/35eUxoENeeY1EYtVn7RG0TWL44Box4QaVA/1Y6gQ6ArJUK
	/cDR6psW7J6wvLqJLQrw+Gl4cLTAa6R7b0DGAS4mxZmCUKCOgNDdRTxKbbXvSwq92vHLaUf
	9l5ylJFbf6z8kUVsjoDyB6S/kppLg9DxETMFXQASKW/w1da5cjgLSb7INlbF8e0+Ad47tq1
	BJLRMBjugORIvoUUiPIe2ZOOSsULGAe/w7Wjyf7Ja/cDg4VDxfAoToQ6p4wOALi/UTvOIcR
	hKhheWWXJsfT9OKm3DtsJLuG3L1HckYgKPj7brvcwpCTP/Z8qYbBnJnIemrNEqDgzn571xB
	z+2tjZZqz4zq2EKoWgygs2b5CGIfVYiJoOmNWY+yxmYgMXmJ5UO27qIaflER8V3lm9vaL2m
	RLQVl7YhKqu8k7ACae
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_173915_164204_C3D46390 
X-CRM114-Status: GOOD (  10.58  )
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

Hi Andrew,

On 1/21/2026 8:55 PM, Andrew Lunn wrote:
>> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
>>  		reset-assert-us = <20000>;
>>  		reset-deassert-us = <100000>;
>>  		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
>> +		tx-internal-delay-ps = <1950>;
> 
> The PHY should add 2000ps, as required by the RGMII standard. The
> difference is so small there is no need for tx-internal-delay.
>

Thank you for the clarification. I chose 1950 here because I find that
the MotorComm yt8xxx Ethernet PHY binding only offer the options of 
1950 or 2100. 

> In most cases, 'rmgii-id' should be sufficient, unless the PCB is
> badly designed.
> 

I suspect the ROCK 4D board might be an exception. Sebastian once
reported that it wouldn't work properly under "rgmii-id". Well, I'm
not sure what strategy to adopt in this case.

-- 
Best, 
Chaoyi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
