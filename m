Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E1E0C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 20:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n9pLo8fnVBuAFKSjRy3SkzmtB8tDSkfvxp2PrSGqD24=; b=E2bsVkcF2wfvzj
	rXmyju7oxaahEtVDS5u9KZLAZw/QYl/kZhFdxXwoxWCo6lnlnN/WNU5OdOwVA/FbMW+yKj0lNdLC4
	Roc2IQqyUdLdCgYuLeF/sEn57D3rCu0FrP2THUmL6hoFRZICBpK2OSH6qjXppj3RGBqgqnx+PMHBa
	frpqYEjHWVvtzp7Yeuw49H31OE24SrhZwQJ+kmAfIIhXbmEK3BsDy8U+PrV8nTEZrDu+92LFi47/Z
	0ze6Z8A0KF/OkMEgJ+EKVbnmF2gmplD2bNPDx7UxjGkMnmYEKShW+5RWoa12vLe1qDkw+0ZA3pdzD
	dv4pbZkqZ+wpXcD7Lttw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWuu-0000000CdDu-2Kjp;
	Mon, 29 Jul 2024 20:24:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWrq-0000000Cc6N-3JQx;
	Mon, 29 Jul 2024 20:21:16 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYWro-0007Xp-Sl; Mon, 29 Jul 2024 22:21:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marek Kraus <gamiee@pine64.org>,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Correct the Pinebook Pro battery design capacity
Date: Mon, 29 Jul 2024 22:21:03 +0200
Message-Id: <172228429362.2312452.9693627001508477448.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <731f8ef9b1a867bcc730d19ed277c8c0534c0842.1721065172.git.dsimic@manjaro.org>
References: <731f8ef9b1a867bcc730d19ed277c8c0534c0842.1721065172.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_132114_878824_EE7EA17F 
X-CRM114-Status: GOOD (  10.80  )
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

On Mon, 15 Jul 2024 19:44:20 +0200, Dragan Simic wrote:
> All batches of the Pine64 Pinebook Pro, except the latest batch (as of 2024)
> whose hardware design was revised due to the component shortage, use a 1S
> lithium battery whose nominal/design capacity is 10,000 mAh, according to the
> battery datasheet. [1][2]  Let's correct the design full-charge value in the
> Pinebook Pro board dts, to improve the accuracy of the hardware description,
> and to hopefully improve the accuracy of the fuel gauge a bit on all units
> that don't belong to the latest batch.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct the Pinebook Pro battery design capacity
      commit: def33fb1191207f5afa6dcb681d71fef2a6c1293

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
