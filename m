Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62760C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 20:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yF2EJLkBHsVrS69PIDODMVDdz/R7rgCsL/9mc1Mb8Sk=; b=EGvXB8Jvc+aovG
	HyTJ6UWxg4ZECf9nQB7WoCGdkoIvOZAGyZc0inpSlWLAtqxiR1FCN7FXBN2NGThMMDQZgOxgjKr54
	ytUjdBiMDQWlRhzd8s1xB4Din3vU2TtH4MQEjfFrio0r+MWezRZZTwaV1/PkHgmCV35vDr5Lar0ly
	6r3MVynEfBxpNWElDMCkBnBBvZhG+C7S3hcQ5ZpNHmHNhD9Hqx/hlK5ZQNAbvBfu8nyxFMJKqs+yM
	6jVUoWC/Yt3XoJgImKDVv7CKCd+pCW8sX/v7WF05lvxcRYQuLRFE+lLFJBODivv/wHULDKVJlZt0W
	Zy8h71CgEQeU37Kg0/Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wj0sq-00000007jSL-0LR8;
	Sun, 12 Jul 2026 20:34:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wj0sn-00000007jQE-2hSp
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 20:34:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2westCkTI2EE14pA7ejSU5HuW2PbVOQcSsUv15jFNlU=; b=QbMPaVBbJIp3LKUESMjaC/cW//
	/OJ685b/a2KsTfx4nHDV2MeAJigZo58qN+uPcfT5m1IuTLy85jEFyyGTzicIXDnUmFyS5K+oa5FA+
	wER4jJEciXfTJa1KxbFEeK34wMnFJYUTteUHevdvqrSzWZs+oUhzNriLtzGZBSdjsEQ+Eaf/8f2cb
	6XnOLByglEm67O5Q1EfpOTzXjPXZzpFRddqV5a4pWio/MLWYmvjqLYufIhGcgWhZeQquj5PXJJKOV
	WJVm95S5n8gON8UTLasdz/G7l+YPNWP6CrTNhX/wZN6fo0rZ0TYavtsW/PrP602qsHxIcEqx40Xps
	sdbpYtpg==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Marius Dinu <m95d+git@psihoexpert.ro>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] arm: dts: rk3288-tinker: add eeprom node
Date: Sun, 12 Jul 2026 22:33:59 +0200
Message-ID: <178388833985.1396294.12062484754801637689.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260703084645.7001-1-m95d+git@psihoexpert.ro>
References: <20260703084645.7001-1-m95d+git@psihoexpert.ro>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_133437_692233_0656C5A6 
X-CRM114-Status: UNSURE (   9.44  )
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


On Fri, 03 Jul 2026 11:44:53 +0300, Marius Dinu wrote:
> This board contains an EEPROM that holds the CPU serial number and ethernet
> MAC. It is used by U-boot when configured to use upstream device tree from
> Linux kernel.
> 
> 

Applied, thanks!

[1/1] arm: dts: rk3288-tinker: add eeprom node
      commit: bd504200195c0bcb26706f363814d3426ef3baa7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
