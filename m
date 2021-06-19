Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21064C48BE5
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:58:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE3B861154
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:58:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE3B861154
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/N13x7vq1m3UllkB0CNzsDO3wyteRbfEzEzZz4BsSIc=; b=jdR9y9LYgxRXHK
	I6uHirIzbjEXOHGYO6DxMvtyDmybOM1FA3qVzzqQrMGryUGVR1EnHLoUVAxunAUPumEM56TicYmOY
	j+y1eBAynIHbH9Sf+FtlZWneZz/22HQzc1QHblwBGj8FxH16E7ZagfaJiDNEauwDra8c1BlPqKwBj
	q94BptXyl/ZCaj1B7kWVpWwH8s2XxNNznhvzMbViuxiSCYFCkH7a67esfOZJhlYRtMikSHvxD/Fn9
	XnFHfMJD/VrK1H7R2uX3UMEK1DVFXpA+mEHd0PFHadRdSB+kPG7jDh6y62WMcJpEZ0Te6SS3FN+Bx
	bV24Z5/x3FCPhRM0MHBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luizI-0003Cy-5Z; Sat, 19 Jun 2021 21:58:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luizF-0003Ap-6C; Sat, 19 Jun 2021 21:58:46 +0000
Received: from p508fcd5b.dip0.t-ipconnect.de ([80.143.205.91]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1luiz8-0000U7-AG; Sat, 19 Jun 2021 23:58:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Re-add regulator-boot-on,
 regulator-always-on for vdd_gpu on rk3399-roc-pc
Date: Sat, 19 Jun 2021 23:58:35 +0200
Message-Id: <162413990967.13616.2556235400488148466.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619121446.7802-1-knaerzche@gmail.com>
References: <20210619121446.7802-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_145845_291199_70A4981A 
X-CRM114-Status: GOOD (  11.21  )
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

On Sat, 19 Jun 2021 14:14:46 +0200, Alex Bee wrote:
> This might be a limitation of either the current panfrost driver
> devfreq implementation or how the gpu is implemented in RK3399 SoC.
> The gpu regulator must never get disabled or the registers get
> (randomly?) inaccessable by the driver. (see all other RK3399 boards)

Applied, thanks!

[1/1] arm64: dts: rockchip: Re-add regulator-boot-on, regulator-always-on for vdd_gpu on rk3399-roc-pc
      commit: 06b2818678d9b35102c9816ffaf6893caf306ed0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
