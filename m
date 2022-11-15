Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92620C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3zz51X1puG2zgtHn/nDQJqDkA5m7TqlcgFXZsnqaS0=; b=4dwBWmYlrZ6PI8
	lGqvCUQzoMdOFs6Jbgi4E8A8HKpkfPPb1OKE5v3j4v8zIYK6MF8dWj2tIFFwEmS4oiicHCTMhdenc
	eLYEZ1LxQoLcEe6P+aaYey+fYzMtejvcYznqc/7K8ViZa1ttnKJpf78Q70NpP0NXgCnLCy54gaW7S
	I2gIFjaycJi8hctLlac1/9qiBlrbwpKxniD4EC3O6ycdhYhHk92BM6hHxUox8yAvM9+sslkVgdDhu
	8lNg3uyyMK61dxLJm67uIjeoApvDLEDaXW2sHXfeesw5DXBzX0sdJbvu0fls9Kz4nInGO+t36yXtg
	d+vXDK2FMRIGKQ/AMGAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outpn-00AMwa-Ml; Tue, 15 Nov 2022 11:10:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outpk-00AMpm-G8; Tue, 15 Nov 2022 11:10:29 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1outpe-0007ai-01; Tue, 15 Nov 2022 12:10:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	pgwipeout@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: rockchip: Add Rockchip rk3566 box demo board
Date: Tue, 15 Nov 2022 12:10:15 +0100
Message-Id: <166851058435.863884.6413531629073942416.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221105095935.958144-1-andyshrk@163.com>
References: <20221105095935.958144-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_031028_550739_289D1652 
X-CRM114-Status: UNSURE (   7.82  )
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

On Sat, 5 Nov 2022 17:59:35 +0800, Andy Yan wrote:
> Add device tree binding for Rockchip rk3566 box demo board.
> 
> 

Applied, thanks!

[1/2] dt-bindings: rockchip: Add Rockchip rk3566 box demo board
      commit: 68fc69012b527cb0be2b6b793531c32ab0dd6c29
[2/2] arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board
      commit: 2e0537b16b2557974f81db008a51f41c838dcb81

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
