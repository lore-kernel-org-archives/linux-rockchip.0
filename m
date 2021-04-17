Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40487C433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:34:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B0BA3611AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:34:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B0BA3611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=886CwpTW6BeGIiYutE0ICed5k4js+NqY1cvodJ2HqKw=; b=kQmkzUhfkSpCsyW/VlDtNf9/ae
	YIN8UzbgrQk1jY0npLVziTm//0xlvkJNMTIlpabmC3ATuTfBMgWQObYhutSHIek/bMV1IYFGkKrfc
	hfpZ7+rQoy0a+mQeTvp3JFZCPCbtCZe+Axf+uxN85KOsbTOxSyFYe6KeuddIWmc04bKuvA0pePabE
	taX9qJssY2WpH2dyScz37Gdwna5zRRm/mzB/8OWjteo7BBFHTQnJaYWFyIGph52WIfJj9pr1YW8di
	UCYoRGUQf5BStteStrtpBZ0T33dt1e1XvLZIF0NjGWuoWuwJPOe6fNtrGFEZwx4/XFZW8/5NSJ+HM
	+4TgeOYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjDa-005AGg-Tp; Sat, 17 Apr 2021 11:34:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9b-0058Pc-8Q; Sat, 17 Apr 2021 11:30:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xfofUqGW184RoX+HJlYABRYXL1WMbu1EY10rrB3ZnHQ=; b=AJFB/dlRyAhkcacXc7jtNwfAJn
 sImCR70Etfl2YWaA7MQa6DZD9jJfv+MY+uMXeKKEdZoUPNaFRISw6cqqLZc+OBf2hFNq33QwCy0Gz
 XXTPXmFLxvGMnXB4pYjO0iSwZxronMVMRKUp/t1WoXIKMMEruTFAK1+t0kwU5M1QxCyri5gZxThgg
 f0s31T00TV9hSnMJW14K8ligFeVese5CJp9QY5R4FfiVoH5wr1bhN7NzhkJejXvBFPMAkHLUdhJ06
 jtBv1ofMrtgO4F792MmJaTssc22YPGivvtm8prsxf/fCwOdOLfJuEsorwkgH4bmgCwJ1dL5iM8mtD
 kp1pN1xA==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9V-00A0ER-Oq; Sat, 17 Apr 2021 11:30:22 +0000
Received: by mail-ej1-x635.google.com with SMTP id w3so45881051ejc.4;
 Sat, 17 Apr 2021 04:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xfofUqGW184RoX+HJlYABRYXL1WMbu1EY10rrB3ZnHQ=;
 b=Ium/YVGKp3vWIeN2GUFPBLqBAhQ+Wfwwp4G+dt//qxoFNibjceK2x8kD3S09uXSkad
 s+ehi2o0Wiqq5CJuEyv6Qa0V7izN9RLOee7CnKMhefCYbjP0/PHkWLl3OfiZKngeBv42
 58sT+tiEIIO2/xWqj/oSDcMPmqCzjoHcuKTi4j16C42pY1qFmFy38uy0nRTi1zKmFo72
 2wpYajeMx+FKybbGBPmzk3XFJKQSegTgrqBwoMz50VT3WSqWcUfq1p6N1r+vMpTfBmIW
 iHM162i4TddJoG5lszcnqBJ37sRg2Qvggewkv6gWGUDxu99iF+DsoysLCTLgggCRuY6A
 v/sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xfofUqGW184RoX+HJlYABRYXL1WMbu1EY10rrB3ZnHQ=;
 b=bbjTJaqPC/U49X+axxTge8jI2uqte5gBXBH3VYcERCyDwFe8Kuw6SboJ9bZ4xWZ05u
 xoEBy1BQI/qgaz1WboXcgJcZgKcjIx2Q4WxsCLJ1eVeDtkqngBZCPs/y5VBGOUCtQnEP
 dcaiSwvyPAGvn87YCXHfVq0VXTFXGFwJQDQBwUZb6p9R2rJWjRKBc/86fn1rbjZ64p0q
 lfGB/MLFpvqrY/e7lKTmEMsWkcFGq2y5p7xvPR3GHnwlk5PeuiPr5VB5XJeC6up85DNq
 u8JbYepzuB5wvkxYyjWAvgwag64eoNRYIYNv4NpryQvii8q9N+ssx6aR2dNbS/Rt6B6x
 ecBw==
X-Gm-Message-State: AOAM531E8jajM3K3+fLpM15NnJJmKtX0LWWVwKZv6zUnFhuMfRJkNJXY
 vIKfdufe9e5JTtcG/MTVZOQ=
X-Google-Smtp-Source: ABdhPJxgeEsuEz6w/Lu8YQ+IlHOsvGCNYad/N3+Mg/Mg4mYZTtwUge9G7CBAs9b3+epYXvfxNtQ0Jw==
X-Received: by 2002:a17:907:9116:: with SMTP id
 p22mr12935768ejq.516.1618659016671; 
 Sat, 17 Apr 2021 04:30:16 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:16 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 12/15] dt-bindings: arm: rockchip: add more compatible
 strings to pmu.yaml
Date: Sat, 17 Apr 2021 13:29:49 +0200
Message-Id: <20210417112952.8516-13-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043017_822269_761FEF70 
X-CRM114-Status: GOOD (  10.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The compatible strings below are already in use in the Rockchip
dtsi files, but were somehow never added to a document, so add

"rockchip,px30-pmu", "syscon", "simple-mfd"
"rockchip,rk3288-pmu", "syscon", "simple-mfd"
"rockchip,rk3328-pmu", "syscon", "simple-mfd"
"rockchip,rk3399-pmu", "syscon", "simple-mfd"

for pmu nodes to pmu.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 0b816943d..678be9011 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -19,7 +19,11 @@ select:
     compatible:
       contains:
         enum:
+          - rockchip,px30-pmu
           - rockchip,rk3066-pmu
+          - rockchip,rk3288-pmu
+          - rockchip,rk3328-pmu
+          - rockchip,rk3399-pmu
 
   required:
     - compatible
@@ -28,7 +32,11 @@ properties:
   compatible:
     items:
       - enum:
+          - rockchip,px30-pmu
           - rockchip,rk3066-pmu
+          - rockchip,rk3288-pmu
+          - rockchip,rk3328-pmu
+          - rockchip,rk3399-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
