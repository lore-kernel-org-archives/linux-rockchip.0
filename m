Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 572A3C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 12:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=12Vb63Htrzc+wRqCLvmYrUH56yXTAXaxItWaJYIdaa4=; b=qA6Mjd98nSBPgQ
	7bcBrZfPRkvO0oxg32Y9a4xaZvi4yksAPZ+w9YTDmgZ5Wr9E2LQ1V/4bpPNmmT2gfV23gA43iC6v4
	JNIlUB5NRw9seFcTcn8ZnnBP7e81sWV9Lp67hdycOKr8b3cRHLmnapKkx7HXoL8p5BQdDG6zQ7+o/
	3shGWZT/Cl0OWqtCB4uaFF6G/bjSAXZxU7GRBh6As43FHJzz3zTIxJ0pvpkZk2rbW01bnbW5KrssF
	Tka9n0qY+Q/3B8FBeV5x2WzYfVlBcitT4c+rdUHXDAt0/emKs1HJxf1H6CD82sllhvMRltadENF++
	dMnQjZAG1u+xxxbd2eIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tshVo-0000000BDVx-3IrJ;
	Thu, 13 Mar 2025 12:18:08 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tshHR-0000000BAn5-1hXl
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Mar 2025 12:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741867394;
 bh=bZAbj6+NmXSfWd9Y3ZYRj3CY/kM/CunfChIIkSXsoRg=;
 b=wb0yLUzfEZxD7b6oGTb/tGtafaPwY/dJum6vY+Gclm6euIx83y1267foHv+b2Da3Hv9HtZbdz
 i54GsnOf9Di696xMrY/7BRApU8UimZqZ9hrpKOa68zuml/0887antpZnNBpnA6AEeniYDwioJ2W
 MYgaq4I3pkmXckkIXcFkuYYQOFZtzRh/qnm+tO9LjZkVCq2aOOylZm/sOQfSKiubUuCL4gQ2UTg
 Ty82EX0WjELMOiLRtwPne9GyOOH81BlQV+CDASQUGA0G4BLY61shvp7smIj49Q2nXTzg3riaHoC
 DOGBmr5YTUy3veJM2qWeuGjCjNFSKdjNGzbnCvRzxDlw==
X-Forward-Email-ID: 67d2c97dc524b8270342b1d9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <22d849c3-8a0d-4704-b69c-8019c7f70ca7@kwiboo.se>
Date: Thu, 13 Mar 2025 13:03:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add pwm nodes for RK3528
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <60065c0b-4597-4976-b74b-172556c4e156@kwiboo.se>
 <20250313090109.1910997-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250313090109.1910997-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_050317_621944_97793690 
X-CRM114-Status: GOOD (  15.33  )
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

Hi,

On 2025-03-13 10:01, Chukun Pan wrote:
> Hi,
> 
>> I have not seen any issue with PWM using the merged patch having
>> pinctrl-names=default.
>>
>> Please see my Linux tree [1] and U-Boot tree [2], those are little ahead
>> of what has been posted on ML, e.g. it has working USB2.0 host, CPU opp,
>> Hantro VPU, GPU + opp, arm and logic pwm regulators for E20C, ROCK 2A/2F
>> and Sige1.
>>
>> Please see my Linux tree [1] and U-Boot tree [2], those are little ahead
>> of what has been posted on ML, e.g. it has working USB2.0 host, CPU opp,
>> Hantro VPU, GPU + opp, arm and logic pwm regulators for E20C, ROCK 2A/2F
>> and Sige1.
>> ...
>> [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250311-rk3528/
>> [2] https://source.denx.de/u-boot/contributors/kwiboo/u-boot/-/commits/rk3528
> 
> I tested your kernel device tree on E20C earlier today and still have
> the same issue. But if I replace u-boot with the link [2] you provided,
> it will work fine. For reference, I was using v2025.01 plus this series
> of patches [3]. So it looks like u-boot does something and kernel doesn't?

Interesting, good that it works with the updated U-Boot. Main change
compared to v1 is that it now use clock/reset id and DT closer to what
has been merged in mainline Linux. It also has DT params to help
initialize the two pwm regulators used by these boards.

I will try with the old v1 U-Boot series and see if I can replicated
your issue.

Regards,
Jonas

> 
> [3] https://lore.kernel.org/u-boot/20250123224844.3104592-1-jonas@kwiboo.se/
> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
