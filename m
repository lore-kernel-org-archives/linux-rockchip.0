Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E151CCA48B
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEOqNFA5ExD+hQqKgyycXTsoC+xt1i8Mb3W25xR8un4=; b=KnQLErjWOJ5z6q
	U2BDZ4gju00EGfqbgkpZKJXKhLJCFv7JvOUVbXNjz0MX14Hp5e13fF8QN3IjRyjLdBi6SOg0U2JO4
	fwZCrykXEMGgmYxBSRVEhiAW1hSG3jCf/nDoeNk4N0JQ3uV8TTiLqXpIlXd5Bj3eIn6CXE3rpAC2s
	pmk/4Ana++I5qGz95w4zIboEuQWidPyuczEx5rLiPP743mpaz7yPHDhmOgDklMK4NP1EAqbliUHZ7
	9IuSluM+UHfRCtxzVzpp+QVswIJAw0co3FgOAgPMt3dBob/2LSqLMSt8YaKH9qU9Bgy6PtTOdr9kz
	LUnGqh1bpecxr43WcbqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfDH-00000002d6i-3Rlr;
	Fri, 16 Oct 2026 10:30:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfDG-00000002d3g-0FvT
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 10:30:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5k/Nx254skplKaHZfy+hhUKCjKjMi13IPnfogdi4XtM=; b=Emol06tSEcovlg0uRL8HoQ/YAc
	fHUCP/ynpgXH0q4J4aktK9f5jFj28V+fNT1k+ueB1LnOzv6PWoPlq2CwJtWjpg3hjVsKBAbW5o5uA
	bn8iTBbiJrgDwZlY9XInINiB/Tt0z42o3oFns6zhd2nxMJ2fMe7z1PYFFL7aF8v7c2VqF4BbXj7iF
	7ExebQj0AkaCfDzK4Zs230e/zFH1iJEmkuhu+Na/wQ6RpihgsHw6x6Mifkrt4VbvZKqEUfUjoDN/P
	J8TYxF/ibOuyxZRLCZES5jbidavlxlyvyUirJfHwm2HXiSOGZRi+DUfwa6nRQzssgnt6yHGuBTIvh
	OKBDJvmA==;
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHfD7-00000001NrF-0htr
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 10:30:56 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6b1aa2848d2so319369a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 03:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792146647; x=1792751447; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5k/Nx254skplKaHZfy+hhUKCjKjMi13IPnfogdi4XtM=;
        b=U4YsIDqwZ/9DUEtVVPdyJ8Q16LZlotS8F8uW0z5uhwmUYNHHeSKfsSzkc1fiLMIXvu
         8CuHSex8TkgCd0md6MkYSTJqyUIgm23Lnir8yfErdC8cz7dcR0wCiRfeA16GBZ8Vxjmn
         D5B0ME1V95SD/BK1UUfYnxK2AKzWRZVoQpdyel2ZZXXjrJneqya9ojPyd+RhoAU4rwJw
         F2WlrYxhbRZhCDiiVHMLAo6WYA8nnVn0S/A8EpPnBU1ixDOWtkprAoJXD29pmNxC9A1x
         n2W+maNFe8XGEqvppzXa+LN2P5zmJpLz7E2jgokoV+GIFiwMoROvtnAsM7D2N3P+6tXg
         zJDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792146647; x=1792751447;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5k/Nx254skplKaHZfy+hhUKCjKjMi13IPnfogdi4XtM=;
        b=I8+pXOy5zM1I0BV15KK0z35OpMFXOaEiy2TVWVL1WsdRQ0TzSQTD4Gv1eTFvJmOB/F
         5mrseuQ5TK1m8C1RcurQNs83OPpFj+IyA5GQM2oSL90YDHG9ZjvaGqXj2jBWSA3MLZTQ
         LX04z55G9xZbYlUdObBWt26I6kAVJldf13vUkrRxqUkgdj65lOgJoNRBdGxl1DmhSgTw
         WO/R5x5EGEJcfPLGKF3KFFztMuZ0ELzl+XdUSahE1AmUomIWLMc2NUwuM3obczNLR+1a
         BueAVvGtf4hMrFvb0MklufcG9zXRltjict7+e+R47+fNgnvWPmXNamqAhM0LOYUqr/JA
         FcgA==
X-Forwarded-Encrypted: i=1; AKwUvBwEAfehdKynII2H4c2FqttL71MZeBg+7N4op+ZIp0Dnb46kWZuLpt3KAoH3N5Dkq5gxrYcyxbKUqILPhk1ARw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIYtu3Fsn0sH5y7wQtUuxhLqnvB0eFN97aguxBCpOv+DLY/jQpw
	jr7DbaQ/WBQioNR2ozw0qUsY4QL2nabgqnp9EG9kiin/LerChbjcaeM3
X-Gm-Gg: AYBFou0n4nSqZwsgkbJyWv/4p4YTU1eVcVTiiNiTJH9mZ6x1nVctaD360JTpyX9+qna
	B3DumcpJH5trDvWdDRAZblnTsaXCHJPa64kupPMNkEG4I75VYImtw4HtwfUCKQpOZgaRN/LJ9Ou
	00+F3cPfnh88B05p70oiB6AXlo/UcbGC/zyhzzEuv6Ew8vI/1veF6dFak+M0B96cfrZ6vXstKbd
	xjFB/WFu4iwuxafRZK+05qpw9y6lT/EWtKy4Q7KmcDaJgC6oODe+zFu/FZ3wFkjIczf0TEOQ96S
	6HgHxCu7rlsW65xhYmF2+y78pXVhG1mBp+kKeO1ZnTu47oMZF/rms3Hl+/zlsGFxja0TYgVcMOo
	3koEclePx+uHtYCusybxswbZg0f1owQ/MAZtdzA/b2jGvt/CfrXgCjswsko7GlPCziU1VcJwfh/
	xoBWbRfsjhpopRerdGkmWnmMlWGX0Awv0rvb3sw3wPfaWQTrBTa2TODYkke0Z9hDRtGit07XrCL
	/pnP5gYL2h8
X-Received: by 2002:a17:907:d1b:b0:c29:4a1f:76be with SMTP id a640c23a62f3a-c31aa013b5bmr2062189666b.20.1792146647503;
        Fri, 16 Oct 2026 03:30:47 -0700 (PDT)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c40912ce133sm60613866b.31.2026.10.16.03.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 03:30:47 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Date: Fri, 16 Oct 2026 15:29:37 +0500
Subject: [PATCH v2 5/5] arm64: dts: rockchip: add FIT-PCIE-SATA overlay
MIME-Version: 1.0
Message-Id: <20261016-ok3568-c-v2-5-068d68430e6d@gmail.com>
References: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
In-Reply-To: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Johannes Berg <johannes@sipsolutions.net>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792146625; l=2276;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=BU4GHjU/addW49Fi5owY8SmKZGnqIixi6vq82uwwdHk=;
 b=L6u76hvhoFC1VxSmQLMBau5CcR67ge6OIBk/TdlLnbx3Gjxy2lnT5flh1/HFTDlutOvBF0orb
 uvcNsyj5RxQDcjFvDJgMbKc0qpdj8XXPdVnnu+FBW8dVEo/93Pokamp
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_113049_608353_B8139E69 
X-CRM114-Status: GOOD (  13.86  )
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
