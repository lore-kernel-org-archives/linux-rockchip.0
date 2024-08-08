Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E08EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Aug 2024 08:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HtLhGSSear8+WTQXNK+pCEHoI0tH5MKV921kD91c2k=; b=xG1axz2Y8o7LmY
	Rqk6isw8BobssGK+QDrycsys/Ficu+w8Xk9sIAnxAgwIV+LBZ4DdiQhAFNa8AIIDJ4EDEqWe8n+hW
	MlQ3V7oa7sSTaD7s+RMgHcgMUR352xvxYXFLcA6kD7NKTiJtSFjtp4FcMgg8Yo0N9lpDgjDNF9Vf3
	T0GKfDLGfdie466ePIdnpS3WPIUqFUysGWmdebc7HJ9OLnhU+Q9FMWnWhsWjGeNSqYJ4ULeIKQUCd
	FByksL5dh0ojR1Q9Xs2esxQngPZc0m0DXyKwullwYU4UPwR8v4rz08kwuktYJtGrX3UTlXuAGkrA4
	lKp0+vkUR+bz8OEvhF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbyUj-00000007a3M-3rWW;
	Thu, 08 Aug 2024 08:27:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbyUh-00000007a2M-1fjn;
	Thu, 08 Aug 2024 08:27:36 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sbyUf-0000hn-Me; Thu, 08 Aug 2024 10:27:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: ukleinek@debian.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: actually enable pmu-io-domains on qnap-ts433
Date: Thu,  8 Aug 2024 10:27:29 +0200
Message-Id: <172310560597.3585120.10271517594384072196.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240805162052.3345768-1-heiko@sntech.de>
References: <20240805162052.3345768-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_012735_453689_33A5457C 
X-CRM114-Status: GOOD (  11.52  )
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

On Mon, 5 Aug 2024 18:20:52 +0200, Heiko Stuebner wrote:
> Contrary to the vendor-kernel the pmu-io-domains are not enabled by
> default. This resulted in the value not being set according to the
> regulator, which in turn made the gmac0 interface that is connected
> to the vccio4 supply inoperable.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: actually enable pmu-io-domains on qnap-ts433
      commit: 40cc4257169712f0ae3835820a4c5afbdd1a16ff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
