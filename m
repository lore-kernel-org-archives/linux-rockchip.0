Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41671C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:30:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8B3B61077
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 14:30:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B8B3B61077
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wT+Asg4lOEEQAMlNmXL1eypO8Z5QGPmIaAjjule4ExY=; b=xLIaa6uWzdf95T
	KnDCmKwH9ZW5sl0MIh59DPSmLUbMIGeTqiaWDuxI2tMyYYg/I855SIgUs0k+0IQ08hp94BBPCGMMe
	Rnloj65zuX9rf+o8JkFK1kQKOZmAWUkEPb+/YQMYqny033NsNb6m6zSPEBKPevurAMryRwZIG3i8M
	LMt83gkmW5iy2VwtbYgpf3dK8qHt8mzR6JU+t5fdGSSXGXhgZbWzA1yGrxtMoUjs3b6bctv8aui1U
	0ViuCSUKc1TXnV5PP1wHwni2+GZ4abFTuexX/q37r65AA+yK7B8EALE4O23q4x/+sxeylQgrHLVt5
	y3G8nVjFx4VzbHExHZww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSKJA-001vE4-Sx; Mon, 20 Sep 2021 14:30:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSKHu-001ues-Du; Mon, 20 Sep 2021 14:28:57 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mSKHq-0005O5-I2; Mon, 20 Sep 2021 16:28:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: add adc-keys node to rk3066a-mk808.dts
Date: Mon, 20 Sep 2021 16:28:40 +0200
Message-Id: <163214478705.1547258.17831077090190048027.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210828092755.24560-1-jbx6244@gmail.com>
References: <20210828092755.24560-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_072854_559091_9C955E44 
X-CRM114-Status: GOOD (  12.70  )
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

On Sat, 28 Aug 2021 11:27:55 +0200, Johan Jonker wrote:
> The MK808 has a button inside the cover for the boot loader to do
> some action. Add the adc-keys node to the rk3066a-mk808.dts file.
> The rk3066 has a higher maximum DC supply voltage for the analog part of
> SAR-ADC VDDA_SARADC of 2.75V then other Rockchip SoCs.
> For the "rockchip,saradc" node is a vref-supply property required,
> so add a regulator for it as well.

Applied, thanks!

[1/1] ARM: dts: rockchip: add adc-keys node to rk3066a-mk808.dts
      commit: d7197d56c9cf3620ec086550386df3be2c90ae4d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
