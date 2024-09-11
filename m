Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75250EE01F3
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 06:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KG2ztFhQysuEIVg+LW2ki2UPlrWRoZunuc1gHwV2XZM=; b=WTLFd7P6cY9sSt
	P4RHowHLnZ89rZynxpaphHYOrFxI/yBZIyDDHPp0nM2wO5NhCzEE44f3tYD7mf8TmLNlikiGsvCgi
	Zn+JudTWivGUrSzg1OxRnU2N9j+NjibUyfxNX19Vx7MAepBIeqm10zA01Mq01iX7sf+OL4vehYiOJ
	4r3Rw9i0QeG3uF26D2uivYKhZarHhJgnlOEH57ItUeaSXPR5jnrExvy2ENzTsb7Xg7s0VIgCCLdi1
	s5OmKqCYcrUVhh1/M1VSeDkVpI+e06O57CKzT8zrQItlYA5icHX+uE3IxOGgO43nBglZ5LeAmh8MU
	TWYcVB3vthoo+E1DkKKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGmD-00000008GHH-0OJd;
	Wed, 11 Sep 2024 06:24:29 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soGl9-00000008GA1-2cxw;
	Wed, 11 Sep 2024 06:23:25 +0000
Received: from [192.168.0.160] (unknown [220.162.71.13])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 9DCEC78909;
	Wed, 11 Sep 2024 14:23:16 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 9DCEC78909
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726035798;
	bh=G6ZlhgSqLu1jIrj4ZJvMQOKzybekvd6XIOY3ry0RzrI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=q4bx29TGnWLvZaZywL9HFJeY/ltajfcnMykw73XRyhlnBf4+sHCa7aFUr3rmDjGUB
	 WjKAwHBYa3FITUg2c364dnLwlTip/8o25Fy7swUc5BwzQRF+URpqpcRZ2Es/aP/837
	 n2PW5QHy83Ysm1FMrVoGxqVgAqytD+Gfl6yKUfUw=
Message-ID: <50537ca6-2324-4cbf-8036-a8c5cadd52be@classfun.cn>
Date: Wed, 11 Sep 2024 14:23:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] Introduce Photonicat power management MCU driver
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux@roeck-us.net, wim@linux-watchdog.org
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
 <20240908093002.26317-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240908093002.26317-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_232324_310260_AAC1BA10 
X-CRM114-Status: UNSURE (   5.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024/9/8 17:30, Chukun Pan wrote:
>> Initial support for the power management MCU in the Ariaboard Photonicat
>> This patch series depends on Add support for Ariaboard Photonicat RK3568 [1]
> 
> The official website says it's "Renesas RA2E1 cortex M23 ultra-low power MCU"
> Perhaps renaming the 'Photonicat MCU' to 'Renesas RA2E1 MCU' would be better?

Renesas RA2E1 is a MCU product line, and Ariaboard wrote firmware for this MCU.
Maybe "Renesas RA2E1 MCU in Photonicat" would be better?


Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
