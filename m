Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 721D3C54F51
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+jgGU67O1aGBIvPELNHmwDOKQva8Zl8h5++oe3aZsxY=; b=4H5iqYyp5oTzXn
	fqqWaRvMmlJp5i/QDS7n75j0Bt7LykJjCtFMsj5w2jr6Oe5sFji8IBif4ewGfK22/zmvmYHNYix+0
	WNC0Q0wjjkspiKtWSZfgZJVPChHexZfPSqHNs/VE7L2OgDEOpWJ+5LgZO3R74UNWTOfaA79b1tT/Z
	TynxQLNVythAS/7BVMmP0qyJO1maSJnoO4uCY1zdiLTwJEc7YE/wOwkm/pYYgPf12cdztPjhTiqRQ
	PqJSf8tPNWGdjt8ID6Bru25mQroq48YJ4rMostA/je8EPVfSHtd7rQneLsAckg0mgvNPEI4JeikZW
	5xUVm49akUCI77c7tBog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp411-000000081hL-34Sb;
	Wed, 29 Jul 2026 13:08:07 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp40x-000000081gE-3dW0
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:08:06 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-49544f26c43so433155e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785330482; x=1785935282; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Q/pbacYlJpkDaCE9RbWRQcg2zDk1XOgU/3Z2HS4A2NQ=;
        b=HuOhl7LHF+wsp4EmuVP8s+Bv2rJLcCzRnkUrcZs7F79S6BX4Xaznn4z93Eot4IVBsg
         9TuyQlChYNQiVFAG2P5DkcUMVclnbDmxuyXIRxsTN2xScleM2SbZZsrD6zIoLoOv7asr
         6IguRfyn0x9UbNk9024D19upYSh+xazx6fMyAiyAnQniBfAQN9KpuX+Cwgo5u7zIUYQ3
         UBxtgn7e+PRCasaIPM2V0As2zJ2o8VWpfGZsVyNp5gKWyKoXsiAjFY0/v1JU88clhB4A
         MQ1eDaLuaf5Ao7/idwjG/v76XW8RccCYMPugShvvVYvdfWwI7dKp8If/PsOYIV9qHJ0N
         Y5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785330482; x=1785935282;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q/pbacYlJpkDaCE9RbWRQcg2zDk1XOgU/3Z2HS4A2NQ=;
        b=CLpPtrggockhR7sL2ZwMNhTO4nLAnQlB8UvA3YPBf1iiIFRS2ZhrVHflk4aN/GTeD/
         OSxmKmn2S8SUweyywsKev/7BVCUKvnzqBfdT1UbQkbeeFo4AasKgBwnZXzK54fAbaXu7
         G4CAutJkwu3iAWc+QYu5eWKK8fLYcuQQ6RT3LS4uTh4ZbMnCl50ViS4XWZ82uwMrwxwg
         Krrr5FojrCRvLVWN0EOALep17LRcTeHpXncDY8mkH1/e7N5FDNhpy2TIIQPqKlIpYZVr
         lci5vOvbNQOX/KCY9JontwBWYnL/Pk1KJ33miZ8qfuNyVVLl2BvWufI33OT/RS/b3AZJ
         GFMg==
X-Forwarded-Encrypted: i=1; AHgh+RpZGLLRgYK0gSUkWZEqEAS29K6qjKH5RmpOEPxHdClSg+G2Y95T3ybeC+pxBSumKIj85WbUCkoUA+vmiIaTvg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3Z56QwW9Yj6fposhXa5xeTICzM4x0DEBFxGxg1hStGzVbT19b
	nL3OPoqmYBJYdq2MvdLqb33yNrQveQs9gtlf0WfldzUjgYbJYrVWMYTj
X-Gm-Gg: AR+sD11NXNEcQEXl4XblvkNQFwWaLRT5yzH9C4UeRt0KoJVsZPZXHDFebZsdDuI9PPu
	62ZJsq9gMw8DrblJajoPPuAvx46JDneb2zxnr5hbgjqtom06RACk7JhdyYta3Xnyqrf4m+Rhyfo
	kkZyEbY87MIfWqV49V+rD8juezrY7GaDq9hiT85CVR3BUiJz8/knrztws/KZBRx1sXNXvLFB8m+
	/wanVOOmRZmxo6ruhAdf1tlxBp3P+SEoVcz37I/kHEyVQ1nDF2JoL8QhAmI+sv07Rnay3VbkK29
	uLVXpcF5LLnJgfCoz9zViS97Wusm9j0SnixO1SDSNo5NMXCY8ufM3ytMLLuAMn48c5NGImmGTr8
	xYayxwOws2TG11nV0iYyyImE+S1MJJHwLx9kXvLprNYygkIC23ApLzQHj1jizWUxgM1QVLO/fab
	fbYTTjjJGg0oqNcKyhaHldyKqE7+qrtMsbp1eW2S8W+4lkYs0REaJ0mpstWSigQGjcozbW5D48s
	o9Quyn4oAX6ABz+rRge9PnMImN3BgZtVGlQB/O2ZpILmEj8qlJ96WQS6myrphTmuuAxag==
X-Received: by 2002:a05:600c:4583:b0:493:f42e:1b3f with SMTP id 5b1f17b1804b1-496c6571e01mr50134555e9.3.1785330481530;
        Wed, 29 Jul 2026 06:08:01 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B886F0027B74C8463513DA4.dsl.pool.telekom.hu. [2001:4c4e:1b88:6f00:27b7:4c84:6351:3da4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-497fecfccc7sm37571645e9.12.2026.07.29.06.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:08:01 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2] accel/rocket: request the core clocks by name
Date: Wed, 29 Jul 2026 15:07:43 +0200
Message-ID: <20260729130743.128876-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_060803_938159_BE934F7F 
X-CRM114-Status: GOOD (  18.18  )
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
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>
---
v2:
 - document that resolving by name is a behaviour change for DTs that
   do not carry all four clock-names (Jiaxing Hu)
 - collect Jiaxing's Reviewed-by
v1: https://lore.kernel.org/linux-rockchip/20260729092939.118779-1-royalnet026@gmail.com/

The same four id assignments are board-tested on RK3576 (ROCK 4D) as
part of Jiaxing's RK3576 enablement series (v2 6/8), so the change has
been exercised on two SoCs between us.

Verified on RK3588 (Orange Pi 5 Plus): after the change clk_summary
shows one consumer handle per clock instead of four handles on aclk, the
NPU still powers up and down cleanly through runtime PM, and a
MobileNetV1 inference run via the Teflon TFLite delegate produces
bit-identical output tensors to the unpatched driver.

 drivers/accel/rocket/rocket_core.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index b3b2fa9..5dd260b 100644
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

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
