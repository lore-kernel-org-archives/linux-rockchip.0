Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78539C77B77
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufwYXtWmpk70MXeLTTVNOhOE+9gUap+4ZT9+N2mI9Rg=; b=dbAqQ2xidYkZnJ
	bgMBDunTas0GtH3XHujaLrUR6e2uv8/Awf8Sz4fh0lBEDmUJvjhxX/rgaI51Hm4OyC88J+4Y3RNyL
	KByShJmvw3G5R6UCoJYGj9+cD+UYtZ3Hr4UKuhJTUF9L8w6P65VIC/9oeNdw4+sgaZTrkU2I7rspk
	ZNFV3CXqxWo1YVfhHoN19WNog80cXUowgwVqYMzCjN3MD5VHzJjujsZuVY4r99WG7p8YSM83RrUqL
	WAACUi13z9bNYLpMqOH7CLF+7tSFy79M/+/3bAY+tKpDummkxNspcM5H4oAf5xwP83Id95BHM/uRs
	fgje5z4do1/2dk/cmD5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poLHH-00Fapf-3B;
	Mon, 17 Apr 2023 09:36:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poLHF-00Fant-1r;
	Mon, 17 Apr 2023 09:36:02 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1poLHB-00027c-PJ; Mon, 17 Apr 2023 11:35:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>,
	John Clark <inindev@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [v2] arm64: dts: rockchip: Add pinctrl gpio-ranges for rk356x
Date: Mon, 17 Apr 2023 11:35:55 +0200
Message-Id: <168172146375.3844162.11356343846845712762.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230413170337.6815-1-inindev@gmail.com>
References: <20230413144316.4247-1-inindev@gmail.com> <20230413170337.6815-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_023601_614476_1DFFE4E9 
X-CRM114-Status: UNSURE (   7.69  )
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

On Thu, 13 Apr 2023 13:03:37 -0400, John Clark wrote:
> Add gpio-range properties to the pinctrl gpio nodes in rk356x.dtsi
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add pinctrl gpio-ranges for rk356x
      commit: 6f5ab8fa33238fdf6cb28dac7bc2f650db2caf08

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
