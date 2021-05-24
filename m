Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E075EC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 02:57:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD1AE61422
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 02:57:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD1AE61422
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gs4UPBAH7WHJQ+a3k5q5YvYUdiUQi62skdtUsFE5NBo=; b=TxW/CLLr5GISuk
	YDMc6IyDQsF2NeIUYzTs4ehhbZuN5BbG4/yWETEopzyv/tuUurP1J/5XvLqjkWsvoc9d/PSaHMSYd
	n64iOZxzKFOm/PeDfeaFHgyJ3vpoqlyoUOprWubqZrvst9IC+mi6XJALvEyotOwEqtiqcKPL/Vxzj
	TrUBg+F/TMkyc1S2W/a3teWc61pJ9X+S9kB4E3i7YPs4hdg2NWF1u1Yxo5vx2df8MQR5FazQEh6/W
	6fOzGrKInurGBUjhlI1qHbydNYl9NpcpEfhmKQ/W+xYpywERCvAjQfsoKfJ9+2BdUyvm4tOzFRh5B
	ww3A7i3p7JEWHilRB6RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llNGL-0031nI-4c; Tue, 25 May 2021 02:57:45 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llKPy-002Qli-HF
 for linux-rockchip@lists.infradead.org; Mon, 24 May 2021 23:55:31 +0000
Received: by mail-lf1-x136.google.com with SMTP id q7so41771982lfr.6
 for <linux-rockchip@lists.infradead.org>; Mon, 24 May 2021 16:55:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=592zjrjs71MnPKYyPd/8Gk+j2UZLngCEKFNFLQ96mQY=;
 b=Hi7md/ohZBbgNkX+gRP/A7hbkMRs56Dn/rd+BvZrdxnMamaGNiflZLG96US3F7f0yw
 1UmztCpe3Rp7VFYMFm1l1VwnRNrT54ENZj0ZwoC7kdx7N8rOmTaEh1K+RfcdsnBiNpk+
 vWOyNBfaty36OI3DinuIPd9/uw1VZ9G89qb1Xw1QwOzpBUZwnYRyyNWokcC6Op7gDim+
 RUTgrZGzXfeU2xGy71lxqxLlLUNa91w9hJy0D+a1hin9uW44SQJ5dJapRN9mCBRqVXvP
 ug7d5hDgNauAHWQ1D7epY8msb6hu1NcAn4mkeP2GaAUx3QcYcgpAomtSNBNBk1vBZ84Y
 iA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=592zjrjs71MnPKYyPd/8Gk+j2UZLngCEKFNFLQ96mQY=;
 b=Ha+mUa+mGmHQJLvJ09on6X1gWEbI1QBffwuryshgfd0so7i0gYc6Ma9Y96gD7L/iOO
 a90q9KTPBoRpjTpB0GbamVP22F0fwgyy16OOiBvW15VcYYJWaayY+CERu9YuBNFQmsT7
 F9nGjFqX5gG5hzuVZJ/9LbiNUjRCU62TziERq0Pcpu2JZ+gXU8iqnde1SbAjauX3g7um
 USmNeufF96S46KPuDg1bRX8L4SVtHChRD/Dj6uFyCIAzaiQdfltGDH3VxowKgPsFngYk
 k/tSS73koERwweHsHcYhijT3vuQUEAgBzuYGdbLSPk2q5AKTCCHJzbeGNmrpuGoCF9vE
 clFg==
X-Gm-Message-State: AOAM530GVRGGnqf5oBfQIuEAuvBAV6gPHpnSSsasFD2IRfYfii9slpSD
 Wlt/qwqcv1upGAIgmcpK55pqhv+b7tPWgPvhHgN0SQ==
X-Google-Smtp-Source: ABdhPJx/e/kNcfBBwSrujRvi50rqAYpED4xQ/1Z1KiwOS/qb69WenvVA5bxXAGKmpbikyGXHTzGCq3bA7YejdGNjNPU=
X-Received: by 2002:a05:6512:11ea:: with SMTP id
 p10mr11650728lfs.157.1621900527740; 
 Mon, 24 May 2021 16:55:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210510063602.505829-1-jay.xu@rock-chips.com>
 <20210510063602.505829-2-jay.xu@rock-chips.com>
In-Reply-To: <20210510063602.505829-2-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 May 2021 01:55:16 +0200
Message-ID: <CACRpkdaWX7OBN=SH3=epQkYyP4nyaYsvC_S3y+hThpR=J-ZAjA@mail.gmail.com>
Subject: Re: [PATCH 1/7] pinctrl/rockchip: separate struct rockchip_pin_bank
 to a head file
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_165530_642525_9F1F199B 
X-CRM114-Status: UNSURE (   6.30  )
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

Hi Jianqun,

This series does not apply cleanly on kernel v5.13-rc1, can you rebase and
resend it so I can apply it? I hade some minor comment but overall it is very
good and I think we should apply it to move ahead with this series.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
