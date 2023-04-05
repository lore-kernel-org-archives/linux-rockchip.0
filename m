Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C78C7619A
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Apr 2023 17:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26jh1sqEEnZYGyTQuM8hgxvpfnQEbInEDaWNdXULMFQ=; b=wifHtx2EXHALRv
	6wDAZqtZ082YndaTXq9u3K/37ONIHBR32o91SEra89mmRA9gtlX7KB2Xd7J3uTdBDNpfsDw/Q85QV
	9bIUR0BOxfAF5DbPcLME3k4fME5TBUcBuzKtuIH8b211G107TM5rQbqbrB4pl3x8YahpdmwHIqfqk
	Ox3Q4eOYGKo62Gc/8YOWQkiQOPHi81bz32wyztiE/8NNaevUHC0R9tccz2yOaEcMCdK63EZWZ4LDB
	3cxtNljqEkVPGsS/Jd+Kzwx8IL88sNe0gfrRPGl6sEU79Bvc+WSZHR1REuSTzVeWkoGuYjiv8S8yE
	8JNLiyveUlJSV6OyYCRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7DA-005IDo-1v;
	Wed, 05 Apr 2023 17:46:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk7D1-005I7k-2h
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Apr 2023 17:46:14 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pk7Cu-0000Me-Eh; Wed, 05 Apr 2023 19:46:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCHv1 1/1] arm64: dts: rockchip: rk3588: add thermal sensor
Date: Wed,  5 Apr 2023 19:46:00 +0200
Message-Id: <168071663558.3186456.6497656083450780396.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230404154429.51601-1-sebastian.reichel@collabora.com>
References: <20230404154429.51601-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_104611_875242_04C78BEE 
X-CRM114-Status: UNSURE (   7.36  )
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

On Tue, 4 Apr 2023 17:44:29 +0200, Sebastian Reichel wrote:
> Add thermal sensor IP, which allows monitoring temperatures at
> seven different places in the SoC:
> 
> * Chip Center
> * CPU Cluster 1 (Dual A76 "Big" Cores)
> * CPU Cluster 2 (Dual A76 "Big" Cores)
> * CPU Cluster 0 (Quad A55 "Little" Cores)
> * Power Domain Center
> * Graphics Processing Unit
> * Neural Processing Unit
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588: add thermal sensor
      commit: 32641b8ab1a5bd08e898cec3d46a8ecb4b4e895e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
