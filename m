Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F9BAC5321E
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E1ZdFDoZYjiNAeOHsnOFSbPRNjTayoavY80McpcoQ28=; b=RG6+Ew4ZM04K8d
	UBrxYZB55RW9T4i86ps2ODvMMMxW7NIMpb67CjoULRJgEnGG41HZvAoEAgp7jqAPrNLRNEn+eOlrg
	sIDaN38CHaB06XEl0WcI3c+1UHAg0Vhdvf2PieoSKHy7RZepE8QJg8LCUAcvvcwkbnGIz9UsE7pcV
	q7M35VAq1oIhZR3vKKmwg+kMsWLVG8EcIhQmaLogqtY4wi0dWEcJjOb2A8gvl/0AKrBu61uRYy6fS
	Frvcuj0lJL7Jzaq2IavQcpm+XXKtj777/FhcUBGL9BCD011bmXlhbC/cliCxiu+kRscZOsnIMqaLi
	ILfBGyq00vKrmu2I95yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTm7-0000000GlLg-08Er;
	Fri, 23 Aug 2024 12:52:19 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlJ-0000000Gl7b-2NkX
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:31 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a868dc3ffbeso8772966b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417488; x=1725022288; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v6VRAUboa3WzQTgQJ0jIxMCacKDHDbO46atHYsrK+XI=;
        b=dqEuRtlDmOXcUPFFgDV7AmcPv5hsDg82NEaipv1MbYorYbWDGwWMDC0R0S/S3J1D9a
         m9tZlIi505rgpr9t7eDPLrylPcHWr22eL/Koli4n/rqElilkC4yi1JiSoTO4sbIhm0vf
         CLx03xR5+yNjTOiInKItMsqlRhT3h+kWw1pYTtqq65m9gGOkLYSuYgMCDYyyrEsiAYEQ
         NsBWx/WkEwk/ibu4lHPVOtEInU3IfRHzRjapsi/zg+KUrtM4CTs28VljzBS59wCrYKeN
         84BiNqBKnbseaa0GR0+UXWxzKmwDtTCrckoyXZLlM/YnpByKZ0AorCSDcaHLbXkhSJwd
         cNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417488; x=1725022288;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v6VRAUboa3WzQTgQJ0jIxMCacKDHDbO46atHYsrK+XI=;
        b=dKgmyT2I4/DFJ2D/T0ux7RV1Uu8sjWbOeRUtUfhfDmdfABJi/lUlkS/tgGQxIWgmu0
         bRwD+BeRC5sBg05X8C+l/JJHbXKmHPpUxXbv9wvMXHrmMfTXtqq8z1bOnUe8S+pVlTux
         m8xM44zhlps8GoMw/w92CMwOhuQ/iOJE7VdgdqSZGt8KSKVgXBCrhfScqg7FXUFhVRE2
         oRr0bAJOujVzgZ8lXVnYsgf7akncbjmwwXU/3prDgaUzMRpsLrpdJ2UqKVHxE4yThZuT
         NOylQPq34Dr2leiXoeDHs3t+KICJztdu/xK8fNUqbdadohJfv84I9kGe3nM5vpMWYVzo
         B7gA==
X-Forwarded-Encrypted: i=1; AJvYcCWz5o6fEbY6IhqRG49HQKrUhsfRXzFgveQEjOmyUQ9p8kKhha3PNlMNLCTL4sSNgkwTy2qcDYnpbDieHaCYew==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxIE6AJ3Qyy+ciHxx3QhHAPnXrP1u7QLFf5Acw/Ul6QVqj95AY
	78PiGB2yBA+kISDzUHFwsQFIyxZLpgqgwl5Rn+aa6PgIeY+C66AJHyoYGkEXd3I=
X-Google-Smtp-Source: AGHT+IFIw4ZV5rZ6uPAb4nJL/OhmF0EN2Y+olYkcjQZWRyRIZCTqIZuXXX1ufsuaXoLSxxzdDu3Uwg==
X-Received: by 2002:a17:907:9724:b0:a7a:9f0f:ab1b with SMTP id a640c23a62f3a-a86a54bb7e9mr71228766b.7.1724417487610;
        Fri, 23 Aug 2024 05:51:27 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/10] pmdomain: Simplify with cleanup.h
Date: Fri, 23 Aug 2024 14:51:04 +0200
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALiFyGYC/x3MTQqAIBBA4avErBsof6C6SrSwHGugTJQiCO+et
 PwW772QKDIlGKoXIt2c+PQFbV3Bshm/ErItBtEI1XRC4rKT8VfADdfLRIvhQHsehj1KTbPqWye
 166H0IZLj53+PU84f0fUIrmsAAAA=
To: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1576;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=doKufXAKMRNCsn5SPLoA4KKhEyeldEXGGKtTRg28kUg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXBrIW/SnJDYANEVfUZJeHlBLPHoJYAFcIls
 LKf1yo7+J2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFwQAKCRDBN2bmhouD
 10UID/9Be979xbWnI1yNlRdhU3gmdGm2uSL6tdqrVpXd81h6X7rzBxahTfI/Hzqbt97F/oueKjk
 j2CZtKc4mia7EB0naYB6Y2kYe/UYMX7hzF5nBqcZm3y8GaKUiS5Hnkf6osuRobTRmTavNDPc55M
 tYm6P+KvXABS/esDPWw5kNpcjN2MuvAY7oZXwM8/pJ4VFAzVuH8agIayXftS3DQHLjfiLkSKlVo
 HJs0moMNU2y8bXR1TQyyLdYvVFSBD4Nf9qtEzxkZmsJkqwRx5z2JZd6dS+Pm8JzFVG51YgNHvfK
 dRT7vceacHyYZm3q/1e+eHlU0u78Ap9USdAlPpoqIlXOq1qkZ0v4vGyfYM2TIMp2i9Mc8qfUAyN
 sjrpEmfY3Torcb4TTe0BI4EZAGKS9MOAKUNjZpyM9bZpM/hJAwFMaa7aTzHjt/qgQn4Rt9mtWTF
 U7YDazP9uDvq7Xy7sbYqPtLVBXnth2hn0+XPGjcgaq3UU8gPz2rfpxEQX0t9UiKyrtsHAbdtH/y
 n5ggehcfh76LOc2Qr/lQErudzXIqhDm4SibFNAsH24bNzONwGdSJHQ0xx6WxWr7MpHEqG0XxOUd
 AgbTG2xDIIdB7MXeKSlddcEt6AG/9fcfCaJ9ejr7c4rYlUL+9RdquPPiuJUcqy+/SEGpr7bbC93
 DHJTA1zS+8Bow6g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055129_643441_DACCF505 
X-CRM114-Status: UNSURE (   7.13  )
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

Simplify the code with scoped loops, guards and __free().

Best regards,
Krzysztof

---
Krzysztof Kozlowski (10):
      pmdomain: rockchip: Simplify with scoped for each OF child loop
      pmdomain: rockchip: Simplify locking with guard()
      pmdomain: imx: gpc: Simplify with scoped for each OF child loop
      pmdomain: imx: gpcv2: Simplify with scoped for each OF child loop
      pmdomain: qcom: cpr: Simplify with dev_err_probe()
      pmdomain: qcom: cpr: Simplify locking with guard()
      pmdomain: qcom: rpmhpd: Simplify locking with guard()
      pmdomain: qcom: rpmpd: Simplify locking with guard()
      pmdomain: renesas: rcar-gen4-sysc: Use scoped device node handling to simplify error paths
      pmdomain: renesas: rcar-sysc: Use scoped device node handling to simplify error paths

 drivers/pmdomain/imx/gpc.c                | 14 +++-----
 drivers/pmdomain/imx/gpcv2.c              |  8 ++---
 drivers/pmdomain/qcom/cpr.c               | 58 ++++++++++++-------------------
 drivers/pmdomain/qcom/rpmhpd.c            | 11 +++---
 drivers/pmdomain/qcom/rpmpd.c             | 20 ++++-------
 drivers/pmdomain/renesas/rcar-gen4-sysc.c | 26 ++++++--------
 drivers/pmdomain/renesas/rcar-sysc.c      | 28 ++++++---------
 drivers/pmdomain/rockchip/pm-domains.c    | 25 ++++---------
 8 files changed, 68 insertions(+), 122 deletions(-)
---
base-commit: e188fd67a69319f3d105d9b90e424b8d1ff9580c
change-id: 20240823-cleanup-h-guard-pm-domain-35eb491f35f9

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
