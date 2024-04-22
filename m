Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11BBFC4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 22:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQ54btTdU5LQlc+hHplxeP62GmYfNvCgvO0hBhE5TKY=; b=ovXzM5HkIDujLF
	s5RyqAjsp1TBMcynwMMtksrchte44dK5bPg+3wf5I+JH3whLA7kXWiHJbLHnMQAHGI+n58lp5xWfV
	ETXenAcWmaqtNqg5uhQhnmJ0auH7TDkpO7mliB3HXwIYTsB2FLhlIRxIYdo50Mn7B+nzxkEWoCs4P
	C9j93/OU93uCtuBy/7tAr+97gAn9Ri4fiycBH0fKJNmSpXUBcYu8vciNYh6zOCK187h+rqEckH42v
	diP9UBYHFoVXhmulAF9ZIArvjHkbyJw7+kOHvq1alCK0L7OS7Twfq4iWBQqT24J0yXHwW7EBH83p2
	7QPJKi6Z5jI2DIp8M4Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz2V4-0000000FGKY-0VwA;
	Mon, 22 Apr 2024 22:51:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rz2V0-0000000FGIr-1jKD;
	Mon, 22 Apr 2024 22:50:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CCDA1611DC;
	Mon, 22 Apr 2024 22:50:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB710C113CC;
	Mon, 22 Apr 2024 22:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713826257;
	bh=jKtuLpcmCSteOW9hC0hYxP5slIdPuPj5+s2We5UpC3I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vCF+NLMwZE0DEUXq5CB6o75k/6Y41ZWq9YGcVm/jZ/leIl5/YxWDQJ6ARz6hpMeuO
	 JHRXYrw04QC6/JVId2G6QpkMS2LDZAuX3hhfCqMdnKf6PQcfAoTTtXCXCjMp8rkYwH
	 maVxoErtDVjKNEteAfM60Txj3mOBVybQzoirR5wqOPPnUJJauENH120UUPj1OmH6FB
	 TN7XKHb8CecQYCJ7T+raxCxakM53ZKjbt3thyz9WanoFK1Qvc5fZrv8/ga5nXPC90m
	 PVFEGS2u04tVkrZrbCVo2ndjHEJYO6uKpqz53ECZLwzf1unEhYWGwikLmkcHEUK1es
	 htT3PxdNwz7fw==
Date: Tue, 23 Apr 2024 00:50:53 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 00/18] i2c: remove printout on handled timeouts
Message-ID: <3ptifixggno4as73pqwldh6cjkqwbygfz6hnr2zhfehi6e4fjo@g3x2nghl5esa>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_155058_557865_E6D9241C 
X-CRM114-Status: UNSURE (   8.31  )
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

Hi Wolfram,

On Wed, Apr 10, 2024 at 01:24:14PM +0200, Wolfram Sang wrote:
> While working on another cleanup series, I stumbled over the fact that
> some drivers print an error on I2C or SMBus related timeouts. This is
> wrong because it may be an expected state. The client driver on top
> knows this, so let's keep error handling on this level and remove the
> prinouts from controller drivers.
> 
> Looking forward to comments,
> 
>    Wolfram

Applyed everything but patch 6 in i2c/i2c-host on

git://git.kernel.org/pub/scm/linux/kernel/git/andi.shyti/linux.git

Thank you,
Andi

Patches applied
===============
[01/18] i2c: at91-master: remove printout on handled timeouts
        commit: 74cce8ed33aeac91f397d642901c94520e574f8b
[02/18] i2c: bcm-iproc: remove printout on handled timeouts
        commit: 9f98914320f3e332487042aa73bbbfacc1dc9896
[03/18] i2c: bcm2835: remove printout on handled timeouts
        commit: ab17612ffb60bf07e4268448e022576d42833bf7
[04/18] i2c: cadence: remove printout on handled timeouts
        commit: 7aaff22d3e939c5187512188d7e27eb5e93ae41e
[05/18] i2c: davinci: remove printout on handled timeouts
        commit: dc72daa5cdf1c6ffebaef0c6df1f4cdeb15cadd6
[07/18] i2c: img-scb: remove printout on handled timeouts
        commit: 3e720ba5e30d6dd1b22e0f8a23f1697d438092b8
[08/18] i2c: ismt: remove printout on handled timeouts
        commit: 800a297370161bda70a34cb00eb0fa2f0345b75f
[09/18] i2c: nomadik: remove printout on handled timeouts
        commit: 26fbd3025cbce49cb3dd71f3a10239f69546b3c2
[10/18] i2c: omap: remove printout on handled timeouts
        commit: d3f24197d8125b2bf75162ec5cc270fd68f894f4
[11/18] i2c: qcom-geni: remove printout on handled timeouts
        commit: 4677d9f5c98f1c2825de142de5df08621ea340b3
[12/18] i2c: qup: remove printout on handled timeouts
        commit: e28ec7512496848e8a340889c512a0167949dc8f
[13/18] i2c: rk3x: remove printout on handled timeouts
        commit: 1cf7a7b3c944f727f34453a132b8899685e32f81
[14/18] i2c: sh_mobile: remove printout on handled timeouts
        commit: 31fb960bf8a424c47a5bf4568685e058c9d6f24d
[15/18] i2c: st: remove printout on handled timeouts
        commit: bff862e67260f779b2188e4b39c1a9f9989532ee
[16/18] i2c: tegra: remove printout on handled timeouts
        commit: 5ea641d9ea5ee1b3536f8b75e658e3bf2c2a548e
[17/18] i2c: uniphier-f: remove printout on handled timeouts
        commit: c31bc8e162890cda38d045e73ff0004119ab28e7
[18/18] i2c: uniphier: remove printout on handled timeouts
        commit: 507a2da9539cdb839a1a2e57bfcca644bcfe0f03

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
