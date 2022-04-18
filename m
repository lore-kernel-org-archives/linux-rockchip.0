Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC22EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Apr 2022 11:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuaqye6yjqL7CvhaJztbG0qZU5FDANonZfJUA3I6UMI=; b=IboPnxwWnYduyI
	SGh7rRHpGsRr/esV+dvvHbhSuJ24l/IAtOs9743DiL8li4ttbPUa7m54RulAgJ4aMR3QzO9qwwu0C
	d7sO2PFkomgJF6U8VS0EDDRqX9iUYiXOVcDVbq3VPKwRGoPMRQzsHSmZlzIvV8aTOh3rurOXtQPzt
	lXDkAQMfWl9dKQ2o0vm9UCk/JrUNyaS1nUv86YM17EgBveqA1fDpxccLiBnXf6Ku6Q4CvAtPsdy9I
	rKZDOwgrpOAjg+eOT6s85sGePLP1IjQOBl0LEF1WyKoNgkhA2Mf0DZmUcjvX+xD945kXLCNuiEmXk
	L0Vfv1Wyx06ubFG7uPrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngPRk-00GRhR-9P; Mon, 18 Apr 2022 11:21:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngPRY-00GRet-9L; Mon, 18 Apr 2022 11:21:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9835E60ACE;
 Mon, 18 Apr 2022 11:21:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EC65C385A1;
 Mon, 18 Apr 2022 11:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650280879;
 bh=JtbuCbrZbi3dPFYVVkBHNhS7wJ87kP5Yh2cP76lFqDg=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=iRreG9ldmKxo4O/bDI2DATJ5fXcEBD5AcronFDUmy399cld5aXrndE3vasr4q+FTL
 XjAMdMr3q+Y2sd8xcERorbyBAWSNFLiLrHvaDLry2x3h2XeJm/bHyH4uwGSOwgqIqB
 /93jK4SXYdiTHQDn+Ijj2KOJv2pUtfbVIiKbk5z2fA+uTdbQ7ujExUaSPr/S+So1Pa
 Uv/amKFBMb7UMKynsLQx+enwEEu2YMKlfyyEsJV4bnmWNzRA8PDzMoEAKd1B6angot
 Wj1SUQS0villydBBCU/5YWd5fUQk5uFkpvZiRFUpJaL8WPaVfNr6KqO6LhPAdFem1Y
 6tzkJByFsapGA==
Message-ID: <d3cb233a-1962-af6b-2663-c057e7823a2b@kernel.org>
Date: Mon, 18 Apr 2022 13:21:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
Cc: Dongjin Kim <tobetter@gmail.com>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220329094446.415219-1-tobetter@gmail.com>
 <CAMdYzYrCZtfDiB6O20Jtp56YQhHj3jMVhCt9aCYNLbD_xwFc3g@mail.gmail.com>
 <ff0135dc-da30-18b5-f5f4-cefdb0455c6b@kernel.org> <12089439.O9o76ZdvQC@phil>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <12089439.O9o76ZdvQC@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_042120_412878_32F63B2B 
X-CRM114-Status: GOOD (  18.27  )
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

On 17/04/2022 22:55, Heiko Stuebner wrote:
>> Usually adding - in subsequent DTS files - means increasing the numbers
>> so if you have regulator-[012] then just use regulator-[345] in other
>> files. I see potential mess when you combine several DTSI files, each
>> defining regulators, so in such case "some-name-regulator" (or reversed)
>> is also popular approach.
> 
> so going with
> 
> 	dc_12v: dc-12v-regulator {
> 	};
> 
> i.e. doing a some-name-regulator would be an in-spec way to go?
> 
> In this case I would definitely prefer this over doing a numbered thing.
> 
> I.e. regulator-0 can create really hard to debug issues, when you have
> another accidential regulator-0 for a different regulator in there, which
> then would create some sort of merged node.

I don't think such case happens frequently, because all regulators are
usually used by something (as a phandle) thus they should have a label.
This label should be descriptive, so if one can assign same label to
entirely different regulators, then the same chances are that same
descriptive node will be used.

IOW, if you think such mistake with regulator names can happen, then the
same can happen with the label...

Anyway, answering the question - "dc-12v-regulator" is still not
matching exactly the Devicetree spec recommendation, but it's okay for
me. :)


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
