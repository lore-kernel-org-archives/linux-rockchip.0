Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9A7BCD98CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 09:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fg6r+/Y9htQyl5XvwBlMdMTqmxE2WQwFrIiwfGuyabY=; b=VuczlEoAW+taZL
	TENxwA6Y1u/ubvGfCu3ksLxJS/FZBrwfVZczVCN4O5XjXCDBdLdtCxPbD9/0H35+yiWk9jK/HL4UP
	tLcLssYzYiDQBafFFSlweJ/xoG5J1IfyY8hl9QMKlWznjMTatT3NlbMYop158aLy4HzOdOk11epmN
	mHZf3tmTjlLTieLQm6EbzSDVOWnWWFNqbepAefvEE9sWwbpELwRB7fDPY12qP966SfgF5P2hAWbqI
	o5LJ4/FsZVLkAJTb3spKqNS4TGwG+nAMVCV70SNq8KFTWWKQXXeHwzA/gW8xsi6pkJeAdX6Tnaqov
	ZJdg1dH0279pUlIAWvRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXFYP-00000007Ix7-3tcM;
	Wed, 10 Jun 2026 09:48:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXFYP-00000007IwR-0kT2
	for linux-rockchip@bombadil.infradead.org;
	Wed, 10 Jun 2026 09:48:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ptFjzsPsex8uLi9OS6mYHDrEKKPv4Cs2rzaldcm694E=; b=lYPXaU2+JPTBEUmPhteEnDnsOl
	lMwXwNHvNbPhYTO4CCRAqo2S8bgB1nzM/JST3LVf5pwxIl33ixJd9hOlPjaZjE3qvUab1+4VYHne+
	Gegpziod1RfYqAaAGy7nNPbSLgf+0WGTYgDV+Fb/jgOtuPjUM+CUY5K0pyDbFOYF6BBQDoN7ZTVuK
	C04PMmjRVbzNGQhmca4sNQ+885IAznxEXnR1yL4KGUZT+/QYCXqxsWEclxpJcOWu+89SqVw4momMl
	FB2WJKNoA5vHIfaHvYbDvZw9ovBIwfuSHy9XWGKoGamTfZZhaOJ2eHtburOBCAWwc3OOmR4k2kwBl
	zHLUdt1g==;
Received: from relay.yourmailgateway.de ([188.68.61.107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wXFEJ-00000003ggI-2w42
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 09:28:15 +0000
Received: from mors-relay-8405.netcup.net (localhost [127.0.0.1])
	by mors-relay-8405.netcup.net (Postfix) with ESMTPS id 4gb0nM317Dz71ql;
	Wed, 10 Jun 2026 11:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=leemhuis.info;
	s=key2; t=1781083687;
	bh=S0M2Cth8pZwQfQOa7dmLVKP+EcyGu6sVDYt/ZnaQcSc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PthFqRAbFCgu4w0YctJ28a79BiD0jHo44vb3aRdFy0oxvPiGZ4/OPJc9lM3KyfpyR
	 B9dl7EJvDuwFTJ7SVN3Cl3FJJZ+SbL5aAeEbaY6cPBpCmEYh6QMZGeMD11gjpRs7AM
	 nw/01HbLpBv7LqR8SR0SIxQCulNJL1uiMx4S2sQkIxmi1+x6rKy1KbQTZqf963Hh5T
	 s3uvfXdICsBnupmROfLlFIFpox5/lHMg837kCp+oLwJ1I6lg143bd2w9GY/j36nGbu
	 W8O/mHZSldgYnsVvN3zjvzYG6mxWCM5OBoRfVcgZuJlc4H+D2xUnlny8Qi41I5ow12
	 z5CYdkvwRuXIg==
Received: from policy01-mors.netcup.net (unknown [46.38.225.35])
	by mors-relay-8405.netcup.net (Postfix) with ESMTPS id 4gb0nM2KCMz71q3;
	Wed, 10 Jun 2026 11:28:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at policy01-mors.netcup.net
Received: from mxe9fb.netcup.net (unknown [10.243.12.53])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by policy01-mors.netcup.net (Postfix) with ESMTPS id 4gb0nK1J2Bz8tdc;
	Wed, 10 Jun 2026 11:28:05 +0200 (CEST)
Received: from [IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f] (unknown [IPv6:2a02:8108:8984:1d00:a0cf:1912:4be:477f])
	by mxe9fb.netcup.net (Postfix) with ESMTPSA id BFF8861834;
	Wed, 10 Jun 2026 11:28:03 +0200 (CEST)
Authentication-Results: mxe9fb;
        spf=pass (sender IP is 2a02:8108:8984:1d00:a0cf:1912:4be:477f) smtp.mailfrom=regressions@leemhuis.info smtp.helo=[IPV6:2a02:8108:8984:1d00:a0cf:1912:4be:477f]
Received-SPF: pass (mxe9fb: connection is authenticated)
Message-ID: <b68dc2ab-ab54-435f-a4e5-05b1b8397505@leemhuis.info>
Date: Wed, 10 Jun 2026 11:28:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [REGRESSION][BISECTED] wireless networking broken on Pinephone
 Pro
To: Oren Klopfer <oklopfer37@gmail.com>, linux-rockchip@lists.infradead.org
Cc: regressions@lists.linux.dev, pbrobinson@gmail.com, heiko@sntech.de,
 guptarud@gmail.com, megi@xff.cz
References: <20260607225901.64019-1-oklopfer37@gmail.com>
From: Thorsten Leemhuis <regressions@leemhuis.info>
Content-Language: de-DE, en-US
In-Reply-To: <20260607225901.64019-1-oklopfer37@gmail.com>
X-PPP-Message-ID: <178108368414.1890399.13005960660434409860@mxe9fb.netcup.net>
X-Rspamd-Server: rspamd-worker-8404
X-Rspamd-Queue-Id: BFF8861834
X-NC-CID: 598cZP64CGrnjzi48ziqCffhEELqW7MMqIF991CvHUWGt+Cmwdc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_102811_964189_F4A0360C 
X-CRM114-Status: GOOD (  15.99  )
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

On 6/8/26 00:59, Oren Klopfer wrote:
> Apologies if this is not formatted properly, this is my first
> submission to the kernel mailing list. WiFi specifications were
> introduced into the Pinephone Pro device tree in
> 096bd8c679185f898cae9933c6a68650fa26ea4f, but this causes complete
> networking failure on some devices. The regression affects all
> versions v6.18-rc1..v7.1-rc6.
> 
> An identical issue was reported for the Pinebook Pro at https://
> lore.kernel.org/all/aUKOlj-RvTYlrpiS@rock.grzadka/; the regression
> was reverted in 29d1f56c4f3001b7f547123e0a307c009ac717f8. The errors
> faced on the Pinephone Pro are exactly the same as were reported for
> the Pinebook Pro regression.
> 
> A previous patch at https://lore.kernel.org/all/20260112-
> ppp_connectivity-v1-3-284d6e83b212@gmail.com/ attempted to resolve
> this issue but never ended up being merged.
> 
> 096bd8c679185f898cae9933c6a68650fa26ea4f is the first bad commit
> commit 096bd8c679185f898cae9933c6a68650fa26ea4f
> Author: Peter Robinson <pbrobinson@gmail.com>
> Date:   Fri Aug 29 12:38:24 2025 +0100
> 
>     arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro
> [...]
> 
> Reverting the commit allows wireless connection to function again. I
> am not really familiar with the process of submitting a revert
> patch, but I'd request that this be done on all of 6.18 (LTS), 7.0
> (Stable), 7.1 (Mainline). Thanks!
Thx for the report. Sounds like a revert is the right course of action
here. Could you submit one with a stable tag to ensure backporting? That
might be the fastest way to resolve this, as that makes it easy to
process for the maintainers to process this.

Ciao, Thorsten

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
