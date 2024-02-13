Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FB44C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyF7znWCaCgmGTjQQYHfhTdeg0h10DKtwWZWrTBRCIo=; b=UVXCnAe69aslAk
	XQtWhSnpa1J9Ah0UfyA2YKmU+DPPkmHkjwYq5ef3pu/0KSJOHyot8KE2e2vL8k9YJawWRxqk27y9+
	XWBiOCc60a+nLr9b0E6a81GC3uU7gU7IVbTmqs4ZqD/s8XI0Dz1SrQ1SoXD/EkK8t0eEIClU39R46
	x+JMsklQZQj+oydGCUyOt4Vd/2cyTVoDeu2Spql7RnVbH+2Bj5Qilgnx2qcLQIV1H154B/h7+01M1
	l5hVDzolxThBgnWtvp2njiYTkWu7mZlY17NhLpjJnpqRvCvWk1twVdEPuEKfJQgDQs3Nk9zd7qdYY
	2eUznQY/4e/opzk+soJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGz-0000000AQny-20iV;
	Tue, 13 Feb 2024 19:16:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGh-0000000AQZB-2I1U;
	Tue, 13 Feb 2024 19:16:37 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGV-0008FY-Td; Tue, 13 Feb 2024 20:16:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	linux-rockchip@lists.infradead.org,
	Lucas Tanure <lucas.tanure@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-kernel@vger.kernel.org,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	John Clark <inindev@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: remove redundant cd-gpios in sdmmc node
Date: Tue, 13 Feb 2024 20:16:18 +0100
Message-Id: <170785172862.3347621.15441860587856403205.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240201034621.1970279-1-kever.yang@rock-chips.com>
References: <20240201034621.1970279-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_111635_797166_3DE6F696 
X-CRM114-Status: GOOD (  12.26  )
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

On Thu, 1 Feb 2024 11:46:21 +0800, Kever Yang wrote:
> The sdmmc node already have a "&sdmmc_det" for pinctrl which switch the
> GPIO0A4 to sdmmc detect function, no need to define a separate "cd-gpios".
> 
> RK3588 has force_jtage feature which is enable JTAG function via sdmmc
> pins automatically when there is no SD card insert, this feature will
> need the GPIO0A4 works in sdmmc_det function like other mmc signal instead
> of GPIO function, or else the force_jtag can not auto be disabled when
> SD card insert.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588: remove redundant cd-gpios in sdmmc node
      commit: d859ad305ed19d9a77d8c8ecd22459b73da36ba6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
