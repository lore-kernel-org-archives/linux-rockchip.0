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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21D13C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BBDD82310E
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 13:34:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BBDD82310E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=16gS6jjmYi2GTyyTwGt2V+tBmHCbfgjxVBgcxsqyQhw=; b=fVpJ3DSg9oq0MC6d2rdoRSpO8h
	hM0jniNMdcjDlgDw8vzLrSBSnyTTD/xoAZGzxABr42V4bjviWUl2kL1NaSekbiTbxphJ3AWoFwJJB
	bz9q3VlukwDdVtzOKkZhsa6EknDyC/p76o09tCuZZsJaSzVSnFjuQt4GnWbGu2QgACEKOO5cdqmOB
	2AI98xXufl64/l9IpTQCRnMWVs6+4YAkQIHyL5A2WJZ/OX9pcpnpdlrrKfea+EUVyUavpUKrkMTY7
	gQqshQvWm3NaG2WhMD5Aax0GJq3/ARnYhhvQDA29v/221pGho321WUNolDm3/QUmxfYJKZgzXPLS7
	xQdozfgw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kluBF-0003vE-9P; Sun, 06 Dec 2020 13:34:25 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kluB1-0003rv-JE; Sun, 06 Dec 2020 13:34:12 +0000
Received: by mail-ed1-x52e.google.com with SMTP id b2so10821969edm.3;
 Sun, 06 Dec 2020 05:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/M45YtMWBHvWX7HJgiaCX3duzycDxACgeh25TxK15Eg=;
 b=VyMr2Z2Y2FxVMjApnc35MnfMrKlfVe62MA73cWFUYFKdSao13p18AZKDCQ+AunENQJ
 0smVDtZJueGCSqpz90+Q0ghFZy0UViSu31AEWd+pH6kF9OrNDBnodljF3Qy1MOMO58D5
 xKBgYx6mK431AusxL2+qYZ3hU0+QZf7tmbPdtREX/jsFaUVKjlzkkEd6nokY+CZEoK8e
 DJzHQ0qWdcPIdsqqNdLd1pFK4HJ5+t24UPV5b7Hfp0V19a8gLDU/jd8jwIpAgEvA/4WM
 cyxB2IpQUGhhs4YMLz/fi/zrcf59//JIl7DLjaXmj72PowGdVJkZfVYHw7ifH/kjhoDG
 45Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/M45YtMWBHvWX7HJgiaCX3duzycDxACgeh25TxK15Eg=;
 b=fmV2GiPxQ9OfjRKgmMusquCERafG7CZ8GMCC0BjzaL+gqPtbHueeQyTBILUvSBlbF3
 U+x5ADXu2nxTp6Xu+8u+PlcooqI7pxjhBlEzqN0899pxKZzhpDDhTdiKLlhdDjCAVrgp
 pNUZSloX3T7YNxnFyqfDOXMhCJOKd0LZ6CZ6pXAs0sy5099x74DEEzNYsbFnPP8JZtbd
 F8n2VGEOHki0Ub8Bsxcg/MjpinbW2JQsvCZyCSYIVKo3QN9fQ1reLB9RwkB+e1Um0/OF
 YcPK4gqTZZxpjDi2d7bi8Q0vM9o3jztmYXbyCyN7NaPdFxD5HaK1zgvf+udJDU9gwDzN
 Y65Q==
X-Gm-Message-State: AOAM531gO9K8+S8Oj2Y4QJUplhFkHINywVAA9MwDXJhB12ccgQL5Eb5c
 NMuvinMjIztPupEa/XkphwI=
X-Google-Smtp-Source: ABdhPJw1Wm1W5qPXXa98kmLBiwpshvAAU1dUvFzjqg3/KeUGfBrmVqaOo4gngpFc6QMwaVBCy31C+w==
X-Received: by 2002:a50:dac7:: with SMTP id s7mr15721439edj.106.1607261650199; 
 Sun, 06 Dec 2020 05:34:10 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qh23sm7770129ejb.71.2020.12.06.05.34.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 05:34:09 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v6 4/5] ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
Date: Sun,  6 Dec 2020 14:33:54 +0100
Message-Id: <20201206133355.16007-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201206133355.16007-1-jbx6244@gmail.com>
References: <20201206133355.16007-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_083411_696128_9C7D4266 
X-CRM114-Status: GOOD (  12.19  )
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

Add hdmi-sound node to rk3066a.dtsi, so that it
can be reused by boards with HDMI support.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 67fcb0dc9..f91ce3054 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -49,6 +49,22 @@
 		ports = <&vop0_out>, <&vop1_out>;
 	};
 
+	hdmi_sound: hdmi-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "HDMI";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		status = "disabled";
+
+		simple-audio-card,codec {
+			sound-dai = <&hdmi>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0>;
+		};
+	};
+
 	sram: sram@10080000 {
 		compatible = "mmio-sram";
 		reg = <0x10080000 0x10000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
