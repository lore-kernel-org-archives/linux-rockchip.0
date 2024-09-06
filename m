Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBB68CE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 10:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRSGMgwC4YuYAqfEqo4hyPExYSz7VEmhiQdW/Y6r8dw=; b=ZT2krZ0Yiy+Jgm
	EnE/amKe57Xje2WFpi+5gsH2+1MzRd5fPstXFLav1IazoPVQt+vGxyf6FfUWmurYfehUUQfDb1i38
	EwFFteq2mVghVomr11CfQwJgAx1kdphqOAgFOip6S9o0I4+nXOrP4g5jGXP1xeyXAMAj8cvMgDuxb
	Fa/AAkaj0AoCuzGVpabohmlUTBDygsKmh+7TY1dcgYoRaT5PSUADYzMvca6h9/VKROdlONQtbgIJU
	ytaQ8d6dzZNdBHvCuR9eFWJ+Mi5/MSRBGy6Mn/80nyXscQ8HJZrpdBeUjZxiN/fzNmvQzxToeP5I5
	IhLop02JSdsF/zdxiECw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smWAs-0000000BkdE-1P98;
	Fri, 06 Sep 2024 10:26:42 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smW3q-0000000BibI-24xA;
	Fri, 06 Sep 2024 10:19:29 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 78FA978A00;
	Fri,  6 Sep 2024 18:19:22 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 78FA978A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725617963;
	bh=MykDBDEeSXpiJA/5ml7RMoyTFs9rXLaVXhQuD4WYiVg=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=cQyXlKQC3OmuDWiWxy79rw8XDWBm0hiZGJhWiYPm56DG/s/tIat4GeKALjOw9cD/v
	 OU3M/kMBbns+SNGDf7AeLEAD5FCHXxBIg/3UcjztCNhTj9TnB5YqBOadDKnDjLDvz8
	 8DGI3tMAoZYYh5aYd8V+TWF2bNAYFXewSVkxM3V8=
Message-ID: <3094e728-f9b0-46b9-8aaa-e8a1d8b55252@classfun.cn>
Date: Fri, 6 Sep 2024 18:20:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] Introduce Photonicat power management MCU driver
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <155940e4-d209-401f-af03-b32b57e5f7b2@kernel.org>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, "Conor Dooley,"
 <conor+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>, Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <155940e4-d209-401f-af03-b32b57e5f7b2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_031927_019981_A22F2FD2 
X-CRM114-Status: GOOD (  10.18  )
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

On 2024/9/6 17:45, Krzysztof Kozlowski wrote:
> On 06/09/2024 11:36, Junhao Xie wrote:
>> Initial support for the power management MCU in the Ariaboard Photonicat
>> This patch series depends on Add support for Ariaboard Photonicat RK3568 [1]
> 
> How it depends? This prevents merging. You must decouple the patchsets.
> 
> 
> 
> Best regards,
> Krzysztof
> 

Thanks for your correction, I will decouple the patchsets.

Dependencies:
 * "dt-bindings: Add documentation for Photonicat PMU" [1]
   depends on "dt-bindings: vendor-prefixes: Add prefix for Ariaboard" [2],
   which requires this vendor prefix.

 * "arm64: dts: rockchip: add Photonicat PMU support for Ariaboard Photonicat" [3]
   add nodes based on "arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568" [4]

[1] https://lore.kernel.org/all/20240906093630.2428329-9-bigfoot@classfun.cn/
[2] https://lore.kernel.org/all/20240906045706.1004813-2-bigfoot@classfun.cn/
[3] https://lore.kernel.org/all/20240906093630.2428329-10-bigfoot@classfun.cn/
[4] https://lore.kernel.org/all/20240906045706.1004813-4-bigfoot@classfun.cn/

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
