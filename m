Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3AF3C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 17:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aHcviyZ4vrR9/Vr/MQjcrSWOrK05hQExXSBTmK1pmoQ=; b=pAF8eKOqj0jZQfaBxhaken4dcw
	WeIX0AaZotImIJXjxEHhDOaQKolqTP7aqPPkG1m1/CSWP5WKtziKsApK4ABUYOv85Clm7qaimtUew
	yna8L66g68lCKPWPTtfT5VORj6BDW7FeatTGUozB6l5sUluMyiV7TRvhRtTh/QDuI4aORq688lg/b
	viEiEYH+553eAHhnsLV9isCIdLr2lgEqSj3NeVjha8xOktESQFIl1trUBgue+qzQcl14aoGhjzUpq
	edq7QzW8ebi9gIoHkw4ZKmjnpvV/B8Bhx+1GzAPnwhx9Y9hTa3fcws6e7mEbEsU8bp/10hieU/DHa
	Q6ziTFYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro4sj-0000000AnHh-3f9W;
	Sat, 23 Mar 2024 17:10:09 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro4sf-0000000AnGB-3Hmp;
	Sat, 23 Mar 2024 17:10:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711213800;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b0eHI8gPfhhX3F5QO2ZA3NGpG2HvwIK1Qt0n+b4djt8=;
	b=vISGMa9wHSqhPT6RZl65/F9Alj5nX0JjQL2hq1lt2ZaUBmsvt7YrlxX/bBlBnXEPyiaK1Z
	D000E/z6hFhKib/0RjQXyo8CkWaaVuhBPNNRdjp17rAixV7iyTYDD89FcUQuXWZM2exFBb
	4/0lgjfayF3tucwMlYMhblWuphqxZMaM3KO7DiflIitOXgJqyDkJlbv81uotKZ9GY3shDN
	UnlnHN9A0bafj4NvDMgL6KkP1mRKhXaSdaRB48EKc6l1fkH3Nr/nCVhjri77Lvl1ZL7tle
	JlPT7R1G74sV+BJUdKTTgiUTd/uZhLJ+atX0Q5pkywtcixBiFyIVDNkqHceMsQ==
Date: Sat, 23 Mar 2024 18:09:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Pratham Patel <prathampatel@thefossguy.com>
Cc: sebastian.reichel@collabora.com, saravanak@google.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 regressions@lists.linux.dev, stable@vger.kernel.org
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
In-Reply-To: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
Message-ID: <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_101006_512384_AC117A4A 
X-CRM114-Status: GOOD (  19.41  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Pratham,

On 2024-03-23 18:02, Pratham Patel wrote:
> Since the introduction of the `of: property: fw_devlink: Fix stupid
> bug in remote-endpoint parsing` patch, an issue with the device-tree
> of the Rock 5 Model B has been detected. All the stable kernels (6.7.y
> and 6.8.y) work on the Orange Pi 5, which has the Rockchip RK3588S SoC
> (same as the RK3588, but less I/O basically). So, being an owner of
> only two SBCs which use the RK3588* SoC, it appears that the Rock 5
> Model B's DT is incorrect.
> 
> I looked at the patch and tried several things, neither resulted in
> anything that would point me to the core issue. Then I tried this:

Could you, please, clarify a bit what's the actual issue you're
experiencing on your Rock 5B?

> ```
> $ grep -C 3 remote-endpoint 
> arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> 
>                 port {
>                         es8316_p0_0: endpoint {
>                                 remote-endpoint = <&i2s0_8ch_p0_0>;
>                         };
>                 };
>         };
> --
>                 i2s0_8ch_p0_0: endpoint {
>                         dai-format = "i2s";
>                         mclk-fs = <256>;
>                         remote-endpoint = <&es8316_p0_0>;
>                 };
>         };
> };
> ```
> 
> So, from a cursory look, the issue seems to be related to either the
> DT node for the audio codec or related to the es8316's binding itself.
> Though I doubt that the later is the issue because if that were the
> issue, _someone_ with a Pine64 Pinebook Pro would've raised alarms. So
> far, this seems to be related to the `rk3588-rock-5b.dts` and possibly
> with the `rk3588s-rock-5a.dts` too.
> 
> I would **love** to help but I'm afraid I device-trees are not
> something that I am at-all familiar with. That said, I am open to
> methods of debugging this issue to provide a fix myself.
> 
> I would have replied to the patch's link but unfortunately, I haven't
> yet setup neomutt and my email provider's web UI doesn't have a
> [straightforward] way to reply using the 'In-Reply-To' header, hence a
> new thread. Apologies for the inconvenience caused.
> 
>   -- Pratham Patel
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
