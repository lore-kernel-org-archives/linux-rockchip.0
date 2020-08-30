Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23ED7C433E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:42:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5A352078D
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:42:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="V77VIiDW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5A352078D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W5/LlmgY0s0/axa1FQxn1Ih0uP5G0TWSKnFrA0vjXnA=; b=V77VIiDWwR5u1lAHVKhUUmL2W
	E/Ggu49IXFaBejQvbP/4gpOGr0aU3qIgDbkwMj7VZCslf18TXgwAiKIzVoMEj0Sx6c/heH4Rhh0mY
	EW8k1mXuODQrTZRHjs7rpIDOgLvIQPlvmAbd+n7Fu0y327xuetBH+O4RhZZGrJ7LjRodpm3LnwsNM
	tJxwKZ6JUXtNG8m2ZAHZipr5nE/2upokiJyYIBl+h0gO1Cm1OLQpB6MmiO7Dmkvxjc8ADsK+8cNfB
	20KOQ3zQZ+s/goGEWgKr4xunBvhJ5TgJW/6MJ6u0aZsVTfO5FqZrTuU71v830LLwVwxBvzVwQnMNX
	+ULeBsvAQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCTDw-0006Va-IU; Sun, 30 Aug 2020 19:42:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCTDm-0006Rj-5c; Sun, 30 Aug 2020 19:42:35 +0000
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kCTDl-0002KX-AO; Sun, 30 Aug 2020 21:42:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix cpu-supply for rk3328-evb
Date: Sun, 30 Aug 2020 21:42:28 +0200
Message-Id: <159881654154.22245.13684137249237383351.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200813181711.15906-1-jbx6244@gmail.com>
References: <20200813181711.15906-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_154234_218922_038369BF 
X-CRM114-Status: GOOD (  10.76  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 13 Aug 2020 20:17:11 +0200, Johan Jonker wrote:
> The property cpu-supply should be added to each cpu separately,
> so fix that for rk3328-evb.

Applied, thanks!

[1/1] arm64: dts: rockchip: fix cpu-supply for rk3328-evb
      commit: 4be8df7b3bcd46a75f7e297ef310234975a437d8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
