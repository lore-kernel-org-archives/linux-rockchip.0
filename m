Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7217C636DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 16:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmOHQjs7wU6dKuCHRnb4I5EeiV594TX0DPCEsQ4lyeY=; b=ahZaCJNciGaYDo
	KBnHHSyTp4zLPRuDXF2B8VLr86zTQjG0nzTO4QMi/7WqdIYUwz+yCcvUo0mES6VvYDBBlFY80UiRM
	iBquttlINtChB4x64q18NsvlLNLt7Tiw+XzYZIS6Rkr6VBc5UD6CgTzAwcegk0wObz3/HFPwc8T4V
	m1X8xZzNfA+8zVeDOLJE7Nz/ya/R8XxagyKSg43Aw71EPCOtwMu4P+EZNiApgI2PRlD+J0l5Y5toN
	/423bk0xCzoTIYa2gZKx+prMQmk97UQNRKn5zu129NU8kWe4YFU8IDvlQBi55JTrnlc7eYjpn5Cme
	5wUKcM1fMotYAceWTRLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjLNs-0000000GAMA-0TGZ;
	Wed, 28 Aug 2024 16:19:00 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjLN2-0000000G9kA-0n3L;
	Wed, 28 Aug 2024 16:18:09 +0000
Received: from [192.168.0.160] (unknown [14.153.79.170])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 33DC8789E7;
	Thu, 29 Aug 2024 00:16:02 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 33DC8789E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1724861763;
	bh=6K8wd3nD9WLSsOwW9XksbhVbocZ+D0rpe/Hdv2t4fOg=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=gks/6HOQV81U32M4YIzHwfFzcxWsICyHwEYbTCylEzPt847v3Pqfo4iWNKohiF/v2
	 fg26KbTD26Y8E/bg4/i8SR9mF/0OjQjpfTJ+mUsIQciojbHfbYs30NTi1d0FAUYl6V
	 kYrJp9qTpldeIHYk8p9hluNDJt+8tvvXg8czotbk=
Message-ID: <8be71b44-403d-47e2-b148-09ef9f1cf050@classfun.cn>
Date: Thu, 29 Aug 2024 00:17:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v2,3/3] arm64: dts: rockchip: add dts for LCKFB Taishan Pi
 RK3566
To: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240826110300.735350-1-bigfoot@classfun.cn>
 <172485421376.1511809.16668781813371034474.b4-ty@sntech.de>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-rockchip@lists.infradead.org, Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <172485421376.1511809.16668781813371034474.b4-ty@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_091808_435493_BEFD9F2C 
X-CRM114-Status: GOOD (  14.07  )
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

On 2024/8/28 23:14, Heiko Stuebner wrote:
> On Mon, 26 Aug 2024 19:02:26 +0800, Junhao Xie wrote:
>> Add dts for LCKFB Taishan Pi.
>> Working IO:
>> * UART
>> * RGB LED
>> * AP6212 WiFi
>> * AP6212 Bluetooth
>> * SD Card
>> * eMMC
>> * HDMI
>> * USB Type-C
>> * USB Type-A
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: add dts for LCKFB Taishan Pi RK3566
>       commit: 251e5ade9ba43f44f60713310f89e0f4495a2088
> 
> 
> It is customary to re-send the whole series when doing a v2.
> Replacing only single patches confuses both people and tooling.
> 
> But no worries for this time, I found and picked the correct version
> I hope ;-) .
> 
> I did sort some more properties and nodes [0], so maybe take a look to
> make sure I did not break anything.
> 
> 
> [0] There are sorting guidelines in
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst
> 
> 
> Best regards,

Hi Heiko,

Thank you for merging the patch and sorting the details!
I will make sure to reduce mistakes in future patch submissions.

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
