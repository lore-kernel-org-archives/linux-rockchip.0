Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D369D5E36B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsPvaA01UXlRReO49Nb8W3F3UT53RHVPnPIDy/Qx7Uo=; b=Osmb7JVij3+HOG
	CDo1Whp6IWAaN+Li4Dv/HBzbKbCiJp/H2QfojQYX8W69l2VE5sVF9X8uhT+X3JLYX5Bu/phkF4AmP
	0Sj12h1LonMbz/3Qi1PFH9gnswumeAsiJ/vNPGcjY0Zw4d4Nz6f83bhvnnwBVZ4fts20VbluOUuXm
	exZ2G/n8ztzGOydNeFSdW0qpo++EEEugJwqtqn2wx//IdZWIZNiU3UAX4k7C8egQzYR83M2Bvuw67
	C3z1tKHnzcas6BklTlYNyZWiSgsyU6EQqDBbo/1LqzfeNHmSdiSiz8SVUAgn7zx1PW49W3REiOoHy
	tMPmk8XdAnRxEY0JTEJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qEo-0000000DoLK-3L5m;
	Sat, 09 Nov 2024 18:31:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qBJ-0000000Dne1-0tlb;
	Sat, 09 Nov 2024 18:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=/HDjJGOXuOV38kNqlV+5qjcu2mYVRVqPWxsk6FhjpQ4=; b=oGc46cJDlpYchSg/GFr44IDZxC
	5Ge2fxM7rVRJGx0c9JfOZtmQBo/ppG6jt5sbLHprZqIZmbaWf64diJH/Xv1DetCgzrsms6FbaoPu/
	WRqXbG6udEGW3uC8RNGo7JqL/tOxy+aYdBl6OGJQvf+ptB4P1h9NM6nNkiDDuKR8WiMXMKMkksMV4
	NL6rh0cSrk5o27WEMQWrwrrq5Ec1Q7gQ4L0FYpmKqn77KYQHcLhTCQydz24jjfOl+IKCeYa41+w69
	+W8laKrDnPJ9RZ3loSuUASlWEZGorVDLq663HCucPEHxzA7NEM6mbd+qVzSQerXCPlFfox5UMyNuE
	CHNsB6cQ==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBF-0007Km-Id; Sat, 09 Nov 2024 19:27:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Enable hdmi for rk3588 based Cool Pi
Date: Sat,  9 Nov 2024 19:27:08 +0100
Message-ID: <173117675957.1131306.6481140376218988545.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241028123503.384866-1-andyshrk@163.com>
References: <20241028123503.384866-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102733_271838_4F4F5944 
X-CRM114-Status: GOOD (  11.95  )
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

On Mon, 28 Oct 2024 20:34:55 +0800, Andy Yan wrote:
> As the hdmi-qp controller recently get merged, we can enable hdmi
> display out on these boards now.
> 
> Changes in v2:
> - Remove enable-gpios as it is unevaluated
> - Remove pinctrl setting as it use the default
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Enable HDMI0 for rk3588 Cool Pi CM5 EVB
      commit: 09372610e765c0e26271e45c4d582ac8b5c97b7a
[2/3] arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi 4B
      commit: ae095c837e9d39216354260778ab6e0888b81ae7
[3/3] arm64: dts: rockchip: Enable HDMI display for rk3588 Cool Pi GenBook
      commit: 4eca4e3f890c5635d25600e680df5adf93742149

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
