Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C240BCF31B0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ieNQrbRz6dxoLxfhdiYoAY+9ZlDYGNkV7HdxaWqnx8=; b=sey1ZSY2QzxuZz
	YiW4kBtTMumotYCPsuBdyIfUPBNhsJF+UI7NvQqXTM+XM8xAOGDPvjGtxnDj+yfLqOrY9HYVeTpkQ
	7Ie1esToOnTiKLRoxa0F+6RPwzVs2tbkNvtRs50YQkTQvh4j3GWKRjCza+WSRJajOwOeeK130G2jS
	lItYusf1fUQNXVhOTjb4VC0SWScCeDXolvTZz0UDd2z7JiKksqFJzsMKl1OpJE8KWvlfKFOYQ9z4o
	r8PVJrfrQ1ZqMIIdSACojZdt+6kLlyx8iN3I3opAaL7d7xfvL3zcn0DUN/V8B8JZ51/kh2onH28B/
	LGQPGPwTWjTUKh0gqLkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdg-00000005Uwh-1d8O;
	Wed, 02 Oct 2024 10:31:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdG-00000005Unz-1M6C;
	Wed, 02 Oct 2024 10:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=3//ArMyAM4NiHtpiKRDuAx6xjbwlVI9LSZBKaxlzmK0=; b=ZsMsG1IlOoWAujfOOm2uNo26T5
	EKfn5btZ3kvp4SnLI4gUdkaq9QZVhuZkZ6vdzRjFb6k8uoXx9VDf59/QBkYF/b2b6AUDdkx0K+iUQ
	Dk+0sZNkQTo9kZmtfZXxXmp1alyvynEjDinPVrkoFa51SMB0wxLNPyso3MRBGL9H8eshW6NXlsCYb
	QOP9PUysOJhFAGUgvPc4pKF8pMbq9EEq+H/V9ziT9g50qFGSsN4CRfTkqtZCxkAeAiK/aS/kjCPAQ
	SIhApK8QQedHRSsPfqrT7q+Hw5AAOMKyr6B959JuHeidBQAN9JEvWHRJRidlnxvrTd/Dt1g0YRvfX
	eDUrTdLQ==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwdB-00057r-OW; Wed, 02 Oct 2024 12:30:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Semkowicz <dse@thaumatec.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add power button for puma-haikou
Date: Wed,  2 Oct 2024 12:30:46 +0200
Message-ID: <172786503304.2125927.13540422477665000891.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241001134741.210979-1-dse@thaumatec.com>
References: <20241001134741.210979-1-dse@thaumatec.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_033058_380532_C4E2E46B 
X-CRM114-Status: GOOD (  11.54  )
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

On Tue, 1 Oct 2024 15:46:32 +0200, Daniel Semkowicz wrote:
> There is a PWRBTN# input pin exposed on a Q7 connector. The pin
> is routed to a GPIO0_A1 through a diode. Q7 specification describes
> the PWRBTN# pin as a Power Button signal.
> Configure the pin as KEY_POWER, so it can function as power button and
> trigger device shutdown.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add power button for puma-haikou
      commit: 52f21c63ed6ab7bc5d0ef310c15890ea6a6334c2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
