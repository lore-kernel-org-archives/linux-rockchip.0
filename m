Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 082D5C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 10:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kvEFkQ+Y17BOcX6Mgi+/ioJaXGii/lW3F6i/o85lng=; b=n9ZwZV+YK8XKLO
	GXXK8/UyJdLjATk6Fq0d6kNQxYvSyRlcKfX9Or7i+YtpbmSXvYiz+LK+KGaN79ewAR7K33cImd3xM
	55WxKu9M/K9pAQzvi1xtqTJ0AkS7ypmY+XlOOLSVkllW0p/cQVGQ1/RT3J2wTYVAyujK96Gm26XJ9
	Td9H8T7x/dacf47QlT0ioQKmU/1jbT4eoSmbO5NQzms5gkgzUdeBWBzC8G2S+Du8fI1ImrWezhExI
	npXH3fq9TFv0vVZfphoWJlRUPB51hloN5phH+jZ5qx7eeZXw4Motcn7IR4sVE1Fzh2XmNdIdnDPb5
	f9iR8YzoaKwfUoGUbCaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbhp-00000008oUs-3dRR;
	Fri, 21 Jun 2024 10:41:21 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKbhl-00000008oTA-1oEE;
	Fri, 21 Jun 2024 10:41:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718966474;
	bh=QA/ECOiW7LO2h3JGhUWNamHoY/9STnydEktx1YMzCR4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IvGc4VTR712DS5g1jTbuHnqrwc3JALxrH4F7HXvLbCeglCN6OODo6QCzXYJqDmMcx
	 23oVpVl187Me9ecYa9uNAaa5aeco5NXkmt3H727NLVgYTpGbLgdQDZc4EHKeK4vzXm
	 HLWHag+i9es9mrCxy3oZ6MN2qnADZEcMIGAKXcvkTJSmCfOLCYUJe4StRDlz8y26Fu
	 qo8QiSoGE0JYXc1xU8jZ7X3Gy/rOGJrKcgPWfLeqSuM58TrX5StmZN33ZE3ri2K7FS
	 GMcICgjdOxoNg+g4sqrS5FG/hD6tfkZW8H7cQtj4uUH2ebGMXWHPdqjPmOZMgK1TXn
	 wsyB94Tzv0GEw==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1F1303781144;
	Fri, 21 Jun 2024 10:41:13 +0000 (UTC)
Message-ID: <4195a878-6436-4dff-a90c-03c019e98181@collabora.com>
Date: Fri, 21 Jun 2024 13:41:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: mfd: rk809: Add missing audio codec
 properties
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
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
 <fdf4da20-93a8-45c3-84cf-fd3fdc500f2b@kernel.org>
 <0f8e127f-0159-4263-8582-5eccaae21dd7@kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <0f8e127f-0159-4263-8582-5eccaae21dd7@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_034117_667702_1AEA47C1 
X-CRM114-Status: UNSURE (   9.19  )
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

Hi Krzysztof,

On 6/21/24 1:18 PM, Krzysztof Kozlowski wrote:
> On 21/06/2024 12:16, Krzysztof Kozlowski wrote:
>>> +    type: object
>>> +    additionalProperties: false
>>> +    properties:
>>> +      rockchip,mic-in-differential:
>>> +        type: boolean
>>> +        description:
>>> +          Describes if the microphone uses differential mode.
>>
>> No resources? Then it goes to parent.
> 
> Ah, I missed explanation in commit msg, this was already since few
> years. It's fine.

I mentioned in one of the previous messages that both rockchip,rk817 and
rockchip,rk809 files share most of the content, and I'd like to take
this opportunity to merge them into a single schema.

If there are no objections, I'm ready to send v2 with this change.

Thanks for reviewing!

Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
