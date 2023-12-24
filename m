Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB9BC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 19:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dw/bj2cKRLEWRGx6oC7Uq6XtXtcqac02JVMzr8bpRm0=; b=1HJa58DkqnUAeE
	9pL0JWOoVQCJ5q9rQI12C8UpeB7jSYuAl1GlPJFolabPSKxaHvUdAdNVzrceSGxV94uc5pHpsbwa6
	5FvYHroeVPRqOxpcplx2lWTdZB0S63reBT5Xr2DMtl+zzh/LB1Xt/yy+cZQCGjhDb4i24O8rMcNfn
	VXSvoxCWNGe03e9O+ZTmQVQ86VV+Sn+/Fvly7/lahLrALjZo6txqKhfbS35Kcsxqvewcpwr7ZGX24
	d9ZeMXh20q/adK9hAl3GFY/GIob2+bwqoaRUhMJr0axVvsNhASyvnKKC6G1JEG+TWGrOJEnQWK/3I
	QJu8Lmwrvv4UdDLCrfTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHUYr-009owV-0i;
	Sun, 24 Dec 2023 19:54:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHUYm-009ouG-2m;
	Sun, 24 Dec 2023 19:54:53 +0000
Received: from i5e86193c.versanet.de ([94.134.25.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rHUYk-0006HY-SB; Sun, 24 Dec 2023 20:54:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Hugh Cole-Baker <sigmaris@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Support poweroff on NanoPC-T6
Date: Sun, 24 Dec 2023 20:54:47 +0100
Message-Id: <170344745822.2405994.12076780121215785589.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231216212134.23314-1-sigmaris@gmail.com>
References: <20231216212134.23314-1-sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_115452_916146_F43212C2 
X-CRM114-Status: GOOD (  10.15  )
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

On Sat, 16 Dec 2023 21:21:34 +0000, Hugh Cole-Baker wrote:
> The RK806 on the NanoPC-T6 can be used to power on/off the whole board.
> Mark it as the system power controller.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Support poweroff on NanoPC-T6
      commit: c699fbfdfd54630fc51b96da577f02e7b772eb37

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
