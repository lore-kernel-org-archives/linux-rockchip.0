Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35354606A33B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 12:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4ZSk6+pH;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rZpgPd7h
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=K0jkxJKexsoSIbndA81t3yocWXvWwppevHjtixuh7eE=; b=4ZSk6+pHR6DKznU3FMFjpCOtJz
	1I/CA6AG5gh4zLR45/SbkeeQhm4ZdGKMlBhMmSr5uQQ/yvAZCMr/1GAF3c2A1/+Bbl+x4Pz3QgGqe
	/LkHhjvtK64FkNxO6frreamXHEpQLP63a/vAY6unxnfE1BL5VUNAHD00dgNJ63RxvUGvNItOso6KY
	NnUnDhAczUlsGTcT24SGLlVu5IG9wenUwZDL0W/5nO3515O555a+SyPD11KiziwAw7Dt/UZg9ly6E
	iJcFUa8KWq3V09GJjas2HqrzfmIPBUQs4sbkGIzmO/5FcPNZPyvQIO4Sk4Ph4JzI9gnQQaWjzslLV
	p1csYXrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVTCU-00000003Mln-1pkO;
	Mon, 23 Nov 2026 12:31:14 +0000
Received: from mail-dy2-x09.google.com ([2607:f8b0:4864:36::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVTCR-00000003Ml5-2xYw
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 12:31:12 +0000
Received: by mail-dy2-x09.google.com with SMTP id 5a478bee46e88-35adc681e1aso510090eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 04:31:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795437071; x=1796041871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=rZpgPd7hMJPmDHThMtB7tQDE3ajOezxNjkGlu9lyNe79MFaExoAipxADGurz4L5b0n
         rHr0AOEmLQ1m/tDqYvLJJGeEtuw8/2UslFuvAWZuuaCVwoy1Wd9fFpGxNuRd883vjDS+
         ZS3thifPwPt6ev3nENKaEyFXMb+bVv7GUG9TQM4pupJUCD5qSmXPZ2X+5uItIAaHYJQj
         QqBWsOV2pG0dniO0BclrajBdlEIuHgoruBhxatDCedaKVkzH6/iuwsx6tSYFCFliOney
         Tln8I6ymkpp3CLpn5dU7ImN9/awtOnsMQu5ebAcP8u1F1K+ck0VpV3Cbw8nosABTZBQx
         cp7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795437071; x=1796041871;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fjlxH4l0PpU/A+nrxn7qK+PVufEbeMAD3+j2srfN4gw=;
        b=icOQ2ReAY/uBZhcuec177cI+n9W5jl/aarEjwNDWFFvIVxS9wGs5iJLjDcdMCb2yKr
         D3HklotGlWv4nWUF/swq+HYNtFenqoc5qHE1+LMXmue8JdXGiGXmO6QW+u6R6Og+di5c
         qbVT2hIUD5meMxkimmKk4coyvi5uDprIy5R4PjPhwqthpPW4WlmAwmpva4P1nOYjhInt
         iXzDZK/tAAoQfVuzgIFb6/0QmO0kT4mk3DUlZXki0pBsIJ0TUDLSohSiQyqncwAKj3cB
         sI+GWUQinT3MF//gdPROqPgwBV5Gw5FonBzpbLMIaVPtrIbMAo8eIK8skJOt9ff7sE/W
         nPnw==
X-Forwarded-Encrypted: i=1; AL+hErEMTdK/vnS6arZWnLSkP/exAv6enIv53GCBjyIV4tHq4+0ERqtR5ONijYuspWDVKc+ZTGnGoj4XCEDh1u5dDg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/1O75UFg8wQ90SVtmkbNQFXGEgA0caZCb7HTkmgJaAlF9BJu/U
	LWb0imdFiJF1SY4M7p8RtRhem614+p74/yQahEgl9X6RlVnvLJqqmhBK
X-Gm-Gg: AZFdTZcoQ4yK4Ru83HAncjusYF3ggUcnDTxHCr5DCJ2h0cJAraHsV4J7cuy3FQZwyk0
	kVOHC/7WEQ8pTo4+u7NlLLroHAECuzj5u5WPv+HUSdlSJQUfZ6+cGDZWsfl0efdQ2x4EfYf4o0O
	6nEd8lbOUaQpjmYznoHhnZTXTYOemK0534ZltyAXq39qwopvekMlQyXGIZQpfosFS0ImqKNU/dX
	AQ3PynUoKsdHIyxyfG2USZf64MbZz2oVcH0i/57D8c/35EeA2I0E0se/Kx+S43ts4HOY/vo9XaD
	g2u+8abn9fLHtwhQ2W6CFOljdY8yKuex82Wz2yFDFIQOh/ZTD4NKT6s4N6uUZYiUiT6HaQKLfhZ
	kk202V8/MAWMBT/IbGJBoMa4HGnBXG9Ry0Brs3w95PFRGqED1OQRNa4sb1fWjqPSCzys4JDKVx8
	HuM+HykPWoeWNJEgGAGnRTEMqZStupFeXRUjhHwSutfOAuoDQ8j1kkYaoqg7V620Vuznqz+Xpcz
	7zwqb6jDw+IzGSurb26BXfH82MGJF0yN1adNmjKQBrlFTAm/NUimQeWgL7OftfDDLCrjf37WC43
	jlwjCJTZQ3Y4kPfJRSAlo5fP7h7wxOs70HLpFhbmk8keMU9k1lgd9kd7KYw=
X-Received: by 2002:a05:7300:b597:b0:386:9e36:df0a with SMTP id 5a478bee46e88-3869e36e011mr11381586eec.13.1795437070741;
        Mon, 23 Nov 2026 04:31:10 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-386b9bdafb5sm2590969eec.9.2026.11.23.04.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2026 04:31:10 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: netdev@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-rockchip@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next] net: pcs: xpcs-rk: use cleanup.h for platform_device reference
Date: Mon, 23 Nov 2026 20:30:53 +0800
Message-ID: <20261123123052.578956-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_043111_739974_8581FCC3 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Use the __free(platform_device_put) cleanup action to manage the
platform_device reference obtained from of_find_device_by_node().

This removes the need for explicit put_device() calls on every failure
path and at the end of the successful path, simplifying the function
and reducing the chance of reference leaks or double puts.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs-rk.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs-rk.c b/drivers/net/pcs/pcs-xpcs-rk.c
index e0057545329a..8539caff6725 100644
--- a/drivers/net/pcs/pcs-xpcs-rk.c
+++ b/drivers/net/pcs/pcs-xpcs-rk.c
@@ -481,7 +481,6 @@ MODULE_DEVICE_TABLE(of, xpcs_rk_of_ids);
 struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int port)
 {
 	DECLARE_PHY_INTERFACE_MASK(supported_interfaces) = { 0, };
-	struct platform_device *pdev;
 	struct dw_xpcs_rk *pxpcs;
 	struct dw_xpcs *xpcs;
 
@@ -494,7 +493,7 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 	if (!xpcs_rk_mdio_addr_validate(port))
 		return ERR_PTR(-EINVAL);
 
-	pdev = of_find_device_by_node(pcs);
+	struct platform_device *pdev __free(platform_device_put) = of_find_device_by_node(pcs);
 	if (!pdev)
 		return ERR_PTR(-EPROBE_DEFER);
 
@@ -515,27 +514,19 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 	 * destroyed (DL_FLAG_AUTOREMOVE_CONSUMER), so no explicit
 	 * device_link_remove() is needed on the failure paths.
 	 */
-	if (!device_link_add(dev, &pdev->dev, DL_FLAG_AUTOREMOVE_CONSUMER)) {
-		put_device(&pdev->dev);
+	if (!device_link_add(dev, &pdev->dev, DL_FLAG_AUTOREMOVE_CONSUMER))
 		return ERR_PTR(-EPROBE_DEFER);
-	}
 
-	if (READ_ONCE(pdev->dev.links.status) != DL_DEV_DRIVER_BOUND) {
-		put_device(&pdev->dev);
+	if (READ_ONCE(pdev->dev.links.status) != DL_DEV_DRIVER_BOUND)
 		return ERR_PTR(-EPROBE_DEFER);
-	}
 
 	pxpcs = platform_get_drvdata(pdev);
-	if (!pxpcs || !pxpcs->bus) {
-		put_device(&pdev->dev);
+	if (!pxpcs || !pxpcs->bus)
 		return ERR_PTR(-EPROBE_DEFER);
-	}
 
 	xpcs = xpcs_create_mdiodev(pxpcs->bus, port);
-	if (IS_ERR(xpcs)) {
-		put_device(&pdev->dev);
+	if (IS_ERR(xpcs))
 		return xpcs;
-	}
 
 	/*
 	 * The RK3568 XPCS supports 1000BASE-X, SGMII and QSGMII.
@@ -547,7 +538,6 @@ struct dw_xpcs *xpcs_rk_create(struct device *dev, struct device_node *pcs, int
 			  supported_interfaces);
 
 	xpcs_config_eee_mult_fact(xpcs, pxpcs->eee_mult_fact);
-	put_device(&pdev->dev);
 	return xpcs;
 }
 EXPORT_SYMBOL_GPL(xpcs_rk_create);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
