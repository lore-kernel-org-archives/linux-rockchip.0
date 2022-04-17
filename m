Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84E1FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Apr 2022 17:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bM8MW7bmPNYPgo3OyBz8IWAGCiECewHAPM2c0gpygpM=; b=JhfgjxCc1MBQ2T
	O/0bc5jqOLZ6MDv3XQh/iZZEiU7FfLb1bfhzuYmuHVQIlvvrCzsBOt35oCwqii4PpgggbQ+NzY/G+
	6cWJAVlMmUfXhG2Tzdgt18lN9S6hXTLP3UNnL9W7bDzDcJtZKLfRmKSggSHD6iOfGV7yq7A6ggDvt
	tSceTxkpgdXd40f+0rDFW8FFJNhm3K/NxTmKKPXjmFLFMH1hzzFpZykqBqFwv/aVmSqTUpqBCeUZ0
	hptYh3/YYlRbIqG28+2f6b0KiREPPZnnqc62AOJBUoLdEqqkwgC8cHJdJSLZ4j8bo2U8DKnYhKuWN
	K3hZAgRK8qvV6mc1d3Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ng8yR-00EkT1-G9; Sun, 17 Apr 2022 17:46:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ng8yG-00EkRR-PO; Sun, 17 Apr 2022 17:46:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4ADF860A1A;
 Sun, 17 Apr 2022 17:45:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A800BC385A4;
 Sun, 17 Apr 2022 17:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650217558;
 bh=VkPYYsr5x5r7c4+l7JlyJX/Yd5KqB5sSgJ/zXSaOseo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=JCo6nyxiiUA2mR2upbI050ANjFm/PZqRuitD4XzsWQ62DVGmvDyU9lmz9oKwjG2ly
 +AtIeoriiNAQqQf4tvR+REkdHneBKmWe2oGcqpqMMNEUsQeWyyz0CJVsWXZSwjqs07
 zn8Tcc+5pf0ZBzF6vfRA6OszCn18n0NUFYI9C178YvncinZZ9tycRORNxmKUBwrI7A
 ZIuWzTgM1Sfjwn1SteNZhiLG1V1u1xOm2XWuIPyOWSUUye+zX6WvQVRoOTJFc+SdSb
 nWQQD+DR3SnSCSGB0nl2i4DWJKgIn/XQm2A99RYneN6pi6h/cJMXF5jhlv8FUT23Xb
 6iE6LAzUqB6yQ==
Message-ID: <ff0135dc-da30-18b5-f5f4-cefdb0455c6b@kernel.org>
Date: Sun, 17 Apr 2022 19:45:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>
Cc: Dongjin Kim <tobetter@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220329094446.415219-1-tobetter@gmail.com>
 <20220329094446.415219-2-tobetter@gmail.com>
 <2a5f002f-8a61-e5b0-a574-ee99591c4c12@kernel.org>
 <CAMdYzYrCZtfDiB6O20Jtp56YQhHj3jMVhCt9aCYNLbD_xwFc3g@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <CAMdYzYrCZtfDiB6O20Jtp56YQhHj3jMVhCt9aCYNLbD_xwFc3g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220417_104600_910666_443D0872 
X-CRM114-Status: GOOD (  15.33  )
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

On 16/04/2022 14:07, Peter Geis wrote:

>>> +     dc_12v: dc-12v {
>>
>> Generic node name, so "regulator" or "regulator-0"
> 
> Unfortunately, this advice breaks the regulator-fixed driver, which it
> seems cannot cope with a bunch of nodes all named "regulator".

What exactly cannot cope? You cannot have different device nodes with
the same name but this is not a limitation of regulator but devicetree spec.

> Setting the regulators as regulator-0 -1 -2 leads to fun issues where
> the regulator numbering in the kernel doesn't match the node numbers.

There are no "node numbers"... maybe you mean unit addresses? But there
are none here.

> It also makes it more fun when additional regulators need to be added
> and everything gets shuffled around.

Usually adding - in subsequent DTS files - means increasing the numbers
so if you have regulator-[012] then just use regulator-[345] in other
files. I see potential mess when you combine several DTSI files, each
defining regulators, so in such case "some-name-regulator" (or reversed)
is also popular approach.

> If naming these uniquely to avoid confusion and collisions is such an
> issue, why is it not caught by make W=1 dtbs_check?

Patches are welcome. :)

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
