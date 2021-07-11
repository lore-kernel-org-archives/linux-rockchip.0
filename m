Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08CFC07E9B
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 23:26:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 438DA6102A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 23:26:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 438DA6102A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLu9PbpStlVxHt+7ZBGq/v7NXmWbCzXqBohkEWCn7yU=; b=NOA52elxcsezp3
	+nt0SSXUXS4jtq4r6gGiVU5s6LDR5fNyunl9OtxGRYu4Ti/fwAFzTX6VViHSI75KT+W1y50zbs1Hf
	bzSGp/XOdSzyNmSec/3L9ptZatAVzGy9wT26KXLHlvhg7aTmS83hKbniFuWpnD0+wC85ydDuZEwq5
	VQi6oXpIyVKdQ2WhcXq5dfVByT3W6sxLp6QCZSlRgSECSJiHZHxwtSejMVs0zFrBNtAIIl9Ab2ihX
	o/QO3gHnqjY067k6esZ1l9FAmhxyrA5HVXsK1DBPKvHKmQd0K3mYSsuTUCHVjbkYcTLfQ/OZS3bEL
	PaqqawENyFDIgVIOwtqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2iqI-005YaA-Kl; Sun, 11 Jul 2021 23:26:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2ipt-005YSA-Co; Sun, 11 Jul 2021 23:26:11 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m2ips-0000zL-0w; Mon, 12 Jul 2021 01:26:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: rename timer compatible strings
 for rk3066a.dtsi
Date: Mon, 12 Jul 2021 01:26:05 +0200
Message-Id: <162604593565.371932.2516692222189724334.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210709101624.1463-1-jbx6244@gmail.com>
References: <20210709101624.1463-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_162609_472856_D2CE734A 
X-CRM114-Status: UNSURE (   9.61  )
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

On Fri, 9 Jul 2021 12:16:24 +0200, Johan Jonker wrote:
> The compatible string "snps,dw-apb-timer-osc" was deprecated in place
> of "snps,dw-apb-timer". Rename the timer compatible strings in
> rk3066a.dtsi, so boot loaders like U-boot can use the timer node
> directly without conversion.

Applied, thanks!

[1/1] ARM: dts: rockchip: rename timer compatible strings for rk3066a.dtsi
      commit: b3198e046821d395d148cfd5c623de4f280628d0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
