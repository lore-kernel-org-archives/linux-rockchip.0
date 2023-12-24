Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1AEFC46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 19:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lz+RZfPqaXcPtumi7bsoYMgqaxGHCrJm+XW96V6f+Rg=; b=dpf17umDUkuGs7
	keI7ty7qFVRPVcB2AQOPLchDOCiUNkY4noU4QrwFa4t9bJxyKDdJwScDDv+vThaOMwrR6MJNhRj8G
	mmy39cg7vAQmMAEuzu51RIgokpgpiqeifVoVT42IXct0KlUhRx+u/0rKvO8mY/7ibn7Me44tqtBqH
	PBU+xIuzjBDeYDt9XoCDEsOnitc2JkwU/ux3nZx4J/FwqVFdRbqfCo/V0Nlh5GP7lTiga8xLT+Cgi
	mfaDWEcFuyeVtQNoDZVOj/xxiq0QH+EN/+B9ZnHb9ICiBSH+94uw6640ZZpXoQpni99/HAw8Z4K7K
	U+1+Dvdv/PqPHDlHDf1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHUZ4-009p0k-0E;
	Sun, 24 Dec 2023 19:55:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHUYn-009ouN-20;
	Sun, 24 Dec 2023 19:54:55 +0000
Received: from i5e86193c.versanet.de ([94.134.25.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rHUYl-0006HY-95; Sun, 24 Dec 2023 20:54:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Trevor Woerner <twoerner@gmail.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3308-rock-pi-s cleanup
Date: Sun, 24 Dec 2023 20:54:48 +0100
Message-Id: <170344745822.2405994.1040172386629808336.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219173814.1569-1-twoerner@gmail.com>
References: <20231219173814.1569-1-twoerner@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_115453_654405_A93DBF4C 
X-CRM114-Status: UNSURE (   8.94  )
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

On Tue, 19 Dec 2023 12:38:13 -0500, Trevor Woerner wrote:
> Perform the following cleanups on a previous patch:
> - indent lines after "gpio-line-names"
> - fix D0-D8 -> D0-D7
> - sort phandle references
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3308-rock-pi-s cleanup
      commit: 085021cc825ed90a6ddc4406f608fb8a85745f81

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
