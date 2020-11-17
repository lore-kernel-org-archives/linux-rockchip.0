Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84A53C63697
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A4412222E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VJBAurdF";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="inLULAMd"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0A4412222E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WO24THazL4DpPri1ZxYYQgLhzO4+TS4DIan4OZLJF2g=; b=VJBAurdFxsddrz4cvaR8n4Bp7o
	XQj5GCL2kl/iGoqlkf/GoTWSpAU7pAQtb8cps2+SsOW7Pih3fP20mCGqGmYFii21vmotH8hPchBuK
	1rcUi7axF9Ez26g1RTBiZ3RBNIOwMFF2gur5mb58qW3jfaaXbbcKqUFEQ/o1pVsYjEhVj4hMKIWhZ
	Smty9YTClyCY/Vlf9YufZtxE8AXmsClN5g8Y35z1i53vP3cipLIgPQI4wLaC+tURXrKMdBirzHpEq
	I5sEhgMVi06O/BsMgYKI+ojfL/69ICv1R3/2Z3wOLofisxeSJrPrWgn6nVxCwpE52P0Ew9Vc62lOd
	5tgLlNNw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6wd-0003jy-Tc; Tue, 17 Nov 2020 19:47:16 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6up-0002vM-NR; Tue, 17 Nov 2020 19:45:29 +0000
Received: by mail-ej1-x643.google.com with SMTP id i19so31095551ejx.9;
 Tue, 17 Nov 2020 11:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XzfD+8x/gl2vij+zxF0vgPJlMvOnmt8qPR/mutEO1AU=;
 b=inLULAMdL/crFcKk/opBy24CIVw5O1FrAWbNTOXuWYPxS7W1sK/ue9rhC+EUcZvv8x
 5oK71otzs3JGFWd3SPpaJyZzCe+g2Af+lbI1sgA9iD90rw8hHV/K54bYfrCnNTLCHdpB
 uR7n38MCdhSdQIQyEdezQ6fVHTEyA15pMbbgwIJ/S55HlI49y0V/45KRI3roAtO84qu+
 4yiFI6gV9z4ZSTXBQNTQIyc4lj3nk32hDXocZyw9tUger/J7P14i6H3/zEJJdxtMARTg
 5aKaPeXDmT41dmOZAWuB37/c18WCDKfK8pdANfnvoFLNwg8X8+If65Uh6awTlUyFgDKF
 nXTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XzfD+8x/gl2vij+zxF0vgPJlMvOnmt8qPR/mutEO1AU=;
 b=o88QonAwZlermsy6I61SUQQsSBecYhq6AGaJ6Lk6wfqolqZG+oT2h/ivFz/bBww7/H
 bhDztRtrDF2p2Y5Lu4g/SBNyaILIyLALblAhtT+ddiDPpmBKTGrWfzt8kQ8wPXwLd4IY
 gBfcP1YSmP7uiUvU06uazTppe2IdUThM1v514a8MRlPTHFgeQTrgvaE7jy9AtGuKhr4p
 RPEptStpKkUfiT4hPBIBtZBQdzOTV9IwNg/VjTsa4IRTIUAYhfTBciZFgJxM76mxiePJ
 OQ3OJw/M87fhuw20gTBVF3rwOq5pHoK+lH9J75AaHTmy0efiwVQ549Kv90nvimZjlWPU
 lRvw==
X-Gm-Message-State: AOAM532gu4AaoD7eFXvZxcQrDWbytiIUvoq/ZkcvNSFoOdjdHubusHfs
 ITcYecgPOJCk5X560UUY2Ks=
X-Google-Smtp-Source: ABdhPJwr+w87CiPQMS+gZT4E2SCcWJAhpf3wLEmXdGSKKFZjrhCgeFmYqXwu6gLajtyK923OBX5Law==
X-Received: by 2002:a17:906:3a1a:: with SMTP id
 z26mr20294782eje.519.1605642322124; 
 Tue, 17 Nov 2020 11:45:22 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.21
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:21 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 5/7] ARM: dts: rockchip: rk3066a: add #sound-dai-cells to
 hdmi node
Date: Tue, 17 Nov 2020 20:45:05 +0100
Message-Id: <20201117194507.14843-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201117194507.14843-1-jbx6244@gmail.com>
References: <20201117194507.14843-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144523_931109_2D419D48 
X-CRM114-Status: GOOD (  14.28  )
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
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
