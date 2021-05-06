Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11CCEC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 12:36:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 202D4613D6
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 12:36:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 202D4613D6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lk0l9OVAV9+UcOmJQpoP5GgYssyw4ilxVlkcGrDjm3g=; b=CLjLC8TG4j+WRvAy1M5wWrqXK
	+F9bXxdFAZJCagprWgzgUkUb6mU28jAC2UeLOFdEPBEIlQAcrP+9sFw2Sot9dvLiQmCsveQnAAvoC
	SB0SeR4s93ILWKIUdai4Yc0y4VjA/pRLtlO59lNIUoZI34KrHSLZN6CaFUnuzG8ZMNqYWtgd2m1QN
	uXwRZ1r2/5sMDIo0yAoqyKoO+d3tIMkHrZIk9Zb05q7Fd7yii9RmnTl7y6GFDHq72yzJD/NFsxu5U
	rUFVBzUFscMg44EVTTnf68S5FRnEsmmhBsKGbtpxn9n3sbcCjSxBpy06P0R9ZMSsoHK3BtD0B3l43
	gZC8ldDaw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ledEU-004EaC-JM; Thu, 06 May 2021 12:35:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledES-004EZu-Bb
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 12:35:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=WOR19envAlRRRl8TIK3qpcWJWZjCtwsC2mEH2Fdqy/I=; b=aEn4DwFzId60xAQL5nquw7X7P2
 Fvctct+dCepTSPEyP7H7m38s0r844blqFDaCXdrXNwPQArnsvu9F+bnNPRHyBkm29NGvXz1LQC3E0
 BzP7kHui/R7XeQ/te88Xj3vO/EIDo5EB/MvygVOFepNs51akxyQOsMw7+Pmtvl5trjBbDT0RoGUBI
 LCxpasY901vjrNvWEwVbfMH8Nx83zDHAfRDd6pBoJnLvEDKDa/sCzdCxgvbv9LT7VK5jDBBiK4dD6
 p1CSf7BO2atnpVKVWlB9pdASdk65dzfgV0fyKK7y9wLWwKwBd0G3m2aZYadJpowaZEeRL4S4RDUfV
 +CRpm+oQ==;
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledEP-0061hq-8V
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 12:35:54 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id edEFlv0CwyEWwedEIl0zd8; Thu, 06 May 2021 14:35:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1620304549; bh=WOR19envAlRRRl8TIK3qpcWJWZjCtwsC2mEH2Fdqy/I=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=GlViP6PDykjVIhbawEFdOMy0C4z3wXUEfsM7pAn3f+HNIW7lq/shfDgvZHMc75WE9
 +EeRlLeOaAJPAFxziFYufCGeRXI7NnHVMEIsdokhyJaHbtmCazBIVfzReDTZUQMA6E
 LNTChQm0NMDiEVF9ZNxOB3m67IPK+6iTfqYLd9SQ3+qulJt71gvqC9Z8TQD0ULc2Ic
 MiBDWNY9ch7v3QheM2VOiL27/lvbpJcL160VjJnR0zjGyI2SGLSlf+gTH4ftfIK6om
 C8kZ2B3M4dZTJxr7FGApY1qipJRmoovkB5gwHjOusiH9j3Xd+4fbSrS49pMLi55m38
 +2S/Ed1to38Yg==
Subject: Re: [PATCH v4 9/9] ARM: dts: sama5d4: enable Hantro G1 VDEC
To: Emil Velikov <emil.l.velikov@gmail.com>
Cc: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree <devicetree@vger.kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Frank Rowand <frowand.list@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
 <20210401144336.2495479-10-emil.l.velikov@gmail.com>
 <a9829af1-f4e9-5835-9a74-15a0fce6b1eb@xs4all.nl>
 <CACvgo53L-3kN6WGn6VqkpZTRcVnrnLeCxRPxcGks0TR+VQuXbQ@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <4b22a35f-5599-799e-9887-8ccd5a550af3@xs4all.nl>
Date: Thu, 6 May 2021 14:35:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <CACvgo53L-3kN6WGn6VqkpZTRcVnrnLeCxRPxcGks0TR+VQuXbQ@mail.gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfPQLXgmw3TGPOc4mJIm5s24EQtla8xjWuiul4+Zab4VWAYHBR33TdRxTpxrlo3azmc23Fo/ROG1fEr1jIhNkPA0jYb82UU3L6n5YmwjAPCxF7LPOj5Ts
 +LzNcwGfm+M2UhreTZTObltyByiJvGVEDFBxhhsX3C2TaUTgewariZhudBc8mt73oPSlTypRbUBQtBclgTZmTBX47yWQd3Sx/ySbd/qUqViM+V3GbQGvdwI3
 SLmRK/SyO3PmxgPSlvZYVKXAEzWm+2GsIAPTCws4H1C3VheZr/LptI5AniZJxGTOujhJLhw8mGAh472POLl0k2lSpNcN2IetFx6O0WCoei1phTP3i7kqBR0y
 8cqyy5RTXaiPCsrWYxmATpCntsrH7tXIt5FvPOPeSbbHUOVpBfw7/IOf6RRhWiydIuVI6xJOEjmXgw50POZD1qOm7TUpRiyS7vq6wUgYRCmIrmfAtB/oSScd
 qWaEyvSvba08qrM7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_053553_483919_284139CB 
X-CRM114-Status: GOOD (  13.90  )
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

On 06/05/2021 14:31, Emil Velikov wrote:
> Hi Hans,
> 
> On Wed, 5 May 2021 at 15:31, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>>
>> On 01/04/2021 16:43, Emil Velikov wrote:
>>> From: Emil Velikov <emil.velikov@collabora.com>
>>>
>>> Add the SAMA5D4 VDEC module which comprises Hantro G1 video decoder
>>> core.
>>
>> I've accepted parts 1-8 of this series for 5.14, so this remaining patch
>> can be merged by whoever handles such dts patches.
>>
> Can you please include this patch as well. As you can see it has been
> Acked by Nicolas, one of the AT91 maintainers so it can go with the
> media tree.

OK, I'll do that. Usually these dts patches go through a different
subsystem...

Regards,

	Hans

> 
>> Regards,
>>
>>         Hans
>>
>>>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: Frank Rowand <frowand.list@gmail.com>
>>> Cc: devicetree@vger.kernel.org
>>> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
>>> Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
> 
> Thanks
> Emil
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
