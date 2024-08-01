Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9132AC3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 17:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXsC92DheKGbcnnzpCM1suHPFUcNexrB4K+D9gJkWDo=; b=OEUEaBfzL60cFA
	W3effi13lo2NpPLW/KBOtiYyfSDXIQkQNvvJjphq57EZ9tiFwK/QLLJQJQ49KXWCc9DQn5pfaQdO2
	GVQeGauvhH2+Cj8LRLsGHc/UoYl9mA8r6NTSqBMJhx5YqffN+DCf+2/ElemQXMdelFQ4eSox8ZYw/
	9GleYpLYk6fdhrq6gBVdT9jhuVFUoP/v3sAKbukde4h6BXCmmL8aNtXIvLFeVWKQhKirsX/AVzdnd
	3dRbu0n17YV/FEgO37tlee43rWS+71EvaIz6GF7Dq4PKBwxBqrZgFVd+VE/4pu9TO/z3lLeEonADz
	xT1Ffml/zlCgjr3oJ4JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZa5P-00000006KPq-3v3p;
	Thu, 01 Aug 2024 17:59:35 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZa4u-00000006KKL-3X15;
	Thu, 01 Aug 2024 17:59:06 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 504BE40460CC; Thu,  1 Aug 2024 17:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 504BE40460CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722535087;
	bh=S8SOjPDnVl4S4IZS+WyLCAPdAOuYOZjE2Y+Wj+Q++cA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fn7RUN8W37Hny2b6u76N3fbEnKUjH58VQndE1TMCMrguwC4RUXin9vaNKP+JwY3Be
	 cGumPMHmjO37yUiVufBr5tLYgjAAKoIBt032I4uBooFQKcIthwYRWx5dM90z4j1pCJ
	 D59Fwf/nWQZ/ljND40iOJHz52rVb0cwFThrqdEocZauLFsdreJZSWBTO4IyfwZFK9i
	 RPWggfKXYphV3OG6HWSFRrcUiCvCJ/vSzYPWS1stpAXKPcO81+f+SbpKWG/zuIwmf3
	 BVkwh76feFNZnzBoTjJO8mOKTwt99KJDHwobdvVkX7Kxphlthw18QluGpBA35VQa+c
	 yx01ng+MuUdtA==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
Date: Thu,  1 Aug 2024 17:57:34 +0000
Message-Id: <20240801175736.16591-1-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_105904_974499_51839DF9 
X-CRM114-Status: GOOD (  11.78  )
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

Hi,

as requested, I am resending the patch series, now with hopefully all
relevant addresses on To/Cc.

I noticed, that a DTS for the R2S Plus is not yet available, while the
R2S is already there. The only difference is, that the Plus version has an
eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
I copied from the DTS in the friendlyarm/uboot-rockchip repo.

I applied the same DTS changes to u-boot and tested u-boot 2024.04 with
kernel 6.6.35 on an R2S Plus which I have here and the eMMC became visible
and usable.

Kind regards,
Sergey


Sergey Bostandzhyan (2):
  arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
  dt-bindings: arm: rockchip: Add NanoPi R2S Plus

 .../devicetree/bindings/arm/rockchip.yaml     |  1 +
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++++++++++
 3 files changed, 33 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
