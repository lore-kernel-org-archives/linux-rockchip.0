Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 366B5C55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 16:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s5+zC0me0BiNR5focW7OK6/sRSd/ZRE73qOrIRy5rE=; b=eqGAC8985SqsxL
	W/KvPt/zLtVd2YwQiW19EZAc6I6SNWWhovntgc94yrFwBSHEPSKk+l9TL+aoApENrh+lvavJAfadj
	ANe44FSdxh3ERtP5Tm0giyaFe3IIcDqkKgtF4gNFR2bnVW1MU/zP9iWWjRPsR5ZcAPtt3bFPg4hIl
	yMv8IDmMDlKngEG3Y2MoQSik9EexvEaQZ9gA7JuwSNfRqABbB6evOWVDxmhuX4pjwTjIDJjWqFXsm
	Es9jxu9xw6f/gFJSkoTf+QMhdeKXrGCVUOgXHRvMIKhdEq1t9qEi7zHa5GF9cTPSBiRvKgDxMcf7I
	+vuBD/Qx4i7EPOtSqkOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvAd-000000000hq-3HQQ;
	Mon, 03 Aug 2026 16:05:43 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqvAa-000000000fI-2MRC
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 16:05:42 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-473987fc217so206170f8f.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 09:05:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785773138; x=1786377938; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Orw1gQutvOkZopO7ifTGK4f+dabsbqDeP0c5VLSqs1g=;
        b=PA09V717bqr08//Nz1T74eWiTPyNwKMHFJThHGA+q0mwnMVWD00u7kWXAN8V12yoCc
         zILpzL53des58b+hNgWb3e+ZRJz03dZ7w/65mC4LObOJCbDwseekF9VNTyAMLawW66k7
         He3VmgiNvU839i1EDuwXnCDsBBKeCXI3WoX6qYYq9UtOibVUN/iqMbtPsbssH3VESQwJ
         p/fvaPe4iKILXDyFbP7L4pGdcaKXkQd3jxuxgwe/0+OuL7FbufFRWM/TqoqJcW0C0Smw
         ZcLf9M+ufa/x/zBbDWg4oFJH5/8ojn4UEQf0TKsbbWtHEi3PYkWoxIPCL1VN+/4xrYgA
         CEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785773138; x=1786377938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Orw1gQutvOkZopO7ifTGK4f+dabsbqDeP0c5VLSqs1g=;
        b=mwXXkHiqGxp/WoxP/lJw779Kv5CbSNOQUOgpnzcpHGV9oQC8bORT8V+4WwCEbf/oK8
         lt2DlETAif4+y2Smk0daI5SZ3sALBGvzRw2artZ8wAic1r4zRIgCxBgf3h61u/xEG/OK
         1ttdV/soVh+g/epq4eygawiIwasrCmlKS2DYbvnOwaVyUXW3pQ/heyXAQpKD5MvK8JKW
         e++Y330AdJhfVa7LhZvf35f7L5G2zNxyd+Svp9D1v825qGE7gEP8eozo7LkzLTU1uOKj
         CLyANMDMs2EITcw43iAv+5ycsV6WwF9hALah0dUK6jd3XWCRq3EOZ8t8RYQaCFFnRbVK
         a/dw==
X-Forwarded-Encrypted: i=1; AHgh+Rr+EXLdrn8bvRS6mA9v0FyTS30gCZwarmhpsg8Pscb73B1+s0HEah6nu9ZNO3YX0HfTQ/gkEqWTVo9KfPK8Rw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtnnHwNcwnp8sgdUN15ytYYYRHQa1I9pEE3RkQEcQ2SvCsf9Su
	LB/d0FSLuKhkFmzB6KL1i7L/fw1B2PZLr/qNvTFl59M7TBedU9kOHh3I
X-Gm-Gg: AR+sD12nuq8XdaDpY++j2VWaAvaKnKrAHwUGn2El3MWilBtGjkTxI0pTKserbyWBAaZ
	dp02wq7IT964qtitolthJ5PQFCq/XWQ3dQL8lxXHnw4kg23hnY300Y03dg8s5VoShf7lY4l6reJ
	gN9uYCIf8xT5hzw8juM70YIpqlYTSCWptA4DHYLM3ZP3TYdubkq98NwGhlf5YuA5coWkQEv/Qm0
	kEAr+ALzy4yaJeyGgnjsHiX97krI8kJ5IPT31Plu/zOZSjmqu6f5izm5VhtkwRQtWoEwQ5uT50g
	k/gtmvHuGyQh+MIf2uq40hioaAr9XdS0kAhqMjxdfFVc/9Lsv5KoTw/+KyA9JGEdN1mThD8vOvu
	Q9mGshb1O8/lOGtZ/FKtKM8j6aUqBNjC87JdFW3VwvksrYP7psPY+LMGvA/4K9U2C6xrg+bISvs
	vlzvgBcS54gWDh0zqxJHvC0EZM/5rsoKpyBT6WtczvV52NWy+CbPBE+wLBtB9pIWCxbX1+UBK8T
	DtfyPS2Bg1unhGjV0Z+ff+ynWs57hSxWmVQw55Y2C2ebYK3c7VW0XmMt/Au/bPti5BZ
X-Received: by 2002:a05:6000:61e:b0:47f:4d11:3472 with SMTP id ffacd0b85a97d-47fd72a00e1mr15561662f8f.1.1785773138178;
        Mon, 03 Aug 2026 09:05:38 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B85F300A5CC0DBDABDC4661.dsl.pool.telekom.hu. [2001:4c4e:1b85:f300:a5cc:dbd:abdc:4661])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd458b73asm31953719f8f.29.2026.08.03.09.05.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 09:05:37 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	alchark@gmail.com,
	chaoyi.chen@rock-chips.com,
	krzk@kernel.org,
	will@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v4 5/6] arm64: dts: rockchip: rk3576: add NPU (RKNN) nodes
Date: Mon,  3 Aug 2026 18:05:21 +0200
Message-ID: <20260803160521.14621-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260803094125.3285895-6-gahing@gahingwoo.com>
References: <20260803094125.3285895-1-gahing@gahingwoo.com> <20260803094125.3285895-6-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_090540_628420_7D3AC38E 
X-CRM114-Status: GOOD (  15.73  )
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

Hi Jiaxing,

Following on from my note on 4/6, since a v5 is coming anyway: rknn_core_0
as written here does not validate against the binding 1/6 installs. 1/6
adds the compatible and the conditional sram-supply, so every other
constraint in rockchip,rk3588-rknn-core.yaml still describes RK3588 only.

I put your node through dt-validate (dtschema 2026.6) against the binding
with 1/6 applied, macros resolved to plain numbers and everything else
left as you wrote it:

  npu@27700000 (rockchip,rk3576-rknn-core): clocks: [...6 entries...] is too long
  npu@27700000 (rockchip,rk3576-rknn-core): clock-names: ['aclk', 'hclk',
      'npu', 'pclk', 'aclk_cbuf', 'hclk_cbuf'] is too long
  npu@27700000 (rockchip,rk3576-rknn-core): power-domains: [[2, 7], [2, 8]] is too long
  npu@27700000 (rockchip,rk3576-rknn-core): resets: [[1, 20]] is too short
  npu@27700000 (rockchip,rk3576-rknn-core): reset-names: ['srst_a'] is too short

The last two are the ones easy to miss: the binding writes only
"resets: maxItems: 2", and dtschema fills in minItems from maxItems, so a
single reset is a hard failure rather than a permitted subset.

The v4 changelog says the reg entries were cut to the three the binding
defines after running dtbs_check, so I suspect that run predates the CBUF
clocks and the second power domain going in.

The fix is the same allOf shape you already used for sram-supply. This is
the diff I tested, on top of 1/6:

--- a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
+++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
@@
   clocks:
-    maxItems: 4
+    minItems: 4
+    maxItems: 6

   clock-names:
+    minItems: 4
     items:
       - const: aclk
       - const: hclk
       - const: npu
       - const: pclk
+      - const: aclk_cbuf
+      - const: hclk_cbuf
@@
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2

   resets:
+    minItems: 1
     maxItems: 2

   reset-names:
+    minItems: 1
     items:
       - const: srst_a
       - const: srst_h
@@ allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3576-rknn-core
+    then:
+      properties:
+        clocks:
+          minItems: 6
+        clock-names:
+          minItems: 6
+        power-domains:
+          minItems: 2
+        resets:
+          minItems: 1
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+    else:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          maxItems: 4
+        power-domains:
+          maxItems: 1
+        resets:
+          minItems: 2
+        reset-names:
+          minItems: 2

With that, your node validates clean, and the RK3588 example in the
binding still passes, so nothing loosens for the existing SoC - the else
branch pins it back to exactly what it has today. Take it as a starting
point rather than a finished patch; the DT maintainers may well want the
per-SoC clock list spelled out differently.

Separately, and this one spans 3/6 and 5/6: the resets you add to the
power-domain@ nodes have no binding at all. Same test, against
Documentation/devicetree/bindings/power/rockchip,power-controller.yaml:

  power-controller (rockchip,rk3576-power-controller): power-domain@7:
      Unevaluated properties are not allowed ('resets' was unexpected)

$defs/pd-node there defines reg, clocks, domain-supply, pm_qos and
#power-domain-cells, and every nesting level is unevaluatedProperties:
false. So 3/6 teaches the driver to read a property the schema does not
admit; that patch needs a binding change of its own, before or alongside
it.

For what it is worth I did check the DOMAIN_M_O_R_G to DOMAIN_M_O_R_G_W
rename in 2/6 against mainline, and you are right that DOMAIN_RK3576 is
its only user, so nothing else moves.

None of this touches RK3588, so it does not change what I said about the
tag on 4/6 - just worth folding into the same v5 rather than finding it
in a v6.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
