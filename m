Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA0B8C54F51
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 09:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x0NR7XQlEON0YWGIN6vnWjrzRa9Oyt503uGuqz9cSFw=; b=Ap0zKFV5IMde7q
	uxbIF7IA/ee6o5GrLSWHr5KETspZ3lOqWpdOCvww9CZ7BBwRjg1y8gE1AE7XzZa8Ad5gzH+9NtPBY
	Y2Pxa7WnI4h405gkinfWfyLiHzjMVInkQQgcx3WMU8BNp3dWsj+wWhBmxexNhx7Z5VhnWymKMSjCk
	M+j0PwdCU9mprbeJxSZTUDsJ+sODrZoA8TKFePaWqyeIDz81D/5mVujZvnWaXEBN43IZ2fKp6od31
	VGBjOLs8NVmltqToX9q14qeikuO8XUdB/gZWYXs1bYbVWH/7uF267L0b9ZY4UA51tr2agt768Q2+n
	9w9Ijcyo9ITG/XVfqk6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0c8-00000007NOr-1nhP;
	Wed, 29 Jul 2026 09:30:12 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp0c5-00000007NNj-40re
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 09:30:11 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4957799b92fso775725e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 02:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785317408; x=1785922208; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=gz5V2n93NOL3hYSU9xeOl7rpcn8sNAuGMXkKaTZlLvM=;
        b=a4zRiBc2M5f5AU+3HsyiVDygHyBeuHuKwjK0t631619ehYglsk+yUSN4ed3klV27oS
         cpllQTPkXyg0eZjQ7dRYxXyffmeeWQiaG7C4u1r7ebyrp6BEzstEVYE3DcO5+uIjlw+Q
         DmmQyqG/7idUdrDOJrBFU2AG5APOLPCGkEMbBUd95NVO2nCm55+9KiZrlznePLtwYKxt
         LO0+OL7iiyv9/6OFu5LYFsfcjQltCNtB7w5UK+5te8V28epM6htVdDn4Y8tcZmwyZgQy
         xNkamG5fFdV4JbxiLXKXm40O2Cgo7SichvjWpLTEIKXQrTwLpj+4MohTvpI6bIH2ATKF
         twHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785317408; x=1785922208;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gz5V2n93NOL3hYSU9xeOl7rpcn8sNAuGMXkKaTZlLvM=;
        b=FV23Fwn2TMEyskfiU0FSQZ3oTEkX0QcjyXmE5euYoYdcVJwic0iTp+lJElYNhmc4rj
         NKlQiKxYIPJaQflwZcjXMccIfseOqlyvmsU+7XgUEg9NclxpDdKWWRUnaBAE5XlKDb4d
         ENXpM1C9ccvD4ow28/YLZNLassNLSMkCO+9IqEaA6ug9m0FOtCE7T9ZKA6ptQ6CdA8nL
         zAIounm+8tF5Pp2U9+1gHr9m4azTrr/Tdq5Z/d4MWJksWyIyhWNfJ4rE7FXfr8w2mV8E
         s2hq/DEoRsWGVESxS/I9r+VmHjt07TH871AR4HRzMxoPsJ5H1UhThHmpI0evmLhQb/yg
         LNog==
X-Forwarded-Encrypted: i=1; AHgh+Rq3vedVB4Uzz3PlvOxq4Da299WUkMwc8nC3VDu4ifuaiQ+oUK0saNIdyBY5ivdbO4Mzn+d8F8BnMEN/2UHHOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxPODs8REVb2SIhPeTs0IuPZrNzgtXguHCNjn8LmG9JbDcjepsl
	AW/vN1EmFwlii+Dk/HRpcP4Z1O1S4zmx9QBrcIb/swiqQHj2S14uJsng
X-Gm-Gg: AR+sD12HIyoHvS79/wdRQTLYVtVmRAdw+TkoDhgzjqzlbytf6N6Bh8mU3os+C44XSak
	BrkrHB7PVBh3M0AJ+EJUsPqbRCTUZWC1l/5CA6vWesHuwbXLHRko8HrEmh6+L/CvgshrJWC0M/P
	KUrmumB8Ovw790YhWXMxiUOS2HevkvcJ8HfWGDYkDgoytmRkcViLqexoXFtkFQ73+9ig9FHVLl/
	af7c7VGnDcEDgwfDbvpBbOoN9SwKERm6bJxGnkfOkE6ABmvR/RWjUQ93g8M4onOr/F+eQTeagJn
	zbILXZRGApZYUnM4q06KsKo4W46bNj5dadkHu+5iPdo/L/VpUdVx0RU+EySPUKsIYJLmz3H+cxn
	2+IhviJiG7Z3n7Q2Y6Sg/IT0z/XQf3GLAbC/xNge2vGPTH784XqSHdxpHs6lSHDGaoK+5sPa4xD
	iqIN1POXk4gmpSfJQbO0RiOwy4ekzT5wq+YY2qsLSExvjlLFvI6PGiFQNQ8XpmRAqVOd+kb3JUb
	f+yD+cXCrhSUqOiJCZ31uWdjJTSl/uox5ur7CeyyArgqui54/QPfnOK6EqecB6SioQpYA==
X-Received: by 2002:a05:600c:c48f:b0:495:71ff:598d with SMTP id 5b1f17b1804b1-496c6415627mr45324345e9.1.1785317407675;
        Wed, 29 Jul 2026 02:30:07 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B886F0027B74C8463513DA4.dsl.pool.telekom.hu. [2001:4c4e:1b88:6f00:27b7:4c84:6351:3da4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49764d8e826sm49682835e9.8.2026.07.29.02.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 02:30:07 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH] accel/rocket: request the core clocks by name
Date: Wed, 29 Jul 2026 11:29:39 +0200
Message-ID: <20260729092939.118779-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_023010_019832_B1ABC3A7 
X-CRM114-Status: GOOD (  16.11  )
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

Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Sent following Tomeu's request to send fixes upfront. Jiaxing Hu's
RK3576 enablement series carries the same id assignments inside
[RFC PATCH v2 6/8] accel/rocket: add RK3576 NPU (RKNN) support
(Message-Id: <20260718031146.3368811-7-gahing@gahingwoo.com>), together
with new per-SoC match data. This standalone fix is intentionally
minimal - ARRAY_SIZE(core->clks) and the clks[4] array are left
untouched - so it rebases trivially under both the RK3576 v3 and the
RK3568 series, and can be backported.

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
