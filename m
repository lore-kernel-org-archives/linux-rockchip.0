Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66EE3C0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 13:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TbQkdFYgQV30bzwTdnxBjc3KuViGQOG8kq+Dj5dMwU=; b=4oClyuK1T/YK90
	bfoTPRYD7T9j3TZ/RYcskBAqbNUzWmmhbm3YNJ+XShPQC7jsxXq/Ezgy0HLWdrtJSI13HJjnxslG+
	zlivvYRRwD9fCzFnpzUnpCt/ctwtWsWAayvtOaTTAY1R+Yq+jpxDmOF3APKSoRi8BvrUL1Ps8p3vN
	rQG/+nh1HFPq7krk/H62c9jJak1Eo+g2TVTFF4mY6ktUD5SyEMDNs3DDrxug/dAn+563Os6srPTjX
	hfeLMNTkfOFTrxb+0fugD+YKlhfTH/dLOUlJDVGBTdSob9EPBHaRf29eACYNdpiIsn7wFoqO7EuOn
	dufaDvdcbYe0OrGp82ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDWr-00EzpC-1R;
	Tue, 11 Jul 2023 13:35:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDWo-00EzoL-1k;
	Tue, 11 Jul 2023 13:35:43 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJDWm-0008Hp-AW; Tue, 11 Jul 2023 15:35:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Yangtao Li <frank.li@vivo.com>
Cc: Yangtao Li <frank.li@vivo.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/8] nvmem: rockchip-efuse: Use
 devm_platform_get_and_ioremap_resource()
Date: Tue, 11 Jul 2023 15:35:39 +0200
Message-ID: <7814542.lOV4Wx5bFT@phil>
In-Reply-To: <20230706040504.34057-5-frank.li@vivo.com>
References: <20230706040504.34057-1-frank.li@vivo.com>
 <20230706040504.34057-5-frank.li@vivo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_063542_582808_4C1BE5BF 
X-CRM114-Status: UNSURE (   8.21  )
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

Am Donnerstag, 6. Juli 2023, 06:05:01 CEST schrieb Yangtao Li:
> Convert platform_get_resource(), devm_ioremap_resource() to a single
> call to devm_platform_get_and_ioremap_resource(), as this is exactly
> what this function does.
> 
> Signed-off-by: Yangtao Li <frank.li@vivo.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
