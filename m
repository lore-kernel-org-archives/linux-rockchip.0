Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB278CEFC43
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 19:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16swtcCVFWjvYi/xKF9A32VU1k/FNYVQF8qNJB5Ie8U=; b=aa0w5sopu27B1v
	PGqCocpe6ksJaX1PG7hBHnAskiRG0A1k6/E4j9Vmaj/QD0Rtg/zm18XVKeu4JFoDotG6P4PJLG67y
	y54UdUg2Nxl1w6umVmy1wauOkSeoZccreT5nGLxy8+7xct1U08HQbvfBXvpl1u3/+8SPI8xrE4isP
	GRNfJrFDS9Ovz2uQnsN2MMTn+7gfRBHX+ojQdShfC9QOU2BOERE8sXrMbK9kN540Ah468mTl0X/hp
	qdnOlMVsArl6viFdiIXJ6Od5nLDhvSBE7kydH4w2SP2ajT5osTAY3/vlfXQTlJ4ZvcYI/sUXfFRWr
	1cIc/oSUhV+AFREiA26g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syFur-00000006wfz-17V3;
	Tue, 08 Oct 2024 19:30:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syFtS-00000006wMi-01pZ;
	Tue, 08 Oct 2024 19:29:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vp+mxQr1K9SZ25DVot0Ui/tUkTJldDL067EXZplCYD4=; b=cZ1f3rj6eDRY5M2QYGSimczWkM
	EZfUZAHX2N87TzTp/L05sTqVd3Cqmw9SB+nEtu5CeykrehJe9+a5a6axBXfAr7CkgMGeN65SX4aJj
	4paTYUcx5nqNMtP5K1awWFkMAPYfk84iREtyo4ex5SGgQ7H/pqsad9A8c/ibp5LS3FoLpTgWIsbri
	ABnUfXTmNclaxfD5ozhN2lSa4HWcGPchnTqpAE7PqB+U6cNKK/XPMzVR4Yk6yq1Ns3hURl91ViQI4
	yG7TcuUyl7zsOih9g8mzFMpJEznKr6MiNJkLoBY52B8OVHld5khs3oW3XsYSExiMNy/JuQxs1ZzlH
	TVCBneYQ==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syFtG-00072O-Lb; Tue, 08 Oct 2024 21:29:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Diederik de Haas <didi.debian@cknow.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Samuel Holland <samuel@sholland.org>,
	Dragan Simic <dsimic@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/4] rockchip: Fix several DT validation errors
Date: Tue,  8 Oct 2024 21:28:59 +0200
Message-ID: <172841572989.2562611.18254512768409976284.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008113344.23957-1-didi.debian@cknow.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_122917_303310_118C26DC 
X-CRM114-Status: UNSURE (   9.66  )
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

On Tue, 8 Oct 2024 13:15:35 +0200, Diederik de Haas wrote:
> This is a set of 4 small device-tree validation fixes.
> 
> Patch 1 adds the power-domains property to the csi dphy node on rk356x.
> Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
> Patch 3 replaces 'wake' with 'wakeup' on PineNote BT node.
> Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes.
> 
> [...]

Applied, thanks!

[2/4] arm64: dts: rockchip: Remove hdmi's 2nd interrupt on rk3328
      commit: de50a7e3681771c6b990238af82bf1dea9b11b21
[3/4] arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
      commit: 87299d6ee95a37d2d576dd8077ea6860f77ad8e2
[4/4] arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes
      commit: 2b6a3f857550e52b1cd4872ebb13cb3e3cf12f5f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
