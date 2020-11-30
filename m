Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B180AC64E8A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:50:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 01C5820825
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:50:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="L0KKrjfZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 01C5820825
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zo352SDBgfW52z55+vgBlXTorn9MTiwYIM4JNpKaBVs=; b=L0KKrjfZ+YufUhYFLENnsywN8
	EGi3Tw1rdu3sAOgztX424UbyLuGu2Jql+t0+rbWmw88aXuVixVN5mK9QAIxlSKwhxETFB/6enY8H3
	aX+Ex5tq9pyhG0UsXBbcUZakbEiE9hHGscOjrqfWa/zskU4VMFJOTq73F/LtHykSFGBJjj+VII+og
	lZaz0RlXdvhoS1EPYFoV1QeUR6WZFe3nS/HRtlg4p1QCuoAO2Ma6Jgs7Neqww8Gm7lbINFub02Jm2
	EIYMQIPnAXjHxaz0/3fa+pcQbmX/LvRH3RVziCSqJoAp+OnKeFgWuQT/0idXAM4riMqWvce1l9GrW
	QszdFYziQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjjZe-0006Zs-0t; Mon, 30 Nov 2020 13:50:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjjZa-0006YX-Qn; Mon, 30 Nov 2020 13:50:35 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjjZQ-0002YW-4x; Mon, 30 Nov 2020 14:50:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexis Ballier <aballier@gentoo.org>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-orangepi: Properly define
 the type C connector.
Date: Mon, 30 Nov 2020 14:50:20 +0100
Message-Id: <160674371010.1066509.9885458366425661043.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201022113532.18470-1-aballier@gentoo.org>
References: <20201022113532.18470-1-aballier@gentoo.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_085034_934237_20753A49 
X-CRM114-Status: GOOD (  11.81  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 22 Oct 2020 13:35:32 +0200, Alexis Ballier wrote:
> Tested:
> - USB3 Gigabit adapter
> - USB2 mass storage
> 
> The wiring is the same as the pinebook pro according to the schematics,
> thus this patch is heavily based on its dts.

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-orangepi: Properly define the type C connector.
      commit: e56ed188c83053a505041e1a8ad4fba0f3b39089

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
