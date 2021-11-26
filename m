Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36DC6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 12:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cFjDHq9btYCTGVUczcjAFja+mIGyXY1sObxAJdZla/4=; b=GgHpXr6IqiUiop
	TQwqaLBB3HNBdn9nEa2L/vdIQNPUsRZWGqGYI08qklN7Jg/WGua27Md3Qj5gyjGXBXVNpYOAvuuJU
	oIawCBr9tSOXcb1vo56veDyu1BYoLOKHHW4xCtECD06uRRRWP9z2jqJ/bv3m/HDnwygQiW/DfuBBk
	Ccw3SoFzkyJMZWpeURL4iiN+L0d3by1l3nV+1SqbKGJyOKqoqzUp5hJNURZnE4xpbg8WCZaD4nYPg
	tggmJGnsADsh11Xv537391iIRaiWs5LmbJ7BqobBgTUP7TvS6na6fstgnbbVykuuOGOKArcm/AHYO
	o1OqVqrC5+Bo3X1MQShw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqaYC-00AQJ9-0r; Fri, 26 Nov 2021 12:42:00 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqaKH-00AMkz-9w; Fri, 26 Nov 2021 12:27:38 +0000
Received: by mail-wr1-x434.google.com with SMTP id u18so18297229wrg.5;
 Fri, 26 Nov 2021 04:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WveCJzDdl0l4mujHAZT0CFJQL1dFWMtBRgbLVlZUP+I=;
 b=IzyJSpDdodNAlKNmlR90BQJ5l4tpvEZ0kwc43qEk93WVIkE+efu5gBF+jsRPDOClqf
 U2xBWJN13j3yAUqeTXy38pv8zF0hlifdBpo53iFycnZ9Xm54T1j/X3jjSAfGbXH8YWof
 D/qrMQxUnIsSLbBF6XhjsnkshP0b5DpZ23bJC6+2jRQLgvDKuTrmOy9zVwRcXRqDzSzl
 i7TbAPwcgxlf4XkbH/R6q/RQfCeNVudCW0GNYjhoeuuo62k+9+r4WqbuskJ+c0+Ob4SF
 DmSzWyoFI37FDqnTT0yjIX3FcyFrV57nIXb6c1vb4lkqttde4LnxzkrxOaiM17SPD+3Q
 K0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WveCJzDdl0l4mujHAZT0CFJQL1dFWMtBRgbLVlZUP+I=;
 b=5Y1+etBbFsyHkhGCINXdkgxj+sq+Ww/6N0MNSYo6t4dsYGHPij2fG2MnOsNtXHMwGp
 BVW4/EuRgcroKa3Ny5ILTi7NCIOqtEc32w8BTnoW8B2G/ucrLKm/c62j9fIqJJimDbWU
 3RNuQX9RVaFKrszEX2BjyXsUO5iENZbVT5REqXsdgbrZ2rOzDk0DMPKSYj8y9OhD5lp+
 +p+mJpXOt9MuO69gGdGlAGKsBDYa13bZ2yyIBRsIMUiU5BruNIgF9ViIcRLU9g5zOo9P
 58xCBR4y+9uxFvXTUDaPDZUvONzSfIwpDCSLgDQ+QkPWNYF7Dk/VWUzC9+fl3agXt4NF
 Cynw==
X-Gm-Message-State: AOAM531dVBhaOt0c014Tz/3Vu6J0XEUda80wmbn7blTdUXe7Gkm7N8Mb
 05EcfNJ7IzZn1keWV5Ln5/E=
X-Google-Smtp-Source: ABdhPJx54lWgxLYEUOC+es5kBFdEmvYdXvy16mln+hQlaUlaFl31L6MyfZMZLsAIUBBva9tq6zuH2A==
X-Received: by 2002:a05:6000:18ad:: with SMTP id
 b13mr14244388wri.195.1637929654549; 
 Fri, 26 Nov 2021 04:27:34 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id l7sm6821130wry.86.2021.11.26.04.27.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 04:27:33 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] HDMI Audio on RK356x/Quartz64 Model A
Date: Fri, 26 Nov 2021 13:27:16 +0100
Message-Id: <20211126122718.631506-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_042737_398193_8DF1578D 
X-CRM114-Status: GOOD (  11.86  )
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

This enables HDMI audio on Quartz64 Model A, and the RK356x SoC in
general. The patches require the VOP2 patchset[1] and my I2S/TDM
controller fix[2] to work.

i2s0 on the RK356x is connected to HDMI, and only has one DMA. I've
confirmed this with the TRM. With [2] the driver now handles this
properly, and does not try to register a capture PCM in this case.

To test this, one needs a video clock, i.e. there is no audio if your
screen is off. I've found that running kmscube momentarily is enough
to make the VOP2 keep the screen turned on indefinitely, which is
a pleasant quirk in this case.

Changes in v2:
 - reordered nodes in rk356x.dtsi to conform
 - reordered properties in rk356x.dtsi to conform
 - add Michael Riesch's Tested-by to rk356x.dtsi

Nicolas Frattaroli (2):
  arm64: dts: rockchip: rk356x: Add HDMI audio nodes
  arm64: dts: rockchip: Enable HDMI audio on Quartz64 A

 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  8 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 33 +++++++++++++++++++
 2 files changed, 41 insertions(+)

-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
