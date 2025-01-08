Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310C5E7719A
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 12:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SK93z4gstMJeKsCWv0A8Y3ZyxfTHLEerf/M0P27uOg=; b=Ixvx5Uc8+uQOTy
	pGURG11CWjOYe8tkf5B/KO3OqdfWD9duHL1xzDTP4dnUVNZZcK3xzAc5jgtrXnMMEqWIn0Iq9bixX
	Y28FyMWw1qyPDYg5Li+hG79i7xy2QB9qwwa4RqBf3jBX7p7Ql/YOghz07g/WSJQN0r+Ubr4xXqHzW
	3YLlyNsZR4gQSVj7biRG3IswOdvwRJnTMoScs/bfKXJBl6K7tfnlL2XI08YYP1I0+K8l8uyvHwOKX
	63gi45vCLdyts4awOg2tmcXRzJQzhPQ1/kETp4O+7oS82z7IQkWiLqkOGz0y7g2u+2wLPtymGeH0j
	nkh8Ce8INhnrxAW+h6eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVZC-00000008VfY-02YS;
	Wed, 08 Jan 2025 12:53:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVUly-00000008LTI-3Gcs
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jan 2025 12:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nRQO1yjuX6bCQ/PtICNClQmkrpRnhhO1UrKdqkwDZEo=; b=othmqvdkecbqPNpXt362HrGrn0
	MRMuL7Y8cvCypZw4RjgK+c41oEmM74eKs9c2PovGkG2U3BYJylGtV06XuEinsRBCncOAV9D3qlB6y
	22bkGaOZr9GEuayThoIUFI+rff5ejB2HJdyKU2QGiwCri5SEBHM2nJoKbaB4aJ5Jw56r9a+EBaD7M
	W/q0DKW2lYdHe9LgzlV/wn0J3QKGVHuhHtiO5ktvl0NZ612HUKIjN/QaqvfOp86dOwM5dUHXmaNoh
	CgcO5xARbBYVO7qs02CgyfTAITfaG5avwkryj7JbXWp9o7f+tHFSyNMrpFPOuS+iSDlM4s6hK8bKZ
	HPgj4USA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVUld-0005Xv-Kx; Wed, 08 Jan 2025 13:02:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v3 0/2] rockchip: Add support for RK3582
Date: Wed,  8 Jan 2025 13:02:22 +0100
Message-ID: <173633768688.2772122.9017699112153279364.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241226024630.13702-1-naoki@radxa.com>
References: <20241226024630.13702-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_040254_815326_C4978B68 
X-CRM114-Status: GOOD (  10.67  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>, jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com, jbx6244@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks, dsimic@manjaro.org, liujianfeng1994@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 26 Dec 2024 02:46:28 +0000, FUKAUMI Naoki wrote:
> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).
> 
> - Dual Cortex-A76 and quad Cortex-A55 CPU
> - No GPU
> - 5TOPS NPU
> - H.264/H.265 video encoder up to 4K@60fps
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Radxa E52C
      commit: ddf021193879f54bb8fd9acdcf467b24229a553e
[2/2] arm64: dts: rockchip: Add Radxa E52C
      commit: 9be4171219b659a8f0fa0a7913af2c6ab20c714e

changed the rtl-net led-triggers to "netdev" for now,
to a value compatible with the binding.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
