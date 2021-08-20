Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8290DC4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 13:19:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 47113610CB
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 13:19:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 47113610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GyN/0N5B8IH1uNBsHPaa+vX59C+f8MY1cucIMyxBgqk=; b=hb6YMx5PT8MgX2
	SClAHdttQdImaBaFgyCyhpjP7EL/lMwUmSDIF2BUmbdnXvte5ZtRNd5xnoO7n0DinJHs324DfHPWL
	5Fj66foQZUqERa+Rre/pGoiacHOLr2gcx3ZIUWECFe+U5Qf+dxDQI9aMxS4rFb4MyDG/nViQfmHjH
	ycaKQZyag6iLD865CwoU7K9/9XwMJPbUKN/JwyIa5zoJf3cZ1kDW/z6jJ0152w0lTnFLKsuogseu1
	lumAihQI/+FH8qhmN/0Pkf1c5H86qWxIEJ/WdQ1o0o6XEfBXV36NWPoM8tb69dCzDMN97DHS0Twir
	C0YhLyiCoU9LbQWS++Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH4R2-00BGjJ-B4; Fri, 20 Aug 2021 13:19:48 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH4Qm-00BGfm-Th; Fri, 20 Aug 2021 13:19:34 +0000
Received: by mail-ed1-x536.google.com with SMTP id i6so14028398edu.1;
 Fri, 20 Aug 2021 06:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GpSdbGaGGvseZuthabvo5swHjhPO42GEnluiUhjUz2w=;
 b=aGFnnYQZPGwcHdCCHq/8sR1CEerR9Uf5lowV+WMB2gZZT2ahsOdPDXwUIFE1sYIN7o
 Kej7eq2lmQs7P6xnPDaRyNcdohb39erSbzPgffuZi9FrH5iuG2LC+VAsTw4EKi3fd9ay
 xxEUY7ruFFLzpFI2E+kFlGc5U/N8iEcQHFOEfHIVyqZ5+eSJzyGl4zTjkroCBVztmT8N
 1IiDYPd6vM5x0oa3XfPuxe6CdsTw/67RTJQA/HlNqHo8NaxKUNco//puqruuS94Hy/WQ
 snsBRAVslKqQxx8jKSCSPr35JesII+wgZlFCqZgYTvqikOctgR9Nm1U20NxowLSOvwgx
 JTsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GpSdbGaGGvseZuthabvo5swHjhPO42GEnluiUhjUz2w=;
 b=opqWjVFqdVxsi3DXMpw+5ZFePjUAdZKYEfXJQr1G8WqdRkTTQVvrFqQQAyq5On8Eqx
 lKt/BxRMkVXWjJeW4o8X9XxMrfCg3ReYpIbnJpCQdNU/OzjYjgKrASYCEANFWAUpOmvM
 n3Xb0zM4ZwKGl3BeUlcJJDNmedZkwnC+Y57zB7MRaAvPEvvBwrnU83umNCrN76HC2uP7
 KZrt6Artc9NZEkxwjq5s7NJl4tXL7/KN9TGvG56FewSycQp5n3Ff88+nYQhTio1H5scs
 hWmcnQx2cOGtZZIODa7sbc0g+jd/3XUVSCKF8Uao4oInkWtC/+8ofhEfgEAAANQwCdMa
 rtSg==
X-Gm-Message-State: AOAM530z/zXVVK1lPErtVZRYu/02uqC6mVH75U7EA97iFPJ8WD7P4eBD
 Jf+jR5+eOb05POyyzVJazHg=
X-Google-Smtp-Source: ABdhPJz7VRothmfynTiiB81ygwvYR0grWdYfw5gXh6QcORB/+YKSNnsOhe6LseA+WrFxu6maD66ODg==
X-Received: by 2002:aa7:de05:: with SMTP id h5mr22638041edv.174.1629465570732; 
 Fri, 20 Aug 2021 06:19:30 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r19sm3559052edd.49.2021.08.20.06.19.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Aug 2021 06:19:30 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, paweljarosz3691@gmail.com
Subject: [PATCH] ARM: dts: rockchip: remove cap-mmc-highspeed property from
 mk808 &mmc0 node
Date: Fri, 20 Aug 2021 15:19:20 +0200
Message-Id: <20210820131920.1831-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_061933_026301_F73B26F6 
X-CRM114-Status: UNSURE (   9.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On the MK808 only a microSD slot is connected with the SDMMC Host Controller,
so remove the cap-mmc-highspeed property from the &mmc0 node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-mk808.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 9790bc63b..b67f5cb51 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -123,7 +123,6 @@
 
 &mmc0 {
 	bus-width = <4>;
-	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	vmmc-supply = <&vcc_sd>;
 	status = "okay";
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
