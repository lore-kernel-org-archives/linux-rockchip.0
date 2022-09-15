Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09994ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 13:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rzmPRz+ztgM3Ze2AAdhiRy+y154xH65gWlXJJT2ZU78=; b=rjbNdug40KO1E1
	6/YLiitsVEZCGRWkZ6E4T66TrqAKD4mwis6pEs/B1UOKyvJfM1TnTYKowvXx7SkNTex1HoxOruXEF
	y9GmcKWqNUyJNvnw/E0FynYlzsLqPC5hNredSKgoIIPrwt2CSwYp9Q1kqXVD63PnugS5YeHTewEgA
	j9ln2yAV6J44atX2LcIH05YY3dyey7P+SAYMJcj9ddw7YJmC0xqot2Y1AVPe8FbWVY8z7PzS5ij8G
	2/KzF2YTO/oB/s2LelWjCXIzIWeri1hTEyJVikmSvqbQ25ee+pAjyDIG9gKTUKrFN2ZkSgAL29lk9
	fD2104Pzx1w3j+mP+ZvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpEz-009hhw-5i; Thu, 15 Sep 2022 13:49:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpEv-009hfr-IF; Thu, 15 Sep 2022 13:49:16 +0000
Received: from [89.101.193.72] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oYpEs-00053R-Up; Thu, 15 Sep 2022 15:49:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4} variants
Date: Thu, 15 Sep 2022 15:49:06 +0200
Message-Id: <166324955276.172936.10946174997908284073.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
References: <20220817123350.1.Ibb15bab32dbfa0d89f86321c4eae7adbc8d7ad4a@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_064913_620158_4C136811 
X-CRM114-Status: GOOD (  10.40  )
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

On Wed, 17 Aug 2022 12:33:55 -0700, Brian Norris wrote:
> The Gru-Scarlet family includes a variety of SKU identifiers, using
> parts of a 3-bit space {0..7}. SKU2 and SKU4 devices (under a few
> different manufacturer names) also use the Innolux display.
> 
> For reference, the original vendor tree source:
> 
> CHROMIUM: arm64: dts: rockchip: add sku{0,2,4} compatibility
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/f6ed665c9e2eb37fb2680debbb36ec9fb0e8fb97
> 
> [...]

I cornored Krzysztof at ELCE today and he had no objections, so

Applied, thanks!


[1/2] dt-bindings: arm: rockchip: Add gru-scarlet sku{2,4} variants
      commit: b360cfbf86a918b835e673b9da5faf972a9bf146
[2/2] arm64: dts: rockchip: Support gru-scarlet sku{2,4} variants
      commit: 578980728868fcd99bbb5af12e50b38d2e66f5aa

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
