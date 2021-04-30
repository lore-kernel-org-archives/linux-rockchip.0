Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0808EC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 07:22:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6021261107
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 07:22:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6021261107
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qSkz5O+5fKoC1NGN9mlY7QhOGrU7aMuZCIHq8LQRx1k=; b=OhLsGekkLHW56a7+sn+99oAyj8
	pAfC80cngGunrGb/DqqX5DzLgjeEhwOyQhT89irP8So3vJ1+bFkjM9nUQIU6+hU7JJ1aylPy31Mol
	Ut+sYAWcUztL+94ICW/IDNnEezMoQRbNdVHEDgaCAy6c7viK90OkMOj/l3+Y64HeRunoP6NfwFyiJ
	Zk0JQ8nbmlFMNrGxrkVj+hgbIWFaqnc6XUPuccOUo8KS8VrHNaPIq/7yC4k+cGXnsjKZhTBO80dtL
	GB/yIhHiXB6ygMCDnHGTvizzYF6Gn9yF9J2jGtDyUd744kGRJun4iiwj+V5kS3BEzzibL19fAWEPW
	FpqtF0sw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcNTR-007Q1c-T6; Fri, 30 Apr 2021 07:22:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcNTE-007Q0T-5U; Fri, 30 Apr 2021 07:21:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=HpxUMjyXbZkzEt83poK9Tqo10qlhUK6WE4i1dvnGncw=; b=S9XfI9LD10nWw9k1xdP3JVMyMp
 fIbz/Re+wj1R6x55Dlt/M2owNBztZtvzDLPk+GSWLgnEM8vug4TZ1S2Al1G3tfNBuGYy3F634iQf4
 h6JINhrn+E+x209fFWhsLWITOFH8CaWJuFDvOA+zovIIZBkDjxJ6O+YCNAKl0i9dWLOVvWOUy3RJf
 w4ZbcnMbSh/beAdo7XLdJuz0qXXP0ocM5uqEHrwcGHehM15A7S4REb89KaiAgOuSa895GrvUmYHLU
 GshvkvPzTvARmt4HLvz8kZGljAZTvzbdkRNEs081RqS6FJcmBbuCtHQP+sBbp2fO/OnZAZzJ4H2F8
 jyuq1nEA==;
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcNTB-001CDn-Cc; Fri, 30 Apr 2021 07:21:50 +0000
Received: by mail-ed1-x52c.google.com with SMTP id g10so13495678edb.0;
 Fri, 30 Apr 2021 00:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HpxUMjyXbZkzEt83poK9Tqo10qlhUK6WE4i1dvnGncw=;
 b=ZsHFvBVbicZVJzVSsqNQid4JAMFYeUIOyZkOT+udNp/f2A7H3Ir3UKS53jJytqxmv8
 iJG2ptyRSUGte9cJhvHEHulQvv7oUkBSztznpLxf2vnpsCQ1sne0057OgdNPYLDB/NsA
 yXSWowl3PYQpJRyTe9JppcrjzdDsShy6T79ti+2NEPRIpcy+fy5SAAMmo/6W6tb04euY
 HymDgJeREiYV1PeQxBcBiILvEIgwZpkIqexAR+AM+S+3uTKXXm3zZifVPM1F+Fxoo7Oz
 ahqqY704luqoKc5s8jniTuMFq/z8a6qRykKvsn/rVTzpmoeMleaQ7qhtp0JuA9j9cA3a
 PSfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HpxUMjyXbZkzEt83poK9Tqo10qlhUK6WE4i1dvnGncw=;
 b=F+olTWR7Foxj5cwNQNkuGEziFI9eVUAJjRLdVxGpnhIF2nUQA8laeskqMDH8u3TZAB
 iVxvhFVMbU6diS2oM9BrKDypxE7mFLkwIGlVufdYBUgNHvnh74qMY+muhpua1Jj54v84
 NwVTpEkW6ty4YCZ5h8/fwxRfUpfhreU9Ggn/knQCNJ8ztjmdqIQ6iWT/jxVieMkpgKfA
 9++5Uz8aupWV6wqAk3yHMXs3keLGs3zPrpRM2ewAu5uGqvZJ1yn+HfAb0XKTRXAJ+Qwy
 2eIrKHhH7eHnDz2JAfA7FnL25qTQPLa1vNiyVkBgSuDbKZqNyuI9mhg6MkFnbnVzE5sn
 yoqA==
X-Gm-Message-State: AOAM5315rFx02JkeJqwkLDPcppUCOu1BPh04V9zcYTWcBD5g4jHYaYTB
 3/VQGLZMtsEfvBUa5uhRIXA=
X-Google-Smtp-Source: ABdhPJxdQhNnPfC5GJPB2i3YmP+3TesomiWl9A9y9B69mHJpWDPDlaPa7tM76eTnXZ2arO7+qw1GHw==
X-Received: by 2002:a50:eb47:: with SMTP id z7mr2208979edp.68.1619767306753;
 Fri, 30 Apr 2021 00:21:46 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cw13sm1378858ejb.113.2021.04.30.00.21.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Apr 2021 00:21:46 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: shawn.lin@rock-chips.com, robh+dt@kernel.org, ulf.hansson@linaro.org,
 Jisheng.Zhang@synaptics.com, linux-mmc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH v1] dt-bindings: mmc: snps, dwcmshc-sdhci: fix rockchip,
 txclk-tapnum
Date: Fri, 30 Apr 2021 09:21:38 +0200
Message-Id: <20210430072138.6537-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_002149_460902_A6EC8D18 
X-CRM114-Status: GOOD (  13.54  )
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

A test with the command below gives this error:
mmc@fe310000: rockchip,txclk-tapnum: missing size tag in [[8]]

With this added to a dts file:
rockchip,txclk-tapnum = <0x8>;

A look at the driver shows that:
DLL_TXCLK_TAPNUM_DEFAULT	0x8

Adding the default value to the dts files is not needed.
Every clock is divided into 32 taps equally and
the max value is 31.

Fix rockchip,txclk-tapnum property in snps,dwcmshc-sdhci.yaml by
adding a minimum, maximum and default.

In the driver the function of_property_read_u8() is used,
but with dtbs_check the notifications only disappear in YAML
by changing uint8 to uint32.
The driver has no limit check for rockchip,txclk-tapnum.

make ARCH=arm64 dtbs_check

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index e6c9a2f77..f43d8d829 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -48,7 +48,10 @@ properties:
 
   rockchip,txclk-tapnum:
     description: Specify the number of delay for tx sampling.
-    $ref: /schemas/types.yaml#/definitions/uint8
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 31
+    default: 8
 
 
 required:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
