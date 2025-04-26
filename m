Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C3C0C369DC
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 23:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yGLWCGlQZOIOndsMJTcdQ7GXtmc995Vlbpt4lJ7ic0=; b=Pj69TRt9ZQ7gao
	F12RLy3cJ77kJNU1VKJFkyfUPLVP7HFmWaR7kNC+kL/yRCpyex3mWwvOY4LhiB5nduljsSTmg2uDz
	+K9j8ypTn7i7vKOvTgO/GeKSOPKGc6icdOgp6hKq8SNN50FcWyBlthIJbtH9SKQVfFgc8QLkQe6dR
	NQHm/vxhhK8Rhj58RE9sIgxp0QWh7JeH5BaprUch7fYugoXywT7r7aHUa3+Z5zaAHNPtshyGwuxY4
	rZt61TkhNQe+d6VKI5vY5OeSPiGyyHyTqavq+SK8nRCD4pQoQxu7YdWC6EVT+Mj7fdNPXuIeRnzkW
	NVyQTzAwqLZMyq79AYWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8ocY-00000002btF-49aQ;
	Sat, 26 Apr 2025 23:07:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nPz-00000002XxK-0cy6;
	Sat, 26 Apr 2025 21:50:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=39W61SoZ/RKxkXTNmTVGYLh5vGymKKFC6iomj8QCgqM=; b=atpPnZjBTjM3lbCpUpbo5/cMW+
	/eFlqFUCQZiJWD7SD5VNaKnSC7k7FmjOZ6f+ydZUIg2gHDdUTHDrAFfcv1AV3AIWOTfRzpR+p6D8W
	QMap/0rcY8+Q26sKFRpZiJABOBIvxIwLZyPuP4QPPgTClrrBYtjLKOJXIUNHKnxMMksGnr9NvjA5f
	2naeNdo8diTeRA8uLeEbSOzfrMTBbNt6uDii9rT1YLQXoY10ofRvDlplGANNiZaEHoj4I6KD8aCCT
	UFvSL3BCZ6nhrTYelgU60jkJtpDFtkFaJ7+H1yaZ7SrDxbOkzRfp/zFhmUFvkr0+WjmL25BfHSffQ
	A55q6OsQ==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLu-0001OR-3d; Sat, 26 Apr 2025 23:46:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable pcie on Sige5
Date: Sat, 26 Apr 2025 23:46:16 +0200
Message-ID: <174570370141.31943.7222231536133274406.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250414-rk3576-sige5-pcie-v1-1-0e950a96f392@collabora.com>
References: <20250414-rk3576-sige5-pcie-v1-1-0e950a96f392@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_145039_184735_83FFAF78 
X-CRM114-Status: GOOD (  10.47  )
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


On Mon, 14 Apr 2025 20:37:38 +0200, Nicolas Frattaroli wrote:
> The ArmSoM Sige5 board exposes PCIe controller 0 on its M.2 slot on the
> bottom of the board. Enable the necessary nodes for it, and also add the
> correct pins for both the power enable GPIO and the PCIe reset GPIO.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable pcie on Sige5
      commit: 8ea46f3b9348ce9105a32be6a1afec0b23adc906

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
