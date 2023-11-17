Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 759FFC072A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 09:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0o+WxIIi+SkJ2LN4v4MzgV0yLqeRFU49+JStdxvUGbE=; b=itU07en9FACPu2
	N3iKTZ7cdVMfnhHDwthQNVG3T3wtv9WrGpHM7+M1rl+0RVYzmD//OTelsFJZMVteA3AgWlPJKHs+9
	sWdrXwEdkNF3dW/ykHFdXOluRLzcEMo3yD2Ac/tqyJc1Nh1+DHDZAiIVh7dJ8B1i1V8Qxd62e+vda
	GerOyA2dIWduHX3+sG+qb7W6OX5c0imqNy6pCPPG+o4T2SO7YYQYRsiO0CXB/ZWSkHv+TceO1Pmt6
	usPpb/8RCW3OVEVcfRAG9mwfL77bo0iRkMyP1Gp5kNxffw8dCij8by90VZFdrJOYONxWcKb9RHSTL
	aHHZP5ztLPuoAazO8Xwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3vUx-00695i-22;
	Fri, 17 Nov 2023 09:50:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3vUt-00694M-2y;
	Fri, 17 Nov 2023 09:50:49 +0000
Received: from i5e861935.versanet.de ([94.134.25.53] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3vUp-0003ER-NK; Fri, 17 Nov 2023 10:50:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk356x pcie msg interrupt name
Date: Fri, 17 Nov 2023 10:50:34 +0100
Message-Id: <170021461019.1221251.11825529275422088497.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114153834.934978-1-heiko@sntech.de>
References: <20231114153834.934978-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_015047_957414_EB5C81E9 
X-CRM114-Status: GOOD (  10.54  )
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

On Tue, 14 Nov 2023 16:38:34 +0100, Heiko Stuebner wrote:
> The expected name by the binding at this position is "msg" and the SoC's
> manual also calls the interrupt in question "msg", so fix the rk356x dtsi
> to use the correct name.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fix rk356x pcie msg interrupt name
      commit: 3cee9c635f27d1003d46f624d816f3455698b625

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
