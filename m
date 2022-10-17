Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69B23C43219
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rq2HF17L0FVDYcCT6W9Yiff5i7FpMF7VOHxdUM/pUs=; b=Ld07l3y32abL/n
	4yv+IwZ2jgnOaDTAJd7HlOHGcoo6VGftiS9a2g9ga5oCANN9pSr3YXFpIQFqZGxdr8qZQrOjq+5Ia
	zqUoKouVSL+YAkhBz4snANUUEnQr5wHHQu1kOqNpLywvweW+2IjOMl6rsf7AHGBSp/TWoaTIYZfv/
	OlvFFimWMNNl2b2vG+8O9T6l9iPydl9Y031aohxZk2nX6ChCj2cB1LR5x1GAY5SwTri5gxRAn+EDO
	cc6eB77E+Z4JB0Wqe5rPv5gsRNGBLTEDU7maJPlLYySHuIsYQLRvWLINjpCEVi2AmMWrMhru+DRf8
	u9j0/gECc+oYSdxKD1ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKU-00BZKj-Mk; Mon, 17 Oct 2022 12:34:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKR-00BZII-3z
	for linux-rockchip@lists.infradead.org; Mon, 17 Oct 2022 12:34:48 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKN-00087p-CY; Mon, 17 Oct 2022 14:34:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Drop Scarlet's repeated ec_ap_int_l definition
Date: Mon, 17 Oct 2022 14:34:35 +0200
Message-Id: <166601006782.173248.10349280767001013645.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013213336.1779917-1-briannorris@chromium.org>
References: <20221013213336.1779917-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053447_182667_AE6C4939 
X-CRM114-Status: UNSURE (   7.92  )
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

On Thu, 13 Oct 2022 14:33:35 -0700, Brian Norris wrote:
> This is repeated a few lines down.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Drop Scarlet's repeated ec_ap_int_l definition
      commit: ef40e88d1be172ca05e6e8cef00284a1cf4f43d8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
