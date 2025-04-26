Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ADBFC369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=in6Wfm7XvJMj5BBr4YkpuvC4x0Bg3/D3fogX77EqSrk=; b=chJkX5obhK+KUX
	qIoysbziCEcgq4qHYoFFeCbOhpeO4nENhZ10VtdH+7/46QtZz/hL/98G4dKd6hLBaIids+e/s2w53
	AME+ZwA5mtuOr7DOBVnly6YeK2pns782LrD8awA452R/XNcFBsAl+7w8bWGeO1JLnH6qXXnsI+i8p
	9vel3YIbK/vL5m2v8GiY5oqvPE1p8wTvNClDH//clGOvQrUBo5z3ncmrdJCcmVNFgyzhcurHy4tk0
	3Zns1GedaKyCYXvjGcATq7x21niVboKNQdNYHykmquWtTSZFCRPGMNFKucjvyz6e0cJj89cbB9bqf
	d31NJwiLOOMaGVfI5clw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nYn-00000002Ykk-3bC9;
	Sat, 26 Apr 2025 21:59:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nLy-00000002XLt-2loD;
	Sat, 26 Apr 2025 21:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=1PPwkymYZC8xYiHOMvKBeSeonflfVA/++cGx6iEK8tA=; b=0aWUie/tnHEBtP7js4HSTrzYtJ
	5GGDUiUt2A+TZTzhTimEWaxvLM4ai+Ih6j/zkeJgJMQuLqDBzbH7wvBHcEBiZL7xWtVJ7vCMApV6/
	1KcvffwJgphub+BqVNhPzeHXKvaVsaJSFucrRRdu5cBIpiaJa70shjd5FSLIL6ZTH2/4YVS7fAq06
	0+/kmBTWfsnbRXJqy8MDbdjO802naRtOCYsPQW3opVcSQVAYNP3Pl6CV/f+qaf9gLHMCtjUZkZuTR
	6sjTJtX9x7bI8l+WPlgdTmVV5wlThuZvetcvBEG+7RTc4yqVdsUVWVRe6EVHaRd6daxcj+CytbZq/
	9tn1g0uA==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLs-0001OR-Cd; Sat, 26 Apr 2025 23:46:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Align wifi node name with bindings in CB2
Date: Sat, 26 Apr 2025 23:46:12 +0200
Message-ID: <174570370115.31943.9281326415535306804.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250424084729.105182-1-krzysztof.kozlowski@linaro.org>
References: <20250424084729.105182-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_144630_694051_11FE1860 
X-CRM114-Status: UNSURE (   8.70  )
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


On Thu, 24 Apr 2025 10:47:29 +0200, Krzysztof Kozlowski wrote:
> Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
> wireless-controller.yaml schema"), bindings expect 'wifi' as node name:
> 
>   rk3566-bigtreetech-cb2-manta.dtb: sdio-wifi@1: $nodename:0: 'sdio-wifi@1' does not match '^wifi(@.*)?$'
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Align wifi node name with bindings in CB2
      commit: 7ec0987da2c903d58167573e58b39d7ed19fc627

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
