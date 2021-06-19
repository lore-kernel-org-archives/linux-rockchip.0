Return-Path: <SRS0=BS4M=LN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2102CC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:58:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD9DD6113E
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jun 2021 21:58:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD9DD6113E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fucsCVVwkkefI4Hy3cddyj0GzH88jNMfZ3ZFfQUeiI=; b=2GedJanHwi4jBe
	LR6Waigawy+kwuCPW8MSpGb0IHXEbv8rfZ8ZJzvNnykveU2oyPvg4/s4KxMckl+6yvoqythU0DANg
	frjaf2vpxZiBM7jXsmx8JKGhwx+QVTcOMNAfeFLi0whuQout+TI/4prnxrr5T17JYn9YvCk5Abbuq
	C9fp37+vvH3P3sT+aURIJQSyaVQNv2YeiSwtVldGMvnBmDvUQgScMCWY7Xvl7C4lCd4Y4JTcJ9rjL
	Fxwga7cR2Lf28119Wm8d6wA5sfon3hwrLgHMMckosRNcQZwXlUfHm7xJTh3HDdcLTgIB31pi8SM83
	eGK7IBG1jYYUvhT3c4AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luizH-0003Ca-D1; Sat, 19 Jun 2021 21:58:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luizF-0003An-74; Sat, 19 Jun 2021 21:58:46 +0000
Received: from p508fcd5b.dip0.t-ipconnect.de ([80.143.205.91]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1luiz8-0000U7-GK; Sat, 19 Jun 2021 23:58:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: add SPDIF node for
 rk3399-firefly
Date: Sat, 19 Jun 2021 23:58:36 +0200
Message-Id: <162413990967.13616.6736407243448395638.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210613215237.830160-1-pbrobinson@gmail.com>
References: <20210613215237.830160-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210619_145845_297187_5201BFE2 
X-CRM114-Status: UNSURE (   9.66  )
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

On Sun, 13 Jun 2021 22:52:34 +0100, Peter Robinson wrote:
> This patch adds the SPDIF sound node and related settings
> for rk3399-firefly.

Applied, thanks!

[1/4] arm64: dts: rockchip: add SPDIF node for rk3399-firefly
      commit: ba2401ab87bc2049a49d45f75013f6faebd120f1
[2/4] arm64: dts: rockchip: add infrared receiver node to RK3399 Firefly
      commit: 4fab8e3655e476170281884d999c4d758d405fac
[3/4] arm64: dts: rockchip: Sort rk3399 firefly pinmux entries
      commit: 5768c5ff0709aeea40fbdc8e362733f5a99fc458
[4/4] arm64: dts: rockchip: Add USB-C port details for rk3399 Firefly
      commit: a406bfda89c78a75327f8b6a0281b5d3bed493a1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
