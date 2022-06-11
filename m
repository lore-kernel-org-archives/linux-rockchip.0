Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF28DC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 15:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHTaQr/8M2i4mKXrriqyGtIWJVZTnQ+E4Bt5Wc5tykc=; b=e6sSbwbFiHpCLi
	3ur4IPpHx3LOAqiFFirwjjHc7G+E4T4lCQsi2pTGRADa1URUodzuZKnbrnJlLZDTIUFkras2D5XlU
	0Re8X2Tyni1ZE/CeYSQBpbqfJIUSn97tbNzRdgV1NdQk0NKzJM6ss/P0Kvh1ERj23+HYcAK/H6xnY
	mXJrxDjww77wHBNXw/nLF29wzL5xiK0A3u+SZuIkDRps4xwNRsCM/MtSRCGCVWS5p/BeLfJfXM2N/
	Q9qSLjqpPtzMagi9jiqj9wGiOqBWrnZEF2cNiyF5UWkH2ojpEVTBktwqLXdyq+YH27iaBcbsG1LHY
	AL2n7RZGMMnKf05ZADVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02qb-00DWvP-C7; Sat, 11 Jun 2022 15:16:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o02qB-00DWmq-L6; Sat, 11 Jun 2022 15:15:56 +0000
Received: from p508fd9f0.dip0.t-ipconnect.de ([80.143.217.240] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o02q5-0004vU-TT; Sat, 11 Jun 2022 17:15:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Olof Johansson <olof@lixom.net>,
	linux-kernel@vger.kernel.org,
	arm@kernel.org,
	devicetree@vger.kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	soc@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: adjust whitespace around '='
Date: Sat, 11 Jun 2022 17:15:45 +0200
Message-Id: <165496044123.1951281.6460473932416038547.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220526204218.832029-1-krzysztof.kozlowski@linaro.org>
References: <20220526204218.832029-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_081555_724424_7FD1A41E 
X-CRM114-Status: UNSURE (   8.83  )
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

On Thu, 26 May 2022 22:42:16 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).

Applied, thanks!

[1/3] arm64: dts: rockchip: adjust whitespace around '='
      commit: 41d97397d08c83ebbac7a48ce31f6e2f5cc4de79
[2/3] ARM: dts: rockchip: adjust whitespace around '='
      commit: 4b076db78db48c67263ebde810a4475d9503713c
[3/3] ARM: dts: rv1108: adjust whitespace around '='
      merged into the ARM: dts: rockchip: patch, as the rv1108
      also is just a Rockchip soc.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
