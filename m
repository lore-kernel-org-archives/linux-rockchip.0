Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A5F3C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:12:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A0D2D238EC
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 15:12:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A0D2D238EC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rsw51lwlmnqLY90Lja6943gFn3kZST2htQw8DmJidZk=; b=ahwLV45/tgpCs4rcPse2OlYh9
	SHkFOE3GnfPRZ0o4llF7z+B9W4V1Qfz+imRE57L3B5KhFk1MR24qE4eRZlQ0VRz5KXG17grupoyaY
	W/iPvfucetLDFdg9EVRPATKlBr71t6vKX+nQngdjUVg54EXM9sZBCGwVleVBKlxjD7ht4MJYF6cV/
	K+WpMMta9n4CBQ7aQiH1aeowKpwJkTE8yRaHhgiiubWtAcA+XDSxsMxpAj4Kb/pdr5fvfwcawhltT
	lD51ithyftWMPN93bgH9ADaEUeNO3rgjKuci7wSQzXw0fbqFPxWl9bgkzJJ6WweQMXdvmfuneXZXf
	xZXmAT+Og==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxtQl-0000V7-2h; Fri, 08 Jan 2021 15:11:59 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxtPV-0008R2-1j; Fri, 08 Jan 2021 15:10:42 +0000
Received: by mail-ej1-x62c.google.com with SMTP id g20so15021769ejb.1;
 Fri, 08 Jan 2021 07:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XzMaZRLeE+na0Be52jR8ekSOBZawObKqnkIMNOZOsBk=;
 b=ApZh3a/jqPTCJS6WQmD6BsU3CBI57p/9NZZf9ZdU2QBik1vJnwIxKN/3dd8B7nPpd9
 7Pw5jC5SHJjbRwv2BcL16Xuwq2d7JTjilV6nFAiBccB8FCg/c/j4ZD6/kERtLBMdM7xE
 rkt/0jEsbHbgMNl9Q5EbWXxq/USsUZ/Rl022eUWsBE3U58G001pr8lH6CqbAu/+IRdUh
 Mii+NOg5UEZAKNjKPk0wz90gizkFwIpQ2FyHiI0+JK3pFxVXS7G4pT6/ArDhWOzlWSWc
 UfTb6LfWP59CVh85rb9MkVvcb4A8C7bdt8DTRGgyW7bSvEz4l0rip0IzUI+mJC4IPl6y
 IT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XzMaZRLeE+na0Be52jR8ekSOBZawObKqnkIMNOZOsBk=;
 b=uf61lFE74nl+f5+5WKPaqt7IvwFJc7qY+W/QYsPfhTFJR7CkwMfgVHMRCcUwtYhwu8
 dwG0YEOL9wwwKKqr4w6XriCHl9DO4ue67KjXi+OxLtLw3XB/iILDSUPqtFTfPy3hujUL
 TlE36McKoPRFRIanVXQ8B69aQyg33s7JN5+Yod0bgYoqDT92E/ANHlT1iGA748VIjhXh
 G2KNLTLY5Vfs6DDc7avwlS3a5jkjhFCu68jdmKibeN1vSL+wzQjf9V+sZ+i+EPY36lY9
 TYxkkNl/Fq6hw365NwA421kJEbDei/S7T2vyAoQghjfvHLxXVW8pclKRMBDvoAzlgP4i
 ZXNA==
X-Gm-Message-State: AOAM5327j9FBtXt1Z12G3CmuuihTLWXQzyN3QFHrYVwIItr4WOWqa4T6
 pVP24SoHnNQfWJwTM1+S5Q==
X-Google-Smtp-Source: ABdhPJyNHoMFIaUrKxspFlQKw5hyBXogwLWUnAmujtBMyPp0WFF1vrJRHKcwdWRpWA+MxZV+bwZqPg==
X-Received: by 2002:a17:906:3781:: with SMTP id
 n1mr2924175ejc.296.1610118639944; 
 Fri, 08 Jan 2021 07:10:39 -0800 (PST)
Received: from demetris-TA770E3.lan ([212.50.117.154])
 by smtp.gmail.com with ESMTPSA id oq7sm3669286ejb.63.2021.01.08.07.10.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Jan 2021 07:10:39 -0800 (PST)
From: Demetris Ierokipides <ierokipides.dem@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: rockchip: add gpu node to rk3288-miqi
Date: Fri,  8 Jan 2021 17:10:35 +0200
Message-Id: <20210108151036.36434-2-ierokipides.dem@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210108151036.36434-1-ierokipides.dem@gmail.com>
References: <20210108151036.36434-1-ierokipides.dem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_101041_143061_F40ABB97 
X-CRM114-Status: GOOD (  11.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Demetris Ierokipides <ierokipides.dem@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the Mali GPU node to the MiQi device-tree.

Signed-off-by: Demetris Ierokipides <ierokipides.dem@gmail.com>
---
 arch/arm/boot/dts/rk3288-miqi.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index cf54d5ffff2f..713f55e143c6 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -123,6 +123,11 @@ &gmac {
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	ddc-i2c-bus = <&i2c5>;
 	status = "okay";
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
