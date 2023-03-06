Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 844DDC61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Mar 2023 13:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbLXp5ZzaQxbpr4R1CMt03RBW0DGEVGzSQDlb/Zn7ME=; b=yictzI7A+qQaWx
	ttQJLd1TuO1Qlhne8+VmRO0WLsGuGPUHKCgQG1NeKvOeH6/4fHG/8kiH1ih72FvCuqRvnK4m4316j
	gLveTWq8PEndyXnaKjf4rVIzJlTitInea5VciaGAb6OB6IAu5D4jP0rG5zDuQa1WrOF0YE0G6SX/g
	BvC+HxK8mgEYxz3CVLND8fHnMhGvX/x4N4/OWUrtUpd8Hrms83busrV/phsVdHQm/OndGSHAGD2jM
	TFfLR1Nr7jUsvzNDEhd8OMjhjGFuCNTtfkybDHyWkfsqb7Y9DWkgtwL+d7tQIZD0T0dAtlAQDpgBo
	u9YJ56p6xfT75TZgMCVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAWv-00Cno0-Dy; Mon, 06 Mar 2023 13:05:29 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAWb-00Cngz-De; Mon, 06 Mar 2023 13:05:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id EE12DB80DFA;
	Mon,  6 Mar 2023 13:05:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 611D1C433D2;
	Mon,  6 Mar 2023 13:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678107906;
	bh=OmU8l36xufyDkaO9yoRR1VAuUSrBSxNw7CTRX3T1zAc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TIOAWS2yZAMhm5gM3FjHwBpnqcfNmstb1sm/7d62iOOb8xvjAqgDlwWOW0qxCQVru
	 KVB+cTvg41NwKfEyidHR4qXBdSxrmfZAjnXXt1PubhMb8ZdXMzwi3fWquWzqpJ12SP
	 XUnv5ocWunPLxcYKV+6iHXM0Kj05Tml1Oua3hsaMEHZrbhsPwS11zAHOLONSL55M8I
	 jJl2OnSLDeuuqCG4H1xxRxg8d+4TY6YSKrwUXT4QBjw9y0TWhS/x4oyq4hpZGGvdx0
	 TEoiJJtVkWKInAmf1Sp8sx96z/vC6ClW5gQuUlLkrCrGyMYbirewUm2iHzEmFwehn9
	 wcHexJUYOni2Q==
From: Mark Brown <broonie@kernel.org>
To: heiko@sntech.de, Lizhe <sensor1010@163.com>
Cc: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20230226065125.14086-1-sensor1010@163.com>
References: <20230226065125.14086-1-sensor1010@163.com>
Subject: Re: [PATCH v1] drivers/spi-rockchip.c : Use
 devm_platform_get_and_ioremap_resource makes code better
Message-Id: <167810790510.67440.1015244482940855027.b4-ty@kernel.org>
Date: Mon, 06 Mar 2023 13:05:05 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-bd1bf
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_050509_650862_D08722BE 
X-CRM114-Status: GOOD (  10.94  )
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

On Sun, 26 Feb 2023 14:51:25 +0800, Lizhe wrote:
> use devm_platform_get_and_ioremap replace platform_get_resource()
> and devm_ioremap_resource()
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next

Thanks!

[1/1] drivers/spi-rockchip.c : Use devm_platform_get_and_ioremap_resource makes code better
      commit: d447fa6564788af2b8729f66157e1220ecf6d136

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
