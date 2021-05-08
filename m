Return-Path: <SRS0=55oq=KD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF69AC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30FD06112F
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 May 2021 12:38:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30FD06112F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iP/WXrPEezv+A/ztzftX3t2CaVcF0Y54lX003mntxss=; b=eC2T49B0+nSfEdTuVDIW5lgmhI
	H5lM9VplKvv015OYJm1WdQuRXy0N5/Qg9Ccb5Yr/PgNE5NanNhbKRMBxmKthWGhWKRAuSdMmdnfep
	VuMvZDo3+tU756ISuy68k0pZUDxQ/Gk9Yb3clfIsnnR2bKRCwTUSUXrfrlrW5ePl02sIry6OT2ucD
	LBzEVcm3ux6vWg+Yeb1+re/HAgvD4Pv1UU2PbqzyNPFEzBK6jz/H4snhqvpDPZsuk+ElT6JYrkR9W
	ndYSPDS11FJwTc7pWsEksKlIpFLPZaJbxMGbXSIFUB87/GrjqF3SUM0R0crOthtEZefPva0BmKvl4
	V9ijghDA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfME9-009YNW-DW; Sat, 08 May 2021 12:38:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDb-009YHv-UC; Sat, 08 May 2021 12:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kKYG8ob0N102i49XdsyoJlNpypHz4XdicUmmY8YrBm8=; b=VXjeFzBy/NE5hxBrTBondoJVRk
 2UxYwp+1q2WerD1+dYB8IzsUwyaiNtcuHYARhJHGQz3i00fEk9raAyQl4SW1Tvyx8XadMwbE7Vvzb
 lCBzjlTwcvtHX03+UR9hzBrvrd9ndRz9Fno9BlCnf0HGkJnUmYQGJboh+LWFwzCDthDfxOuQYnBv+
 KWX5AXI+eHrIE2vAgWQMkUsiKUG9XAHhE1bE+kvPXXu7TDe/hEEvl9uKKTWCxOmOCvWn5PNAGqSnu
 OrBCVRz+gGSjy68NOHGKMOJ/KXRRGIVld+z+JDknro9O16uReaKoxlUXx7ST934mKOZDNpVxAsR1o
 LwQBA6Mw==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfMDZ-007XpZ-Gb; Sat, 08 May 2021 12:38:02 +0000
Received: by mail-ej1-x62b.google.com with SMTP id gx5so17638117ejb.11;
 Sat, 08 May 2021 05:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kKYG8ob0N102i49XdsyoJlNpypHz4XdicUmmY8YrBm8=;
 b=SZXbeqJYH4Rvw5YTLCZ684jtQQ9XkKWV/PLa+f2/6q2APp41GjQCtU3xBrw1ONDjBh
 +WUQ0y5zObLWZw71SxP3ozGubUgdZGZAmv+TmkhSCwz8BOJgSwjqhNrJRh9dCsa+Lcxa
 +hfpja3I70Ti5RclTugVGp2qQ5YsyQB9XnGBvrDCsfap8smU3vpT0NnzjIjRqBYouuDt
 uHBr5UxpxvQfOTL7hXJvOAPJlM7EHxYTZppq16qbRG17cIJHiIy2OGZruKMcymObgMet
 YAKP7QLlKb9IlPyx3yQg2Z03PQqCGVKYEyeTwQkiYws/7lYLPYbKnfIz0DpChvqPJDWP
 vatw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kKYG8ob0N102i49XdsyoJlNpypHz4XdicUmmY8YrBm8=;
 b=e3fX1pfuNgik5BzKfHjUDngrVn4i1mdQyZBINBxijP+1NFkPEnSi0eUJd4Nb3ZMrpE
 BmAmEo7RASa5d5ZIt0WOYgNcxfaozDt56lGe5yUq4im2dwOxI1ssbXShVAckW0VCwbGK
 xci0zvxi9hecUgEDCGE+hXu/xzqLW8V5JeLVFkMPFoup4VDf51X4Q0nYS4EzDDFaHVU9
 4aCRYqcPVhLunBxaDPdLd6SeZrGqx+mx2ARnCkltC8Jx2FKnv7n94XL7svRX2jMEQe6A
 8e0nRYDO/H4Nc1v/55EQr4yq25e4lx2sAl4ZcgIb9RIiCTP6dXAFypRkcoI5gal+j6Qa
 FrPw==
X-Gm-Message-State: AOAM530O6TYKIxs852+yS5s2WxJRG2l5lvdXgM3+RavVfapx1qvQiHvb
 CEbFT+gaBGmaDZCd6qP15Oo=
X-Google-Smtp-Source: ABdhPJyribyIKpHanX97X8mGzuRPy4EQuIN3hdClvLQ3RrA1Um+6A/V8iGIVuTzkj9mNHnvOipR5RQ==
X-Received: by 2002:a17:906:a103:: with SMTP id
 t3mr15664038ejy.334.1620477480152; 
 Sat, 08 May 2021 05:38:00 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q25sm6262618edt.51.2021.05.08.05.37.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 08 May 2021 05:37:59 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: dts: rename grf-gpio nodename in rk3328.dtsi
Date: Sat,  8 May 2021 14:37:43 +0200
Message-Id: <20210508123743.18128-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210508123743.18128-1-jbx6244@gmail.com>
References: <20210508123743.18128-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_053801_568283_083A40FC 
X-CRM114-Status: GOOD (  12.30  )
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

/arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: syscon@ff100000:
grf-gpio: {'compatible': ['rockchip,rk3328-grf-gpio'],
'gpio-controller': True, '#gpio-cells': [[2]], 'phandle': [[68]]} is not
of type 'array'
From schema:
~/.local/lib/python3.5/site-packages/dtschema/schemas/gpio/gpio-consumer.yaml

Due to the regex "(?<!,nr)-gpios?$" anything that ends on
'-gpio', '-gpios' gives a match.

Rename 'grf-gpio' nodename to generic 'gpio'

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/gpio/gpio-consumer.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 4ce49aae7..2e458fb87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -291,7 +291,7 @@
 			status = "disabled";
 		};
 
-		grf_gpio: grf-gpio {
+		grf_gpio: gpio {
 			compatible = "rockchip,rk3328-grf-gpio";
 			gpio-controller;
 			#gpio-cells = <2>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
