Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D75CCFA15
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BG3oh4RGvW0Mq2MMC9aOj/kW9SYQ2v0SND18FajAN98=; b=W1+hWytsADyAyc
	YNCWQzNlHB7S03uETJ/w0Ekr4fw2oMu4AGOMevavMMfdvySLupUDs6HlEUb9NqTvOzFi+ToEWNdhd
	K9PU0dX13JlL8d7BI6YPzsI3+Z1XDCxHAFR67Y9EEGRzeiq3FNzUtZlLjBODNbh/8DUIyeVj6OAJF
	H3t5HK+fTI+znyRFpVPi/ICKP4e7wqX7nyx77hmIx2FFXU03EL3RhEd3aJfTQOQvj6ewgf3GytU5z
	C1ParHUyC7f+c4uU6A5K0EVSUGrH37NTNfGDjTL7TaZPKxakhYVNNhZQkokknga7rxbsBvOcgM7za
	x2lxurNr9rFlrFRr7SLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkQW-00000007nhQ-1S4b;
	Thu, 26 Sep 2024 09:04:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkAQ-00000007kPl-2KOZ;
	Thu, 26 Sep 2024 08:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=r7Psuo5wLjW5qDjj4cW4p0k9wjcIcrFjFZh9XT4IWKc=; b=s1kD5Zj9ZV+D6q3RCSz0reepXW
	AAjinTmt/yMIiUfKOvfGGDWWz8aP5rjx6emWa1xsQWx5prhKCvTsDYuyqLcTOj70uQq2OeWRM1kS4
	apv1TFrDlp3jnEM+9XBQkFqqQUKBl1tiN5N0eK4drmVtEuXPnJQi+n36PltVfz7kZ/KImQISzEzyC
	I2DwxfkbgV6mmqs1RQxskhphC/mLGYRPX9tUy1Qrs7yJ1i6PTfiza42h35drXL2oUJSYY1ZfQOEdR
	FORCpayp5FBT1lYBHsBU44I6JcQB0mZ94iIuYACLFiNqibHOuhB2wPBNV519nMGp2jRkkR3mYmUOe
	zFYpBgmA==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1stkAO-0001nb-Hi; Thu, 26 Sep 2024 10:48:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Move L3 cache under CPUs in RK356x SoC dtsi
Date: Thu, 26 Sep 2024 10:48:03 +0200
Message-ID: <2007608.CrzyxZ31qj@phil>
In-Reply-To: <57d360d73054d1bad8566e3fe0ee1921@manjaro.org>
References: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
 <3938446.fW5hKsROvD@phil> <57d360d73054d1bad8566e3fe0ee1921@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_014806_633312_7C183477 
X-CRM114-Status: GOOD (  24.92  )
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

Am Donnerstag, 26. September 2024, 10:32:17 CEST schrieb Dragan Simic:
> Hello Heiko,
> 
> On 2024-09-26 10:24, Heiko Stuebner wrote:
> > Am Donnerstag, 26. September 2024, 09:49:18 CEST schrieb Dragan Simic:
> >> Move the "l3_cache" node under the "cpus" node in the dtsi file for 
> >> Rockchip
> >> RK356x SoCs.  There's no need for this cache node to be at the higher 
> >> level.
> >> 
> >> Fixes: 8612169a05c5 ("arm64: dts: rockchip: Add cache information to 
> >> the SoC dtsi for RK356x")
> >> Cc: stable@vger.kernel.org
> > 
> > I think the commit message needs a bit more rationale on why this is a
> > stable-worthy fix. Because from the move and commit message it reads
> > like a styling choice ;-) .
> > 
> > I do agree that it makes more sense as child of cpus, but the commit
> > message should also elaborate on why that would matter for stable.
> 
> Thanks for your feedback!  Perhaps it would be the best to simply drop 
> the
> submission to stable kernels...  Believe it or not, :) I spent a fair 
> amount
> of time deliberating over the submission to stable, but now I think it's
> simply better to omit that and not increase the amount of patches that 
> go
> into stable unnecessary.
> 
> Would you like me to send the v2 with no Cc to stable, or would you 
> prefer
> to drop that line yourself?

I'm hopeful that I'll remember to drop it :-), so I guess no need
to resend for that.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
