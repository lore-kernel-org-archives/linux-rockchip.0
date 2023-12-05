Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FF54C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 00:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8dH9Iib16upIf4rGkNyA41c+MwV6AMPZq8q6u9WJso=; b=i+Ac7Zl4OSq3bQ
	CywaY0XzGBDtIYktEkqwS+lyxmzqjtVlLT5qN1M+rADAgeW3DwqbWSZ+EnGb5dCLAFB7LIYpGmD8G
	wQUovxnXWtBM+mRys7AV7Xy41rGkc5CArDs7Ghbkh2vodulX+SpLsxMmNQlbskzlm+qFMC8krwA+z
	J5jaIfh7GVAVXFdG/9bXA0i/blJXisLCAqKLfnsCh2KCJpLmAJ+/MNbnssl/G5qfm5/ZbH9WoCh9V
	+QRPwp3bO1pJy6NizVw8r9p6XdSHCdT0zxcAOJhhJMvhZrg5nIteonTZ0TXcefOr4jSGIUB037Xly
	Kjd09qVZgtZICwQIal4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIx3-005qZU-0s;
	Tue, 05 Dec 2023 00:06:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIww-005qWy-28;
	Tue, 05 Dec 2023 00:06:08 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAIws-0001qb-Vk; Tue, 05 Dec 2023 01:06:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/3] Move core bus and gpio aliases to SoC dtsi for RK3128
Date: Tue,  5 Dec 2023 01:05:58 +0100
Message-Id: <170173468934.501889.12474504620278418598.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231202130506.66738-2-knaerzche@gmail.com>
References: <20231202130506.66738-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_160606_921664_05ABFAD9 
X-CRM114-Status: GOOD (  11.20  )
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

On Sat, 2 Dec 2023 14:05:04 +0100, Alex Bee wrote:
> Following up the recent discussion [0] about where aliases can be/should be
> placed this series moves gpio, i2c and uart aliases to SoC dtsi for RK3128.
> 
> Note: This patches are based on maintainter's repo.
> 
> [0] https://lore.kernel.org/all/b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org/T/#m94aebb23a29b015d94b250a70b675febdaa902ea
> 
> [...]

Applied, thanks!

[1/3] ARM: dts: rockchip: Move gpio aliases to SoC dtsi for RK3128
      commit: 3b0422a4ce59d8afb84bd7516bf71a3c1caa7925
[2/3] ARM: dts: rockchip: Move i2c aliases to SoC dtsi for RK3128
      commit: 39732a49803cf271454416341549df09c4a2fd2f

I also applied patch 3 ... though had to pick it manually from the list
as the subject was a bit garbled (missing 3/3), so b4 did not pick it up.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
