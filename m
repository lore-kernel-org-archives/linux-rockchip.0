Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2A1C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Apr 2022 20:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22BxuEP4o4tc7hkXfxO5aAzkyIf5l7HHCFg4YwwtqbM=; b=aiGMtPdg8iWrf1
	jHWB8H34ttgF1L74E5g94eDQ+eQJeMFNTQkHRvY42iqliex1bSg2YWAyXxbhM5TNZdO+ji5QgUAgJ
	gxBZCA7hBoWZZRD9MCHyrl+EPx9ydjVayn2/QiEGBBPC/jCffjIPzNB/S3PI8CKIzQpZqqrs017oP
	PAd2rAcxJTJOSV0MxRuv4iYX/lk9yWwXDAlRHOZf3LMoqGYRw3p9IUdn/2ogv3T8BwMMsIx7JdR4K
	5bmlVcxVtuPPUW54o37KMpaVfaPBrjxFLLWHyF8VBqo5h9eM0Sd4pTPliPpme4UZ5wIbWsdv6Z3os
	BSJD3Wa3Nnv/kuh5L8Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngBvx-00ExUy-6k; Sun, 17 Apr 2022 20:55:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngBvm-00ExUR-9M; Sun, 17 Apr 2022 20:55:39 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ngBvh-0003OQ-Bj; Sun, 17 Apr 2022 22:55:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dongjin Kim <tobetter@gmail.com>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M1 board
Date: Sun, 17 Apr 2022 22:55:25 +0200
Message-ID: <12089439.O9o76ZdvQC@phil>
In-Reply-To: <ff0135dc-da30-18b5-f5f4-cefdb0455c6b@kernel.org>
References: <20220329094446.415219-1-tobetter@gmail.com>
 <CAMdYzYrCZtfDiB6O20Jtp56YQhHj3jMVhCt9aCYNLbD_xwFc3g@mail.gmail.com>
 <ff0135dc-da30-18b5-f5f4-cefdb0455c6b@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220417_135538_376043_60760ABB 
X-CRM114-Status: GOOD (  22.65  )
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

Am Sonntag, 17. April 2022, 19:45:52 CEST schrieb Krzysztof Kozlowski:
> On 16/04/2022 14:07, Peter Geis wrote:
> 
> >>> +     dc_12v: dc-12v {
> >>
> >> Generic node name, so "regulator" or "regulator-0"
> > 
> > Unfortunately, this advice breaks the regulator-fixed driver, which it
> > seems cannot cope with a bunch of nodes all named "regulator".
> 
> What exactly cannot cope? You cannot have different device nodes with
> the same name but this is not a limitation of regulator but devicetree spec.
> 
> > Setting the regulators as regulator-0 -1 -2 leads to fun issues where
> > the regulator numbering in the kernel doesn't match the node numbers.
> 
> There are no "node numbers"... maybe you mean unit addresses? But there
> are none here.
> 
> > It also makes it more fun when additional regulators need to be added
> > and everything gets shuffled around.
> 
> Usually adding - in subsequent DTS files - means increasing the numbers
> so if you have regulator-[012] then just use regulator-[345] in other
> files. I see potential mess when you combine several DTSI files, each
> defining regulators, so in such case "some-name-regulator" (or reversed)
> is also popular approach.

so going with

	dc_12v: dc-12v-regulator {
	};

i.e. doing a some-name-regulator would be an in-spec way to go?

In this case I would definitely prefer this over doing a numbered thing.

I.e. regulator-0 can create really hard to debug issues, when you have
another accidential regulator-0 for a different regulator in there, which
then would create some sort of merged node.


Heiko

> 
> > If naming these uniquely to avoid confusion and collisions is such an
> > issue, why is it not caught by make W=1 dtbs_check?
> 
> Patches are welcome. :)
> 
> Best regards,
> Krzysztof
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
