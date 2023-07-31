Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2803BC001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 10:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FITwl/7fD55hHB71gLC6IeCKxaIv+xNP02dCqEXkuok=; b=vzwBOZbsAZhk/E
	xA+8XrCVtIIEbmSKcEjZ25CMh+NLDgaBDFMO00tT2pLf4QPZ3v7l0CaM6O8SLgk4YiQ5Zw5/fF+ra
	cB2sKsgMkDFY34cnFHt2D5Z2pggyOAyvAF06p2l45w1ebjgU7RSnofQUdAPLWUztHUu5NNovDkzb0
	7qHM++IUlatfsdq+RMY45Rav355Ym1C5p48qLGqmSCMiV6eaIW3TPlV9qKL1mkNqNnsI/ubcQfcS7
	rrTaCgtk7Ug1noLPulN7eghxT46b5FSRRty/jxcc+CJPTZYK7NxLpKPamPCa2yNeVOFPyW77JKhDI
	Csbh4ma2FvpHm16Ia1fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGv-00F7hK-1w;
	Mon, 31 Jul 2023 10:37:05 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQGG-00F74q-0x
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 10:36:26 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-686ba97e4feso4357534b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 03:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799783; x=1691404583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CGv1dcNKbS3YC7V4kkMD0PxlW/a+2lGKPQQ7EbzshOA=;
        b=ZlNPo2MnkBjJ1fcgEvxHQ8xYzc9RdvvpNt38jBBOLOCugZgg4mPyrVMF9QbSmAIfkH
         o3e656XYZA1keutDtrF2nSX6+r750wFI8fPz8KFD6BOoevEF+CXXMuMxbDJJzgIehZsm
         sWhBrjgYpdmam3seHMBQVg+tIlBXDHfE51Qhe6SPjcBWV8wwTpKitZl5MoZO8V+QqDCm
         IdigFulA9X2MjCIS9l19OS/tgAGjuDPcJ1n48rn14XSwVHpoyT/7T6RTmj4G5+AIr5yu
         +Ztvw7oCoVi6ybgXs+q4qjfOvxCfHCa86IDrVB9tf+aeBhL9RM3foQJRDQPLK4iTo2tz
         ZV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799783; x=1691404583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CGv1dcNKbS3YC7V4kkMD0PxlW/a+2lGKPQQ7EbzshOA=;
        b=P5lEjAnSPHdM+sYb63iJoo1PVkvyxU5eUSjiMG8M8Z3XXqrIh9k6VV1ixSh5pYfJHF
         JO5uzo6V4Zm9KGmB2beeWWf3oUgiNxuCOxNdmPvNfxzEYm6BomIdcc61tQNGktjrm8Jh
         CvDnhD6DsG0mMUGmQZNzD0fEg1LRS+mKc/UwXsTLKTcRPoBjfjOOjarAY0fC98CqKf9H
         pLL4UfFSPx5HrkTdzE+W64bJutnHiF/iPesKgrON2EeilZ7KmMEBjCK9z8CSCBbpVI/l
         yU53PSXZkVV7eGuEPkFAGB81OxCxGTh6rIYmIekDuNYAv65gTdUs4JdIuJWAZgIiGxuK
         m/ng==
X-Gm-Message-State: ABy/qLauehdUNYe+oCRd/Z1v0/Pni04FT/vrHmzVpVhUPgJwW1htSJI8
	xPahs1p4KHEcyxXSIcaK6WQ6GQ==
X-Google-Smtp-Source: APBJJlGlw9ezW8FYGzLUTXIHL6JOHakL4mSK2TtrDVsybBfwL4KRI/X2LLCB4mLm0IfcH530uyBqdw==
X-Received: by 2002:a05:6a00:23cf:b0:63a:ea82:b7b7 with SMTP id g15-20020a056a0023cf00b0063aea82b7b7mr12943743pfc.28.1690799783728;
        Mon, 31 Jul 2023 03:36:23 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:23 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Stephen Chen <stephen@radxa.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 11/13] ARM: dts: rv1126: Enable SFC for edgeble-neu2
Date: Mon, 31 Jul 2023 16:05:16 +0530
Message-Id: <20230731103518.2906147-12-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_033624_348399_80173DDA 
X-CRM114-Status: GOOD (  10.37  )
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

From: Stephen Chen <stephen@radxa.com>

Enable on module SPI Flash present in Edgeble Neu2.

Tested-by: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Stephen Chen <stephen@radxa.com>
---
 .../boot/dts/rockchip/rv1126-edgeble-neu2.dtsi   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
index e3e5752fd6b7..6bbaf6da6545 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2.dtsi
@@ -301,6 +301,22 @@ &saradc {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspi_pins>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 &sdio {
 	bus-width = <4>;
 	cap-sd-highspeed;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
