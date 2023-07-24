Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF050C001B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 19:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BFnuA0nthA3lRbIN9ypocsR4Jy4E5F7RG1v8gdaepyQ=; b=C0/yoEGn4q9cqd
	/fXbmEBRAqNjCLflMTO1ptG3S1e8ovkl6B44LpJ49YhEjrli99t5VM52pFV2kCZiyR88vv7nJTm07
	TDFjSkTnuMy1OkJOQifFjj5L14DZAnZ9vCiObk837S26rWRE9AKQV8GnkqdpcPZTBy5zNZh5H12xE
	0u7EJC310rKR8R14cu8r1c0KjlxmdDV++j1XkbYyEJz/WdwfPW5wlZIoDUXDzuChRfcgEIEgp1jQt
	0ZygyXjv3LG6bAhmjyswnLjJq+Imkxz7qIYm2KAkAnSNLuOxu0op0LqlkSyMnyd84PPc/eI7Gj6qN
	aFAp8+hT+Xq1ZXI1hw0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0z5-005HjG-0t;
	Mon, 24 Jul 2023 19:12:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qO0z1-005HiZ-2m
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jul 2023 19:12:40 +0000
Received: from [193.138.155.172] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qO0yz-00009J-3y; Mon, 24 Jul 2023 21:12:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: sebastian.reichel@collabora.com,
	FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	lucas.tanure@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rock-5a, rock-5b: fix/update sdmmc properties
Date: Mon, 24 Jul 2023 21:12:34 +0200
Message-Id: <169022594797.2911118.3467945866113850796.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230722121150.130126-1-naoki@radxa.com>
References: <20230722111901.ivpnzgucbrw5pwg2@mercury.elektranox.org> <20230722121150.130126-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_121239_896541_4C9F3482 
X-CRM114-Status: UNSURE (   6.69  )
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

On Sat, 22 Jul 2023 21:11:50 +0900, FUKAUMI Naoki wrote:
> add alias for sdmmc as mmc1.
> make card detect work.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rock-5a, rock-5b: fix/update sdmmc properties
      commit: c75b725ea6dd518beeebd693e4bfc02eb15e3b75

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
