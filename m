Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F17D7E936EA
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 21:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ps899dEzhiYumwFR8CcsBEnIts+Pd+Z0COi94w3KKBo=; b=1QJ6BiDxWkpPX2
	djbKpD0N5/8SBVU2d2youYx+2QFLJlP4x1hutqQqkMkeHon4naiygTldK5+WhxAt9y37s5IKaHlNi
	xsjkJcgKHxfZyNscWQwXX+xyTz/duqxLe8n9mRJY+y19dlAmSQFzTQQW8gORb8CL7fBcEWFD5YEJ+
	+wP5zpkLH/Sbdw6vWx4upL4xSAPJ9YKMzJfI2T6I+K49Abmdu4mSfm0YKP0BzxL9jPw+2wJpk509X
	Fzf556E6R0FdrQoiNrJ58Y0nOR4mxMG2ILHjfmmYqgeVk+llTTs3YL+3hA/E5fgSL39F+hkJB1zt1
	lqAGutrxBbax3omK9duA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UJ-000vrb-1h;
	Wed, 04 Oct 2023 21:32:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UG-000vpP-0f;
	Wed, 04 Oct 2023 21:32:57 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UB-0005RF-08; Wed, 04 Oct 2023 23:32:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
	Rob Herring <robh+dt@kernel.org>,
	Jakob Unterwurzacher <jakobunt@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ermin Sunj <ermin.sunj@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	stable@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: use codec as clock master on px30-ringneck-haikou
Date: Wed,  4 Oct 2023 23:32:42 +0200
Message-Id: <169645508392.141514.933069936235927740.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907151725.198347-1-jakob.unterwurzacher@theobroma-systems.com>
References: <20230907151725.198347-1-jakob.unterwurzacher@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_143256_245412_B2614053 
X-CRM114-Status: GOOD (  11.34  )
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

On Thu, 7 Sep 2023 17:17:15 +0200, Jakob Unterwurzacher wrote:
> From: Ermin Sunj <ermin.sunj@theobroma-systems.com>
> 
> If the codec is not the clock master, the MCLK needs to be
> synchronous to both I2S_SCL ans I2S_LRCLK. We do not have that
> on Haikou, causing distorted audio.
> 
> Before:
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: use codec as clock master on px30-ringneck-haikou
      commit: 84fa1865edbb3800f3344e2a5bc73c187adf42d0
[2/2] arm64: dts: rockchip: set codec system-clock-fixed on px30-ringneck-haikou
      commit: 1e585cd0aad3d491938230318d6d479f09589fd8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
