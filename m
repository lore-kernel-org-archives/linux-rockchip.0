Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00ED7C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 17:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8+Y9DSjUtKG2JEitFInioI4EwU5UzD7mLphK350Chk=; b=BA6dct3t4v8TLY
	f9FaqXb2AIwC/B+8c1b1b7JY4+BoYrTogQkNgx8uQyPrYlHTn8mT7EX305lYkCAT/1oZVOuaGwdmF
	WHLMqJUvcvKGw6yYMlZZKm8i6uUQUnyO0lKaqiO3HOB14ICSMh/+KE3/dIua0T/2uS7HaREiCu6m7
	x+aDzN1CEDoEOnOZ3WF+KPjdXyAO8cK5d++wUjv8N4EDs0JfANVhbGOCwa98CYo/PicWzZnqP+wBK
	At1oXwUKHJq/G5p8g5ovrY+DBv+1bYgzuj7QHiyOSN+EHjA5V4CFQLFb3qPYHFDCaLkk7IJTRjuel
	pASDs18IoYTdaAOjuEUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndb7e-005APG-Vz; Sun, 10 Apr 2022 17:13:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndb7U-005AMG-Jr; Sun, 10 Apr 2022 17:13:01 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndb7S-0006hD-L1; Sun, 10 Apr 2022 19:12:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v1 1/2] dt-bindings: pinctrl: add rockchip,
 rk3036-pinctrl compatible string
Date: Sun, 10 Apr 2022 19:12:53 +0200
Message-Id: <164961074165.23152.1000043865716851789.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330133952.1949-1-jbx6244@gmail.com>
References: <20220330133952.1949-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_101300_690083_BB41A543 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, 30 Mar 2022 15:39:51 +0200, Johan Jonker wrote:
> Add the compatible string "rockchip,rk3036-pinctrl" in already
> in use in rk3036.dtsi to rockchip,pinctrl.yaml.

Applied, thanks!

[2/2] ARM: dts: rockchip: rk3036: rename pcfg_pull_default node name
      commit: e0badfe359ef4d01ca74261093e65f742f321da8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
