Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1651C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 11:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSOvMY5lmWE/nvHUnrRYoMWGwiYh3rmFKAj7oI1N56U=; b=L1Yhkqqb+uDG0C
	TOpF+mi9GCVEZYO+qS0DRfO8VG96CxG5LUfdHLFBMsUA+ngDILz0yQ/PHabyrgAdgyGbyMnwwD/V4
	1+gr6r/VgOgQSwxOexxbWOQXcJDxLjhAw1aRg2+yyhQXU6EMfsycHjOLoQZQHeKeEGrtPTIApro1m
	dYnXLCMZ20NXwH4OGeVJnWPEjl+kVR6PLfld0vZltHlzq7oOWFyzmfYoHqjKnuul8l2tnehSvla8H
	VefZO+/dXBQFZTE4uesJxjklOkYH4X5cS/aFSM4T8WfRK4sbum2NHHZcS5/Psu1W5udFR0lazmG3P
	w2szNaV/t36DPMurwOjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seuoY-0000000ChLR-2ScM;
	Fri, 16 Aug 2024 11:08:14 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seuoU-0000000ChJq-3OoM
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 11:08:13 +0000
X-QQ-mid: bizesmtp89t1723806401t3aec35p
X-QQ-Originating-IP: 0wlRF3zxp1l3iIw3+OaRPWaiC5FyfaU4cNMqjgS+Sbc=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 19:06:38 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14139005040169718902
Message-ID: <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
Date: Fri, 16 Aug 2024 20:06:37 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: defconfig: add CONFIG_LEDS_PWM_MULTICOLOR
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816023243.487-1-naoki@radxa.com>
 <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_040812_333578_50412A2B 
X-CRM114-Status: UNSURE (   7.24  )
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

Hi,

thank you very much for your review.

but, I decided not to use "pwm-leds-multicolor" for Radxa E25.
please ignore this patch series.

really sorry.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 8/16/24 14:18, Krzysztof Kozlowski wrote:
> On 16/08/2024 04:32, FUKAUMI Naoki wrote:
>> enable "pwm-leds-multicolor" driver.
> 
> Why?
> 
> Best regards,
> Krzysztof
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
