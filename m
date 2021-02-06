Return-Path: <SRS0=YjQ7=HI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 257B7C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B3CD664E59
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B3CD664E59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1wYuQSMs/HQj22FodCh/I/7QTsIRB09Jx+k5jfG5yZ0=; b=l1UlZ0XSUJxKrSiIdNawvcoAN4
	7r+Ik0km/5U6ouSfSGLR+t9LfklmnU833jvQ7UPDauaezKbd8CTeixkxzYCbbXJ1Zo74TyRDvFJQb
	g1fg1XafefewbkkynEvTskVo7HSt5jAdN80KHGe0mTvpWzr7vkGud4o+TolwwOujJbqSfYb9/+qP6
	OjZ4rkFy9cYVdHdzIKi4Wbl7XF/Nj27PAaQgWK0aoxS56T70USgLr9QmO8zNrSkF7H5FK/E2NhHTN
	GcXlQ8II01LHFtRw4TqLN1q4Qgy29Ej1/WTBgJR+WzILuNeNX1cv9tv9NFd/9kRQ/Z5MOTkyUyqEg
	ZDF64Rjg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8SfU-00040x-Gi; Sat, 06 Feb 2021 18:50:52 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8SfB-0003uY-0B; Sat, 06 Feb 2021 18:50:34 +0000
Received: by mail-ej1-x635.google.com with SMTP id hs11so18354283ejc.1;
 Sat, 06 Feb 2021 10:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VKpw+TGxcSonBmJvYVbjnLKEXkavUls9cDkglgeREzs=;
 b=dxnRtsYmoNO08QDTm2EZFmG/T23JMcH5IQolk9/b0IoNtT5EFbyKFtRfgdirtktHdg
 QS0Kyg6BQoCR6hrtkpphM9v0vA9+KnndfyAs12PitPwIvQl76NNbUMmrti5m84D+KU0+
 JdYmTqINPLzMqd9tzWVusZHAk3WzHRHVhKksOH5KqJUm6UZv0gzMpng0VWVk7PNEpgr4
 CHKaU208IpfJjWT+0Yyq0tn6Wucg8O2BLeWn+f49bLU+JDzVkxpMP2xrBQswIQh3OSie
 VDeEtgHLrIn5nBQsJ+/5eMhJcDVv8hAaRTl4bOrmds9yACjz8CQavz3sX8bAwmbfDQzm
 ytFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VKpw+TGxcSonBmJvYVbjnLKEXkavUls9cDkglgeREzs=;
 b=Kq54PTedb1YNDCMmUH6B2kSr8F8XmP/EBevv/9PpWpUQ5l7pFs/5Vqd/Co0HYgF6ib
 gteSOwLzz+khWhDrl34gp7HwgItiGmxccARge4AXyLweSpTWDKysEivGbMHkjdrV/K80
 QnW8UF4Xkori3onXL2W7oTFNEcPgjHoLQWbYNK9bKJKTvJkEL1jwv2q4yTnyTLG6h/hw
 cfDLe60pWS/mWbMAYas1e9rtxeT/1xJtINLwEH4CP4E/u+9NT9QEiVDpcEOFjP86iOvg
 675aP031emSPVGTvBgrsCShFvftwnCQ0ry9qJbx0WLHWyxmBGCr21ks0bPWL2PeUgPin
 jKOQ==
X-Gm-Message-State: AOAM5304+0tAI5HiBI/R2Epl6Zz+EVsphuffy21il2TPWROzTOMQ6MLo
 Ak2Oop/Xd7RF6XQvRnhn4S4=
X-Google-Smtp-Source: ABdhPJzeqxbxxXcW77TaBb3tEnIZmr97HAxQZzXcFqol723r3W9n0T3CYbLDmWAah/M+tRsSHEZ5Ig==
X-Received: by 2002:a17:906:f102:: with SMTP id
 gv2mr9769363ejb.47.1612637431762; 
 Sat, 06 Feb 2021 10:50:31 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cb21sm5890005edb.57.2021.02.06.10.50.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Feb 2021 10:50:31 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 8/8] dts64: rockchip: enable dwc3 usb for A95X Z2
Date: Sat,  6 Feb 2021 19:50:17 +0100
Message-Id: <20210206185017.1817-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210206185017.1817-1-jbx6244@gmail.com>
References: <20210206185017.1817-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210206_135033_100059_AE9ABF1C 
X-CRM114-Status: GOOD (  10.88  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable dwc3 usb for A95X Z2.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V2:
  remove node wrapper
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index 30c73ef25..e71870768 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -357,6 +357,11 @@
 	status = "okay";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
