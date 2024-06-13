Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CD1C27C75
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 10:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UHhL1fAYQxw3qRVeklZvvKFIsN1PmTYgv8gNcw9Aa0=; b=MlTAz5505LkXBY
	IVxd4n8jTljbtk/1bTuEPPjK75ZtWnu0h48zKx9iqhnu4q/rJ8z2pfDYI1SR1FXJkfiLwrhlH+7FR
	anUEzjqRARWWCcW4H1NlWPd6oz5sj3wCr6CEPuZbIPudTRxmpmhPshpPjfYkPiEGsjfs7LikG3lv4
	zjVgFTHQcsRSf+518aJTxjUk1rWncY7qLyg4y40KSkZiUYrhYfMM2lu8QbWKq3RIT6WVUyPf3+xvh
	VDtE/mSTz++6+lQNkMRgtuccjZU7uyvmTFLZTQAwmuySVz/dmXBugqdnD4zQLkJmEJKbPhDeUPTob
	hpT0BUYUH//iQB7GwZ8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHhmQ-0000000GA6l-3tuG;
	Thu, 13 Jun 2024 10:34:06 +0000
Received: from forward502b.mail.yandex.net ([178.154.239.146])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHhmL-0000000GA3O-10cw;
	Thu, 13 Jun 2024 10:34:03 +0000
Received: from mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net [IPv6:2a02:6b8:c24:a33:0:640:d837:0])
	by forward502b.mail.yandex.net (Yandex) with ESMTPS id 9FC675EF21;
	Thu, 13 Jun 2024 13:33:56 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id qXdo9x30J0U0-d6heW2Be;
	Thu, 13 Jun 2024 13:33:55 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1718274835; bh=EQQoH5X23jTA0B4DCR21/ZfmNUL5R4vDKFEbtMz2jjE=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=uyLS1+TXRkc3ujEdmjdXeJG76Em9/saX2bpREIfYTjtGKBuxNZTvBhY0V4clc60wC
	 tXFfDZy4DlqPgowBw7uImpFuPyrLpKN05Cn6d0/TgRiq5mvPIfpGbR/u2DdFjMGqPB
	 e82nXzdoG+FSyEu09/NOTJrxMoy+YK0Qc3KEabcg=
Authentication-Results: mail-nwsmtp-smtp-production-main-44.sas.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <495e50aa-6819-457d-8503-00440abc97e3@yandex.com>
Date: Thu, 13 Jun 2024 12:33:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Shresth Prasad <shresthprasad7@gmail.com>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, sebastian.reichel@collabora.com, s.hauer@pengutronix.de,
 cristian.ciocaltea@collabora.com, andy.yan@rock-chips.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 javier.carrasco.cruz@gmail.com
References: <20240613085812.4020-2-shresthprasad7@gmail.com>
 <cc66cca1-33db-4f30-afcf-d256a959896b@yandex.com>
 <9ce15b81-a8bd-4833-b15e-3e6f240dcf03@kernel.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <9ce15b81-a8bd-4833-b15e-3e6f240dcf03@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_033401_495741_31F86DAD 
X-CRM114-Status: GOOD (  14.69  )
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



On 6/13/24 12:12, Krzysztof Kozlowski wrote:
> On 13/06/2024 11:44, Johan Jonker wrote:
>>> ---
>>
>> Add ack request from phy maintainer here.
> 

> Why? What do you mean for that? Why phy maintainer needs to ack patches
> he is going to take?

See my text below:
From my past converting phy documents experience asking was needed to smooths things up ...
Let me know if things have improved.

grf.yaml can be busy at times. Let Heiko take care of the merge order.
Ask for an ack from the phy maintainers in your commit message below a "---"

> 
>>
>>> Changes in v3:
>>>     - fix `reg` in example being too long
>>>
>>> Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
>>> and `rockchip/rk3399-pinebook-pro.dtb`.
>>>
>>>  .../bindings/phy/rockchip,emmc-phy.yaml       | 79 +++++++++++++++++++
>>>  .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
>>>  .../devicetree/bindings/soc/rockchip/grf.yaml |  2 +-
>>>  3 files changed, 80 insertions(+), 44 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>>>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>>> new file mode 100644
>>> index 000000000000..85d74b343991
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
>>> @@ -0,0 +1,79 @@
>>
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>>
>> You are converting an existing document, so GPL 2 only.
> 

> Which copyrightable part was copied? This comment is not correct in
> general, because conversions are dual-licensed (there are exceptions,
> but that's the generic rule).

Was told to do so in the past by the maintainers(Rob??) for text documents conversions.(Can't find exactly were in lore, must be in one my first conversion patches)
If someone was submitting as GPL2 long time ago then the derived/converted work still hold the same license.
Let me know if the consensus has changed.

Johan

> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
