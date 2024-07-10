Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C794C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1BSCxoAMUZ2vN1Lu2t21ePwsT/G7RVouhISV3qDxfbY=; b=zrwVBWhY0aQJAz
	O70du4YNZtzdB+5L7f5Wn1jOfHLEeIiZcqVurQl8Ad2BHfhjkLL+6mU8Z39Ai4qOm2lmB7TdljuiA
	k61jDQCudozn8SdWst3kb81/O/yHpZMgWdHJSC7KZ9PAyQnC9z1vBfCVtx+JbrXUgDVVwzhozhvxe
	WCOLmdDyo4jCcvMrs6Q8SgZwU8MA+E2ZDPpT0Y3moytbiPnOek67fFOpM4mCYRPKTyKa5qY3Wado2
	dCC+a2pa46PlMrjZV0Dd3/9foJGT33/SUYGpkPlB9LV8ZYeu1kHh9x3si1uqxcroXvxNvzd8ZavuL
	ckilfXV/hVYI6/eN3Ynw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYMO-0000000ApVA-1naT;
	Wed, 10 Jul 2024 14:31:56 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYLs-0000000ApFA-1lXT
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 14:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1720621866;
 bh=hZhXVKWV0BbCE5f7SbJ+Zt2x4Pus6WrIiDPVjBe5XNY=;
 b=w3MR+9ZVBw09UiqG7wVV96LfnDH7ie8s57VXisOPFdpw3JpRR4SeEYgmkcSwichg9aGIiXyFa
 PS498KxsqoNNadUsJ2Qhqq0n+MuRwCNcYIxU5WOcY0YJgKCp3nFwOPvIbru4Xro64Xdl3Mzt8fh
 KQeBKrBiMLZ5QKV92NhR8r7KbGw5nZYl/Aa/aPtfqoIpZyRjYpkkBUxw6DEs3l7A2QdvAXxlTnS
 51kGT92GMhNGVB+vjCi+twr6qrp38oPC7dDt22MiwFcz1gjt2bZkj/1i0PoptSMN8NnLrJcLcQZ
 PNoA8vUqa+a0GwtNn612D3MRptvgpSg8Yyv2MZS0uu1A==
Message-ID: <caf55fe6-4674-4c89-a94e-f4ad348e2ba0@kwiboo.se>
Date: Wed, 10 Jul 2024 16:30:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] arm64: dts: rockchip: use generic Ethernet PHY
 reset bindings for Lunzn Fastrhino R68S
To: Chukun Pan <amadeus@jmu.edu.cn>, heiko@sntech.de
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
References: <2210411.C4sosBPzcN@diego>
 <20240710133029.676677-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240710133029.676677-1-amadeus@jmu.edu.cn>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 668e9b26a862f9d735124bc1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_073124_856316_38E14AA0 
X-CRM114-Status: UNSURE (   9.56  )
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

Hi,

On 2024-07-10 15:30, Chukun Pan wrote:
>> what's the reason behind the changed timings?
>>
>> The original comment stated,
>> 	/* Reset time is 15ms, 50ms for rtl8211f */
>> so that timing change needs an explanation please :-)
> 
> I don't know why this comment says that, but it's clearly wrong.
> According to the PHY datasheet, the RTL8211F PHY needs a 10ms
> assert delay and at least 72ms deassert delay. Considering the
> possibility of mixed use of PHY chips, the reset time should be
> further increased.

Where do you find the 72ms in the datasheet?

In RTL8211F-CG v1.1 I see 10ms and minimum of 30ms, in v1.2 and v1.4
I see 10ms and minimum of 50ms.

I have used 50ms on a few recently added boards and they seem to all
work fine with 50ms, wonder if the deassert delay should be changed for
those boards.

Regards,
Jonas

> 
> Thanks,
> Chukun
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
