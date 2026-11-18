Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69A060A2614
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wV03HJwk;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=TNTo7DAC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lEOqNFA5ExD+hQqKgyycXTsoC+xt1i8Mb3W25xR8un4=; b=wV03HJwkHvcYcpleR+WEy5tDRV
	YXsQyB+dOH9c1GJHICwNNvz9HESaBnyhsMwY65yMkwPvxrhynOFQVLS7bYR6pju7xbHtHCOSbRZia
	SAh3rFqG9LBhfE+Dp3X/9S5zq+BrUAILVpfLkLcAKDh7dgggGUBUfoZy/r8RlKn3KrZijnus/+JDG
	2kN+Fgj4xiEnDsJdj0Q66VE92gWzbUmj9uRNnGjQ2F91gek5D/JAiPfK5Mo2WRhVGzUJRRL7XrJOo
	2MQ1x6PwWMbt2kyt9Gx+PWoVkeN5XtT5NIBqQGhJcjC0zWIsNF0r9Tsdkz+rQjyEV+jY4fkvPkDA5
	MwpXjUSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6j-0000000AUJB-44zJ;
	Wed, 18 Nov 2026 23:30:29 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTp6h-0000000AUED-32Wk
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 23:30:29 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-c4d5b2db4bbso92519066b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Nov 2026 15:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795044626; x=1795649426; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5k/Nx254skplKaHZfy+hhUKCjKjMi13IPnfogdi4XtM=;
        b=TNTo7DACOk53ojLL+5+vjCZeoA/xUWGeWbVkQhGpLfJAy1hoQzyi7wz5cjDqwQiupj
         twZakKCAn6xAPzMQd3+jYRAvdwaaJ1XDbDfEsDnPs9EA1k3bIjUGoKAxr1e/ST+fhcpY
         pgBj0ciRHVxUVHBpyb2QMrqU7nwjgfdmCDLn4blOFMoJPXDmM94rJTNjZ8foIgRYht5Y
         2/Xd6J4Lhw8ZEBpFSFEZp9HvESHoQWLzepmnXTUwgvEc+22G20heU2NNzsP5dRaLfuGv
         0PULX/T8hpOb3bwf2RN/ENvuktwhKxWXgxp/s45ijLzHaQGgPEgln5wq8pnB9aOHMhLb
         iPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795044626; x=1795649426;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5k/Nx254skplKaHZfy+hhUKCjKjMi13IPnfogdi4XtM=;
        b=p/0ilHK4ZLeJLoKA6FYx0wTNUIytwt4ZroIGsgkmNfSVtxMtiGhxxreoxClCbxICw/
         6yuuFR8pGCn4RPRd54BMBUJUzZYN8Uz8hp2FR75cvzIubMkAAitGZ5yT5cBu0hADPt8P
         93yNnfhcZ6Li/NoMV9ecGUEt2pHaBTSrRRBjlSH5dz3R85Nt5a74qGXpr4h3dzlQ44RE
         Ac36vS6f2IVUNKs1uUVhNUKihB2zNRChG0Ec3lIpYfYkkwrACrpXmxflkL9svf1w/qNz
         SoMItYK7H2SLJRj+lKMqPw6BMsvqIHY9jbmEKUYgCYCHJzQTXdgZxlrnnxsyTV1rMlAg
         iTSw==
X-Forwarded-Encrypted: i=1; AL+hErHXi22YSiDg2Q/i8l2chapUeV2OKMukuH//4l2QQAqyy/3sA4Mke6U1iDp5p17em2DnQFC9nGhD9fvnsPV3DA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8RxeLr60hMyIU7jywO9Z6XioEVnukIbeuXHVUxmtzR4TCoH+KJ
	8oz3zWcQOIUbO+SFxyzD9lbGHL5o4zY/jtQfjXZiM3O65LfArE1zDLvQ
X-Gm-Gg: AYBFou3HddfBuSej/c31WEbcdBXQY3AUFZwMssYejkto23uzr6IpHTPZIdWUBm5Mf3Q
	cXAiX51HumPr7ruIVwk81sVkNoWNou9vc8MUF5AvhBrt1sq/jCv/h5hiuNLVP3ei7ejVFZOlihf
	xKJRS4FlcKSNJm3fEmLlDv7284o0V8agsfr1khJpQI/xI8Zt2gqYm1j9m/OgJkIXBcmX1bKPcJO
	TUxPlKagKKHOsDHt8X5r/cBKfbfSzxdfPZDzGjHLBO61ad/ALOks86ChzjzWPpedw0lQK3nBgMj
	2KBZYU3Tu8TkaDcFed19roDPQ4fqlQAMzM3idpnt1YPXWNBx94Wb5Hi/YkHjckB/u6yrvqzuEVq
	FEmQ5uWdYW4oPhNHNktPFYA474wQhs1dCkk29cWmiwqZc0kIPi3/81Vjsob5R3w3lsmBVTHpQ6C
	zG47tVwSUCzZwi3j5jbXg5tS+Ci++WYybVZtFh2zN4nqYy2CS6fpp3bYouKp4ZjYmyvbWU9FOKJ
	KqzETSSc5L+7krPx/PTZ+e+Yq87YYss3ZWJH3JKcNrhyIblSnvZoY16GC0eQ9WQ4kBqH6EeAI29
	CBD26hJYROz2SwFRYrTJRz6V4NnIlrw+vo/cFwvIepQ=
X-Received: by 2002:a17:906:4fcb:b0:c51:249f:7215 with SMTP id a640c23a62f3a-c512b8a55f1mr7876266b.7.1795044625877;
        Wed, 18 Nov 2026 15:30:25 -0800 (PST)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c51234d2159sm47809166b.78.2026.11.18.15.30.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2026 15:30:24 -0800 (PST)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Date: Thu, 19 Nov 2026 04:29:42 +0500
Subject: [PATCH v3 4/4] arm64: dts: rockchip: add FIT-PCIE-SATA overlay
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261119-ok3568-c-v3-4-071840643591@gmail.com>
References: <20261119-ok3568-c-v3-0-071840643591@gmail.com>
In-Reply-To: <20261119-ok3568-c-v3-0-071840643591@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795044612; l=2276;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=BU4GHjU/addW49Fi5owY8SmKZGnqIixi6vq82uwwdHk=;
 b=/neaR05ZN3d8VDseWD4vUUFnzqAFmowQBx0qURgqWIMzl0ozaAIRHvzg4a0boh3p323u7e21t
 FjwCaP2NmMlCftIXe3BWOgr3mCScXHJSAZQuCsYw4a8uF5wZTDs6Ok7
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_153028_049640_3B7A2E53 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

FIT-PCIE-SATA V1.0 is an adapter that included with OK3568-C board
and allows to connect SATA drives to the device.

Add overlay to use combphy2 in SATA mode.

Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile                    |  5 +++++
 .../boot/dts/rockchip/rk3568-ok3568-c-fit-pcie-sata.dtso | 16 ++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 48c83f79f83b..45e94a44107e 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -155,6 +155,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-mecsbc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-odroid-m1.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-ok3568-c-fit-pcie-sata.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-ok3568-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-photonicat.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts233.dtb
@@ -275,6 +276,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3368-lion-haikou-haikou-video-demo.dtb
 rk3368-lion-haikou-haikou-video-demo-dtbs := rk3368-lion-haikou.dtb \
 	rk3368-lion-haikou-video-demo.dtbo
 
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-ok3568-c-fit-pcie-sata.dtb
+rk3568-ok3568-c-fit-pcie-sata-dtbs := rk3568-ok3568-c.dtb \
+	rk3568-ok3568-c-fit-pcie-sata.dtbo
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou-haikou-video-demo.dtb
 rk3399-puma-haikou-haikou-video-demo-dtbs := rk3399-puma-haikou.dtb \
 	rk3399-puma-haikou-video-demo.dtbo
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-ok3568-c-fit-pcie-sata.dtso b/arch/arm64/boot/dts/rockchip/rk3568-ok3568-c-fit-pcie-sata.dtso
new file mode 100644
index 000000000000..474488ea994b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-ok3568-c-fit-pcie-sata.dtso
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * FIT-PCIE-SATA V1.0 is an adapter that included with OK3568-C
+ * board and allows to connect SATA drives to the device.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&pcie2x1 {
+	status = "disabled";
+};
+
+&sata2 {
+	status = "okay";
+};

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
