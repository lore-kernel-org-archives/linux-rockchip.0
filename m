Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C383C4361B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15EB22310E
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 15EB22310E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WO24THazL4DpPri1ZxYYQgLhzO4+TS4DIan4OZLJF2g=; b=g6TV5aGEbNDvh2j/OMHaunWo/4
	W8rMGQ3y+rGsnSysXYg5MU3oBbg/TPphUYPFRIoLTACupGYQR4na/hPRVl1pz4PPje4F7dm92syek
	g2MBOs77d5W11WYYpTTp7QGm7dA4KkjBNxwxyoDrcmT3qzHTTpZvvYCZu4JSZ3GvpDk2vt9EbchZ3
	jO23WdvqsvdY9R8ArTL+udAncrKQrDOeNyj7VrrHaw0HzhShZa+kOOxhFWN3L0/JrgJzYe9CftbAt
	nu91cVc1A8+v5PXjS4bbBDS9NluEdCe/TdH5IEq/bI1QH4vVhmwscL++lU072KYfcsoxX3jXuuAf/
	dEKSA7rA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kluBB-0003u8-NK; Sun, 06 Dec 2020 13:34:21 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kluAz-0003rT-US; Sun, 06 Dec 2020 13:34:10 +0000
Received: by mail-ed1-x544.google.com with SMTP id l5so10768752edq.11;
 Sun, 06 Dec 2020 05:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XzfD+8x/gl2vij+zxF0vgPJlMvOnmt8qPR/mutEO1AU=;
 b=YdnQLiCBK/wBANdCyVFkDIuYa/Owf4imk6/kuZS+qLWOfNAnswRN6psvtJ+xR0sEmt
 ATVRfxNf+UUyiETI3QWMjzXJpGSoB5x0PF4tOzzbpLjuBtI3pBsExo8hF/wendpfC1Ls
 G50g+Gh6D1SAaAgkjYElwb5rF7b5wvXUkO9vFy/fzd/XkZgd+Zc/HqnAoH6PVb8m6saR
 QbtwHR4HI471Ws4jqKUEBawrQDuKmQrjASR3CWaScxinx7qj7hwrObD//yqNrmxiawgC
 rPBMHlrH8dTfgBoq1q84zAdYk8H9J0yq8MjmlJaPa/TvqPsIoqgkycNFhCNKwFNL/oGN
 4PxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XzfD+8x/gl2vij+zxF0vgPJlMvOnmt8qPR/mutEO1AU=;
 b=cdHcghSsd8hnpFmgXx/ndmWjOThcWQgV3WH5xfHEkQ5Boomrcb/Gz+K2U8nLk4Y+g/
 h6g6/uQTJOkoDQKE81KJIUD3FfGS2VM6uO0lg4rAFuwgL3pWK2zaCfq4GmMKDj4PjPm5
 3NHGihQU0ngmWh6mLGkDxMaxJB53CL8W6UohVVXJsgczrszmX+txNiekzoHKhrcUpbgs
 Yag5cUTKI3+3cCQGG/H+1Mdv+sPZZzm/LAZ6/YQRMFhMreWcdd1AE/Fi8qUbSyZbC4hx
 DxUEBqxXbaJWqX3rIlFIWI+jENhI14Ch+AuTn6NbTF1C7ST5Pzye/KE/fzV2EovRvDCJ
 ZVQQ==
X-Gm-Message-State: AOAM531jNkMJNyDFH6+uGW2tRfD9NuOm7anDBp2fYad9bm03fEbLSolz
 CuFg1bSixwOT1oKs+4kzeOM=
X-Google-Smtp-Source: ABdhPJyTcga5ryTaOcjxeErZN0uSNiSlX+EAdf/VgZlWQgBUllwgGITJy/IVUbE7EtRHuBbkau4EpQ==
X-Received: by 2002:aa7:d784:: with SMTP id s4mr15760934edq.215.1607261649141; 
 Sun, 06 Dec 2020 05:34:09 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qh23sm7770129ejb.71.2020.12.06.05.34.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 05:34:08 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v6 3/5] ARM: dts: rockchip: rk3066a: add #sound-dai-cells to
 hdmi node
Date: Sun,  6 Dec 2020 14:33:53 +0100
Message-Id: <20201206133355.16007-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201206133355.16007-1-jbx6244@gmail.com>
References: <20201206133355.16007-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_083410_140165_50DEEF06 
X-CRM114-Status: GOOD (  13.20  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, airlied@linux.ie,
 linux-kernel@vger.kernel.org, broonie@kernel.org, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to the 'hdmi' node for 'rk3066a.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 252750c97..67fcb0dc9 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -124,6 +124,7 @@
 		pinctrl-0 = <&hdmii2c_xfer>, <&hdmi_hpd>;
 		power-domains = <&power RK3066_PD_VIO>;
 		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
 		status = "disabled";
 
 		ports {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
