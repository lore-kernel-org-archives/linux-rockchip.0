Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7CCFC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 06:37:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9910610FC
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 06:37:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9910610FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ALNCqIvs47el/AulrqPFcg7CfNfOYbBwMlkuXTI5kM=; b=fL74gPF/jMli1BRAB9WmGKEOhp
	1qAVXxi6JjHG6kUas9G8/0wQyDTTaLybV0ODomdCHO7ie+Kge47NjD/ETMVDCDtr1hehngJQi4ZFS
	igs1tJtUYph7kohJmzctiZtEcCqyHZc6cYfObqNu15S2tiri6RPjxqiee7eXwsIJ/Ymjqo6qReV7A
	Zbx1zYMpNNdgRTNXA8ILh5gEiY5MT7tiXYosY+PrqJbAXVjGuYD6Y8EvgRTLjEkJaBWiFlg9ey/e6
	+sPTB7fcifd9A4RudVLwHzbQdatfrVHbG6Cp7dbRoM7piqMlLEfyhAxpvXZ/m7517Qt8/yTZd1pOA
	UOn074fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq8sb-001jRe-0P; Mon, 07 Jun 2021 06:36:57 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq8rh-001iwi-Gm; Mon, 07 Jun 2021 06:36:06 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id E871C7D3;
 Mon,  7 Jun 2021 14:35:55 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.73] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32531T140357140461312S1623047754740766_; 
 Mon, 07 Jun 2021 14:35:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7508cccd791cddd4389844d16fe8e0b2>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: kernel@esmil.dk
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 3/8] dt-bindings: spi: spi-rockchip: add description
 for rv1126
To: Johan Jonker <jbx6244@gmail.com>, broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@esmil.dk
References: <20210605094659.13507-1-jon.lin@rock-chips.com>
 <20210605094659.13507-3-jon.lin@rock-chips.com>
 <4d60a524-5a54-f972-7605-25db3b825cfa@gmail.com>
From: Jon Lin <jon.lin@rock-chips.com>
Message-ID: <9d6c9b33-2e56-430b-0ea7-df0ebc0a16b4@rock-chips.com>
Date: Mon, 7 Jun 2021 14:36:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <4d60a524-5a54-f972-7605-25db3b825cfa@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_233602_074129_B177440A 
X-CRM114-Status: GOOD (  25.19  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On 6/6/21 4:30 AM, Johan Jonker wrote:
> Hi Jon,
>
> Some comments. Have a look if it's useful.
>
> ===
>
> In order to get this patch reviewed by rob+dt you must include:
> robh+dt@kernel.org
> devicetree@vger.kernel.org
>
> Check your review status here:
> https://patchwork.ozlabs.org/project/devicetree-bindings/list/
>
> Get the other lists and maintainers with:
> ./scripts/get_maintainer.pl --noroles --norolestats --nogit-fallback
> --nogit <patch1> <patch2>

done.

> ===
>
> Please try to order patches like:
> (1) dt-binding - compatible addition
> (2) driver patches
> (3) devicetree node patches
>
> The script below gives a warning if the wrong order is used.
> ./scripts/checkpatch.pl --strict <patch1> <patch2>

done.

> ===
>
> The [PATCH v3 2/8] has duplicate Signed-off-by's.
>
> Signed-off-by: Jon Lin <jon.lin at rock-chips.com>
> Signed-off-by: Jon Lin <jon.lin at rock-chips.com>
>
> What has changed in version 3 ?
> Maybe add a cover letter and a change log too?
> git format-patch -v4 -8 --cover-letter HEAD

done.

> ===
>
> The commit message in [PATCH v3 4/8] has to many "applications", so
> maybe restyle a bit?
>
> Add compatible string for rv1126 to applications for potential
> applications.
done.
>
> Adding "rockchip,rv1126-spi" to rockchip_spi_dt_match[] is strictly not
> needed when using "rockchip,rk3066-spi" as fall back string.
> Could a maintainer advice?
>
> Maybe this bug of mine should revert too?? Or is it legacy? ;)
> spi: rockchip: add compatible string for px30 rk3308 rk3328
> https://lore.kernel.org/r/20200309151004.7780-1-jbx6244@gmail.com
I agree with you. If the maintainer doesn't have any comments, I will use
"rockchip,spi" as compatible names for the subsequent rk platform.
>
> ===
>
> Johan
>
> On 6/5/21 11:46 AM, Jon Lin wrote:
>> The description below will be used for rv1126.dtsi in the future
>>
>> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
>> ---
>>   Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
>> index 1e6cf29e6388..4ed5b72a8494 100644
>> --- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
>> @@ -27,6 +27,7 @@ properties:
>>         - items:
>>             - enum:
>>                 - rockchip,px30-spi
>> +              - rockchip,rv1126-spi
> Sort alphabetically.
>
>>                 - rockchip,rk3188-spi
>>                 - rockchip,rk3288-spi
>>                 - rockchip,rk3308-spi
>>
>
>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
