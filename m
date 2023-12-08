Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6738C10F05
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 07:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0yzkzL4MCDGdfsEYOKOOK1HSA9eS7bh5StuTTL+ehH4=; b=D10xKGjeU8wiz3
	vlQyJ9+hkKyZFPbwjXclCDC78p6ZM+Vgq9XPpP/cIOtA946a3/ExZCOLr0Q+TdvIwO34PubwT34zj
	siwaQEUuBRgf0S6F90czEHDzzS/D9eOuw0pWjQLshObFbF/0mnyxOmfxsKpntAwxXDp1+ijPxj9ZC
	/lxOAPqvpHxjTurinL+g+N1KZn+xOtm+e7N2If1Bk0fz89VTgkSj6DfaVDxipz0N0fZ042eSkl7gN
	fvBTB8jprmF1sULfB2Ul/JVIE2eb4trQBXgi5hw3a7yyBrpAtQsmlL75pEBRzmAy/2vesZsGh3LPF
	Xb7uWwNoJEDKsSl6ZtvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBVjn-00F0PI-1j;
	Fri, 08 Dec 2023 07:57:31 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBVjj-00F0Oo-2y;
	Fri, 08 Dec 2023 07:57:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5398911FB;
	Thu,  7 Dec 2023 23:58:05 -0800 (PST)
Received: from [10.57.3.19] (unknown [10.57.3.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2779F3F5A1;
	Thu,  7 Dec 2023 23:57:18 -0800 (PST)
Message-ID: <adf5cfa3-b38c-42b5-a98d-c8738c36737f@arm.com>
Date: Fri, 8 Dec 2023 07:58:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>
Cc: daniel.lezcano@linaro.org, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
 <170198105573.18516.6264175947902125145.b4-ty@sntech.de>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <170198105573.18516.6264175947902125145.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_235728_006940_9CDD3B64 
X-CRM114-Status: UNSURE (   8.06  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 12/7/23 20:30, Heiko Stuebner wrote:
> On Mon, 27 Nov 2023 08:15:11 +0000, Lukasz Luba wrote:
>> Add dynamic-power-coefficient to the GPU node. That will create Energy
>> Model for the GPU based on the coefficient and OPP table information.
>> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
>> In similar way the Energy Model for CPUs in rk3399 is created, so both
>> are aligned in power scale. The maximum power used from this coefficient
>> is 1.5W at 600MHz.
>>
>> [...]
> 
> Applied, thanks!

Thank you Heiko!

> 
> [1/1] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
>        commit: 381d48fbada9b5b39f5a811bb8fe76365d6bdd5c
> 
> Best regards,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
