Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1817C4829F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCm6fTke33VsTAnQevBuY/8fwfpP0RnaVAwhmrsTpgM=; b=mxt/qcYzHO2rvs
	oFflNPztV7tLi3cuj/4rNws4Ta5wLzmqbo6tZJJ8SVtnCp4uG7trM8VnyPNsV1AuB8ptOQ17VUUR+
	dGXFYJDr0d1StaWYLTr1gCebNzGe8U4NBNn9RfQ2I4/nzoae1PiiSnedyK3YfdNBnBTsKd8RXKyDz
	EY9lyF3aQIVYWGE8zW/VVsUV90gLx5QOvAt2UqUeTbyyho6qCbrSV4oNhykizQstgNhtFz8c7sT3L
	da5YZKdWG0Gq52hOrUBovXsMRDGvGMYZjRmxQ6l7MXF9GtA/X+J31E/TinvgBBbzsBgifBpgJ7zYi
	W+WHcmaePQsbtH/17Rhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGy-0000000AQnQ-3Co2;
	Tue, 13 Feb 2024 19:16:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGc-0000000AQVO-2bP9;
	Tue, 13 Feb 2024 19:16:33 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGU-0008FY-SS; Tue, 13 Feb 2024 20:16:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	quentin.schulz@theobroma-systems.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 0/2] serial: 8250: Add support for rs485 half/full duplex on puma/ringneck-haikou
Date: Tue, 13 Feb 2024 20:16:15 +0100
Message-Id: <170785172857.3347621.5386366884287991661.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240208-dev-rx-enable-v6-0-39e68e17a339@theobroma-systems.com>
References: <20240208-dev-rx-enable-v6-0-39e68e17a339@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_111630_848035_907A7002 
X-CRM114-Status: GOOD (  13.66  )
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

On Thu, 08 Feb 2024 16:39:54 +0100, Farouk Bouabid wrote:
> On the boards that we are using (ringneck/puma-haikou) a hardware switch
> can set the rs485 transceiver into half or full duplex mode.
> 
> In half-duplex mode the DE/RE signal of the rs485 transceiver is not
> connected to an RTS signal whose control is already handled in the rs485
> emulation (start/stop callbacks), but rather to a gpio. And since enabling
> the receiver requires setting this gpio active we need to do that in em485
> while receiving and disable it while sending to enable the driver mode.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: rk3399-puma-haikou: add rs485 support on uart2
      commit: 54448f711aa32f176534bbd7b1903cc6d1c8a50d
[2/2] arm64: dts: rockchip: px30-ringneck-haikou: add rs485 support on uart5
      commit: 5963d97aa780619ffb66cf4886c0ca1175ccbd3e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
