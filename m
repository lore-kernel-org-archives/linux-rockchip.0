Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18777C48BE5
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:59:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD1D960FE6
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:59:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD1D960FE6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cr39g4SxSEtRgHOGy9GmdbvSiyz6t8g5L3071eCu+g=; b=Wg2VsIEZ7jCSf/
	PaR682/++tMVSZOhw9rCjo4iCBQWQG0oHQrqg8aPM480QaWrHQcT/UyQJRFLGYKaXhSPAyfYqC2oZ
	kMBEZH6RI0WIZDpFK8wE8Pasp4nF1tpmHSxEWc1MCeJNvWr/VtdyKk8EHpmIhbvYz/tkQzZlSK06x
	6WXK7/S7wFj7Koi+NY46n0lSXXKBl4teIYKUEokK+C5FpCRK7CDgOWUMufEIk0CvWrD3EmwCpb5Jw
	iZyEdEOUTRtnBugp1zGXA0j3djuV2bzVMAv3Sn5BTT76KbcEwTr1c0nwA8o5cpevBqz4wi2yWOjFE
	kWCqTsXl77B8Vx5o5wiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luizc-0003GS-Je; Sat, 19 Jun 2021 21:59:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luizF-0003As-8S; Sat, 19 Jun 2021 21:58:47 +0000
Received: from p508fcd5b.dip0.t-ipconnect.de ([80.143.205.91]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1luiz7-0000U7-Vv; Sat, 19 Jun 2021 23:58:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Re-add regulator-always-on for
 vcc_sdio for rk3399-roc-pc
Date: Sat, 19 Jun 2021 23:58:34 +0200
Message-Id: <162413990967.13616.5165610588814773926.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210619121306.7740-1-knaerzche@gmail.com>
References: <20210619121306.7740-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_145845_352301_05A0514D 
X-CRM114-Status: GOOD (  10.16  )
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

On Sat, 19 Jun 2021 14:13:06 +0200, Alex Bee wrote:
> Re-add the regulator-always-on property for vcc_sdio which supplies sdmmc,
> since it gets disabled during reboot now and the bootrom expects it to be
> enabled  when booting from SD card. This makes rebooting impossible in that
> case and requires a hard reset to boot again.

Applied, thanks!

[1/1] arm64: dts: rockchip: Re-add regulator-always-on for vcc_sdio for rk3399-roc-pc
      commit: eb607cd4957fb0ef97beb2a8293478be6a54240a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
