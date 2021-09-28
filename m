Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B37C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 23:12:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B6C661350
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 23:12:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0B6C661350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJA452rw8YBKg3IYOAAS2zEAO4WSdRdIaSyWW2qXyio=; b=ZKdQ83fREGBXm4
	o1VKf+cyEhxWBlKGaPrRMqJL1kpoDzOmu0BLEMMVK+kTBi//PDX8StfBRjVm0TfaiOTLUB4VXyhrr
	bvbDx7EfP3zCsm49Oza+okFmDbCvXUZskEFKrtPYz+AWowpXMnBlyN/0LB4sQL6XZ2Bg4HVlrzgyC
	nwJi+QIyx0WCkMO8aixAnx6P1o8V9rTquo10mQCEjd9RpSScajsJ8gvkwCfYkaohs+0q1TQUlxXOZ
	LwhEXR8mnkb+y4NRO39uX2jrAoIfv1FtgTY5N7oxSaGH17QGWq3mNBZ0JDIYGU/6wj/xyvdZtYnE7
	phHIAXuTm+jOI+Q09RhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVMGa-009Duz-C8; Tue, 28 Sep 2021 23:12:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVLXI-0093jl-0E
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 22:25:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EC85861391;
 Tue, 28 Sep 2021 22:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632867915;
 bh=2tH9+XEExZA1XrQZ9WnFhsqrVxIkw+KMQTLPern2Jnw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=R/Odh5/7/MI8fmnyqwL4f/VLA9LnX4bQ8jlXhUM9wzM7ORrM8C1vqWIas5lw7ShPF
 pfKtJUXYA8FuzQEBiy0kQnkNwbJUEphpLrvhv1RibylpJGXWbe0aHGDZrutqvr7Qws
 9AwhwQf5LsckK8ktDOM29zeqpyUz532RZswN/vTy80BLDNThykc1Dn5aPpopa6kXly
 E2MX3f2/o7Hqw01f81qfhEPwm4gi1S9guoVEUHDEMNMMlH00ctizuAJLVSEo6e5ZCs
 Gt2IsMieAzRRh8v9uXzYO0ldoY+E5+tPEd3/Ugp72E09K0Fgq58qKW5c5l0wVvNnVt
 cAP0Gh3g+dHNw==
MIME-Version: 1.0
In-Reply-To: <4726255.Mh6RI2rZIc@phil>
References: <4726255.Mh6RI2rZIc@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.16
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 28 Sep 2021 15:25:12 -0700
Message-ID: <163286791272.358640.17275918941263643760@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_152516_139502_A4EA21FE 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
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

Quoting Heiko Stuebner (2021-09-27 02:44:16)
> Hi Mike, Stephen,
> 
> please find below some Rockchip clock changes for 5.16
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit 6880fa6c56601bb8ed59df6c30fd390cc5f6dd8f:
> 
>   Linux 5.15-rc1 (2021-09-12 16:28:37 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.16-rockchip-clk-1
> 
> for you to fetch changes up to 1da80da028fe5accb866c0d6899a292ed86bef45:
> 
>   clk: rockchip: use module_platform_driver_probe (2021-09-21 00:44:53 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
