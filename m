Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18C65C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 19:21:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9009661494
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 19:21:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9009661494
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3E7M8to1v1l5WIM+/WKOyOgowLTsDTi/2yLNky810mI=; b=d3fPazyPKoA+PHTy4PkQsSiQzp
	CoThtwIlWwgfwGM1wmbjz2/tmS6bzO//V9r06Sa0W8nLm2ISV5/zD0Ce00nLMmWnL/ya2Wru0SGVu
	RoF7Iu1JF5U0OsPDtb4C0zAJTXSqrPprpZSOD0k3FEy6V/R0oCbAUaNBTgy7A72cJzKBrWOvFql3y
	4NkJeehr+zBc2qOFy1bHNg+h2h0W7XNYfs/uTk42khI+cKgxXNxx7O2P8g+qn/fHIRah+XqDxLLJb
	5YqqTfw9tUZseJqlYyxFTZPw+OG6quUhbq7I2zwuOxu2cxRSB4YCrnz8dLsVsJqxuUs+QuQf29eGu
	+bxJuOcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgBSo-00FXR0-Jn; Mon, 10 May 2021 19:21:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgBSk-00FXPq-Ec; Mon, 10 May 2021 19:21:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=EFsFb8pMI8UH4jNijLN54heTyN+8V4Uo+MBIc8sUxEk=; b=EfSDYsBOzJGOxw3F6S3TXlArNq
 zMqshkNl7ew4mhprsqpMqEFKhokXD7Zgin5fVWiwiXCJLJ6OTPnHtlPCgsdNDUOmcu3meoMlD/z6T
 ct73ctXB4+MYlK5eQr+F32gBO2GlEf3ThmvShlXRgHUrhkrd3dIP9LrOCMLafhJlsD44bbkaLHUlB
 +DimgZjR4tJi2fE2x1iwJRK4tsuaLnsdGPkg7y7LVwX71neHN+aopVvCmrz9fuG43sqxEf4SiMDSb
 VwuI+tYq9EU8TvrMFIH8w7f8TOqGO0ZDeqAX6pz5BvynCdjFAeWAv9OsxmnLuZSdKhEgs850TS3rR
 qQMamJMw==;
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgBSh-0094Bw-KG; Mon, 10 May 2021 19:21:04 +0000
Received: by mail-ed1-x52d.google.com with SMTP id di13so20043401edb.2;
 Mon, 10 May 2021 12:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EFsFb8pMI8UH4jNijLN54heTyN+8V4Uo+MBIc8sUxEk=;
 b=B3BkgcsmCDDggzaQBqgSezKwkbbqsZfGSGHotgPFSo6MlhFi5AZI+EQJXmxL6ONXIH
 +XxT3brBTzKMIl2XB5AaK+hb0YNx6DinOhsmfRc/nInm5YEIeiDMltiuAI/bi+dp8yMt
 zHuHR5wg0IXhjq6MWHo5Xcp+bDr/7B3uOhlAhI6fCyybriz0X6gcBQooJh7NLRl4CXGN
 GOUXbAg0vOxhKZgOIPf8VsZfG5SSHaqQvy37N8Am7RUAM/0THSJ9jPG16/Rf49WDc4/n
 PvK3s+s0stZSfOozyYcCckeD1l1NRYuJErP3JiX0MuL368RMCgV7KZK/6RNqoC6j4Jn9
 5RhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EFsFb8pMI8UH4jNijLN54heTyN+8V4Uo+MBIc8sUxEk=;
 b=fjDb6SmFkV+zzs/jNvN+KaawdEPFI7tc2VHPOharjlhv/5pEphC+HTWLyKRQTB+eRV
 7+TJ7kkIT5saZ83aCguoueDOekFKJdrgPLk2GhW0qSYGcKTyk1jIcLCFHogXUN+icOlM
 pLQY1EE8ui9xNtjf2L6e2GA1oCHEf8moJnOyiv7ycLppM6TznoNBWzcKe7MDvvQ//yor
 fQjRkqf5O5VaR6E2mS3Dql3CWjJPbf8ZlRngD23AnNQuyweKW6IJx9yMDfiDQbNymNo1
 BtaYgZ1gH8I8TZRkRrxuVdsZKYnNQ4ZF5zjTl1sw4DZsVTVLrkeAmTzmkPXYpdc746ax
 GZOw==
X-Gm-Message-State: AOAM532TMixJJYFMynU/tVjY1WAHS0WsqfZQ7T3K2PusO6xPcRdrIcdY
 UB5lN5RXIq1ISyqKqUd2n+w=
X-Google-Smtp-Source: ABdhPJxsLinSeYfgg7lxOp4j3xHptYRQPXsgIzFgXp1XDQN7tfLYAzTCO0Vru0TAv7NHrcaunEiqIA==
X-Received: by 2002:a05:6402:4383:: with SMTP id
 o3mr31312889edc.333.1620674461780; 
 Mon, 10 May 2021 12:21:01 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id da25sm12588723edb.38.2021.05.10.12.21.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 12:21:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: rename vcc_stdby node name for
 rk3066a-rayeager.dts
Date: Mon, 10 May 2021 21:20:54 +0200
Message-Id: <20210510192054.8876-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_122103_683171_643B5C57 
X-CRM114-Status: GOOD (  13.14  )
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

/arch/arm/boot/dts/rk3066a-rayeager.dt.yaml:
/: '5v-stdby-regulator' does not match any of the regexes:
'.*-names$',
'.*-supply$',
'^#.*-cells$',
'^#[a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
'^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
'^__.*__$',
'pinctrl-[0-9]+'

A node name shouldn't start with a number,
so change it to 'stdby-regulator'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema
/schemas/dt-core.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a-rayeager.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3066a-rayeager.dts b/arch/arm/boot/dts/rk3066a-rayeager.dts
index 309518403..a73e8900c 100644
--- a/arch/arm/boot/dts/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rk3066a-rayeager.dts
@@ -58,7 +58,7 @@
 	};
 
 	/* input for 5V_STDBY is VSYS or DC5V, selectable by jumper J4 */
-	vcc_stdby: 5v-stdby-regulator {
+	vcc_stdby: stdby-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "5v_stdby";
 		regulator-min-microvolt = <5000000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
