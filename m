Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF770C54E58
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 17:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gxSRQQodL0G4idgkjr1GvnuDa8/x39uiAd8FJ2nzcvI=; b=ghSXN8H4bFTz/I
	bkDi/nFskBRT2DGFVIrl51eMwMvWJ7CZq0ErekMS98wLWmy+OCGxJGxZvyX2E91z52dEPbKLR+Z9z
	3NnZnKxsqE+Pb/jQaxBH9gOTJ/BeO6BbzLRrbsvTuuKpKGbJ/wuwZAoY225KjAVTfrBB8voU1MTbd
	v0DXP5xmJXL7IU5QZ+OD1SZzKq7zLTbHZOjQqoYPvR7MFjEkctqeKjQPG6ABbB2Ol4hi2qk56tBDA
	QL4wNxItUujKKM8kf2ZQz9cL6en8D9PsnZbc2QeViIKJOhD/ZqbEE5BBOGgZ60w2bkaJpGyi1FBXj
	wwsYXtDz09RPa2mMT2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro50B-0000000AoCf-310L;
	Sat, 23 Mar 2024 17:17:51 +0000
Received: from wp530.webpack.hosteurope.de ([80.237.130.52])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ro506-0000000AoAt-3ayv;
	Sat, 23 Mar 2024 17:17:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=leemhuis.info; s=he214686; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	In-Reply-To:References; bh=bJ/40L52EMuGnORgpe1TjrWvCrigiJKMPJYJJOTHF8g=;
	t=1711214266; x=1711646266; b=YAHhSmBUeuy3/OOWX9BxPCEslGm3YybDifFQnZIGs/PHs2V
	E7vJnW81vORSpfqJqm2T+B0INhauP5hQhS+HeoDeHsQlaYhzx/af0uQdB1y6Lhmu0WnID3eaXGWQp
	XTnVwfDFp1ZsQjco+lEhm+ufOJzAWyrYNGZmnxP7vaoR0KGaVZu2NM8sTKHsWKPAWvwHjerrvoAX+
	jcgzQfpzxqiZMSud2I+uqDRLkJQpEwuBqs1ILJ0F5pOrpAHVnG6Ljd2fNHLe7nA33UVQGXSBh0/tA
	EXUzsVb17kSUrB61hXxlOvl9qtsf2/SW3Y04gD8A74SBiv7PMo5LXNdN0J7Q5hCQ==;
Received: from [2a02:8108:8980:2478:8cde:aa2c:f324:937e]; authenticated
	by wp530.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	id 1ro4zz-0008P9-Ok; Sat, 23 Mar 2024 18:17:39 +0100
Message-ID: <092a7c4c-0a75-4b27-acec-385fdcfb9f7a@leemhuis.info>
Date: Sat, 23 Mar 2024 18:17:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
Content-Language: en-US, de-DE
To: Pratham Patel <prathampatel@thefossguy.com>,
 "sebastian.reichel@collabora.com" <sebastian.reichel@collabora.com>,
 "saravanak@google.com" <saravanak@google.com>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "regressions@lists.linux.dev" <regressions@lists.linux.dev>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
From: "Linux regression tracking (Thorsten Leemhuis)"
 <regressions@leemhuis.info>
In-Reply-To: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
X-bounce-key: webpack.hosteurope.de;regressions@leemhuis.info;1711214266;751fba16;
X-HE-SMSGID: 1ro4zz-0008P9-Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_101747_092074_1F94D45E 
X-CRM114-Status: GOOD (  15.53  )
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
Reply-To: Linux regressions mailing list <regressions@lists.linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 23.03.24 18:02, Pratham Patel wrote:
> Since the introduction of the `of: property: fw_devlink: Fix stupid bug in remote-endpoint parsing` patch,

There is an earlier bug report asking for a revert of that patch:

https://lore.kernel.org/all/ZfvN5jDrftG-YRG4@titan/

> an issue 

Is your problem maybe similar to the one above?

Ciao, Thorsten

> with the device-tree of the Rock 5 Model B has been detected. All the stable kernels (6.7.y and 6.8.y) work on the Orange Pi 5, which has the Rockchip RK3588S SoC (same as the RK3588, but less I/O basically). So, being an owner of only two SBCs which use the RK3588* SoC, it appears that the Rock 5 Model B's DT is incorrect.
> 
> I looked at the patch and tried several things, neither resulted in anything that would point me to the core issue. Then I tried this:
> 
> ```
> $ grep -C 3 remote-endpoint arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
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
> So, from a cursory look, the issue seems to be related to either the DT node for the audio codec or related to the es8316's binding itself. Though I doubt that the later is the issue because if that were the issue, _someone_ with a Pine64 Pinebook Pro would've raised alarms. So far, this seems to be related to the `rk3588-rock-5b.dts` and possibly with the `rk3588s-rock-5a.dts` too.
> 
> I would **love** to help but I'm afraid I device-trees are not something that I am at-all familiar with. That said, I am open to methods of debugging this issue to provide a fix myself.
> 
> I would have replied to the patch's link but unfortunately, I haven't yet setup neomutt and my email provider's web UI doesn't have a [straightforward] way to reply using the 'In-Reply-To' header, hence a new thread. Apologies for the inconvenience caused.
> 
>   -- Pratham Patel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
