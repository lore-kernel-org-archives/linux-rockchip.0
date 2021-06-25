Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D410C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 10:48:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BD9F61445
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 10:48:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BD9F61445
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RRejA7dgLmQ4/RpsA5pYOQjsdwF7YyJyLmNskbZj+4Y=; b=be8w2n1dvUILbV
	v/GgW4AGvouD5f3L/Cxwb3Wfvk77OWQNo6CDjEhgVhTJr1azPnj2CBVYrQw+oJnotB5Qg9sD55Ztp
	0AS27hU3YtTjy653hi+w3o+AocULUcXfm+idf2m4/t9sU328L93/7deA7hsUuZpdmw7eIi0hI3ejB
	1Jyx6Gwx0xwo9z2sFAgPWMYmXiPOUT3SjtdIDuLfXkq07SVn6GbBkM58Xc5no7wMb28by0nMUISQG
	EkyZGGgAHZRK7hdmle3/BPLi9I8gSIAkhJHwfMaKY4jHLpn4hLb+VfFmNr4IWsibf1evkS2/b7/XH
	qNvCVoK5UCa3d5cLVvZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjNQ-0016Fs-F2; Fri, 25 Jun 2021 10:48:00 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwitX-000ty6-MR; Fri, 25 Jun 2021 10:17:09 +0000
Received: by mail-wr1-x42f.google.com with SMTP id i94so10010336wri.4;
 Fri, 25 Jun 2021 03:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2OvfRNkgFerBxJwOvZ8T0pE0S1djhbeNLuNpHoiwsBk=;
 b=TBOUAYHDsTdjFj4ccSIcslmXJabvBi+a4t3FrAt0Y8QVavGiMaXiK6Z5Ddfl7kX8D8
 DPfCPqPC7c2fmfOlE4UOD1NGbB75jWzWCNuTMcVrni2LFnuop2dfTtIBssNBZCnLLCyn
 zEB7jbwT0tFJGUmWJuAvYcCu2Qu4Ey9jUc4Zu+iOmg+Uvx25ITMNFsGt5amiQGPJqoGo
 Nsmqqsqw8R4I4FAj1zDWPF7W7Vw4hXxz4mp7VPlIC+591tSnNI/imA3ZMfQnh5F5cWFU
 71dRq35KZ2TSKYQ2awPdq0AhjJX12W/2reMRsq55YQKUf4EHIqRL2/taVCvRmLhj9HDh
 fylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2OvfRNkgFerBxJwOvZ8T0pE0S1djhbeNLuNpHoiwsBk=;
 b=eUfyUEMSoHnYH7gcUhKo01wj6W9biRnLJeViWV8sticwQFfXqnCMG8L4NT+s1VJKqQ
 yLaEnF/ryydorci2uDgrlVPRzoYmPp0joh5yopXD3+aWF7FBYC50bTIkzduIZfdk9TUU
 X5G+zjsVP6I6NTekPQKDvv/QfkQaAA95IufQ13XXf/MPoP0d/lHT2tmbhxMo2mTJJEmt
 cp8Yf/fk1kMeiR4DQN9em3SowI0vP2BRG1QgKAk6htrD62KxSx2T04ZlL/dXHs5VbzFo
 OJdnWle0LGukne5rnL3fLZE8cyyKBM+F89jwHwMtdDWIFMpxd+aulMgWwY3L8dRwlZtm
 gZFg==
X-Gm-Message-State: AOAM5309+Lx94P6dPOXAGydOcRXkvHAgyh+NpWPyxVWv0g45na7AdWQa
 elIfWn1asumt7qCisElj9XQ=
X-Google-Smtp-Source: ABdhPJwNCH0VNHLkU+ZWTZajqIw9K2VftYp55n/O1Lj4x6rE77oi50yKHZukZRT5d3bpTtBWTp7NhA==
X-Received: by 2002:adf:ef92:: with SMTP id d18mr9965242wro.219.1624616225361; 
 Fri, 25 Jun 2021 03:17:05 -0700 (PDT)
Received: from morpheus.roving-it.com.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id 204sm5462736wma.30.2021.06.25.03.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Jun 2021 03:17:04 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Tobias Schramm <t.schramm@manjaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Don't enable hdmi_sound on Pinebook
 Pro
Date: Fri, 25 Jun 2021 11:17:02 +0100
Message-Id: <20210625101703.3290934-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_031707_813287_3D378627 
X-CRM114-Status: GOOD (  11.44  )
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

The Pinebook Pro doesn't have a HDMI port and neither of the hdmi_sound
dependencies are enabled so it fails to probe so drop enabling it.

Fixes: 5a65505a6988 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 2b5f001ff4a6..f584d08a63f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -442,10 +442,6 @@ &gpu {
 	status = "okay";
 };
 
-&hdmi_sound {
-	status = "okay";
-};
-
 &i2c0 {
 	clock-frequency = <400000>;
 	i2c-scl-falling-time-ns = <4>;
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
