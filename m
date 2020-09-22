Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDD31C4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 14:14:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61B8A214F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 14:14:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cTjqSeeZ";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQht5MEX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61B8A214F1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XcC7EPGefO2hw/VoqKQx61LSpZrpsQ1J4nNt0jcXb1c=; b=cTjqSeeZNXDBBZMps9MGNVLQN
	GMxXEzFD/lRsGOBPHg67eTJF1MaoM9ugISLZhnDxOOIMxGNqvm7f9nAM7MLWExavNVwcY9raad3su
	dgYzTAP5njSI5VyFvxez9XQ7IJ8muIc7KWKKoizcWWOHYWCupJAM5TdemISQCIrW3eOcH5iSSip9u
	QZSvIojUcPEuTVLOgCy4rRuQDLSu0UQgHVc94eshjToDSqRrbw4PpkrB32gAH8q7WjAxFlNccl8nv
	SGC85Eugt+VPr/EWtCEVOvWnp6CepZ1u1TPAbEKROutE650QCv8c+D2yxzdcSzi4u5+nvOxZlygme
	a3GMe3msA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKj49-0003ut-TT; Tue, 22 Sep 2020 14:14:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKj42-0003to-3w; Tue, 22 Sep 2020 14:14:39 +0000
Received: from localhost (unknown [122.179.101.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2281D214F1;
 Tue, 22 Sep 2020 14:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600784076;
 bh=UGnBrgFj7oS2c7lAeMSQaa54hQbG6T3Q94/aYM4xf9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UQht5MEXHUJe4cbwEuwzZ+wtMgINUaH6C0UZZBN5iVwPGSc7EHNkpETkY7S6MBS7f
 CqgCXPF3Sfnfj9UM5c8IaSAfp/F8gjg3d0ygrBSdRkqrl+XFDQ0AF3w1BysA1NsNwV
 O8YQ3RD4IGAiDJ16QMWyfaDeSBimZeb20K6dnB1Y=
Date: Tue, 22 Sep 2020 19:44:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH] phy: rockchip-dphy-rx0: Include linux/delay.h
Message-ID: <20200922141427.GA2968@vkoul-mobl>
References: <20200921225618.52529-1-tfiga@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921225618.52529-1-tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_101438_250919_BFA7E9CB 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Helen Koike <helen.koike@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 21-09-20, 22:56, Tomasz Figa wrote:
> Fix an implicit declaration of usleep_range():
> 
> drivers/phy/rockchip/phy-rockchip-dphy-rx0.c: In function 'rk_dphy_enable':
> drivers/phy/rockchip/phy-rockchip-dphy-rx0.c:203:2: error: implicit declaration of function 'usleep_range' [-Werror=implicit-function-declaration]

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
