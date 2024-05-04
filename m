Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59851C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 10:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSbDG6QBaAGTr6TgLXx2lIeOoJV88OBn1CsWAtN5rmc=; b=2HTi8lZWPyfc5E
	YwWiezYeOxvWat4sbzibL9DSU0RIag/dd5OYlBFsuBGHT6PRYhD741rI1Y3fDCnrapgDziXuwvDpQ
	QmuwwzJ+keKK5dT3TK6p3Wxh9g3HZmi3OJx59WGo4IHFP268QyidoFXuUdH59bTblxdpyhfRjqho3
	7G3Aw0vnfGZG8UEAPyB04ARL/bQytF2R3wEbJupI8AkjMs5ganqG0cEG650wDnUqdSveOLQUwmU6c
	CEiyepUOZMO16/eqEmdWPOa2JNNWRGKJZICYcpG9n/EmnBboDvCmwoabpKR2A51YWPEdsbpFFl4Mp
	JU7QjZ1wzglot+VkaR5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3Czb-00000001pLO-2db2;
	Sat, 04 May 2024 10:51:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3CzW-00000001pJQ-2urP;
	Sat, 04 May 2024 10:51:44 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s3CzM-0001m9-Ud; Sat, 04 May 2024 12:51:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel-janitors@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: Remove some unused fields in struct rockchip_mmc_clock
Date: Sat,  4 May 2024 12:51:30 +0200
Message-Id: <171481988029.3538483.14745694145472160421.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <410bc0f86c7b9f1c80f8a4e9a2a028a9a6ee1ec0.1713970085.git.christophe.jaillet@wanadoo.fr>
References: <410bc0f86c7b9f1c80f8a4e9a2a028a9a6ee1ec0.1713970085.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_035142_765394_818D0875 
X-CRM114-Status: UNSURE (   9.23  )
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

On Wed, 24 Apr 2024 16:48:29 +0200, Christophe JAILLET wrote:
> In "struct rockchip_mmc_clock", the 'id' field is unused.
> Remove it.
> 
> Found with cppcheck, unusedStructMember.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: Remove some unused fields in struct rockchip_mmc_clock
      commit: 947b8f2a8b5155f6e9560af07ed65b3cc9aecd75

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
