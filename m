Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B0F8C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jun 2022 09:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LafPaUQtSP9g6fY8G9V+u2TRU0aVyaLwPiypViuZdGs=; b=2f69atHmQd7fD8
	R4I99+fP/8HXhfEAm9jBfBotcZAWiNXJtjkuk7QjER+wC47e7IFjf5r7D3I93hMkyXoSoOieKmNT3
	G5S+vJLBpJPKayg/5mPDhKAeSRd5Ra7pdM4xUO7XkxKUyDl1IjK5pNRo1d4s5l3jNDhoko+lkTi8I
	Ul0YLUX0Bxv3brce4EksDuNTNI9i3Jlb7KRY6uqPtRtnArcKDzJ28rXlg+6+e0VqMjt47Wcil73k8
	zFNXg/YwBueEqS36X0QZXnBCZe1UUPVyQu8tfWa52Dfl7jnM6ZoLAQjfw4nQH2IkG75lYOslLVMiY
	GIaFknutELvoItcOqKlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyVgL-006J5D-92; Tue, 07 Jun 2022 09:39:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyVN9-006A3m-Jk; Tue, 07 Jun 2022 09:19:36 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nyVN1-0004mn-U0; Tue, 07 Jun 2022 11:19:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] fixup! arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
Date: Tue,  7 Jun 2022 11:19:25 +0200
Message-Id: <165459351568.925770.13686160465924068647.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220606152204.3671113-1-pgwipeout@gmail.com>
References: <20220606152204.3671113-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_021935_714945_48551B50 
X-CRM114-Status: UNSURE (   9.50  )
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

On Mon, 6 Jun 2022 11:22:04 -0400, Peter Geis wrote:
> Having a gap in the address space leads to read issues with NVMe SSDs.
> Fixup the address space.

Applied, thanks!

[1/1] fixup! arm64: dts: rockchip: Add rk3568 PCIe2x1 controller

    I've folded this fixup into the original patch while rebasing
    that branch onto 5.19-rc1.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
