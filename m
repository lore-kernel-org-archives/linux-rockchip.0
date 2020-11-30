Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EB07C64E8A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 26B2920757
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:19 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="socWDVMs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 26B2920757
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oVOozMQaXLbAohA5CSUafbNw9formeF7wziO1Suvps0=; b=socWDVMsd93+Adp+DXXtFcWAJ
	TCXANLq9+06sfDkg4B/QWeUBCVd7QaHDeD1zsWnALaeEnEvzuIUkag56I0SS6VZbRAyZJQUH0XNRN
	vKxvNuTyDx6qojXVyytZqnMlKwxukyGaecg4Tkkb9KEgSFDDllLL/5FujXsifLf++/B/EpjWHiiHJ
	W8uRBAmkzJMS0vZbhNHXkkorwWvTczQH4L6P3nIqxJEumCP/qGAy6PYOWrBHIPPqB4/8ItISz9TRi
	17oYllpajV3+xieuDyz+aATb5PerK9t6DYFjOTnNX3tOdT1/4WAbZ/3PA6OWG4UvL6WMzSjiNODdY
	wNuM7tcOA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjYMS-0002Wv-Es; Mon, 30 Nov 2020 01:52:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjYMH-0002UY-OA; Mon, 30 Nov 2020 01:52:06 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjYMF-0007OY-AD; Mon, 30 Nov 2020 02:52:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Xu Wang <vulab@iscas.ac.cn>, linux-arm-kernel@lists.infradead.org,
 mturquette@baylibre.com, linux-rockchip@lists.infradead.org,
 sboyd@kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: Remove redundant null check before
 clk_prepare_enable
Date: Mon, 30 Nov 2020 02:51:59 +0100
Message-Id: <160670107988.1055391.13206262718686759521.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201127090551.50254-1-vulab@iscas.ac.cn>
References: <20201127090551.50254-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_205205_803807_88031580 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 27 Nov 2020 09:05:51 +0000, Xu Wang wrote:
> Because clk_prepare_enable() already checked NULL clock parameter,
> so the additional check is unnecessary, just remove it.

Applied, thanks!

[1/1] clk: rockchip: Remove redundant null check before clk_prepare_enable
      commit: 7f5b57a095f3b9532793d143655e83433bb448af

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
