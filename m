Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CAA2C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 08:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO1NCClI/Nf+0XYc68T7NWA0rQwnrb5HNvAzV1CguEs=; b=cGIY91PFHMtljW
	dR/wvU4kWrYus2T6lgSMZWaddlPf/0hHL1VitG2NuXarKA+H4fN6DHv+j1SVsXVVm0abGQOZa7y2X
	X6+aaMCWzJJKz3BYG0unzwUTtEAcoggbVkvb7h0Mw1Ugw3ZJncLAvVz3RLBE9qiiXrcAGTvWSws9B
	eQONdNfrvl6Sr6H019Ylyk8eHmG1kFbq7bmyRXUYmhs2N3o9jqxGLKtbh3f1pXEWsD/KADQ+s6naB
	qj7CcZY3wAXhjYIwKWNimQCleuYFXu87zx7fRBQ/QQ9GzE0EKKRzzQcWocb74QypprHxew4VzoqbF
	/kDHXvY582gKY6Sc8RAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJslr-001SNX-NM; Tue, 15 Feb 2022 08:01:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJslp-001SKY-31; Tue, 15 Feb 2022 08:01:10 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nJslm-00067j-6R; Tue, 15 Feb 2022 09:01:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: rockchip: rk3288: remove status from crypto node
Date: Tue, 15 Feb 2022 09:01:04 +0100
Message-Id: <164491205724.964490.11065138775660081391.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220213212319.8448-1-jbx6244@gmail.com>
References: <20220213212319.8448-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_000109_150528_39DC5CAD 
X-CRM114-Status: UNSURE (   9.02  )
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

On Sun, 13 Feb 2022 22:23:19 +0100, Johan Jonker wrote:
> A node that is not disabled is standard already "okay",
> so remove status from rk3288 crypto node.

Applied, thanks!

[1/1] ARM: dts: rockchip: rk3288: remove status from crypto node
      commit: 5a68ce0a7b89a7005a71d406435a45a24c7e86da

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
