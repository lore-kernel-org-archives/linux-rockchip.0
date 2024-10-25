Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24B39D11704
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 07:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pC0Ye43yRzZ+TZfkbUpdfwTIu/A83myHeY1qnkcpX8A=; b=py3WtT0U5ii360
	jc9RG9+rBBfe7GtUfPFP0WcOQd+lEgyDvyE5QJuaWcB9QW+aXXZn+Abn9HcNoB4rzmi3lF+HjUGtq
	ADbXnHusZucCSDoHzDzHweogHInoEIyxOn0zdGJhZ7DoXTsjf1roQghpQPvYb7Q3JnA3OfPNk/daT
	MMlGtji8Y7JlhQ5OusfI4kma4Ix+eXZM1erzabuZFqQOTZnp1a8jkNanGKq0X6qOCeuZIWi0GSHle
	vzlrXDonMpfgDKlOup2DHyVhEK4VD+JqTFcpupnEunF4tFLHY0LX2EoPbZU6oSp00AckdTVv+wgdt
	bMF8juYlWjWBAjOC/WOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EXU-00000002mi6-1uk1;
	Fri, 25 Oct 2024 07:15:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EVu-00000002mSv-0THk;
	Fri, 25 Oct 2024 07:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=NcMRAOCK2WdIg5eVULd5UeSBvZGYvkp3Bs5YKreB5s0=; b=FdGmyRlszw5UhNsOeqouMDJBWj
	k1kNRVYt+wnr4wIcexFGODDqetbNt+f56V5Gelvvm1oN2RfHLCXx2cEuCz+Jm2d37cwdPqDoK6uk1
	qnODeaOu15f0y48jlbILrTOoPTOs5ge7kUratd6JaV/XKG/KmfhJEy1JLReWsiiuVYc4kkTfsOf6H
	7WirQnCYCJvRWGvUPwmnuZXjkGvIwUH8q837kq/e+NUgZrkgRwjcFHUSI2VEGNUsTtqhQMCpoQTmk
	38ekRsuZc2ehEaL2woG0ufWnStMgre0CJlbw50/lpIdIgwJBj62lbhaeZcLcAVSXQDWh9l9cZkxeQ
	abTmrDwQ==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t4EVs-0002dv-01; Fri, 25 Oct 2024 09:13:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] HDMI Support for Theobroma/Cherry rk3588 boards
Date: Fri, 25 Oct 2024 09:13:33 +0200
Message-ID: <172984040933.1798677.14981981601141945936.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024151403.1748554-1-heiko@sntech.de>
References: <20241024151403.1748554-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_001338_335748_8D682C7C 
X-CRM114-Status: GOOD (  10.28  )
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

On Thu, 24 Oct 2024 17:14:00 +0200, Heiko Stuebner wrote:
> This adds HDMI support for the Tiger and Jaguar boards.
> 
> Heiko Stuebner (3):
>   arm64: dts: rockchip: add HDMI pinctrl to rk3588-tiger SoM
>   arm64: dts: rockchip: add HDMI support to rk3588-tiger-haikou
>   arm64: dts: rockchip: add HDMI support to rk3588-jaguar
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: add HDMI pinctrl to rk3588-tiger SoM
      commit: 16997a4aed061a369c51c698973ca6382cef3357
[2/3] arm64: dts: rockchip: add HDMI support to rk3588-tiger-haikou
      commit: 913eeb75a9aa6552a54befad18880b08c1ecd8bc
[3/3] arm64: dts: rockchip: add HDMI support to rk3588-jaguar
      commit: 3cf1add5adf67641d7b0b85310819511f8fe6556

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
