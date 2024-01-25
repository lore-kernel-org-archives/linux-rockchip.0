Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C7C1C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 22:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+xfreB/yUVbAk+ks5xhBWwmZ18b+hP+4uLEMUkiQIPs=; b=rxP0hUHFhd8Nt8vcC0rSKjAChc
	2OlEQeV7Gsheao5UPm/Bugdr8+aEKaThQMbJ0wazzOG2DNQFqfSKwJGFy/hNNj31+Ge6q49pgE2PA
	de1zDDrbOhpXo1oXsaybJz/bydz1wVyWbBZUvS0MeEcpo6BqpAHePNn03Y1pYyEfVNdXfTMW3Z0B1
	PVau+D0ptk/QJn5X1NjTC25LVkxayf+4hV7xSP1vqRItAgarJekkT5RB7Xosq3JM0eN2nIk70KBAC
	Rx2yl+aUw7K5AZi01FGcmlWW0qMUIeiFapdxWbIfvJG4TgKnZKf4unxFRqX0aKW1OTidBE7iUoIwZ
	31oXx3xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT8CZ-00000002CmC-2u3c;
	Thu, 25 Jan 2024 22:28:03 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT8CV-00000002Cke-3VcB;
	Thu, 25 Jan 2024 22:28:01 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706221676;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t5GBrBF9OsRnqoNks0VyPcm42QML8D6LHWRsiZLc/Xs=;
	b=afDf868JUOhmEDaAcgaOu0cgPEUnJCAgBeiD+sPTKYIuX1QidtgMluuzuWDcv8XzW542IE
	DIGn07R+zf2lQIhRbOAnvKZ/CxsqbueJp5SUCjJTp0/BnFds/G5qmrcmJPBLIoLFRcd+Aw
	2xNGEqMabo4h9EK/iLoZ8hPMh0VEiyH+zbol4568hoBmjf3OYL9ZjEpXd6P6d191DYrB2N
	BU5ytmmmJ/VkgCd2/XchEnWfZMiAOvrzgblvPcxz0UvBimD6+rFI4EQuhEHbn+KHRtek80
	CE920VJu1BK+xQgzK8IU0zqRjmBbKftHB4bssJHJoY1WC3pNYugwYF2ePDX69w==
Date: Thu, 25 Jan 2024 23:27:56 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Kyle Copperfield
 <kmcopper@danwin1210.me>, conor+dt@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <170621707730.1872080.15784453219296022164.b4-ty@sntech.de>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <170621707730.1872080.15784453219296022164.b4-ty@sntech.de>
Message-ID: <4001cb956ec9603e21b31fc54007e467@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_142800_066509_01A17FA5 
X-CRM114-Status: UNSURE (   8.59  )
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

On 2024-01-25 22:12, Heiko Stuebner wrote:
> On Fri, 15 Dec 2023 06:00:33 +0100, Dragan Simic wrote:
>> Add missing cache information to the Rockchip RK3399 SoC dtsi.  The 
>> specified
>> values were derived by hand from the cache size specifications 
>> available from
>> the RK3399 datasheet;  for future reference, here's a brief summary:
>> 
>>   - Each Cortex-A72 core has 48 KB of L1 instruction cache and
>>     32 KB of L1 data cache available, four-way set associative
>>   - Each Cortex-A53 core core has 32 KB of instruction cache and
>>     32 KB of L1 data cache available, four-way set associative
>>   - The big (A72) cluster has 1 MB of unified L2 cache available
>>   - The little (A53) cluster has 512 KB of unified L2 cache available
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for 
> RK3399
>       commit: b72633ba5cfa932405832de25d0f0a11716903b4

Great, thank you!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
