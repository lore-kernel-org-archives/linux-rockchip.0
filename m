Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F28FC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:33:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D952B616E9
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 11:33:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D952B616E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YKeO3VQAEtiBV7d60rygzkS4XVF6FrV9qUJi2W7MmHw=; b=G6sk4EB/56UAIuiQMWZkct6h+5
	b4pg620e5E3NP+V1NM3QwPdzHfBChgeQBC3raSUqbaDjeiSu34UX6qpq9teGCNOkedaS13LAW4RCS
	lJCnPRB4XJJLuvK4fQK9wSlGS2eopeST9PzBEa4eLL1MBPy7ID9sCJkD6EF4+F+z2iu5hyeMbRv8o
	git0eo//5kZmUFhiOjVK2hvLJgnMUkMVOKCo4EZujwdxePv5TBa/D4E3UAcZZ5I1HjI215cLIBuOk
	Pk38QpeOZZGZpDHF9Bya5pmuYM5HHEKmRNCPJdmR86Weys57iitHqsim8VB7+f3XZKL8HZbWKJDfE
	1xYAnxzg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgQdN-00H8wJ-C5; Tue, 11 May 2021 11:33:05 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKaJ-00GJMZ-1L; Tue, 11 May 2021 05:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=60Lo7xpvw9UYiOl5jHY1jyhH6Kp5rVQT5uk6x+ikYXU=; b=wVpCVM7vB7MrqVgMdlH451MGan
 P7hAxh1Vb1aZkAIdRV2kArqYkky7h3uSGwL8s8qhlzMSxPgJZi26NrLvfwpZ/xmiHrWu0g40Uw0Jd
 W/oHM557GWimGh+R9T4YtzM13VigLrm1i3+5uhcW9S53pctFRwI/49mRDwwKBhfh07aBbxmBIAclG
 MAO+oD0mCDhMEoYHyo3eiCUDpdFHl7ItUYOrPPTuWoMVcrhbVNtlRl/ojOzA9I82q8vx7mKVzSmpc
 pdEb2+t0D0Vq+i/NjL/aXT0dhK5LhioFIPv9TnMZVkK9IR1tENUHtMNU4NTgEBEYH2j98Pg59za6s
 hI33ZhxQ==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgKaG-009JD7-Iw; Tue, 11 May 2021 05:05:29 +0000
Received: by mail-ed1-x52d.google.com with SMTP id n25so21311900edr.5;
 Mon, 10 May 2021 22:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=60Lo7xpvw9UYiOl5jHY1jyhH6Kp5rVQT5uk6x+ikYXU=;
 b=pjQO8ugBczY9ILfH5Ui6UlNeLY/hw0v2Wri0bS7ozgYFH7Rw7zZ2L+Ocuz6mTii+5M
 s7scXBV+9K7VzAh1xOi1X81cAx/a8eRzcoKJeYeJD4XTAbY94W/rpTUnNxoj6bK5iwVn
 RCxL2BKbUzyxZpsGCNKyoSWgPwrByD7gwvkJpetY3sD6qDwDrrj297WF1X64ArPugqfW
 KxP9ah9+vSu1cCc4kInCQrJuw3yYb8tHIgqbBf65v1hCMRhalDLL29C1ZFC5nXaDdZus
 8FVzJSKIM9mflu7XevZtKrPU5j5De0skFtRRj1wlsi3hHHTBIIxLgNrauhBnTdWWs7/Z
 2+wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=60Lo7xpvw9UYiOl5jHY1jyhH6Kp5rVQT5uk6x+ikYXU=;
 b=lodSALjARi/iwKIpmAsQmelU3kMY/qsycLt+PAMYqNZcRSpdK1FIPdVE0kc3ZKdJl1
 Igy1HyQA/EJjeSY1FW1qG8Is59eiTvlKALs5Mu50FsW0/4e10mwgp114Ba21WzloO8eZ
 sOEQ51lYbaJhmvWcDt3NyvRmmWX2nL4iOzSuy8OGtf6RJsoy5UvS52aQKQlb6Pqw9r20
 ZkpTZbSvsgtxNX0nY0efJjkWi5cpqxlnc3pZK9Acy+egT9x7Evi66J6xgV7NEsWIokDG
 GLEeflO3Oh29TgVq/pE0Hfiy6aniA62FBoflKkeQguomS0e0iNEsKkjyBrVdaNAfWeF9
 DrvA==
X-Gm-Message-State: AOAM533Q6mdNoxmUd8/OG8KD4LGrfrQ0g0Pa9ilJqEcaQQ82Ih0aRnUu
 xhd336xrEG1+Q8H99KybGc8=
X-Google-Smtp-Source: ABdhPJw7kqDOZphNYsS6zYAyisU/b00uYXV8iECUQs30s1WPz+PYOUmr7Ei3q1Xd9QTuux1I5TbZgg==
X-Received: by 2002:a50:ee86:: with SMTP id f6mr33839634edr.154.1620709527251; 
 Mon, 10 May 2021 22:05:27 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g24sm3620302eds.41.2021.05.10.22.05.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 22:05:27 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] arm64: dts: rename grf-gpio nodename in rk3328.dtsi
Date: Tue, 11 May 2021 07:05:11 +0200
Message-Id: <20210511050511.5973-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210511050511.5973-1-jbx6244@gmail.com>
References: <20210511050511.5973-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220528_642309_A845976D 
X-CRM114-Status: GOOD (  12.39  )
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_220528_642309_A845976D 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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
