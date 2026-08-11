Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72926C5CFE7
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WMst7RhZn2zXijj1COxn1CoUwDUK/uU0LJkgsnRfqs=; b=4mIF7ZZ4x6kGl6
	Xe6k5wR+B8QSq8VPuRfsYS7lNR+y+fXel5daJygT/9eRfrGxSww2iwIApPxd4QH6rp1/l6c70YLIV
	BKxPYAKK1KW9Mqc1YvH4DpajTg/pNGck78T4dvByMNdb53TPV6UKOZ1DKI5SybluYjlCKV96d+lso
	hOUkqv9hBXHCbJlQju3y5n/UBnFPgE/Ubk7irkaEH+T7wiyo5Pz9TP5hBDf4BcoZHeQRN7Ci429hh
	KOivRym0RaaWHR6JbHbsY2tHfJbik1eqvMutkSR/HboG7kbP7NFfB6EleRjwjtPEEBeZBNIaK2axj
	+2PCDgZKRKqxAZWCIbkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptH-0000000EaVu-0bDB;
	Tue, 11 Aug 2026 17:03:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptE-0000000EaTu-3JAN;
	Tue, 11 Aug 2026 17:03:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3E5D0600C8;
	Tue, 11 Aug 2026 17:03:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1144F1F000E9;
	Tue, 11 Aug 2026 17:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786467827;
	bh=cMyTTa5KAjyZtVZZYKXgPBl0VYfKOHY5hZtIr8dRpwY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=j/JpIADsBUI1Do9UvT+M2IL3RJVAsIYBy++rjBQHQQHLLM+d5+h9eruafLfp8U1+3
	 avw4Ti5i5yCFSJXep9tH9anl4xuTsc3VrqEcrfCzu+cIFOCCRtyB9D2UoiywJhksjA
	 WLRgrAfHQFpN2OP5Rt815NVXPUHyXuJ2orgkDHkYLboUDOj8eP6BpRe/H998SWMsit
	 gmTBu5RqqbtIjMgDe/tsslGoo/i0bkiPJcwPWUFAcV5bwWVF3gGKdmvbkO6W3w+je5
	 Zq+vYrHT+hufTg8FbMjqkDkQ7OC5L6BfgPs4XXTE7kyC/PKLyaTfBZhGvd7WxTxMaK
	 2h7MBXrF55fsg==
From: Vinod Koul <vkoul@kernel.org>
To: Jason Yang <jason98166@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20260811-dcphy-maxreg-v1-v1-1-aa63f6a63a64@gmail.com>
References: <20260811-dcphy-maxreg-v1-v1-1-aa63f6a63a64@gmail.com>
Subject: Re: [PATCH] phy: rockchip-samsung-dcphy: fix out-of-range
 max_register
Message-Id: <178646782464.1081354.15306186863821576156.b4-ty@kernel.org>
Date: Tue, 11 Aug 2026 22:33:44 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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


On Tue, 11 Aug 2026 16:10:22 +0800, Jason Yang wrote:
> The PHY register block is 64KB, so with a register stride of 4 the
> last accessible register sits at offset 0xfffc. max_register names
> 0x10000, one register past the end of the mapping: dumping the
> registers through the regmap debugfs interface reads beyond the
> ioremapped region and oopses on the unmapped page. The oops fires
> with the regmap lock held, so later PHY operations deadlock.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip-samsung-dcphy: fix out-of-range max_register
      commit: 4486e75ba647bd8b98fc1f053101b40caceeed4b

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
