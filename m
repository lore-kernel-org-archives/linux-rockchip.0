Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5042EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 14:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRXero9nsjYSe6+ySIn+qJfDBBpRRGi2njHp9h6Xy/4=; b=5GfKVkQ5XTgIUu
	dauEeexSktose1CYE9Sety4hg3SqS8Gq3HR8XLefF68ZAkifF1rudYEGd9qr+3w+YsM030/L+sd1K
	vhtKyrdeIfduwucbH4A6LVdFIKc+jAej84i+eFYTdwBIgnWWkpHVTP7cE5PAXx6bTjIVPO4YwwNbF
	n0xOvSMPxss/z5iVVt6Yp+Sy2cm42/WJFXlSfL3ISyLbWmQUnnKbqddO4+p6pggsS3k8oMC02XX/v
	awrFDHUpyIxdHBsTfFyK0P+3E0zEPht4wGNX0pVjoT9A0LPOBr+dMFrGwB8EvPGAAl4DzBamxw3TT
	iTBqqTD3juVEj7pd6Yyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHm59-004oXY-0I;
	Fri, 07 Jul 2023 14:05:11 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHm4v-004oL3-2F
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Jul 2023 14:04:59 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b701e1ca63so29309631fa.1
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Jul 2023 07:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688738694; x=1691330694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dvYXj99u7TbpJIDZNfoYyEKQkjm1mobuKtYLdIv6z2U=;
        b=p/oH5D8hyIf5Dkec8klXho99OyxP80D/QtgL4Gm0vWlJ1aeL+tiNklnjF0R12Qpam6
         TaTTV4uQ/sj91Kzjq8BXg21nsyc6hKiIqGm6o3P5frn4qyATm+KWjfsJMJR0DrVnqmAP
         NVQIJrpUbuvXpoIDVMSAfjkwkSFKRKSYfrCOK23vNq69Psdl9sVmPkheppRFu+dl5ppT
         whl3eeKzEnDRDtzxp4Zqc09WgAJEJBCdDROwDRQfAsVFReiEY0dW6FiGQeZW7X2VWHUr
         +iOL5adYEiav1yk9MrfCcYU0cSUcsFsukv+ucSgLTKnfVjo7wrAZgMTj+hwJNAAO1pmy
         E4wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688738694; x=1691330694;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dvYXj99u7TbpJIDZNfoYyEKQkjm1mobuKtYLdIv6z2U=;
        b=au7soa4NuZo2JHAcTjjl7XZgSrl5ih5tJgWwzJLQyTGD/uH8t5Hhim/HwbiGPfDrrb
         RQa3/B27ZBIo//Da0bSNWFLAby/vM4ShRe1CZe89rts8ISnDXZ2b0hLLlfSN1ZqcMGv8
         2vLolLrzlRenM+0tFplziwdKvZxhJH/kWw0SowHRKdh4HTzAACc5rhPDj0V+DsLlEKto
         Tv7wfbgbhc296zSspHKK8IFRgAj3rREk86N5CUSs4CbDp6B0rZ08fnD0tYFCX4e/KI6J
         yZcctk5qHAV700xZzlszzEsMwAUKQHms1PYsMjR7OkClEfYp7LicB3xOY1WMJvf+x1yc
         CqXA==
X-Gm-Message-State: ABy/qLbJ3E6cVK3EBaqDsZDnfWIasM04sGfB3irm863uYaROyLnKSVbY
	zpNuEdOB0KcxydSC1W+Is7aDkA==
X-Google-Smtp-Source: APBJJlFZUteWbKYl1aexP46DguwGv5crahAqnytrmTR0O5/HuzUepW8m9GQt2AqtWhVNZYlKuIDy2A==
X-Received: by 2002:a2e:9e58:0:b0:2b6:e12f:267 with SMTP id g24-20020a2e9e58000000b002b6e12f0267mr3598442ljk.5.1688738694744;
        Fri, 07 Jul 2023 07:04:54 -0700 (PDT)
Received: from uffe-tuxpro14.. (h-94-254-63-18.NA.cust.bahnhof.se. [94.254.63.18])
        by smtp.gmail.com with ESMTPSA id u21-20020a2e8555000000b002b6cb25e3f1sm760341ljj.108.2023.07.07.07.04.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 07:04:54 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 10/18] soc: rockchip: Mover power-domain driver to the genpd dir
Date: Fri,  7 Jul 2023 16:04:26 +0200
Message-Id: <20230707140434.723349-11-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230707140434.723349-1-ulf.hansson@linaro.org>
References: <20230707140434.723349-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_070457_736263_90CA27D9 
X-CRM114-Status: GOOD (  12.94  )
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

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: <linux-rockchip@lists.infradead.org>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/genpd/Makefile                                          | 1 +
 drivers/genpd/rockchip/Makefile                                 | 2 ++
 .../{soc/rockchip/pm_domains.c => genpd/rockchip/pm-domains.c}  | 0
 drivers/soc/rockchip/Makefile                                   | 1 -
 4 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 drivers/genpd/rockchip/Makefile
 rename drivers/{soc/rockchip/pm_domains.c => genpd/rockchip/pm-domains.c} (100%)

diff --git a/drivers/genpd/Makefile b/drivers/genpd/Makefile
index 286598ce7620..c178421e0cbc 100644
--- a/drivers/genpd/Makefile
+++ b/drivers/genpd/Makefile
@@ -6,3 +6,4 @@ obj-y					+= bcm/
 obj-y					+= mediatek/
 obj-y					+= qcom/
 obj-y					+= renesas/
+obj-y					+= rockchip/
diff --git a/drivers/genpd/rockchip/Makefile b/drivers/genpd/rockchip/Makefile
new file mode 100644
index 000000000000..8fb9d88a3492
--- /dev/null
+++ b/drivers/genpd/rockchip/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_ROCKCHIP_PM_DOMAINS)	+= pm-domains.o
diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/genpd/rockchip/pm-domains.c
similarity index 100%
rename from drivers/soc/rockchip/pm_domains.c
rename to drivers/genpd/rockchip/pm-domains.c
diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
index 05f31a4e743c..23d414433c8c 100644
--- a/drivers/soc/rockchip/Makefile
+++ b/drivers/soc/rockchip/Makefile
@@ -4,5 +4,4 @@
 #
 obj-$(CONFIG_ROCKCHIP_GRF) += grf.o
 obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
-obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) += pm_domains.o
 obj-$(CONFIG_ROCKCHIP_DTPM) += dtpm.o
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
