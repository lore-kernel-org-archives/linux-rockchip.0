Return-Path: <SRS0=E6vg=EH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E79A8C388F2
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:33:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57247206D8
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:33:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VPrqI01r"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 57247206D8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=87xHZEZbYN82nqpr81z984ICV7WyuCwMJ/PaA4b6BOY=; b=VPrqI01rqsEKEujjfBK/0svJz
	DdH5urUkfo31zUwe96pK+TYQ9bA1Gal4CGhuyhkTxU2VfEKLO3qQA8BgtYNk9PjxqKLsA4bnafTs0
	+oWNHBIpIOjHMrAqpsADW8u7CDL5eji56bSWtKkHQoihK62hxPvIIhlwTFXz6hJcOXUvVoF8QfTp+
	9VzgLsUrDPNvWpGn0PJsSYX+z68n4wjaxMzsflpypRgCjhvxPtqFZdi+9wxDj6UyWzkp+PMV+pJhi
	FoCVakdWqqL5ZM+feKlC59g3aaEIwHF5iNni1Sig1jtv/qmDAgZrUh3uYbP8Vq2S45STud48Xwh04
	ojeHx+85g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZFMg-0003cm-5M; Sun, 01 Nov 2020 15:33:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZFMd-0003bt-Gf; Sun, 01 Nov 2020 15:33:53 +0000
Received: from p57b773f8.dip0.t-ipconnect.de ([87.183.115.248]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kZFMZ-0003rS-Ey; Sun, 01 Nov 2020 16:33:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: jbx6244@gmail.com, linux-rockchip@lists.infradead.org, pgwipeout@gmail.com,
 David Bauer <mail@david-bauer.net>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] rockchip: rk3328: fix NanoPi R2S GMAC clock name
Date: Sun,  1 Nov 2020 16:33:43 +0100
Message-Id: <160424139256.1224767.14964668724896546487.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201026162721.70672-1-mail@david-bauer.net>
References: <20201026162721.70672-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201101_103351_612638_B92C7A68 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: Tobias Waldvogel <tobias.waldvogel@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 26 Oct 2020 17:27:21 +0100, David Bauer wrote:
> This commit fixes the name for the GMAC clock to gmac_clkin, as this is
> the name of the clock provided by the rk3328-clk driver.
> 
> Without this commit, the GMAC will not work in TX direction.

Applied, thanks!

[1/1] arm64: dts: rockchip: fix NanoPi R2S GMAC clock name
      commit: b0c0aa7aa4b919e02e0a24aa3a46dfbf2bbc34dc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
