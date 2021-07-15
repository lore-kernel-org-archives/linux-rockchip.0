Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B6CC636CA
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:43:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FB596128D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:43:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4FB596128D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8lWsN4HXtB54lTrEHQaSjD8aGqlPkLyKmJGqoBzOOw=; b=Hf94llydBIjQFD
	f1tkOr05vGfuT6RTXBLBWFqCZyiHgvdeOR4E6tFNxYMjC846vk66Kl05SPxrN1nja/F0j3IXfQX82
	EvGWFnEgD5dMopSLrrSbpNAGtOK/sd0R/ppVmHffKWiIN/7yi68upPVd9151qZTAibIM3BLXdONvf
	m/T0P8RNJCBGczUju6gYA9QRQMPH2f0tWEcbJ5D77awmCRZ2T+CylZ91gOqjYXFaGbkJg0KsYQD4p
	zxIcCIWO4dLXvQGJxMdL0r3FSd+R/wsv9p37vEwrJfH+R3WwzK6njtdsIFIdWib5VJXEkkBxAAqsx
	Q6krDQU1HKaRljeZUHkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4A4O-002Uoj-UP; Thu, 15 Jul 2021 22:43:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4A4M-002UlP-0s; Thu, 15 Jul 2021 22:43:03 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4A4I-0005t7-1w; Fri, 16 Jul 2021 00:42:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] soc: rockchip: ROCKCHIP_GRF should not default to y,
 unconditionally
Date: Fri, 16 Jul 2021 00:42:52 +0200
Message-Id: <162638886252.651069.16002951650407635275.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210208143855.418374-1-geert+renesas@glider.be>
References: <20210208143855.418374-1-geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_154302_100296_09E18F78 
X-CRM114-Status: GOOD (  10.39  )
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

On Mon, 8 Feb 2021 15:38:55 +0100, Geert Uytterhoeven wrote:
> Merely enabling CONFIG_COMPILE_TEST should not enable additional code.
> To fix this, restrict the automatic enabling of ROCKCHIP_GRF to
> ARCH_ROCKCHIP, and ask the user in case of compile-testing.

Applied, thanks!

[1/1] soc: rockchip: ROCKCHIP_GRF should not default to y, unconditionally
      commit: 2a1c55d4762dd34a8b0f2e36fb01b7b16b60735b

I actually found the old one deep down in my inbox some days ago,
so had applied that one already. Hope nothing changed with your
RESEND.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
