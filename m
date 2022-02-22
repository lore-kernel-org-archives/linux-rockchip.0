Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC1F9C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 23:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+0mvgFW41/R/0t9ndLLh8Z/K1ay8oVLsOqWFebDm+E=; b=Hmrr1NmSs90Bxo
	oss1anPWoFLI9PrvdqMQIwftdSYwb/X7QuwHGsyj2UsE7zlD9oJqtOkkrDIAJvHr12SVJJv0XlqyI
	pCx0FUaa3JcvQpnEYJy5fdhImZhlZqCgCQ8HGGuxCg5u6KMaUU3QKO5OZLrvpBKI8iBtr7ThU81cZ
	m4SomNdYlZ9rCdKgpJ3RiXEmiArk7L4TuT5HFUq7H7eFwo2fecCpG0KmPj62iY9VHJXIoLWHL4Jix
	9SCbBJ2wNE3ieuBRLuarJ7eQa69ibaNPr0zTY0Vik5oIZgit6nnMTPcNL3otw/uWcAsT4NQKD1l/f
	FKitZOpk0ou1/HYCynyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMeYu-00BuUS-JW; Tue, 22 Feb 2022 23:27:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMeYs-00BuTw-4G; Tue, 22 Feb 2022 23:27:15 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nMeYq-0006wl-4q; Wed, 23 Feb 2022 00:27:12 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 frank-w@public-files.de, Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: enable work led on
 rk3568-evb1
Date: Wed, 23 Feb 2022 00:27:09 +0100
Message-Id: <164557235424.1264579.1250826680856309781.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220222175004.1308990-1-michael.riesch@wolfvision.net>
References: <20220222175004.1308990-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_152714_190975_586E26BE 
X-CRM114-Status: UNSURE (   8.87  )
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

On Tue, 22 Feb 2022 18:50:03 +0100, Michael Riesch wrote:
> Enable the blue work LED on the Rockchip RK3568 EVB1.

Applied, thanks!

[1/2] arm64: dts: rockchip: enable work led on rk3568-evb1
      commit: e2bcb9477e48ff7c10d0d3508cd16f0a10e81dd8

- Renamed the node to led-0 (according to binding)
- dropped label (deprecated) and instead moved to
  color and function properties (to try them out)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
