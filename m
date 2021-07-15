Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70ACC636C8
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:43:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 646406128D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:43:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 646406128D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8ympIaFxEKejDADzXjgmEds8yhhFi85Fgi4tGX5fL8=; b=Ue+9LR/dLYi5Fg
	nepXmX89PLk0p7bB0apoeQKwfZET3Om9idTBfl8tdDMaNeEoLiqdM+VbI2G+mTdfmC2eXvRXcQ9Il
	TjmbVfHuGTs93CUqVZHSddj7hSxkqzLiT613GSgLpJFSka4XOageS3nCF/uVxLMPzuTF+rdb+pH0d
	f5SOTQ0WRfQeCGtkupPh9CcX5GJCplYSk0V7rBTwjBq8FrCHgIkoQB73iuxTVeZWJIrQx1Ua549kN
	lfZXNG9z4zgeFNXKAkRqfuaX2bX0XyxlSYk9kyaT8MKSrDPat9gniROp4QLbxVlPxq6Cn5bebRmVe
	fvIdxtsLSj3Cmtqpjyig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4A4n-002UwY-4A; Thu, 15 Jul 2021 22:43:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4A4M-002UlS-8P; Thu, 15 Jul 2021 22:43:04 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4A4G-0005t7-M8; Fri, 16 Jul 2021 00:42:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dennis Gilmore <dgilmore@redhat.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: helios64: set stdout-path
Date: Fri, 16 Jul 2021 00:42:49 +0200
Message-Id: <162638886253.651069.4205401236048151204.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210715025635.70452-2-dgilmore@redhat.com>
References: <20210715025635.70452-1-dgilmore@redhat.com>
 <20210715025635.70452-2-dgilmore@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_154302_334124_3933A6DD 
X-CRM114-Status: UNSURE (   8.01  )
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

On Wed, 14 Jul 2021 21:56:29 -0500, Dennis Gilmore wrote:
> set the default output path to uart2

Applied, thanks!

[1/3] arm64: dts: rockchip: helios64: set stdout-path
      commit: a1536b7fd2d75a6836094cfce513807f0b6f8b2c
[2/3] arm64: dts: rockchip: helios64: add SPI support
      commit: 0ead44ed102d6391c9535395a99164fe44038b21
[3/3] arm64: dts: rockchip: helios64: enable tsadc on helios64
      commit: ae2a8a1ed3283ebb5abe21be04773cebada16b9c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
