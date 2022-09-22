Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0642C6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 06:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eih/wThVNXQMRoZhM8AVkbzxsb+tsC9AwcvutocgTeg=; b=xqOMCTAdV0BE99
	zUVuV9dWSNSCBxVX/wryd6ISISlRZ+I90ofPMVXubgqDgMjDuVA5N3uNFK698VL3DY4ac9ojGoMwb
	QDfDNGMlFPgfTCX6pWbrWYE1gH22ZH8BdDSfeEwWdL+12ZlfF9tYHmXh/m+dX63ItxiRG00sn4KyK
	jN07SCGVNDIAkkr2k+B9rITqsMxcbbEFm5cT2N2msX9lxqHgfD50k58bne0/6LsmErlQfxRWWSwg4
	mgamjLXJl4hI3f7gYaLL1LNhlsqjP5OgW78+qiNCuQSVZeH8CA1yAr1Em8yZn6xCqiOiH6I7T3s6/
	lBtv86bbO/hdJuW5necA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzi-00DdeZ-KA; Thu, 22 Sep 2022 06:47:34 +0000
Received: from mx-out2.startmail.com ([145.131.90.155])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzW-00DdYO-LD
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 06:47:24 +0000
From: "Marty E. Plummer" <hanetzer@startmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=startmail.com;
	s=2020-07; t=1663829240;
	bh=Gd4fUFbqOPJQYPhi/krBRKfW5bLHVT3VPCz+J6h3x18=;
	h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:From:Subject:To:Date:Sender:
	 Content-Type:Content-Transfer-Encoding:Content-Disposition:
	 Mime-Version:Reply-To:In-Reply-To:References:Message-Id:Autocrypt;
	b=NszexbedufRQQXx9Pj9kkFBFcNjn9vE19yGzWGc9Gp/cuBHMvzBVUIPH9xslZwr4m
	 GZl51Fv+tpjuIoEU3197yYEQ2d9OJWu4yfKmCzZleB5bgn8GWNMTevX3HRZ1jqmA++
	 6s8YhwEIXb//zIQlbcB31GWQUPJNfyuXjNXZFbmGLFv3o2hT3Aox1IhOJJ1KU+M+sg
	 FurtxL66FQpG3K8qx1/HGcJJea6Y2Gt4zWTfWAADJ0ONTHE19RMl0UndHAmRvuR4co
	 X3blQHmXeVBP2brNm8BexObeJ44+Y2tnC4RSxDs/CtBSAFqblXwWx0ix9fI5yKE7GC
	 ajUPFJt1Ty8RA==
To: U-Boot Mailing List <u-boot@lists.denx.de>
Cc: Simon Glass <sjg@chromium.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
	"Marty E. Plummer" <hanetzer@startmail.com>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	linux-rockchip@lists.infradead.org
Subject: [RFC PATCH 3/4] rockchip: rk3399: fix typo in grf file
Date: Thu, 22 Sep 2022 01:47:02 -0500
Message-Id: <20220922064704.1740759-4-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-1-hanetzer@startmail.com>
References: <20220922064704.1740759-1-hanetzer@startmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_234722_865025_E336FCFA 
X-CRM114-Status: UNSURE (   8.40  )
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

Not even used as far as I can see, but still.

Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
---

 arch/arm/include/asm/arch-rockchip/grf_rk3399.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/arch-rockchip/grf_rk3399.h b/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
index dd89cd2050..658cc0dfc4 100644
--- a/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
@@ -466,7 +466,7 @@ enum {
 	/*  GRF_GPIO4C_IOMUX */
 	GRF_GPIO4C0_SEL_SHIFT   = 0,
 	GRF_GPIO4C0_SEL_MASK    = 3 << GRF_GPIO4C0_SEL_SHIFT,
-	GRF_UART2DGBB_SIN       = 2,
+	GRF_UART2DBGB_SIN       = 2,
 	GRF_HDMII2C_SCL         = 3,
 	GRF_GPIO4C1_SEL_SHIFT   = 2,
 	GRF_GPIO4C1_SEL_MASK    = 3 << GRF_GPIO4C1_SEL_SHIFT,
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
