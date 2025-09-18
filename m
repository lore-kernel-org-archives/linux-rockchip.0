Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F238CAC59A
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xG4f2eMHjoc79T+Xs5FArcHmgLkDxV8ekzviC170kM=; b=f06bzHgZ26J9lB
	SPVbH5XqHqWZUNBIp0IB04VwkXj6F80gDp8usoCH+bjccny9tdXHTDqqHP2NTR4W2qT5eQ2JC2o46
	yArk/Obslcx3vLAp6T/n9xf5u2iIG23TVzTGRNm9funMH+M1eGTibf9RXWomyP1TTv8+sYvhwaJFw
	38KMzcyTSzNWpFvWS2pvaDtfdQHhIkpXBtzs4quEvSFTP8OU/3syIf6u9F/vwPAQNaI6Mr/RsCCJo
	h92BipwRg+NvGxPgx8FwyX6h6+5ti5BS+XjLM93jkE3iLdfIHv3pwk61C1g/4iFsqPnBfb335E1xj
	5tEl7qPAxakyaH9W6jzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzLsv-00000001AYg-2FZH;
	Thu, 18 Sep 2025 21:09:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzLsq-00000001AW9-2vlQ;
	Thu, 18 Sep 2025 21:09:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=k5SxY4eLV+XlJAjlLOtp7aA1VeVzrx+BBK+bjPWc6ug=; b=Yt14HGzJJaKjLaUYuqWpsmWAjd
	HNhfFwybW+Olkd1rOHpkqGvWLu+qkRmltdHX8xwSjFNen2ZeJqU9cdEkmFA4Zviq6IT/mH6YfeChX
	nLySIfNaH5XVEM1YRdvJMQ9zxd6EQIOuENNrlq4e8NbELhlmW4IjqWt+KTuN9yG0t7VR2TkRI1mYv
	9aG7fku5ICMC53+chkCHJxXomQxiM0qkpZsLhmOQQzxhnOa9WsbwNZjxAkY7l53OHvFFcrXaq8+8z
	ciuur/0buAqjpiktXFXYQ8hz/OQrO+D7669LOP5mTqc5+RxN8reDgthwUzjSnxbQWSJty3bRvBpwc
	9snIRUBg==;
Received: from i53875b0a.versanet.de ([83.135.91.10] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uzLsi-0003SC-GM; Thu, 18 Sep 2025 23:09:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/3] arm64: dts: rockchip: Update Radxa E52C support
Date: Thu, 18 Sep 2025 23:09:19 +0200
Message-ID: <175822973677.1568500.17167345518361865477.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250901100027.164594-1-amadeus@jmu.edu.cn>
References: <20250901100027.164594-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_140940_740283_8E91F1FF 
X-CRM114-Status: GOOD (  10.50  )
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


On Mon, 01 Sep 2025 18:00:24 +0800, Chukun Pan wrote:
> Changed from v3:
>   Add vcc_3v3_pmu label to vcc_3v3_s3
> 
> Changed from v2:
>   Remove merged patches
>   Remove VCC_3V3_PMU for Radxa E52C (new)
>   Update pinctrl names for Radxa E52C (new)
>   Update commit message for disabling display subsystem
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: remove vcc_3v3_pmu regulator for Radxa E52C
      commit: 3edb9c95ffa60c029074804c39b35103a9fb4bfd
[3/3] arm64: dts: rockchip: update pinctrl names for Radxa E52C
      commit: cf311ff5e7b27c267c05279e26546fe74f46e5da

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
