Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD654C6FA86
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GR2Mqob1pbbmyqyAEvQTaHicS3PW1q6UTOI88ydJ/CM=; b=3RgyWnPBcQukem
	8HDfuKqHG8/kA2WxFr1q3fCs5xuHKWwZZQNmYC79H532rKyQ7h6jp2POdn1oiX3nRH3ZrL3Rpnozr
	IZP3MrsbHiaETKz4rOH4dtu//pffAcQGUnY4S/T2eF7tICYAVXmFKbypwU5A+0WyVzOBtCSHFmr/V
	ROZdya75Doih8MPYLQFzaBZIIBPfxt9ao5vEUSd2oyW+/zAnfQ6t01B6GV5RJe/HxI6wUmLmCdd3G
	HoP+Mp8unHA3FdU8IKG3gZBQ3oMA/LoOuQpgk15wvJqFSKiKArMfBywyd0+FapHw91GWFqJ3nzTwD
	+AzgizStPcAw6Zk5yBhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6Vn-009Mf6-0t; Tue, 27 Sep 2022 09:04:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6Ux-009ML8-U7
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=; b=mPtDhgAPPmeJwBEj1/ZYnphFzm
	BL//NFNKqojRwHfR6gxz1jCddki1dDSbjTIgH6h196oAKLSoMgzE7D3onZB2zghNZKrk8W+Wuubvs
	/hKLNSRw4y9Kg6lguLSFwXQTaCT2/mBG605eP60fGNoVwWChfvZki/cty/FLvmrStifVtSuV9+TBl
	pzNhFJ9cypi29bBPR/RHHU1FhW3koCa3daNZkJDpsHFbEm5cwz6w/hjfVt36YJ0Ioz8eo5UaPn8f/
	HC8PBBkjTJBstoDQBCtbA66VRzFF18SDbJ++yd4C76oum3XF6NYaU5gz9Qbbj1dSy2lv5XUSW4kHN
	a1qQ1W2Q==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rj-00GEkq-0V
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:08 +0000
Received: by mail-wm1-x32f.google.com with SMTP id t4so5974612wmj.5
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=Hi/PfgX466QUwnJFm9k1zLSql6rT5CjE01/66twod+tuTI0yOR+7txzfcYZltmqEZ2
         WoO0mSzSJd1QcUwCvajDOwo4a8WSQNbYEOyBSkj05F+VRuK4K0dO02+IkF237XmXwmAn
         +85jsxrHxNkLEupTOLl/Jc3C4eY4I8wuGPll1rk0VnFMl+Ud1v4y64X4QhbPPZ0qQh1S
         Aaj2P3F7oWm3WCyuuWWx48rT5Aia8r85PLVZcHB+xB84TXvMckzUKZHCzyhWkm53PwR9
         EPOMevwrP9mbDOyu2MYuq/PCpengknDNrhgzZCtHleE/MywmhhlAeErCxGDOsn9r05M3
         ELzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZivRzjlDS3OoPoRTHkJnPDZ3sM1VA8uv4BaZC71qcQ0=;
        b=YmGXyVD07jGEFNfSRIskqgVCRW7W78Rb8g/bqaWYM6350S+MRAcFlEZQ6e5oiaSJIi
         VqVtPbtJJLyddyMwaKwttOzcek+xueDgbUgDfbjuDX5utFapA5uMKNgmwCCMZG8aETrR
         H+lo674EuePyUlCxoQxK9HiRRU887OmAMjTaTbaI7K1DcTUrnsxE9CXhbJiUz2IWnoO/
         PXYUVM1L+owVVV68qHzaIvtfwZNCLZ//oYGaGYJ1WK9GmLLLEN37AgW6h4aZ2zkRGBKh
         vhz6aDs2QGtkHiUjI0Cxd2Qlmv4YQ+r9OfDlJdGi8OzexUielFHHkWVsacxLpsMWpEsY
         HypQ==
X-Gm-Message-State: ACrzQf3p5JsIzHDci6RVpH6b4gguUqEDzNy7sBKtHzDbfVPbKPQhepsp
	lGSP9nJNv4pKkIc/kUcZf5gZVA==
X-Google-Smtp-Source: AMsMyM5TTwj3ckRPTtCPXJIEkijaJ3Io02K7CqsJQYSUJEPJ6vwCKX0TepgfinUTDLaNDeXwwOLTHg==
X-Received: by 2002:a05:600c:4e94:b0:3b4:b416:46c3 with SMTP id f20-20020a05600c4e9400b003b4b41646c3mr1645457wmq.149.1664265362733;
        Tue, 27 Sep 2022 00:56:02 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:02 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v10 26/33] clk: rk3399: use proper crypto0 name
Date: Tue, 27 Sep 2022 07:55:04 +0000
Message-Id: <20220927075511.3147847-27-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085603_771001_7B7E4562 
X-CRM114-Status: GOOD (  10.84  )
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

RK3399 has 2 crypto instance, named crypto0 and crypto1 in the TRM.
Only reset for crypto1 is correctly named, but crypto0 is not.
Since nobody use them , add a 0 to be consistent with the TRM and crypto1 entries.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 include/dt-bindings/clock/rk3399-cru.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindings/clock/rk3399-cru.h
index 44e0a319f077..39169d94a44e 100644
--- a/include/dt-bindings/clock/rk3399-cru.h
+++ b/include/dt-bindings/clock/rk3399-cru.h
@@ -547,8 +547,8 @@
 #define SRST_H_PERILP0			171
 #define SRST_H_PERILP0_NOC		172
 #define SRST_ROM			173
-#define SRST_CRYPTO_S			174
-#define SRST_CRYPTO_M			175
+#define SRST_CRYPTO0_S			174
+#define SRST_CRYPTO0_M			175
 
 /* cru_softrst_con11 */
 #define SRST_P_DCF			176
@@ -556,7 +556,7 @@
 #define SRST_CM0S			178
 #define SRST_CM0S_DBG			179
 #define SRST_CM0S_PO			180
-#define SRST_CRYPTO			181
+#define SRST_CRYPTO0			181
 #define SRST_P_PERILP1_SGRF		182
 #define SRST_P_PERILP1_GRF		183
 #define SRST_CRYPTO1_S			184
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
