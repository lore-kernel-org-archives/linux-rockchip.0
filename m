Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA016C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:59:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0C2DE6113E
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:59:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0C2DE6113E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQcnfu5DswJ5tWfY4eQxWVTB2NkM7tAT5x3/uNAnahI=; b=Bnfw0rLNfSeZyE
	tBHsHl7Zyk6P8rAZZVjwvlFDR7V4lOr0jEfCmUrCQP2gCh9SzVIttxmDSfdtskHfr7iJYj9dvHmXB
	UmEd9jh2esB7t30SFvuBbd95CxElgpnU9uSWG55auw57bIDIENctUJmxkHKH8317DeQbjIr/oLdmH
	UAefF3OCfoV++IqvxDFrPUxxVW6sIzfSGCr+nh/7d0eKS067eYPBjIBD3R9zIB98H55PXQrhMsyig
	G/2i6Rzh4Q8f5MLZ5DARTEhzsHhbLsFHC+BVP3z7slCFVR4B+eMkC0haZ3+ky1gDUUEXnTCrXiGcN
	vtucYIIuHMvbzIaNx4MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luizb-0003GK-UV; Sat, 19 Jun 2021 21:59:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luizF-0003Aq-78; Sat, 19 Jun 2021 21:58:47 +0000
Received: from p508fcd5b.dip0.t-ipconnect.de ([80.143.205.91]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1luiz7-0000U7-L0; Sat, 19 Jun 2021 23:58:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add ir-receiver for rk3399-roc-pc
Date: Sat, 19 Jun 2021 23:58:33 +0200
Message-Id: <162413990967.13616.4393486224885629799.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619121642.7892-1-knaerzche@gmail.com>
References: <20210619121642.7892-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_145845_340449_A9D851F4 
X-CRM114-Status: UNSURE (   9.56  )
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

On Sat, 19 Jun 2021 14:16:42 +0200, Alex Bee wrote:
> Like some other RK3399 boards RK3399-ROC-PC has an ir receiver
> connected to pwm3 which can be used as gpio-ir-receiver.

Applied, thanks!

[1/1] arm64: dts: rockchip: add ir-receiver for rk3399-roc-pc
      commit: e1d635bc94bce69e45a2d4e93c94178613e01229

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
