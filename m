Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C639DC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 10:42:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 94FEE610A1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 10:42:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 94FEE610A1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=y+HagRKUxfwtxvCkGIPYnyjPHeI2X+Xa2A1WbZqvZHg=; b=WOJILFO4ruldUtm9s/5zTYpby/
	dnksFIfYpcC7DLkzW5VvucEjPcXkw0MrD6jTeU20EAE/uwj0kRriPVfIs0K+pR68kCmuqSrhxNXOm
	nFI+qPHibDR7mhQ2NkL2j1JQlVcJxuhTX22WG860RPm7GGZLvZfE+KKmVgFLA6hmSta+ufuwfsoYz
	+rZ1vVg+6xx/ymR+3hTzoI9+5lb80IdMT3FMjueuAn0jhmx5kTEvH+CNlWwWMU+cYivKiYQNC2bln
	BWvDHVsUsgqMO/2bJB3fWn+Ynm+pMaKMsjAkTjhGymoDV3zUqSED8ol5QPtA0SeDxHhPzzm4V/6Oo
	VouML1Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqChg-0031BU-LC; Mon, 07 Jun 2021 10:41:56 +0000
Received: from mail-ed1-f51.google.com ([209.85.208.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCTe-002u0t-95; Mon, 07 Jun 2021 10:27:27 +0000
Received: by mail-ed1-f51.google.com with SMTP id w21so19593812edv.3;
 Mon, 07 Jun 2021 03:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=AGZ4t2IZtx3vp84RivJkuklm+6Eclk4GjnQsNM+4cwY=;
 b=IS3GHMuZYXL3+6Tp4HPoZ5enuZ34IX8rZx2bRRf3MRngY5SdMvqqyyTLauV6wTei4t
 C7JQ4cCpmCYUBwB2crFj3iMZiV8CRQbiecT5xc023UvriaSRz3G7D9oRBmxTGlF0nrK7
 JG5DHCRKB3qm+6bqzzyKdJ+YT62SfWJM6IYWs5IIi2c+K9aqKvJuz3AaxynldiALf9Za
 1htKh5RKL8eT1x7MQTi0kQZ2QscmWOS+y9Lcl8d8QANYTaUqp+xU4kOOj0wnqKnmQaCu
 9qdSCE+sC11TkIuoigCgaihtiYzOgFdPBe6hmIySmOGUQNJgDdI6j+VlSsE6P8pxSwNY
 4KKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AGZ4t2IZtx3vp84RivJkuklm+6Eclk4GjnQsNM+4cwY=;
 b=J7MsF0a9zifOx4rQV68ikwzCAd/ZG7oqu65fn2bF8ZofFuaJyasi3vUtPaVSjkstBS
 XWlyTa4qlHH3xn32nWypgcykNCVqRPbJf+WaxuvuSkJ+UBGoOGxjtDrO+G1+xJrCY7ko
 j/+YrjTM10dU+tl/lCnptlPSWARl2HXWaUADZ2Yp2yOwpGhBTjVTR5vhBcr0k0exiq6O
 NQ2g0VkjTUWPQnnaTG3zry7TWIr67gysqlOnzYzvlWjl/xeEQa/FHOZvaFFnlqWGfCIB
 r7GZjgvtn0zRzIb9v2d2FUNyTljxiZlzo5AMN+Hn2SBzBIF/4ukQ1DoYfEya0qxb1rHe
 LXGw==
X-Gm-Message-State: AOAM531DXyN4a/bqqwfrjYdE8ZtBrAlS03QQdAazIH57htCdNke1dHy5
 O1vLHk72awv4Sw0eCiQbbyrB6nFL5Fi2Gg==
X-Google-Smtp-Source: ABdhPJwt9PZQnrBzAZKmGKFQd+/M6Fgc5w5oXTXIOm+4MqVHgd1hcmvdZtyVj7q18+t6XZkD60piZA==
X-Received: by 2002:a50:9d8d:: with SMTP id w13mr19185406ede.94.1623061584372; 
 Mon, 07 Jun 2021 03:26:24 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 h6sm3973285edj.91.2021.06.07.03.26.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Jun 2021 03:26:24 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: wens@kernel.org
Cc: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20210607081727.4723-1-cnsztl@gmail.com>
 <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
 <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <f085da86-8b6d-ba99-2d0a-736ec02424db@gmail.com>
Date: Mon, 7 Jun 2021 12:26:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_032726_411802_BC17DB1E 
X-CRM114-Status: GOOD (  19.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Chen-Yu,

On 6/7/21 11:40 AM, Chen-Yu Tsai wrote:
> On Mon, Jun 7, 2021 at 5:31 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Hi Tianling,
>>
>> On 6/7/21 10:17 AM, Tianling Shen wrote:
>>> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
>>> stores the MAC address.
>>>
>>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
>>>  1 file changed, 9 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
>>> index cef4d18b599d..4a82f50a07c5 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
>>> @@ -68,6 +68,15 @@
>>>       status = "disabled";
>>>  };
>>>
>>> +&i2c2 {
>>> +     eeprom@51 {
>>> +             compatible = "microchip,24c02", "atmel,24c02";
>>> +             reg = <0x51>;
>>> +             pagesize = <16>;
>>
>>> +             read-only; /* This holds our MAC */
>>
>> The mainline dts files should be generic I think.
>> Any comment about "use", partitions or write ability should be avoided.
>> It's up the user.
> 

> Per the datasheet for this specific EEPROM, the latter half (128 bytes)
> is read-only in hardware by design though.

The 24AA02XEXX is programmed at the factory with a
globally unique node address stored in the upper half
of the array and permanently write-protected. The
remaining 1,024 bits are available for application use.

Just a question...

    nvmem-cells = <&mac_address>;
    nvmem-cells-names = "mac-address";

Which part does this point to?

Can we use the lower part to store/rewrite this too?

===

From at24.yaml:

            items:
              - pattern:
"^(atmel|catalyst|microchip|nxp|ramtron|renesas|rohm|st),(24(c|cs|lc|mac)[0-9]+|spd)$"
              - pattern: "^atmel,(24(c|cs|mac)[0-9]+|spd)$"

How does Microchip 24AA025E48 fit the regex?
What compatible would you advise?

===

Johan

> 
> ChenYu
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
