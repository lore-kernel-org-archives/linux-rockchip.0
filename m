Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1264DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHuiE95WNstxM2WXemzza3EEB7qy7M/LIaY50ooQ3kU=; b=AU6XPQslXWZM2Q
	GEkFChONoxUxJaC9VbnDexv7sHsvhMFrgFwL0eCYCm0qr2jhAx2PS6u/gV3SOyJV7sL7n+ig6PZTR
	+lh+sOZJ4AuKPMqQO9NIOo6Z2uTkcvCp7lgU9fBtvKbTC3NFF9Yo1DgwGng+Dwu2ozvVOJ/yT45US
	sPe6nK+tvJkeZy4cMpGjkF+uIfy6xk3B/5K6gJXI2nMWyQ6G6+NnWXvMj1eLlqsH9IPPSVPR5CryP
	sXamhMeUxmg7KBsCNbLqA3y1OKGzEkhPKwYumDEPjSMT1ryfrsYu4LroaJfUpvz595MSqIIZ9V/9k
	TShK2UbzGC5eL4k9PGLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2d2-00FXz4-Lg; Tue, 17 May 2022 19:13:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2bR-00FWjT-JS; Tue, 17 May 2022 19:11:30 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr2bM-00043L-6F; Tue, 17 May 2022 21:11:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 mturquette@baylibre.com, sboyd@kernel.org
Subject: Re: [PATCH v2] dt-bindings: clock: convert rockchip,
 px30-cru.txt to YAML
Date: Tue, 17 May 2022 21:11:19 +0200
Message-Id: <165281458742.3119039.11360524798286619583.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220330103923.11063-1-jbx6244@gmail.com>
References: <20220330103923.11063-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_121129_737826_D2B2E6F7 
X-CRM114-Status: UNSURE (   8.47  )
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

On Wed, 30 Mar 2022 12:39:23 +0200, Johan Jonker wrote:
> Convert rockchip,px30-cru.txt to YAML.
> 
> Changes against original bindings:
>   Use compatible string: "rockchip,px30-pmucru"

Applied, thanks!

[1/1] dt-bindings: clock: convert rockchip,px30-cru.txt to YAML
      commit: 2ab8e11852a70af41770027eeb99b3d6fcbef44b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
