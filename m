Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 867F7E77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 11:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzxE7aw3IMW18lcQsAcOXLr6/CYw8e2OfEfi9qQwgGI=; b=ZmsLidOFNLcliw
	QgGUGtslmH5ni5qtAjY8lHrTceZPQggalicljXywbx4Oe0A9AUqBhkoQtKdhtNtzePgIbyfed/BF3
	yVRk0gLcLH3xST9c21v3H/kJpYdobP2dD/iWsfdVtlDi5i+ve/8kpMyUw7zItBLcXmRATqmaIHQtG
	AX/eWg7BX8OtplYhp7g8hi+vEkvhXMXI+P4Jmh8+cyJbOUodAdGMdnPBSjto8Y4cDqJYXsWTAX0ia
	9o0oXJ6VCRVocASeJYHrxvOA3vWaa+ZGe9/Ig1EW0iH+BbZl3fKkG2nSDt0e1ac2tqPX0RDjpdKex
	wiBjaNJscaqSR+lNGuSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTrS-000000088Bw-11PQ;
	Wed, 08 Jan 2025 11:04:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVTkw-000000085tF-2FTN;
	Wed, 08 Jan 2025 10:57:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/v21PJ92BLiZLaAmySzflUsqw2duXejF1cLmBsDVtgo=; b=uChUI2wJmVcPzZGKbM1an/vu2x
	6hxl3i197uqlHZcgIguTOlS0VPQ9NvVaGnCBoJvCWtb9wA5NxEexO+5ZNt4FZFyRD3L2OEPKPgY/m
	LmKvG/VfGpeQ9HBAqHI65auUkT2sK5X2L8KaWQ4po0psz3qEaqeLfq2IcHCyO/ZvKyl4rz8cqaDHV
	5HpA21AIuTSeZzPFoAm4u4BTGjWsJ/VVUH18A7AWr8f+fjhM618FHAm6vJnzngTAb3mDhDA/o/k2b
	vfWqlBftJWv8mzzuBvjrrc/prYcqlY1Bt2o52KW6QTXwgLjY3ecCYk9ueSQ7PwSMGxkPqrpJGUSPb
	ZTOioeng==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVTku-0004wu-FB; Wed, 08 Jan 2025 11:57:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v2 0/3] arm64: dts: rockchip: Add H96 Max V58 (RK3588 based TV box)
Date: Wed,  8 Jan 2025 11:57:33 +0100
Message-ID: <173633124859.2752317.14863192546901710024.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_025746_572696_83381DDA 
X-CRM114-Status: GOOD (  14.18  )
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


On Wed, 08 Jan 2025 13:09:05 +0400, Alexey Charkov wrote:
> Add support for H96 Max V58: a compact TV box based on Rockchip
> RK3588 SoC [1] that ships with Android by default.
> 
> Note that there is no publicly available hardware documentation,
> nor vendor sources to be used as a reference, so this implementation
> is best effort based on poking around my board and staring at the
> decompiled stock DTB. It works for me, but improvement suggestions
> are very much welcome.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add H96 Max V58 TV box
      commit: 6e9efe826b02ccd68700be691ce9addbd5c81e40
[3/3] arm64: dts: rockchip: Add H96 Max V58 TV Box based on RK3588 SoC
      commit: b53864811b35247193856a45567d416b8341ae7d

I've just dropped the spdif bits from the board in patch3 to be
handled separately. (And moved the status in spi2 at the end of
the property list)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
