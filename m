Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70953CD4F21
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 19:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hla20FCTGInIYvy9j+oC+8MdLBlT/v51zD8bSlwu/V4=; b=fBpWPZd+QTbrAb
	WEQzc0+y2En3f1N3ipkK+5bzQaFkxgzviz0MZk9tH2Hz9TBOpJzxArG3255wTvI4hUf8Sq3bcCNtU
	/T0cxZepzt4r/UJe2mlNtLJnUGhBJU560E+2NCq9R0XguF66QaVnRygyBuHXWHt7XrZqbQ7oRbK1Q
	h0Lwvto6t/91SBGoCkxy2PafdAz/HaOCwAs7j3TBlX1ZAbEPrAOvWX9O3BXKxL82tMSS2v/sk44c2
	8zfyxQRrwjftCj1xbqO8db3Wjd7NhpfHf/lqsJWZmV4eI3L+qVkNqM3LQi7OsN29xxYJH5uM+pHQ+
	8nInB/cBhn0QF4xfp3Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLf-00000005k51-1l7l;
	Wed, 04 Sep 2024 19:07:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slvLc-00000005k2A-32bx
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 19:07:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=9BuYuSidvIjR+3Mos7ls/Py6h53izj9brBb5zQfGsjY=; b=U5W0l994Jnb1sfFoekNSFwfqye
	pD7wUXGSV9T8Po14YmvUBCvzIpTYLTUAhDAYB1t1W2oZ/8Z5nFbDvPLmNL4L+qWlVCProXRtSrRxf
	XQYLUA21QJqnwTbaXmpXvD/CRzE8C2lNR7s6G800zYFYprNKHI4tFbGPAijd5wpZraHkiXgyi/hWY
	k1QF2mwnuVEP6DI5VFeAbig7dBmsrn7oAIFiQ12bW7Al3cmTVucYbHTZ+2UJ0QEgG33eZ6UyancPe
	3Xh75MfQ+5NVMZCJi9ewqn7oGtH2+1UKpOB1zTUdp/ZPZdUlTFSUFExVFQ95VkIg/QfRyt/db734G
	NLrjks0A==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slvLY-0002Po-UQ; Wed, 04 Sep 2024 21:07:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	Chris Morgan <macromorgan@hotmail.com>,
	andyshrk@163.com,
	zzc@rock-chips.com,
	robh@kernel.org,
	jonas@kwiboo.se,
	conor+dt@kernel.org
Subject: Re: [PATCH V2 0/3] Add GameForce Ace
Date: Wed,  4 Sep 2024 21:07:02 +0200
Message-ID: <172547678277.2721598.16481405618414618878.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_120720_818773_683A0B1D 
X-CRM114-Status: GOOD (  10.40  )
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

On Thu, 29 Aug 2024 15:45:14 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Ace. The GameForce Ace is an RK3588s
> based gaming device with a 1080p display, touchscreen, hall effect
> joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
> and support for a 2242 NVME.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: rk3588s fix sdio pins to pull up
      commit: bd60cae2932cd123d867bf93bdadc4bf545fcdce
[2/3] dt-bindings: arm: rockchip: Add GameForce Ace
      commit: 3e5be1d7e7ef3dc5413e774e580f0c2d14aa6755
[3/3] arm64: dts: rockchip: Add GameForce Ace
      commit: 4e946c447a043c88b5db38501f3af174989dcc94

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
