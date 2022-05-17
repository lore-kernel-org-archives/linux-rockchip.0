Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E21B3C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TU3tny6hHuMhr+KEVJCrzKw5S04Qo42ecuUKLYRkCg=; b=fZcINuOO96BVxb
	FZjuYRTlVFyfef5Nc5IwgYtU5r5X8DOFgpOLSVOdvm8zPGKpwy0pxuJ17PfmvZgAG36jr8j1quTyL
	vsQ5dBzwzZNtIRGZcvSf9G6NE6QANmltqaC7VvowU/BoGaxyIzFriHKvssYcLVjRwx+15tdpkLZ/l
	8L7rw0oUdSa8ehgaWtP39WOEriWriRX7UmMb4jyU9elxFNRPzgytMUZWy5u42k3d5eB+tt7VGxiNo
	5TsWWMKaZE+FBeKWmo5oQqMOlcsgndl3kvGN0tz2Jag7d44Ytbhziz05bQtm6UrCy/WBi2pM80Sba
	hVVzDEok9o/eD8YcyaHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2cQ-00FXR9-NQ; Tue, 17 May 2022 19:12:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2bO-00FWhD-V1; Tue, 17 May 2022 19:11:29 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr2bL-00043L-Dc; Tue, 17 May 2022 21:11:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 mturquette@baylibre.com, sboyd@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3288-cru.txt to YAML
Date: Tue, 17 May 2022 21:11:17 +0200
Message-Id: <165281458742.3119039.6001073112937084261.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329113657.4567-1-jbx6244@gmail.com>
References: <20220329113657.4567-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_121127_107912_3536D6D5 
X-CRM114-Status: GOOD (  10.01  )
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

On Tue, 29 Mar 2022 13:36:56 +0200, Johan Jonker wrote:
> Current dts files with RK3288 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3288-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names

Applied, thanks!

[1/2] dt-bindings: clock: convert rockchip,rk3288-cru.txt to YAML
      commit: 03339ecc41201218eb2e9fa191bfa84b86cf26fd
[2/2] ARM: dts: rockchip: add clocks property to cru node rk3288
      commit: 1b36d43799187791750aa73286f0e2530f67f003

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
