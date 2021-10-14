Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4034EC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 22:52:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E66C60FC3
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 22:52:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0E66C60FC3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NC1StYI3dKOY11i/LO3lAfKJzYdNDeH9kQYbOzEL79o=; b=b1Q+3vlEU+qY/g
	0siRWmQ+IhPm+Prue06ro/qX1Z800OdQQN7Byw3nEuSKRm/VKz0IUWPdpubCyijUxC/f7UM0NIXle
	pSFImttGyMzNoh5dEpSrB1nmgi/dRbmB8XEfcwaY3rbEqig9qe5dIOprsJDRrInjgOtgQK9NLmr4G
	BJERzxR+hJ/I2t/7w6JghrgWvl8mPAWIvRONSjy9KYz8fLec9wsjmHyA4iFkJjAhYy6uJ4xK9TOp+
	5sSYfvg9AphmQ7Ch4z/4iNkVghHE/aYQkpK3QIZ2S7/CrOb35Vkm+Yxw8SqNTZuTNIHRNtaV93T3X
	SoCpzx+2ES79BZcVC6lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mb9aQ-004cBm-3g; Thu, 14 Oct 2021 22:52:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mb9aD-004c6W-Ba; Thu, 14 Oct 2021 22:52:18 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D499C60FC3;
 Thu, 14 Oct 2021 22:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634251936;
 bh=w2M0Nc1Fjh2mq6HKMawsLh1v5jA6O1TVewN7UbNKbrg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ncL12SOg75ZJma1Wyx0P+2DH9LdHfmKm2ltnXOCFI6NnPvnEAClmBbmkUnockx5SW
 LeFbb4aD795XfdudLTU21VTkYuJYi/ltcPLEBK9OGFeoO+fdtgzPWgxj51DM92c6Rb
 HjgL+5SY7w1icSduUKktIX2wjKhwmK0mqdMLS/hnXRrwrotHsXwVdkFm2lDXOCT8XH
 IX2YRdyGPolToO2MEpNDDDaO7RwWd0hwFhH9G+2USJQKeIIb5GA4MOT7xfQzwvmjtJ
 WNHn7ZRIzghkvvH+ck/Cq+VbQHubgukrJx95cr4fN46LyUnLLdZ2N10p4wptQ1KtGS
 CDMbzw69glOiQ==
MIME-Version: 1.0
In-Reply-To: <CAFBinCAT-FxcHpt=NCt4g-OfzEUhvxh8TNRcY2hb5kdxna0Uyw@mail.gmail.com>
References: <20210702225145.2643303-1-martin.blumenstingl@googlemail.com>
 <20210702225145.2643303-2-martin.blumenstingl@googlemail.com>
 <4eb964ac-4fff-b59d-2660-2f84d8af5901@gmail.com>
 <CAFBinCAVtd8gmcuvGU79-85CqhSU8a3mBCa_jweeZBd59u+amQ@mail.gmail.com>
 <CAFBinCAT-FxcHpt=NCt4g-OfzEUhvxh8TNRcY2hb5kdxna0Uyw@mail.gmail.com>
Subject: Re: [PATCH v1 1/6] clk: divider: Implement and wire up
 .determine_rate by default
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
To: Alex Bee <knaerzche@gmail.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 14 Oct 2021 15:52:15 -0700
Message-ID: <163425193558.1688384.15520943968787313145@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_155217_433159_B6724D6C 
X-CRM114-Status: GOOD (  23.44  )
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

Quoting Martin Blumenstingl (2021-10-14 14:34:54)
> On Thu, Oct 14, 2021 at 2:11 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> [...]
> > > Reverting this commit makes it work again: Unless there is a quick and
> > > obvious fix for that, I guess this should be done for 5.15 - even if the
> > > real issue is somewhere else.
> > Reverting this patch is fine from the Amlogic SoC point of view.
> > The main goal was to clean up / improve the CCF code.
> > Nothing (that I am aware of) is going to break in Amlogic land if we
> > revert this.
> Unfortunately only now I realized that reverting this patch would also
> require reverting the other five patches in this series (since they
> depend on this one).
> For this reason I propose changing the order of the checks in
> clk-composite.c - see the attached patch (which I can send as a proper
> one once agreed that this is the way to go forward)
> 
> Off-list Alex also suggested that I should use rate_ops.determine_rate
> if available.
> While I agree that this makes sense in general my plan is to do this
> in a follow-up patch.
> Changing the order of the conditions is needed anyways and it *should*
> fix the issue reported here (but I have no way of testing that
> unfortunately).
> 
> Alex, it would be great if you (or someone with Rockchip boards) could
> test the attached patch and let me know if it fixes the reported
> problem.
> 

I can't read your attached patch. Please send it inline.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
