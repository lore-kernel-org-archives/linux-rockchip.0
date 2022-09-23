Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA0AC6FA86
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xmbeBh5saX7THLHpEb27+Y8caeOz7U3k62r+VEOrvY=; b=etM6iGsrR2XtXc
	SwmVEotyTnbsFZ2iPynAtJtxhnSLNHklEr9ToOHXyFhiy0Oshbw531x8AhyF6McN7cQs6HJ/S7HWm
	B2VkL703dXArvmb4ebetQnURYd34jusCkyanAmWNGGDWWvEkaqQFDl0V/eDNEEi+Ml0Bhw8uuIvjX
	0Vfs7wCf4v8s682Obpv/otWPhbUKXNLJrEo3Gaab444r8gvgvgaX7PvP8k18LUuqS6N01c4XN6imz
	u/5kHqQXRlqYMQyJxbfEtw43BI+jlnh7xDybmC6hHbLLnfNySN0Rn1vbvUI04u6fDfYpF6LFHXI7N
	65jMLObgLfVnXihX+AxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg0Y-003fYK-2j; Fri, 23 Sep 2022 10:34:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg0V-003fX5-Qg; Fri, 23 Sep 2022 10:34:08 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obg0S-0005sI-Pr; Fri, 23 Sep 2022 12:34:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	zhangqing@rock-chips.com,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	mturquette@baylibre.com,
	linux-kernel@vger.kernel.org,
	sboyd@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH v3] dt-bindings: clock: convert rockchip,rk3128-cru.txt to YAML
Date: Fri, 23 Sep 2022 12:34:00 +0200
Message-Id: <166392923326.537565.17809786432219638710.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <4e69a06d-7b53-ab48-1e50-2b29ff3a54e6@gmail.com>
References: <4e69a06d-7b53-ab48-1e50-2b29ff3a54e6@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_033407_876479_74D23CBC 
X-CRM114-Status: UNSURE (   6.56  )
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

On Sun, 18 Sep 2022 16:29:41 +0200, Johan Jonker wrote:
> Convert rockchip,rk3128-cru.txt to YAML.

Applied, thanks!

[1/1] dt-bindings: clock: convert rockchip,rk3128-cru.txt to YAML
      commit: f878a26a2a61abae9cb4d01a04a49dfac209b37c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
