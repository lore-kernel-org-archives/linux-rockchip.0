Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F242C19776
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 09:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+J2m373vmZwv1gs8W7YzVJgWWCyKKr8Z6qBudvNHIk=; b=q7dIVTyxDCQGje
	EmRTpj3Czm9scN/uKBm4WXc4ZwCs2G03U1eoTJi7jZLF4I9ulkcLaJURelUNRdlf6RD0yBFtpckxp
	ixPBo2D8D05+H2TvSFdiCD/5vzZvFMgufX+2z+UgMbGgbSB1HMtKp/A4W5nHMWCvU0Q4w2+KZTvF4
	vwXkI/SRfZP5DQO2tOD72xvXAHEVCOHa1dHaoVO7fFBiB4MTMtmp4/Jxtr6wK47vm2tx7ENnF6m6+
	1gDDBCDGh6t0Mlsnxuq0XLz4LnMBMLHEMntEhW+DDH8qsL8R9BOIZ6SPuv7Qdbo1jYyj333bW56KR
	xXjNq2xZW9I7TsWZuAQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDgB-000000035Z5-2Ojy;
	Wed, 26 Feb 2025 09:26:11 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnDfF-000000035Mx-44WJ
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 09:25:15 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740561900; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=h6jMGyNquMYiuM227g9wPaaTmMMKGJl/CrNRqyizQVbr6EknV/fyQAPekngWO1X5DsQiIN4Js07AvuA+Yvk+tA8YKpEnm+jJvSfZd4c/6RlL2gvjiJDPVD2Depq9PWH5jzQUb0wqj97LHwHb2pxfSG2DBxFlDJF5yvv7RpJIGpU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740561900; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=HQxcDlER3epDHU7gCY5nogKiIBVZBqXqRS/yzoOYA5k=; 
	b=KFvC/X8oxjJwlCK1JL1gZcfnb5+ihTbDGSkh/1Qrd7ttMlK3NvjXPhEsLNmaVoEebd6mG++JJ/JNEyzzbexl4UlThEILnJAotKcUlScrBWvv+7w2XBj8CJ/ItsnL4clyYYuvqr+w3VpLUaEdtZ14Lpw9ao35d65S5qpPt7eMe38=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740561900;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=HQxcDlER3epDHU7gCY5nogKiIBVZBqXqRS/yzoOYA5k=;
	b=Au9uBnobaAWWqJREgg7BOma+yPXfVIT6l631Hzgb7RW6BAG9xkt93duVe1DLGcmp
	Pamusoh7vhtjBw+3MG5I25cw4tg4DFFATJnt1pTWiLVp2Dc68pPeXxcry/tdDmft7jU
	+q38mpOg8or6lUhfgw31FPIewfOwmR4XVBxD1c1M=
Received: by mx.zohomail.com with SMTPS id 1740561898306593.375047630114;
	Wed, 26 Feb 2025 01:24:58 -0800 (PST)
Message-ID: <860e30df-ba7e-4df3-b42a-ad41c3922b0f@collabora.com>
Date: Wed, 26 Feb 2025 12:24:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 1/6] MAINTAINERS: Add entry for Synopsys DesignWare
 HDMI RX Driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-2-dmitry.osipenko@collabora.com>
 <7763884d-d259-4e52-aac8-73bca5b2ed61@kernel.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <7763884d-d259-4e52-aac8-73bca5b2ed61@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_012514_085119_EFB1A526 
X-CRM114-Status: UNSURE (   6.84  )
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

On 2/26/25 11:44, Krzysztof Kozlowski wrote:
>> +SYNOPSYS DESIGNWARE HDMI RX CONTROLLER DRIVER
>> +M:	Shreeya Patel <shreeya.patel@collabora.com>
> 
> You are sending someone else's patches, which sometimes indicate the
> owner moved on. Nothing in cover letter explains that here so we can
> keep guessing. Anyway if that's the case, this does not look up to date
> anymore, so this either needs fixing or clarifications in at least cover
> letter.

Will re-iterate on the v11 cover letter that Shreeya is currently busy.
Thanks for paying attention.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
