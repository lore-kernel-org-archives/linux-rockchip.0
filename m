Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 160CED5E379
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3pOs+VpKbMdOEe48fL+ozttD5oz98/HLlgD4ECuf8Q=; b=idBWdVVU4OKGYt
	PlVYHjIavruidXPNIfNSXaDWcp39kDMrGVusQOfq8P5fD6IQW6ARBWTWZKv9tGFtB2pTLuM4fxFL3
	CvatJ5hLIvZQ7jVHTR2sCCUEiEUv2DC60uUNwsPJiYIowXtGE2qw9bGY3XgxLDlrSw7K45WfYhTNx
	SpL9NP+uohXonGaqoeS5eAsuyZZoFimgBUxMHHdrmzPPen8kW5SezpnMh7l9dpPuIp1IubaeTIBae
	lDqtHeuJiQLQ59a+4Fy+vn13ZgsEk33sfRiNnDTXIwDyRsKpo1r4QGIyH+fOR1fJ9wLhER/Tz7P/u
	8Cr1dzarB0Ek4/BaW5jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qGX-0000000DoYE-43HY;
	Sat, 09 Nov 2024 18:32:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qBL-0000000Dneu-0nRn
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Nov 2024 18:27:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JDGs9A1WezTegs9NR6XUrH27k79I2r3hym5QiPs0B40=; b=w7rLpJLzci1KJ2Mzn3+w3dAznG
	ZeOKs49lkOr9oITAdsI9/G0MBNIFm3IvFiRFQ0Yxsto/6G5pO3NWicdIdf4r9+KrQ2468j4aJ+iPE
	af41MdG5WF0ZDPLOR0RQcz0WlEWOeCt2vbZQ92MOA6xO7YblI/+6wGhG1jX0l3SU5EogkAWHnVa/e
	ir7jLgqlFl2LBW2CYoYXx5jGCtfQw/NH/yBy7YMCU8FPo2b6gChe3/cobp3VNAeqA08gHoQTOpa1I
	TKTYioa+c8DELGjBci/Kl2pkHitSWAAyCWyAGd9otw/sfMALHuNA0vVgUShv0+hMaJaN+fe5Pu2ns
	vJBGrlzA==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBJ-0007Km-Ql; Sat, 09 Nov 2024 19:27:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH V3 0/3] Indiedroid Nova Audio/HDMI Updates
Date: Sat,  9 Nov 2024 19:27:17 +0100
Message-ID: <173117675957.1131306.16704328576582239641.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102735_250492_7C3E5795 
X-CRM114-Status: GOOD (  11.80  )
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

On Thu, 31 Oct 2024 10:05:02 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This series is for a handful of fixes and updates for the Indiedroid
> Nova. This series corrects the device name of the audio card to stop
> a kernel log error, and adds support for both the HDMI and GPU (now
> that HDMI support has been queued for linux-next).
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: correct analog audio name on Indiedroid Nova
      commit: 42d85557527266804579bc5d20c101d93f6be3c6
[2/3] arm64: dts: rockchip: Enable GPU on Indiedroid Nova
      commit: 3143ef4f01757b7069d3d7d7b02e4dcb5790d285
[3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
      commit: 2f4a0c2b29c9d82f9c322a641a59fddc41af1289

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
