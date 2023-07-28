Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2527C001DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 19:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uN7SJrcCoSsmWSFZeJLG3FyZRe+NSRfoszd3+AxIHAc=; b=VLhERxsYYFqqM7
	SLlECJtR0NEDXDSzo6/PwH9GkcWrNjHef1jDKIaXa08Lg2YGUWpCdt79CP11lWdNm3d/srAyKSGYF
	Hjz/vT6Iv8GHSc6dNJpxBb6NvG0z5df/YVjHb9QPKpv+Tb9mNqSiknpIM14YSR3HaR0ETiRaDYKZ+
	I3WjEbUwwFuvQWWTOWVQ6rN+D60VLicE9XfLlAD2HE3ragp5eBavPv0mnr+OX5NZWnno2SRwDT+23
	zuW+9X7WA7A1myuXyWksY3Cd2QzfqXmRo3qO2TtJCqCYrDE5lZgvVE0MlPKbHjYbPbXMquXbq6HOv
	Y6chv1JOMYQMbJwa3h4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPTLt-004njJ-2C;
	Fri, 28 Jul 2023 19:42:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPTLq-004niD-1x;
	Fri, 28 Jul 2023 19:42:15 +0000
Received: from [185.230.175.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qPTLi-0001Fz-G9; Fri, 28 Jul 2023 21:42:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Dan Johansen <strit@manjaro.org>,
	Anand Moon <linux.amoon@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: Re: [PATCH v3] arm64: defconfig: Enable drivers for the Odroid-M1 board
Date: Fri, 28 Jul 2023 21:42:04 +0200
Message-Id: <169057331592.3100473.11428860387621722756.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230720080838.933890-1-m.szyprowski@samsung.com>
References: <CGME20230720080848eucas1p2c18ac25b06cb0b89d61db4ab2df1d8dd@eucas1p2.samsung.com> <20230720080838.933890-1-m.szyprowski@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_124214_643576_D793F26A 
X-CRM114-Status: GOOD (  11.12  )
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

On Thu, 20 Jul 2023 10:08:38 +0200, Marek Szyprowski wrote:
> Hardkernel Odroid-M1 board is supported since commit fd3583267703
> ("arm64: dts: rockchip: Add Hardkernel ODROID-M1 board"). Enable all
> drivers needed by that board in the defconfig to let the automated
> test systems to check them on the real hardware.
> 
> The drivers were configured to be compiled as modules if that was
> supported.
> 
> [...]

Applied, thanks!

[1/1] arm64: defconfig: Enable drivers for the Odroid-M1 board
      commit: 5eaeb85ccae878e5800a207da7baeb5d9d1dd2fd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
