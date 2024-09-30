Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95708CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 10:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BIYSQxnpjYqKqcuChV/Dpu1FcsH5a4FPDXdQS21S5/c=; b=PXsJ2/mTZVEEvL
	dsckRkpCHHjCHepwHxhaKz+DinkCRKPcdzAjvBfxKVjmxeYnbwg71kDxfvlGhYinIuSntEDP3e/UT
	tf/YZC5ExRBRxM2PVbRdNmkBySx3ISFsvqbe8IXu2Tjfpu/SmlKTYFDimz7XgmscShmZy7y7hAi+K
	FvAJaPzcGMwh/rpM5BnqjXCp+EJ2bMD8JdViuk+GG8YKSr4X6qdBi4t9LGw92gCMxau21g+3rRPDQ
	jse9Afg5ofb5iNtfV82pJ31cETm0qDdxAqKsCafTBgMubFauvcR1Z6e2E8tKxvDxAlPg3HsULysBH
	Jvbqk+tg1A+xe/5vDqyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svE7q-0000000GmHs-18Rt;
	Mon, 30 Sep 2024 10:59:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4K-0000000GlOn-3vjg;
	Mon, 30 Sep 2024 10:55:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8xxzUhl6uSfkyw0tmHbtRGqCicUBU09EcQogAhvlRfk=; b=NxdGBla8ip1Oh2Af/hkPZ4zvzl
	1l5gjwWK37/fewamnPXKeQfgR2oc7EGhEAUrMOk5NChIs5GxBHRSrzF4AlQoDIuWAiJdpyHhZxVH5
	kBYCToJ+u1M7ZBtM9zHNE0bSZqkFDrJSsHhdemmcXbNL2TUd9zXW8hI/5NKhAGj4miXTN9T1cD1M9
	nrYBjeSoKUZ/g+l4dCsoY1DheNpB+i25XQcsT3jzEkJ8rot6S6NIzybMRlhhiCxHw9sdLvKfK/C3j
	4Dmqh4W3S5XQL9RWXPXXJer9eQ7biqNVOuSQr0NG/otaRSb7BVyBuaG5Js3QHWjZcdh4fblfoxQmz
	nHYKtgmg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4F-0004Xd-Lq; Mon, 30 Sep 2024 12:55:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Florian Klink <flokli@flokli.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable automatic fan control on Orange Pi 5+
Date: Mon, 30 Sep 2024 12:55:38 +0200
Message-ID: <172769365131.1880381.17228188074772344432.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240922145538.256235-2-flokli@flokli.de>
References: <20240922145538.256235-2-flokli@flokli.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035556_995559_6D81FE41 
X-CRM114-Status: GOOD (  11.60  )
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

On Sun, 22 Sep 2024 17:55:29 +0300, Florian Klink wrote:
> This links the PWM fan on Orange Pi 5+ as an active cooling device
> managed automatically by the thermal subsystem, with a target SoC
> temperature of 65C and a minimum-spin interval from 55C to 65C to
> ensure airflow when the system gets warm.
> 
> This is pretty much the same as '4a152231b050 ("arm64: dts: rockchip:
> enable automatic fan control on Rock 5B")', except for the Orange Pi
> 5+ board.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: enable automatic fan control on Orange Pi 5+
      commit: a804c849ef89462ae6f7446d2ec9b919a3fb509d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
