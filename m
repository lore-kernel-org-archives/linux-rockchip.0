Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39965C982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAAUDKLSwkFnqWlEXGqUBDkrx+hxHiooWiuySOZ5wJY=; b=DW29WLPJwSahGL
	FPSvgnLlEM8x2Pr6h0Y9GuPEXP8WsanuSqQivr/h6G/RRZ2cXfRMvlXBEe0WQH3jKxWJ/UP+Pjp/y
	wN90CeOqUuVzlo8BtUYK8h/zEvKc4Kosa0elAlQTOqJevNP3ZRQ7/qgZConFQElg/IGFZ4v8zQpoL
	MMz2mTQ63e9Eo5y+JQRfbchxiY9aE+6PKIX3stZEZTZIe6cXecf95jh27Z8fXyhWSg2a4RAXy8zbw
	eHnuYDTHqCyh1Mv10dmYkIfPMHdExafBFwvcm1c2f9tNNEXXr7QRGegj5sPaGKOD9cGMiBZCC8Zev
	wYUp5HhRjA3sbUB/5S1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRr-00000004aVk-3EX5;
	Tue, 22 Sep 2026 08:01:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRa-00000004aGV-30nT
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hGF28/ongkg1pjDH+01IcEm6dgrPiae6qX55Ok4Xvzs=; b=o9A1U5YZTzAHceA3hIpyXurScx
	8MuoH+LciUSBUyP56VdEMZ+VNUP+94lVSWwZHlPmzG3GFT2eNmDRI8zeBf/2wEyw50+b6C6rNKz+l
	V7J5HKeCIPEAkNZfC067eGMkh5OOojD5DCcBu8VyJx8xsogiTzNhyuBZDl11scF07Kl+3x/Z3vGHj
	7HHSTrpk06BHgMuclfB3S07TCW25V6nnPbS4y7S7VW4u9S6rf3ivUg+K6kkHdbaWMxYXbAgbSDYl4
	6OCkMeigV83dPdmDsJC5C09w+lu8WZJVAzDHhz5XQgxit9vq3EUZ1oew91u89Nq/Esz6kXJgj3dZq
	vPp3urKg==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vRX-0000000DEeU-0dIZ
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:37 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49fbdc010d7so1073865e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064092; x=1790668892; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hGF28/ongkg1pjDH+01IcEm6dgrPiae6qX55Ok4Xvzs=;
        b=mFcGBUo1NibFEWB+t7/9fugEGGJgkS5k7r2Fu5iz+/wRwEOmP6FAxlcEtebHx2nzas
         KzAogQdNwOeDeTVgVa7yPcS4wVQvTWNWGfJoiSxN8VjrF/sK2TCznfolgBld8zjH6swn
         eJkRKnRqzSiV2EAkQ3qXqhs/B2Hkd2kFzhXXm9pzG7B8y9m9676IBDQEe82vUHfM7/UG
         fxWFoPqRjTi+5zjy1TqydSLAusTAaZZnu9dlKj+mPUbgrPpe51tWHEWq+56xrCv4kP5j
         5y+27ZEcL/nhCS6wnWCYQFTSityOhAa5leKhNl8l8MzTmPkay97AX6P8UVUmueByerYG
         BHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064093; x=1790668893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=hGF28/ongkg1pjDH+01IcEm6dgrPiae6qX55Ok4Xvzs=;
        b=QQz8KCnI3rbSgTYt6nd4xfEeksWoaN0kWFeHcBT0akdk7ko+A/MGsW4YTFu4Fld6J7
         iJ34giamYR6LOLkBqekZ99eayLx1DKxG6wcs2zPzSshd1X+/m/9rUSY1KJs67U3IaWBK
         OIOz9ZtkwQ4gzxYtSI3HRwoRcXLPJZWL8QYhI/zAL/JgleRwI6vvYA/f1w+Zjmb4e0wV
         qRA7U6lSaEAwLbzGBy93n9sIdHEp3TV79zb+9m8NPHBQO/13i88JbWQgtHPn+7sjWw/t
         0Wj4ILq4/i+GQq2ZFE315UBIULnflg30igpvds6Hdibi1KHPJ4LITR8fCK2ZyCs1R7tJ
         vHpg==
X-Forwarded-Encrypted: i=1; AKwUvBzU+EXy+wae7uwLISOh8Ty6X5fYzFDsadHZ/nxJJR5u2MI1fAFmx+vrPHmA17jKh1gb+Ukefc4wK9j0rUoqLQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lKcVKS8ID08f7MeBSl3viR4SSoaHme81OB4Xzpaogxeg0EDlQy
	TAnIIW0VNA009znMVuyMEt1LiFOKn+vQ3BSipBaAryNrgd2cIx4yOdCw
X-Gm-Gg: AYBFou1NvDTG1indCKZ+1ihiQ+nQZauDoYgY20+WOOJ6OyfoJMDrZIX+ZcmBJF8CmWn
	WU3WCtFZ5Dt4iihQsNlUxhmEfssIOKiP36lTH+hcfLJtxzzjYn6ebM1KLDe2+VWcS7uq4WA1CHJ
	V/lDMQsnUv06NxzeP/ayoN02wGAYgErzjstE0wuDZm+EYlRsUdlVaDPIcm3n+sqoCs4TkDx6Yt9
	WhZqD5N+aQyGjuCEEAtndjOV/vFCAxCEVhp2FO0D6lFJzfsQkCp/C8kB69bAqCnlpuVtHhrD5/j
	+/cqScvloo9fwOCyb/3yE8TRO6iY6c1kgdA2m+3Az6jdnHv0yYdCkQTAG/dV1geBt1yQ8jv3ygK
	Fr9MqH0sxtVAJxw6Uwo06tyJFtz6s5u7Xt3l5FiWCnM5MDIOpMlibgFeJVp6OTbLG3Vzp45yC1/
	b1/L8VUTronzaE83BMcKEStsjFKbdexvkJWdCH6ZDobpuvlu+P3sk2kIbsvrJUBfBrHn9jLeYGf
	D9HtBbCv5eOYUdQRARKx7JEHk3a7y7jEQeqOBOdd5kSR/49SHnzIZzbdtxrf2BVwb5tjOn0v7N8
	mzA=
X-Received: by 2002:a05:600c:3b99:b0:49e:6683:d227 with SMTP id 5b1f17b1804b1-49fc7bbfe4bmr199176535e9.0.1790064092385;
        Tue, 22 Sep 2026 01:01:32 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:31 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2 05/11] accel/rocket: request the core clocks by name
Date: Tue, 22 Sep 2026 10:01:08 +0200
Message-ID: <20260922080114.44662-6-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090135_778338_9D606133 
X-CRM114-Status: GOOD (  18.51  )
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

rocket_core_init() hands core->clks to devm_clk_bulk_get() without ever
setting the .id members. The rocket_core array is allocated with
devm_kcalloc() in rocket_device_init(), and rocket_probe() only fills in
.rdev, .dev and .index, so all four clk_bulk_data entries are requested
with a NULL con_id (unlike core->resets, whose ids are set a few lines
above).

clk_get(dev, NULL) ends up in of_clk_get_hw(np, 0, NULL), and
of_parse_clkspec() only consults "clock-names" when a name was passed,
so the index stays 0 for all four entries. Every entry therefore ends up
holding a handle to the *first* clock of the DT "clocks" property, i.e.
ACLK_NPUn. Nothing fails: probe succeeds and the driver believes it owns
four different clocks.

The consequence is that rocket_device_runtime_resume() prepares and
enables the AXI clock four times, while hclk, pclk and - most
importantly - the NPU compute clock ("npu", SCMI_CLK_NPU on RK3588) are
never prepared or enabled by this driver at all. The NPU still works
only because the Rockchip power-domain driver sets GENPD_FLAG_PM_CLK and
its attach_dev() callback walks the device node with of_clk_get() and
adds every clock to the pm_clk list, so genpd happens to keep the
remaining clocks running. The bug is therefore latent today, but it
means the driver holds no reference to the clock that actually feeds the
NPU, which stands in the way of any future frequency scaling
(OPP/devfreq) work.

Found on an Orange Pi 5 Plus (RK3588) by reading the live clock tree:
/sys/kernel/debug/clk/clk_summary shows four "fdab0000.npu" consumer
handles on aclk_npu0 (and likewise on aclk_npu1/aclk_npu2 for the other
two cores), while hclk_npu0, pclk_npu_root and scmi_clk_npu have no
"fdab0000.npu" consumer at all - their only consumers are the
"npu@fdab0000" handles created by the power-domain driver via
of_clk_get().

Set the ids explicitly, in the order mandated by the binding
(Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml):
aclk, hclk, npu, pclk. After the change the driver holds one handle per
distinct clock and clk_bulk_prepare_enable() covers all four.

Note that this is a user-visible tightening for out-of-tree DTs: the
old NULL-id requests resolved by index and succeeded no matter what
"clock-names" contained, while the named requests fail probe with
-ENOENT when one of the four names is missing. That is the right
outcome for in-tree users - the binding requires exactly these four
clock-names and rk3588-base.dtsi carries them on all three cores - but
a DT that relied on the permissive lookup goes from silently running on
the wrong clock handles to not probing at all, so record the change
here where git log will find it.

Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
Assisted-by: LLM sparse checkpatch
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Tested-by: Sidong Yang <sidong.yang@furiosa.ai>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, NanoPC-T6 Plus
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>
---
Same diff and the same message text (his copy re-wraps the lines) as
01/14 of Jiaxing Hu's RK3576 series, which carries this patch as well;
whichever lands first, the other drops it. The trailers differ: Jiaxing
asked me to drop his Signed-off-by from my own posting of it, as he did
not pass this copy along, and Assisted-by is added because an LLM helped
with the checks on this v2.

 drivers/accel/rocket/rocket_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index b3b2fa9ba645a..5dd260bacbff6 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -28,6 +28,10 @@ int rocket_core_init(struct rocket_core *core)
 	if (err)
 		return dev_err_probe(dev, err, "failed to get resets for core %d\n", core->index);
 
+	core->clks[0].id = "aclk";
+	core->clks[1].id = "hclk";
+	core->clks[2].id = "npu";
+	core->clks[3].id = "pclk";
 	err = devm_clk_bulk_get(dev, ARRAY_SIZE(core->clks), core->clks);
 	if (err)
 		return dev_err_probe(dev, err, "failed to get clocks for core %d\n", core->index);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
