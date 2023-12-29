Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F15C4706F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 22:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DPVjUCSTzMxCVPjk9DLmyr1JukZMjmqXv9jwis+ZyY=; b=EYMPKmRAy18iwn
	nPNR1ZD9JG2fha+bm1x2DZzPsXoOjJwHVQxrt8b5Gqr9Q/i49eAResCAlOEv6lEjezHZ+JzJaO7Zc
	njqQIkv1I6yvV4ij9ovLY5eJCjKh4bk7EWYd/D8xBfXc5+dgO9YhuxvC/LDpnGadVui8Gg7xPIgjR
	wU0kKKjiOEkh/7pEnP2jHYYPjz63gjiL6btVj7TxVaRjVA41zsynqYNqJrFTjXUGlNN6d2q3MZf6H
	zZr2ZdHNnmmqfrRRldM5Simro5G8/PkdQ2IL+IJwxnhkAColyNaiRuqCoqsCDG2C4SHn8dAq/suNU
	ObtugFdBvLo9pWdQ4EQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlh-001iUR-13;
	Fri, 29 Dec 2023 22:55:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJLlE-001iEq-35;
	Fri, 29 Dec 2023 22:55:26 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJLl7-0004VA-E2; Fri, 29 Dec 2023 23:55:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	lasstp5011@gmail.com,
	linux-kernel@vger.kernel.org,
	zhangn1985@outlook.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix led pinctrl of lubancat 1
Date: Fri, 29 Dec 2023 23:55:11 +0100
Message-Id: <170389050013.2630399.12594636943647142051.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231225005055.3102743-1-andyshrk@163.com>
References: <20231225005055.3102743-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_145524_991883_F141CA2C 
X-CRM114-Status: UNSURE (   8.64  )
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

On Mon, 25 Dec 2023 08:50:55 +0800, Andy Yan wrote:
> According to the sch, the gpio control sys_led
> is GPIO0_C5.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix led pinctrl of lubancat 1
      commit: 8586a5d217ef7bfeee24943c600a8a7890d6f477

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
