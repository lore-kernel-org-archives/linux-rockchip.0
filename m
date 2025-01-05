Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2596E77197
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jan 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA9dL3krOZsTaG9/6ELFZFBFCDmVarE+k/01my5eCRQ=; b=ATTy/xP/HOhGAG
	9oucgL77xtpWGHvkRrvVcJpKmeOaz1FYe3d7u/25RfKaTe5IwzbrNco7gpegvrp+dY/r3TUjvmgTG
	8mq7XeaCr7c4wY2pCaLgb3w5agkmTet9ASQ9pS6AcyzZ3qwVvWJwbN7RQJTeEynyaFPV4DT4JIvDE
	tJDmA9o1/qgy2Ojj/3Z9PUz6rEEP3hXR7/Ov2DFhlZCFykHbK7UojmnWYlOzTbzBMz01sjZ+NZ2VF
	fWfBa3qqnwf5u6BupFVD167qZeFAc9tIZeevsU3L56dsuxPQTT4+2axWES3SQpDIHGIqlyOsvvauM
	8rvM6jd5ln22fAMC0mMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUQZg-0000000GrWd-3UCF;
	Sun, 05 Jan 2025 13:21:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUQYU-0000000GrO5-45aR;
	Sun, 05 Jan 2025 13:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gdFXz0TQkHuyR0zIU+x5R4ZtdsS7ut850eH7tZTEP+s=; b=0IJDhpiSx48oMDcl0P8vBidO7R
	RMIcXePp+JeTvONCEHATmr/Q4X0UjrmjiZvtgEyT3HM9Hg/vK5khb4WdUtPHIHNgMH7A1sH5Rl/Fj
	Cj5o9LB3XXWPAKwiZPldt2t/RUCbs8pF8nW+MysG03m/1uTEd6++FtjaWg82aavPCntMQ985vZs5y
	G6ezRtLenaFgpFKub2KaeIRY7rB9WLwpMoruIctJESuJgcYmD140wgrajxk/o4/iPwdU1pRDcMWEz
	ggjZiMwXElJpOE3mq4HVza280bjjJobvOv/ZG3ysVi/NQGSJ2LgVFOAHHnIez8Ompa7Bo2mzH3gM/
	uWyU3oEg==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUQYN-0005L8-GD; Sun, 05 Jan 2025 14:20:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v6 1/4] arm64: dts: rockchip: refactor common
 rk3588-orangepi-5.dtsi
Date: Sun, 05 Jan 2025 14:20:26 +0100
Message-ID: <2341242.bB369e8A3T@phil>
In-Reply-To: <20250104020544.6777-2-honyuenkwun@gmail.com>
References: <20250104020544.6777-1-honyuenkwun@gmail.com>
 <20250104020544.6777-2-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250105_052035_034723_B87CA7FC 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
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

Hi Jimmy,

Am Samstag, 4. Januar 2025, 03:05:37 CET schrieb Jimmy Hon:
> for Orange Pi 5 Plus/Max/Ultra and AI Max

somehow your subject continues int the patch description.
We definitly would like some more explanation here.

And also you're missing the Signed-off-by statement.

> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 855 ++----------------
>  .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 797 ++++++++++++++++
>  2 files changed, 862 insertions(+), 790 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
