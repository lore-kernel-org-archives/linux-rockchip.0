Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64F9BC43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 13:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/OyOMd74/1Kkv4okZ6ZRRVjNmFfNoi20tgPqEjLGMo=; b=AjXO1wkAKXsJgF
	0UIc0ww1B4Vuc7trR93DYfHiUlw78m4bmh+nBTskgiFJDXyw4Rh/cIRFNNGOrV3+LQt634N0qrsp1
	eDu413B3blh4ruH5fpQsLtfq9j7vgusYJHvKHm7WXGcHHseCGBEtuo3VodVeAbBlOhysvYnKW8rHJ
	byUzadxvceTaoNseziyLW/oubisfkcIRTk/z+KQ13akSFIEYuERn0FQHPK4lrrlFILfWuZqoAzWXE
	3exohxvXfN39tli+PDd+OL2NGHiViyxXgqaTNMGZqdgunDPB4XULkUIvi1hWVLgmRVV0l4R3Kzje1
	j+2yZLSf+9wanjxvDXSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEm-000Ld7-Cj; Tue, 05 Jul 2022 13:05:08 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iEi-000Lb6-Sk
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 13:05:07 +0000
Received: by mail-ej1-x62c.google.com with SMTP id lg18so1721112ejb.0
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 06:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:references
         :content-language:in-reply-to:content-transfer-encoding;
        bh=mOL/aHGjUjcDXHj2INnoms9jJP2ZAJF6G/eFKeLHbiM=;
        b=qTHNfnf/xTVHwFh8YvqS6Fz9wZ1MJvh/2cOs7ZzZzEV2uWXSFvGWVJeFQoprZ5s6xX
         q3Ir0XRaQ7BPUkXpl4+u6ij6qci4w/6UeSm2ey5QuLjw936QBigMks5N/PODWoEAJGX8
         nX7C6iQENoP5yGwgKvwad6BjC76LYfZMf4HTDDmYUmmmpJ2jBLmgGTaxJsjBAeZ2OseD
         xTGE7n608kCBreSbf6wSyVpySOwoGmFbihxR4k39Tvc0p+2CH7g2xIYf/yGwLuH8oZJ/
         HsNB4VkNQozcmF2VDPPHfOOpOcIS3Y3lW8prtYcgyQ49SQk31XpQryNdvE/mOjDGZzEQ
         72wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=mOL/aHGjUjcDXHj2INnoms9jJP2ZAJF6G/eFKeLHbiM=;
        b=wkTZCWD5H/J7p2Q2UGXYMR+XCNPNk6BSZUF6aZ7pjNNsaIYaEYKCxrLe99OWfFi+8V
         LG1xWowLtYhYoUufwLobuVBonETblAmGwVuEikSzC66xPUaTcAW1ajsQTsWXyQF3lxFK
         NtDjAaKP72zrHeWEOfehsHD3bQBrY+/2kPno1+9RN+Vrei5+OTO/TKPH2w10qxH1JO0+
         IJvEKNKSRfOo5JPyNnbBvOPuNjTASw0WUOmDLiYHpirH05LnO1gpUrA0ru4Vq2TJwWXY
         LUkmK7kxiJvuiIlruHBrSnjxc5hCHIBs/woKquL+Sgf9BllMDW6hrs0l242d3Bc7ot/m
         KdcA==
X-Gm-Message-State: AJIora+xZDEdCgbFZyXyad1RrSC7tOYHOngl5rn6KYi0hRR5MQs+9KI5
	EhNIGq7IrCvJ+85b65MUif0=
X-Google-Smtp-Source: AGRyM1uV2gqr3z3laff8LN2KG1/wFF5XO+QTrjGGjW4CxGYfW2H4A3FTKJTDbvKcxJiTA6w+m4aPdg==
X-Received: by 2002:a17:907:97d0:b0:726:ccc3:e9d9 with SMTP id js16-20020a17090797d000b00726ccc3e9d9mr34638403ejc.154.1657026303203;
        Tue, 05 Jul 2022 06:05:03 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id i10-20020a170906698a00b00705fa7087bbsm15983078ejr.142.2022.07.05.06.05.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 06:05:02 -0700 (PDT)
Message-ID: <89024049-63a4-19ab-1b5e-ee7e15a0c52f@gmail.com>
Date: Tue, 5 Jul 2022 15:05:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 5/6] arm: dts: rockchip: enable nfc node in spl for rk3066
 mk808
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@vrull.eu>, xypron.glpk@gmx.de,
 U-Boot-Denx <u-boot@lists.denx.de>, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>, jon.lin@rock-chips.com,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 miquel.raynal@bootlin.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com
References: <20220701094304.1846-1-jbx6244@yandex.com>
Content-Language: en-US
In-Reply-To: <20220701094304.1846-1-jbx6244@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_060504_999298_26908B75 
X-CRM114-Status: UNSURE (   8.99  )
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

From: Johan Jonker <jbx6244@gmail.com>

Enable the nfc node in spl for rk3066 mk808 in the
rk3066a-mk808-u-boot.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/dts/rk3066a-mk808-u-boot.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/rk3066a-mk808-u-boot.dtsi b/arch/arm/dts/rk3066a-mk808-u-boot.dtsi
index 60b39026..09024908 100644
--- a/arch/arm/dts/rk3066a-mk808-u-boot.dtsi
+++ b/arch/arm/dts/rk3066a-mk808-u-boot.dtsi
@@ -39,6 +39,14 @@
 	status = "disabled";
 };
 
+&nfc {
+	u-boot,dm-spl;
+
+	nand@0 {
+		u-boot,dm-spl;
+	};
+};
+
 &noc {
 	compatible = "rockchip,rk3066-noc", "syscon";
 };
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
