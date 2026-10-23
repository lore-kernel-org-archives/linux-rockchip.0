Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75244606A327
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 07:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bgtuC6Fw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=WeDL8XEG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=iRzrUnUEhPjjcvLzsG9ZG09ZyPO2SJ9xEHpBs6snDL0=; b=bgtuC6FwfcGYYAH7T5N2CGoAgB
	i3k5/Z2pXrkns0RZOlPjkwKnqMwtQkLMk1ODLSLahifW8MwTJGq60c+z7zRGyMmd7gxLgikHobKd4
	gUZEICRGieKf946sHrvHQyQZWcg2ZWAJQnarO4OkhtEjyyydkDnKjk0zLHf7wIiTHclMyhA/Grgwy
	bX94CBb3C7PfSwrZ9W2EGbHqUsvBqyrxcUfjCaIQ/OCEM0/p5xpGvd/oxfSAzjiuT47onVwrt5aDA
	4nMCDkWmf8XFj+QimtAVbUkrZZq8ImMTUYxsjc5+ylGVvNcpnOwqKUakoWfH86NXyO/w4S6oeCknL
	C3lvE+KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5Q-0000000FoJj-3PXL;
	Fri, 23 Oct 2026 07:53:12 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKA5L-0000000FoF4-2Du9
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 07:53:09 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-3535a54c09bso537151eec.0
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Oct 2026 00:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792741986; x=1793346786; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bqYeLPaggZUFXZv738RSupX9Fo/Orf1YlGcPsK+V+Xo=;
        b=WeDL8XEGB9251D7dNAXu997T+xagi+Ht9KCXztA/FHQtp3XnhcxrVkObfFpy1W5Y9U
         Bq9mnJ0d+g/YO0Q4jiEuGMjXLEB4u/kJuuoV9bL1jyCiCuDJd9XU2vfp1Ai6GLfYQDJa
         Caqp1tkuLGs/GFB0zNgmGefZfCM1kTqC4hdrbjkT6JerKdhMx3mH+9o77t6Xgi8HSWIE
         Pw+vrE17m+zr1G598xUfTNGPuaxzZqpudz8jFnyCEtjuDauIH985OrdBWPr0125N+c6U
         HiOucA2LaA10rFq7qkQlXUBO5gc8G4SmU4Hg7DXqTHhx0tczxXtQd8F/ssZ4L+9abksh
         CW3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792741986; x=1793346786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bqYeLPaggZUFXZv738RSupX9Fo/Orf1YlGcPsK+V+Xo=;
        b=KjFhiRLjHDHTe12pIno9lthh4WNQRw41rBAYwIW4B3WCM94uLebOlHJ8EKWwtYOwas
         iD7TObA3sgl7P4n9cW1iC0ZYLd2TXRYp8FTdqB8hKQUpVK5sMAUDsSi3jBbJXRv++j7W
         QL4pI8ukERCKLgM3ncbJPCzcZZ3VaF1Txd0PBzQp9OljuCu0p6wTXdppmZS7euZRk4gl
         KHr6/XwXO+Pt8P0fhcWMbKgVF/dHmV45QjnJ9PO6JsUSSyFDLfzRyU2Pey759UXUeU6z
         EbPTtzd03a90zsYRQB7pDqnmKloRbHRWXA/KcpuKywz11BB031oquaAl6zaYuCblQ3BN
         ZszA==
X-Forwarded-Encrypted: i=1; AKwUvByvzHnU/CYGezQ24gqn9xiEQf972csPvT+5CemfFRES0NjcrfLmcxt1NGsqck1aVUVobHGeV0ThIWHejc+b2Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYLEI2KOFKGECgB6KfpogWGcDpXjXNRE+DPOM4XrK//mhMpbgL0Z
	6NY4OGugzfMWioIUCrcHgTavenWtuLtpKHiUc6WYdRKqdHMykAsQNgvr
X-Gm-Gg: AYBFou01bLtk5xzRDJxWYhEU9EiL7LRmYy6PthXFUfTcB0fCF2uigKHn65W0BoprxJK
	myc2EBPTa1vvZN8HXUlVHkgvzhGFfmUxiCey+fJcC+dMGjDy7T2Ulsw2FmBZngPlG3fik6TCW4q
	wVGAQK1XygjS4A5rGbWVQ1WleKqRnbcneJQWKmHjHozlqbvrufATzGVptJDpoKUYmlrNh8jhIkB
	ySlJKx6hikdc3BVWUh/2ctmwVU2/AdlP4Flfn1cv3AiuC6/CTOviB+H5KwYL/Pmz7K+lndhQBcr
	A0UHpyf/iciDCn09Uybs6O5caPB8SO8GRYvN54MS/Jba2NoX5HHFaWRZj0UC012+hn9xEPpJUG0
	3BvQRYCxzolus47gtZrLvX3svEzqikmoutHjEtwGMqzTSTn+l6yXhho4IJUnfXIVw9zFE1T8/t9
	9zasjwvbvmduABGIugX4usy6qY3ZDukhzdTOC+bQVc5mMuPsYejdjw0NU67Yu9XvvU3xgu0fZRG
	Jo87lfthVCNfMnemVqBGwLlTt7hXw93euaeS0lB6hyF18VIWb55UsN/YFHpuC/2wb/VjnKcWBM=
X-Received: by 2002:a05:701b:4512:20b0:151:2e62:fe6d with SMTP id a92af1059eb24-195c5ad2b3cmr2019767c88.22.1792741986205;
        Fri, 23 Oct 2026 00:53:06 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-195eae0e830sm4122132c88.10.2026.10.23.00.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 00:53:05 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>
Cc: Eric Dumazet <edumazet@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Coia Prant <coiaprant@gmail.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net v2 2/4] net: pcs: xpcs-plat: fix clock lifecycle for !CONFIG_PM builds
Date: Fri, 23 Oct 2026 15:52:13 +0800
Message-ID: <20261023075214.1793922-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261023075214.1793922-2-coiaprant@gmail.com>
References: <20261023075214.1793922-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_005307_594967_D1ABFDE3 
X-CRM114-Status: GOOD (  19.25  )
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

With CONFIG_PM disabled, pm_runtime_enable() and the runtime resume path
are compiled out, so the CSR clock is never prepared/enabled. On
platforms that provide a real "csr" clock this makes register access
fail.

Handle this by preparing/enabling the CSR clock manually in the !PM case
and disabling it in the devm cleanup action. The CONFIG_PM path is left
unchanged and still relies on runtime PM to gate the clock.

Use RUNTIME_PM_OPS() and pm_ptr() for the PM ops as well, so that in
!CONFIG_PM builds the runtime callbacks are still referenced and .pm is
NULL rather than pointing at an empty ops structure. This also drops the
__maybe_unused annotations from the callbacks, which were only needed
because SET_RUNTIME_PM_OPS() expands to nothing when CONFIG_PM is
disabled. Both changes are no-ops when CONFIG_PM is enabled.

The CSR clock is optional (devm_clk_get_optional()), so platforms
without a clock keep working in both cases, and clk_prepare_enable()
on a NULL clock is a no-op. Because the !PM case is handled in the
driver, there is no need to select or depend on PM in Kconfig for all
platforms; keep the current Kconfig as-is to preserve compile coverage.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/net/pcs/pcs-xpcs-plat.c | 46 ++++++++++++++++++++++++++++-----
 1 file changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/net/pcs/pcs-xpcs-plat.c b/drivers/net/pcs/pcs-xpcs-plat.c
index 11c4239bfd74..c4404500bac6 100644
--- a/drivers/net/pcs/pcs-xpcs-plat.c
+++ b/drivers/net/pcs/pcs-xpcs-plat.c
@@ -275,6 +275,7 @@ static int xpcs_plat_init_res(struct dw_xpcs_plat *pxpcs)
 	return 0;
 }
 
+#ifdef CONFIG_PM
 static void xpcs_plat_exit_clk(void *data)
 {
 	struct dw_xpcs_plat *pxpcs = data;
@@ -304,6 +305,39 @@ static int xpcs_plat_init_clk(struct dw_xpcs_plat *pxpcs)
 
 	return 0;
 }
+#else
+static void xpcs_plat_exit_clk(void *data)
+{
+	struct dw_xpcs_plat *pxpcs = data;
+
+	clk_disable_unprepare(pxpcs->cclk);
+}
+
+static int xpcs_plat_init_clk(struct dw_xpcs_plat *pxpcs)
+{
+	struct device *dev = &pxpcs->pdev->dev;
+	int ret;
+
+	pxpcs->cclk = devm_clk_get_optional(dev, "csr");
+	if (IS_ERR(pxpcs->cclk))
+		return dev_err_probe(dev, PTR_ERR(pxpcs->cclk),
+				     "Failed to get CSR clock\n");
+
+	ret = clk_prepare_enable(pxpcs->cclk);
+	if (ret) {
+		dev_err(dev, "Failed to enable CSR clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = devm_add_action_or_reset(dev, xpcs_plat_exit_clk, pxpcs);
+	if (ret) {
+		dev_err(dev, "Failed to register devm for xpcs_plat_exit_clk: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+#endif
 
 static int xpcs_plat_init_bus(struct dw_xpcs_plat *pxpcs)
 {
@@ -408,7 +442,7 @@ static int xpcs_plat_probe(struct platform_device *pdev)
 	return 0;
 }
 
-static int __maybe_unused xpcs_plat_pm_runtime_suspend(struct device *dev)
+static int xpcs_plat_pm_runtime_suspend(struct device *dev)
 {
 	struct dw_xpcs_plat *pxpcs = dev_get_drvdata(dev);
 
@@ -417,7 +451,7 @@ static int __maybe_unused xpcs_plat_pm_runtime_suspend(struct device *dev)
 	return 0;
 }
 
-static int __maybe_unused xpcs_plat_pm_runtime_resume(struct device *dev)
+static int xpcs_plat_pm_runtime_resume(struct device *dev)
 {
 	struct dw_xpcs_plat *pxpcs = dev_get_drvdata(dev);
 
@@ -425,9 +459,9 @@ static int __maybe_unused xpcs_plat_pm_runtime_resume(struct device *dev)
 }
 
 static const struct dev_pm_ops xpcs_plat_pm_ops = {
-	SET_RUNTIME_PM_OPS(xpcs_plat_pm_runtime_suspend,
-			   xpcs_plat_pm_runtime_resume,
-			   NULL)
+	RUNTIME_PM_OPS(xpcs_plat_pm_runtime_suspend,
+		       xpcs_plat_pm_runtime_resume,
+		       NULL)
 };
 
 DW_XPCS_INFO_DECLARE(xpcs_generic, DW_XPCS_ID_NATIVE, DW_XPCS_PMA_ID_NATIVE);
@@ -456,7 +490,7 @@ static struct platform_driver xpcs_plat_driver = {
 	.probe = xpcs_plat_probe,
 	.driver = {
 		.name = "dwxpcs",
-		.pm = &xpcs_plat_pm_ops,
+		.pm = pm_ptr(&xpcs_plat_pm_ops),
 		.of_match_table = xpcs_of_ids,
 	},
 };
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
