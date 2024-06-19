Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7455C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 12:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZrzOzmu2bLtliJqgGRemBK/qZWs4YmklgHY8hO4Jfg=; b=JGZ2xqsHXCQ7wu
	ZTEc+UEX7KA6JajznjVqN4XwqoE3ETx4gcjjxVo/jn7KxkjIZiT9q8orJ41Lu9hjv/ulEJqcC5hHI
	mSvTjDbo6LSMoQ5BitFtWx33siekTZKYPzE+aeuRFODDZPigLlrJQmS+hon22tw/1V+ANvOaykShC
	aE+KeDwUKN1CvwG2YFbMc2rGoR7Zm/JIfX6UONOg29cLg9sN54L1/vhaK3YP12CbrPX5or9mhkO6k
	DYEAWHyhqpP2dGSDMhjmG9RAs8Frm1vdK6ddiIGBM7QF4xkMdnsn9XBnZFq0u4bYQmQ3cffTXxZbR
	IRs9zzp4TaSdNvKwvX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJup2-00000001EtO-2EO3;
	Wed, 19 Jun 2024 12:53:56 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJuot-00000001Erj-223T;
	Wed, 19 Jun 2024 12:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718801625;
	bh=lD62iizMar9i2A5WdIk3Mt84R3BsDRplqxsUenKolds=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SFpKWLv//Welw3dMliy5cQLiOOwJERVpjfB7lU0MV9VpxlR4xx/W1h8CJ1j6Pb1Si
	 cVzi+6P9+Z+L8b4BDZC1UxSJ91Y0wW6nzjO06n8Us24i160m6qCFIolDSN4sowuFte
	 1G54mE7p3wmA/ONG2QzllX3jG3ZPbwmcAROPhEMFlxnaxEi6JZ4YyPlmSUvKudUcPg
	 pXQEL5ImN3Ir3sGpAw7/MITaP2r3pRsD7VLbGhtl5uGirG7jyoNKMk7ra+ar03hMY3
	 +Cwz7UX9aW7KsAofYk38ckIF9Vjqozil8YC8y2EYTyHs36XT9/j9/IsW5wsUhxGKhN
	 koMh3M5vvOk3w==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 62DA73782159;
	Wed, 19 Jun 2024 12:53:44 +0000 (UTC)
Message-ID: <f6fcbca9-a5cd-42a6-a911-9515d131d992@collabora.com>
Date: Wed, 19 Jun 2024 15:53:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: rk809: Add missing audio codec
 properties
To: Jonas Karlman <jonas@kwiboo.se>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Furkan Kardame <f.kardame@manjaro.org>,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240619-rk809-fixes-v1-0-fa93bc5313f4@collabora.com>
 <20240619-rk809-fixes-v1-2-fa93bc5313f4@collabora.com>
 <dc71686e-a3fa-48f7-83a9-34d0f365ff07@kwiboo.se>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <dc71686e-a3fa-48f7-83a9-34d0f365ff07@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_055347_879856_536F6629 
X-CRM114-Status: GOOD (  15.70  )
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

Hi Jonas,

On 6/19/24 3:20 PM, Jonas Karlman wrote:
> Hi Cristian,
> 
> On 2024-06-19 13:23, Cristian Ciocaltea wrote:
>> The RK809 MFD provides a RK817 compatible audio codec, supported by the
>> rk817_codec driver.
>>
>> This has been already in use by several boards: rk3566-quartz64-b,
>> k3566-roc-pc, rk3568-evb1-v10, rk3568-lubancat-2, rk3568-odroid-m1,
>> rk3568-rock-3a.  However, dtbs_check fails for all of them:
>>
>>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dtb
>>   rk3568-rock-3a.dtb: pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks', 'codec' do not match any of the regexes: 'pinctrl-[0-9]+'
>>     from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>>
>> Document the missing audio codec properties as found on the
>> rockchip,rk817 schema.
> 
> This is duplicate of "dt-bindings: mfd: rk809: Add audio codec properties"
> part of "arm64: dts: rockchip: Add Radxa ROCK 3B" series.
> 
> https://lore.kernel.org/all/20240505134120.2828885-3-jonas@kwiboo.se/
> 
> A v2 of that series with fixes for reported issues is imminent.
> How do you want me to preceded with such v2 series?

Oh, it seems both of us made the same mistake and wrongly assumed the
rockchip,rk817 schema is good enough to be used as a reference. :-)

Since both rockchip,rk817 and rockchip,rk809 files share most of the
content, I also think this might be a good opportunity to get them
merged into a single schema.

I can do this in v2, unless you prefer to handle it as part of your series.

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
