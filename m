Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5A27C10F16
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Apr 2024 21:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tkVzXu22xJtmPeOxYbzgn9Ne9c7PZ0TEXcmjuZ4OHI=; b=wxJszookZQJw4E
	P0Eq3iN6n6jRtZIrGG4NAZ7quqBCKIfKkTIdPQ4bjerKdQkGDd6O0YFl4Ls4ET2z/nY8xFi6RHyD/
	e3EWQbwygkBfDpH/e6g0tHSS+ji33J5kKoXVqemF1hUTZCXUgigcQQKec/m4ygL61OI/yCHrHvb0A
	+QrCO5tX4AKBokB898NyN7SL5r+0otYj4uoXXZB9oeNbNQBdOaq9ZypvaPbFuQbTDyoNJxWi6iLnV
	zIgYuRPIhJp+MgsfCFSecYxcnAo9X3tvXcDoFa4hielPCH0InnzzYduZP1PfYV2SjQwBzK1K/qvu2
	WCP3w11t4JajE8HcOgUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1vLm-000000080bu-2PHR;
	Tue, 30 Apr 2024 21:49:22 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1vLi-000000080b1-0nV4;
	Tue, 30 Apr 2024 21:49:20 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-6ee12766586so229408b3a.0;
        Tue, 30 Apr 2024 14:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714513752; x=1715118552; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gQ81DFkgmFb2qWSA0tT95p3yazTu3GOFFQ2uKG4zcqU=;
        b=HfJ1kD6fSynNR1dA89r313ZLpEk7LFhKxFYhsk/YuJK+SI5Gn4Of7VUxlT6NEj/5Zq
         DWHHMHTV2SSIwtgwwI8m7TKMI5qh0LuWjx89DY54rPOrf9gPIlTlK9uteM+pYJ8H2s2R
         mGs97oAO4wd3hPsnMyHz5kdEQSdkheiYSeJnuTpAFViZuXIoizmSUjHp3iEqQvsdKnep
         EWO2IgAWnqqQzCsRrpyv3fTgYrV1nyRZF51wO+DUSaMDilR7hzUVrvmLOZA0wxDJjuTc
         hPmZnr2cPNTT2bBcz1oSPPCXodTetFG27NpaHEMmpnA/3cchyPqtn5dUXxJog8pq6p7l
         nyYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714513752; x=1715118552;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gQ81DFkgmFb2qWSA0tT95p3yazTu3GOFFQ2uKG4zcqU=;
        b=JEjqXa+ICXZrBJJmo5tLu4kI80P4aOMGLOixhoJMZLselwkcngoT/uKJXuxzLbAhnV
         ICP3I32ZZS2cHcyUmJ0/A1W7wLKNFVls+n8NLmDFG6nUk9pOzgwjPVzYww75/mpqFaLW
         rUnCOsLW65iHsnXPa2QqVOptwnPo/uzbV0YBrfMiHWGf794qUMLKxPhvOfX7lDR2F3ps
         9pQe9Ltp8yKGKSrRa7VAb3QrKN84JtmSKW/CPTh66rpkeAbi6K4aWFNPoTYGz1Qi2KJE
         bcRkcRGPjlTgvpvjPFh7cZYp1+acbp2Cy0qpSQYJiJR4oO/IQZStAfahbIHhndklxzHR
         /RZA==
X-Forwarded-Encrypted: i=1; AJvYcCXOwSSjuZozkDXYtus62mpg7Py1glXIysj2JnXPujgHM07Mo5NjeAbaNYHHlGbacacuW3qWpv/FRj0fL5mQBECyFE/DhjMTi4YK8YVwRYsLmTADs7MFG0yLrtx3Wb/0YlvOKCu2lkhKRcwc+phvWc/GOa2gSss=
X-Gm-Message-State: AOJu0YzDWRM4x8/XEudsZjpNWWDLrTblbFB5RTdGNfe5hgqn1co39t/8
	dq+vLuuelz69t+q8STIfB08/V7OiwrCwsStVi3cR3P/xh2f95tmX
X-Google-Smtp-Source: AGHT+IHQGDfoheQSbpzkVLH56jhhZSeorElzvZNIjh/7FJfIYfrT1165Kn1yMHGcREJjEIUoAW8BJA==
X-Received: by 2002:a05:6a00:10c6:b0:6ea:f43b:b961 with SMTP id d6-20020a056a0010c600b006eaf43bb961mr5803046pfu.6.1714513752457;
        Tue, 30 Apr 2024 14:49:12 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id y5-20020a63fa05000000b005cf450e91d2sm21394224pgh.52.2024.04.30.14.49.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 14:49:11 -0700 (PDT)
Message-ID: <7d412e48-a58b-479d-9333-066359d52432@gmail.com>
Date: Tue, 30 Apr 2024 14:49:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: Add/fix /memory node unit-addresses
To: "Rob Herring (Arm)" <robh@kernel.org>, soc@kernel.org,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Khuong Dinh <khuong@os.amperecomputing.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Robert Richter <rric@kernel.org>,
 Chanho Min <chanho.min@lge.com>, Avi Fishman <avifishman70@gmail.com>,
 Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>,
 Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>,
 Benjamin Fair <benjaminfair@google.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240430191856.874600-2-robh@kernel.org>
Content-Language: en-US
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20240430191856.874600-2-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_144918_327176_E0D93627 
X-CRM114-Status: GOOD (  14.41  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/30/24 12:18, Rob Herring (Arm) wrote:
> '/memory' nodes always have a 'reg' property, and therefore should have
> a unit-address with just plain hex (i.e. no commas). Fix all the arm64
> '/memory' nodes.
> 
> It's possible that some bootloader depends on /memory (arm32 ATAG to DT
> code does for example). If so, the memory node should be commented with
> that requirement.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> SoC maintainers, please take this directly.
> 
> arm32 is much worse, but the platforms using ATAG to DT code can't be
> changed and I don't know which ones those are.
> 
>   arch/arm64/boot/dts/actions/s700-cubieboard7.dts       | 2 +-
>   arch/arm64/boot/dts/apm/apm-merlin.dts                 | 2 +-
>   arch/arm64/boot/dts/apm/apm-mustang.dts                | 2 +-
>   arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts    | 2 +-
>   arch/arm64/boot/dts/broadcom/northstar2/ns2-xmc.dts    | 2 +-

For the above two:

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
