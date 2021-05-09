Return-Path: <SRS0=cCFl=KE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A5DEC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:55:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AC3CF6146D
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:55:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AC3CF6146D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i4DvKZeb8FMyL+8Vsvad8neQAjOlDxXxUebgYHZ2r+c=; b=pOfA0bi6lAD53wt0xuyKNS9uJ
	KGJZG/kmgFF613sU8htVzM34WL/LBXYSBoBycQwGnfuslQ2vUdq1ltY4ao9X5OpBVgpkMdW/xciTU
	08/wtDKSFQ1W42uhlznneJr2mlir1sovkOI9NnrjcHycmA/91rsRjwTp9tG56vAv+7xV6jey+q7XW
	VFrxg6ypCUpm5WzQyGqf2iURc7sDkk4YUJ5JkUEc40Y84snX6kbk9NQL/Q/vyadeyuEfFtK9W1hRX
	3UNJ8KbptrkaRAanzrhSJgkfkgJIiLAzkpN+WNjha0kcIR6FsOb8eoiS7+WOty/opMU1P49mqg9ug
	9bBmf4ccQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftGg-00CY12-1a; Sun, 09 May 2021 23:55:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGe-00CY0b-2M
 for linux-rockchip@desiato.infradead.org; Sun, 09 May 2021 23:55:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=B5qlXbE7BssHa6h3gFjIcXPQ+S17kg7Z0Llv/AeyDzs=; b=0J3PWbzGGT6fxFD1f4zG10YL8H
 fZzqS070uJVlZifBeAjHOARY62YReW3vDTrtGwWHfJII5zAkykpN4tsvzp3HsmJxC9RU+pFPyEBWH
 nQxfAOt3K6NlKxMSDXsh2EXtgBBrjwuL6kV4eB93dzUIxorMoJ3lClv2CQu1gwbaEBPzW+2z1Wsd1
 egNn0uq1E0eIt53va9cdyDzo+wk3LdcEI+S0ouVaidfBvBNVl/PC/tkltGVWvftJE2tsznSywBTDT
 bk4mwsg66pEePyOACWsgJq7SYMa74OJfYnDvIMHEBiwFa2TqFUtl9bHulZ/V+J5mwlPq5cwIPcBdU
 /dJnKeFQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGb-008A0n-No
 for linux-rockchip@lists.infradead.org; Sun, 09 May 2021 23:55:22 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftGT-0007y6-GS; Mon, 10 May 2021 01:55:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Ezequiel Garcia <ezequiel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
 Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: (subset) [PATCH v2 0/3] Rockchip Timer DT binding YAML conversion
Date: Mon, 10 May 2021 01:55:05 +0200
Message-Id: <162060449718.1266480.2564733364476534788.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506111136.3941-1-ezequiel@collabora.com>
References: <20210506111136.3941-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_165521_801469_18DE4498 
X-CRM114-Status: UNSURE (   9.04  )
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

On Thu, 6 May 2021 08:11:33 -0300, Ezequiel Garcia wrote:
> Changes from v1:
> * Fix the order of clock specifiers.
> 
> Ezequiel Garcia (3):
>   arm64: dts: rockchip: add timer0 clocks on rk3368
>   arm: dts: rockchip: Fix the timer clocks order
>   dt-bindings: timer: convert rockchip,rk-timer.txt to YAML
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add timer0 clocks on rk3368
      commit: 642593eec32571ff9288ddf3fa09792d3efb275f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
