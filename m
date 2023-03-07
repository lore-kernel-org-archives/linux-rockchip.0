Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05F81C678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 23:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPPLNrA+oEIZrmCYHqN9hCLW+2gpV764PFJYYChscjs=; b=gtNHoisrLeUds0
	Im0fjbDGwqUYVWBdjnJ/NDFciUJuU7krazQQsdJFH6fMfKKigrUER8XMGlb5rL+N8c748WTgGZ3YW
	LGFSsxDNQFr4TQleMdbWso2EbCioz2rF13thV1vlG246b2N6V8ymTlP7VK2SFcnzDngDKZJDLrewu
	NGumgx4012bsq0uahmcouYbCI9b/pN2f+rSHzuK+UYlktwn6G2cEQoo+EOw/sLrg1h4SEGqcRzlTT
	kGwuf6M23Iid3EJHZ4gQKYbvDb/6DS1ygmDM0ioUhX519Z/NaUj59NdgSGgOVWhMMj/4QRkB26xWQ
	vsW+n1YLYrG8TlFVpcjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgr3-002tR9-TR; Tue, 07 Mar 2023 23:36:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqW-002tBp-Qc
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 23:35:54 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZgqQ-00025h-5Y; Wed, 08 Mar 2023 00:35:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dan Johansen <strit@manjaro.org>,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
Date: Wed,  8 Mar 2023 00:35:38 +0100
Message-Id: <167823207784.205469.12953028273103565158.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230304164135.28430-1-strit@manjaro.org>
References: <20230304164135.28430-1-strit@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_153552_929337_352275E9 
X-CRM114-Status: UNSURE (   9.98  )
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

On Sat, 4 Mar 2023 17:41:35 +0100, Dan Johansen wrote:
> Just like the Quartz64 Model B the previously stated speed of sdr-104
> in soquartz is too high for the hardware to reliably communicate with
> some fast SD cards.
> Especially on some carrierboards.
> 
> Lower this to sd-uhs-sdr50 to fix this.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Lower sd speed on soquartz
      commit: 5912b647bd0732ae8c78a6e5b259c82efd177d93

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
