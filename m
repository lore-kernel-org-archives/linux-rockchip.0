Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C53E5C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 18:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IBuBkSB4svyHcsbG0hpZbpHO5SPjvF7O8guJy2v68fE=; b=lVcdGbb4TlbVvT
	bfYf3/4DOtEBzuPM3d6B+nTu8b5xVUMiFSsMMVvQMAISIVdWUP77AuZs4eSF/D7IL5SbTORKCEqDX
	ALEnV31bOmTjni2lHcnFGY0C2MrrxwJLnBu8rA+UnfI56oDYV3nUADKK/t13VEoQpP+MCEAAqLFeC
	7XnpD4Pg2FstoBg70hPAd4xf6I8DyMo0jAIq2qy97rJWSstgP0Ty8IBJUDgCFfHUros4/JjWtuo55
	AVidUiB/BbOH/NWDEWswwJJV1APrz+TT/UaTcZXRcflIaaIYq+QMfnSDrizPPDE15s13SNbGpSPKA
	SnGsym/8Fs+1OHHPdoYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1morxF-00EAfl-0I; Sun, 21 Nov 2021 18:52:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1morwl-00EAUh-NC; Sun, 21 Nov 2021 18:52:18 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1morwj-00086u-G2; Sun, 21 Nov 2021 19:52:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "Ivan T. Ivanov" <iivanov@suse.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Russell King <linux@armlinux.org.uk>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: rockchip: Use memcpy_toio instead of memcpy on smp
 bring-up
Date: Sun, 21 Nov 2021 19:52:08 +0100
Message-Id: <163752071859.2241976.11773008941383016973.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211116084616.24811-1-iivanov@suse.de>
References: <20211116084616.24811-1-iivanov@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_105215_817690_202D7736 
X-CRM114-Status: UNSURE (   9.41  )
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

On Tue, 16 Nov 2021 10:46:16 +0200, Ivan T. Ivanov wrote:
> This fixes a potential kernel panic on memcpy when FORTIFY_SOURCE
> is enabled. Because memory is iomem use appropriate function for
> accessing it.

Applied, thanks!

[1/1] ARM: rockchip: Use memcpy_toio instead of memcpy on smp bring-up
      commit: 423e85e97aaf69e5198bbec6811e3825c8b5019a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
