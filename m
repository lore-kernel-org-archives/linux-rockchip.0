Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 002A4C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOU4QhrprfF9SR6agUmGgU9HwkCvzjHkpqmt0sOA0zk=; b=R4PjeoM2Q1lH9m
	Y3Va5lcdl1sSUO7cFnD9IPuWGNceq+qvufFlaZDvpOsyLn39MGdVeW7/zcIrDKIkJVLCjuXlmcatY
	4Pyf6tjng3J1vIfXDlmUyy8ttHrX1X7OkM/3hf2Yq3jiY4mf45C/9KloeirpbnXE28Cc6+L2mVG+s
	eJDmxW4uj2olnMyW0VofmzGye9qGMhlrvoTo5oupwzxIzynQAY15aGFVnlANWzEOWT1z7TxE9l5zo
	rMmDxWCtv6oILtVWkMoh8cuLG4Q20HbtHsSVLpkmCg6SE1LDQCabXAe0DBipn10HvLsUzycwbLhDb
	V/a6pH5OzyZoVcNSUhYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFXe-008yS2-H7; Sat, 09 Jul 2022 18:50:58 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFXc-008yQu-J0
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:50:57 +0000
Received: by mail-ej1-x631.google.com with SMTP id l23so2686230ejr.5
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=aDBtkxwKLIr+Lfks3JwoiZOG639BcsG+/5E4S+g2a6w=;
        b=cybNOgRJwnOtYKDTxvIT15mfRQTNc0j8RVObfYVNw9MhDFKBR0bhx9oCFlP391XJNl
         d/RUU1p2dEtCZN0vG4EmXUOWu+KYzrAXQTgrs+AINLXI3gQtSvRDaA0SMF7WGBq1Nrh+
         T+DTUUbA1TJiJlPONOsKtaPw7h380D2MAyiJDgnxoOwWcO/+8fcAQlmnRy4BtPI32xWL
         LJ2sohMBtnOXHOaZcLQWJDxdK1/ObH8UGGQn9HBmwt2vfyMdXXf/eg97b12UizEcb8fG
         atLHddWYXWpKxx4OIdprfDYbCUUNLC/vT4L/Gt74TOYkvLXqti8NEqP58fViOzbYeOlV
         Ymrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=aDBtkxwKLIr+Lfks3JwoiZOG639BcsG+/5E4S+g2a6w=;
        b=XJlLVB2KmWkTEs7OyHPRI8wdRxP38/HVs0sWe2OsxK82r6J7J+ctMmW838ZSOnNu5Y
         JdPcYj+QUmy5mqslaPYcZY0xgKKghrb4JmWfot1pqUqPUcfQZH5q6E6dci+mbwNVRcir
         hID+u7AkxXZcvgmaDT/hfGUWFTUhdVusQIc17VfoOZyJrPtS2ijJiYSTvWkoDWL3q6/X
         8EsfsOrWyMW4SLzPzpNav50tdQlC9TDdLvmMUfOLUFz3nwdeQpzNyaW6DQjOK267HGPn
         KVMADVPD84V1G/JULK+3IGw1HxcLLHtmzg8SPVmUDTlftPuACK9ZlWvPhCOtsvQjVlF3
         C82w==
X-Gm-Message-State: AJIora9Es3u4K9YEk3RP0a5sa7pilwc4+tYnIEpE4Mtrz8ZjryCDzi65
	ALupCy3KXNSXzA6MDEQGgrc=
X-Google-Smtp-Source: AGRyM1tUggeYmJ5DoqSBV/ZV4kHd/KvQsLHp63jLBQaiY+Rnt3r2fbUQ5xHsdtkP19ULAYAhBM6T+w==
X-Received: by 2002:a17:907:2c6b:b0:72b:2eb9:6673 with SMTP id ib11-20020a1709072c6b00b0072b2eb96673mr8135704ejc.71.1657392654577;
        Sat, 09 Jul 2022 11:50:54 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id oz7-20020a170906cd0700b0072b16ea4795sm846312ejb.48.2022.07.09.11.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:50:54 -0700 (PDT)
Message-ID: <874b1c1f-6434-1749-ec22-ca94147488ee@gmail.com>
Date: Sat, 9 Jul 2022 20:50:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 10/11] arm: dts: rockchip: enable nfc node in spl for
 rk3066 mk808
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_115056_659885_57B9D3E2 
X-CRM114-Status: UNSURE (   8.42  )
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
