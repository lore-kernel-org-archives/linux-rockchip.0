Return-Path: <SRS0=cCFl=KE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C44C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:58:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA2EA61055
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:58:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA2EA61055
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6BLpH7H8xdUxvpZ9DNeWDCCBcaaM20D71CUJ01Xy6j8=; b=YX2ApYCrTfDG007LOmTZKjQbZ
	8KfQAquSoj+4RIdHGgG1HZYiyX4rAw8ZsnO3u26oWjmqbB/sybVhejtZbhhyYqee5Ky1U7ns3Tvi+
	4fh+CkIuNGn0o2CPsrm7qa6o7mUAbSAamQpPXGEI2VCKrHb3X0UcIg0b1GZGNqQUtBWAiwYrymPGe
	Y4G7cL3bkW1F0lErkXotiwuGyEQWi+gyDQVnCeHpjANLfcB16RLXI7z4nf3RccVNSgT1KfkAw5FBT
	qX0MV0YrSeOqXqGGQyngXDgXTGp+4OyljmsVQtKmmIkBoU9O9ntxefi/rMdk3r22ytuPWAOkjM8l1
	J5vUuhzKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftJH-00CYNa-OM; Sun, 09 May 2021 23:58:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGg-00CY0t-6k; Sun, 09 May 2021 23:55:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=YX9EZ5QenvPMlVl6wqm7Ef2yVssKy3oVDHLqzI2Lg7g=; b=BrbCJGa+HB8cDrzxq3NrYQ/683
 XrEuZ73qU5VbVg1Ibuxj6RVVShdKWvwFVHB8w9w1XCCafF2OlqDbXBvYHhRP/B9DQOHwutUFDg6dP
 A88h5tR/BTE+xZdEXsQeizUHs81c0vOgNaTFew+TLuD+wp7Vt40/N0eUAipoc3Ft2ZY+CdgxcFUu3
 sqPwSi7Mmhzq1HhijKWixDybe8XqI3ccJQSttPYG4N1JmyUuTH1tP98q764A+9ZnrXhdSOA38/Haz
 nbpxrliLknm7BV0W50sEza8NC1O8g0K00MevGi/TqYL2ADcqD/GwoDayonNCVdGmx1ESVCmu9Li10
 gHfQv7jA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGd-008A2g-Tf; Sun, 09 May 2021 23:55:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftGT-0007y6-2C; Mon, 10 May 2021 01:55:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Marty Jones <mj8263788@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Pavel Machek <pavel@ucw.cz>, Jensen Huang <jensenhuang@friendlyarm.com>,
 Tianling Shen <cnsztl@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rename LED label for NanoPi R4S
Date: Mon, 10 May 2021 01:55:04 +0200
Message-Id: <162060449717.1266480.15512364220563668562.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210426114652.29542-1-cnsztl@gmail.com>
References: <20210426114652.29542-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_165523_978658_C0198B63 
X-CRM114-Status: GOOD (  11.17  )
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

On Mon, 26 Apr 2021 19:46:52 +0800, Tianling Shen wrote:
> However "sys" is not a valid function, and it is always on.
> Let's keep existing functions.
> 
> Fixes: db792e9adbf85f ("rockchip: rk3399: Add support for FriendlyARM NanoPi R4S")

Applied, thanks!

[1/1] arm64: dts: rockchip: rename LED label for NanoPi R4S
      commit: 6a11ffc2cc54d89719d5b2f3ca44244cebd7ed2e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
