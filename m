Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92226C5AC79
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 12:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fppkPg+D17a2Pr+F0DVps33SEFPjCpfYUSf9hdjLCUQ=; b=OrA0xexiRnbJ0X
	3tRiTpbpjFjm68esoYt6ulTZgHqcDopn4Jm5aDMLM6NGeXPnZeC5E249re55qcBe2hvKbk+/sFnaN
	9c6mGqbMzXqQJieGWcnYHBnEgMSKSnsso76gSDY9q91M+jfrhuVRg9qEgVrbAfv+3h4w1qaSfmida
	CVh3ooS4SmHGvgDry71Cev0g/ttsX2XEPVXBaiGnAI+FOrNV8avchswTmSnwfXAlwclDOi85ZN4J0
	no7L1imo/mdiYPrzDw2vqlqL2yCu/8iZ3gDIKbhkebtcJowCj/J9o+Psok8liutvH2kj5IsF6chm7
	ORjj//rFFXSKpD74qr/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwwJ-00000005jD0-1sr2;
	Thu, 06 Aug 2026 12:11:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwwE-00000005j8h-31wX
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Aug 2026 12:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=p02VpneCZKfAKPbd3V425RvaKg3GG4ltnmCt6pEGruE=; b=db66LX8efi24/1OPJiJxVZGXp6
	/Fz8hepYhbAXxUu6DNiCRQhQb9F+MfqrKuZQz3Anw1Njmn+pSsO8/dWHcgFPClV1ZMt+ebzBPxBfO
	7bKT58JFgxxUrieUx94Tt7HaQ/+VVeycJQIvR2TgRZKtZva1ShgriSHzcXxvsHfrlzDpUkY1oxt7/
	XqtE4ZdSNT9mCvhjdXOH+mSRaLPN6ZfW5Afdj5nYC0SrrSy3y4Sr9BcM6aAge7RmvtPFvEj/1k/9N
	yPpR5Ie1+qZj19Vtd3bCTL8qnOJ1Zh/tDYmq7P7VuHH9Sbc39u9excyEUEfMupk+jM1VWauAnhbw/
	addudKrw==;
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wrww3-0000000BTiN-3aN5
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 12:11:05 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-ca7bea5e5b3so1693164a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Aug 2026 05:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786018253; x=1786623053; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=p02VpneCZKfAKPbd3V425RvaKg3GG4ltnmCt6pEGruE=;
        b=pfaWOC3t2B5mRzb45uYKG1YgRxyeWm4A3W2y2uiRUFT55ptHQq1IG4bgQVg+UItf+u
         erF1aHst9TX7Z/D0oZxnEV84jF+6xIpW3ag2qo6APsd534mkyjoT3JraVKzWMrXx7nJJ
         G7DpLCDmhtrQjl6EJ6nfR9JRoIfUk/bp3xBvi0WwUosTUggHv0EDrmDFueKdut7facqe
         lFkXdFSNMqeEb21G//W1eXLSUlbD+gZSbLrbip+DDDQE5nDkxUTEwRMlviE9a0FZ2UFn
         IOYzuqE3uwG16LdIi9IjdFyzkbNfV1FZIKD5KK6674Besc2aQDce3FdcY95FZsKiS/KP
         sJfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786018253; x=1786623053;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=p02VpneCZKfAKPbd3V425RvaKg3GG4ltnmCt6pEGruE=;
        b=Z6W0O/N8qyPf2B3dVAz98kYahZVWstQhdwSOcR/fhKeGVcN0vfI9vIO0GjQNcMNPex
         xSrrC0EHQI5QnzD1cEbXMSFI9Rl5Dq9FBOdgwTy9ZByTKVJKPVD1PkLzReYXjamF2nbV
         6wnvFnJy/PK782AQD+MPNNuYCUkpVcvPp1dWpxc2GCD/Lf9/R3JTrNmHpRYpnLjKLxh6
         REc7Ql7j0V1YgyJlAVME5ECY8KKVrnXisdmFyjE7BNucXYJUuxQUhOPqJh2Cti+y6XtX
         s4g0qdkYKPAc1+Gl3amMz6sbjYy3oInF6UdG7txQHO4fzoPEhCapnluLAi+alfV1Sglf
         239A==
X-Forwarded-Encrypted: i=1; AHgh+Rpma2aPvxQQPWIn/BaHIs9RQkH7p4jwZmDkgvQNc93zVTGf37Eqw/1jz67XgLgmKQogyP28nrdO/s1ztClJJQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwDl+J/goDIFEeO4Z0EHYZcqNt2pfgc76yEf/JphQFkaT8s2vy4
	+YX3zqq4AUK5rg4XeNrf0NXuen27Z/MNbQJYOfKVXFsOlUYr0RPmGMQk
X-Gm-Gg: AR+sD10JMXYC1bvtEiL/qhI7A8LrNV8yQCbqkynDu+FWbRdx+mfR7hFipw2EnETU95z
	gaJdfmf6mhheGzqdfna+2TT+N+JST32e0MStLzh8tiGkdtbdh7oLWAFCFct+O6PBCsCVEwfX5x0
	yRM4n2TE0SMIEhGIXUjy4JHqgAsMZfeKOBRJ8l106xQ4mRhhmnvto1pzZzGZuAQIjL2mRnoF2RI
	4ag8OanQQcRGHRIcAZg0W8Q4MOunErrrp1TJDi4UqkiC09sZ41QO+tRjkYcaJ+bsobtBtDCG315
	FpLaepM/ZK11S+592rIw7clfMw+5MlOk/p5ImI+V2z4E5SubDCT+Yphaa4Bzg/h/EmLSKSjheoH
	/JG5lWYEnFmpJf983gLoozEhkVHWV3BWmdVobWeIkeog8F0XIRrmLk1kiY2SgoSjMlnU7HBUx3R
	Kv6z1OmGQteNFCNACRpfrxof2frIRbzrDJdXI5w9DOqmxlMUdY7xFU26Db6F+7jhMYkARUDgnKl
	Z6ixY/6AM6mgJyafnoJygQKqJ1wHGvSWE9MdQ==
X-Received: by 2002:a05:6a21:9983:b0:3c3:69d0:c57c with SMTP id adf61e73a8af0-3cb8603af02mr14408140637.32.1786018253110;
        Thu, 06 Aug 2026 05:10:53 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:e1cd:daf4:8fac:b7e6:4f37])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3158673b7b2sm28406824eec.19.2026.08.06.05.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 05:10:52 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Fix the BT clock-names on rk3399-hugsun-x99
Date: Thu,  6 Aug 2026 09:10:38 -0300
Message-ID: <20260806121039.16967-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_131055_967123_FEE2C24B 
X-CRM114-Status: GOOD (  11.15  )
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

According to brcm,bluetooth.yaml, the correct clock-names to describe
an external reference clock is "txco".

Change it accordingly to fix the following dt-schema warning:

clock-names: 'oneOf' conditional failed, one must be fixed:
        ['ext_clock'] is too short
        'extclk' was expected
        'txco' was expected
        'lpo' was expected

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 352c8efb37e0..27ebbbc66633 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -703,7 +703,7 @@ &uart0 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "txco";
 		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
