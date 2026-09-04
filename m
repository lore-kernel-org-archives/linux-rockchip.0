Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1993C79F82
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 13:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sma9udRGXj7Y0TiofQ8ov7e+hqLBzheGiqGvrZP/xwU=; b=Tb1vCtLCwrDY+g
	RYkVhZnpJlOoXwYHLZtIhy3282vn40NAdmJjDn32qgfi+rvAkip3EA9Qt7XLYOTeul5oNXO4PqPKJ
	GCK2beckvOXK7n5blViveAF6ekp/zUPjUUYY3r/MCwnDjfFJmiPt0wyOToVylhxmWiyhW7+ZJNWl3
	DXMp1aai+HlAmINrDOfrPz1bsfLehdtEd/5ZGH4o1Ef33wkWEvr37byx8ntuTUfy3wjaam0mNzSk1
	IKNYKZ1F41p9XMrV4As0mBppDqzIXAv2yug+3XrWdAbeuwI/wlYGstOHieQibxVn+7432DtFn3Phz
	TFxgzQalmxTXTZ2TSqiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfe-000000026bb-2QeA;
	Fri, 04 Sep 2026 13:09:30 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TfZ-000000026Wc-2T2l
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 13:09:27 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4956d1d9fb2so929635e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 06:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788527364; x=1789132164; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=t7o7pGTYJ1j9htjyKompyXPu5oGlEszk3L/eQl+FLhg=;
        b=ipKz573IdnlcGH7T1lpimyKXwVeGbmhth5tgaN/1/8wXbs9x0cGnbG/T6RSMn6tu+o
         AJqpnGOy8f/d/TwwBcn3A67crw5TEGNZbKuxkUyMYhkZvP68vpUMHbxrOuQoZAhgzAtP
         mxnsWUp/3jByBXOhDXP30qVdhr5ZmHZFPwtZfuq489WikvF/Xze6Q61+NilkZrRnsg0t
         UqXk9WPOazPeJAnBib2E3GHMazE6LXZjlHJqS4+IsBGpP0IUekBECo40TVeLT8HKvixt
         oCgOAV5IXm70yZAgQ+cgIv9KIXLsc8xhOxsAtQPHTTbcW6MSZcugCldQPpJQiq+Dsp4d
         M6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788527364; x=1789132164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=t7o7pGTYJ1j9htjyKompyXPu5oGlEszk3L/eQl+FLhg=;
        b=LeS3F++mGrCXZm3/PSesGCB+EVnWZPx7LRgCNCrqchsWD/mJ4vpiNOBcLWSB3pJsiP
         DWK5inEtk+09923elvaTd6MhKN7S++o90ucLjk9SOq+nIhkdzpUvLUzGX3FBPdZGYEyp
         fUqyp0xJFqbriNuvdE/NolPQMcYvrm3pPymKAW7WbqWilcqtTWmc15+j8wvLH3YYuHzQ
         zDSk/L+q24Bm1B9KV1dXpu+HqscUP0rAeNLYjnkUQKx061VQ7u5NJhQRGWFiM2/kUxZr
         3T4CHPLvroKE78W202ohiAqAEwxz5HEpFDm4BoikOO0m+Dch0QD/g07qhbTK1xuC+Em5
         FmfA==
X-Forwarded-Encrypted: i=1; AKwUvBxg2hCNnTFWQWfhoWK+9ToGym+Vmhb6DXo7/bjGIZqCSYM3oNwaAGyu4aHBEITD4jetThZsXxE2YFzqdgzcIQ==@lists.infradead.org
X-Gm-Message-State: AFuF++keWFd/B05UX/u/RcltBohxQMmXwpIdpkvOYP2pDpCNqTyXT8LP
	Hg3TQsUvK8UYZGM9Lf9MTXY7rx6JFcWjBKYj7yz6k7FE/KQkLlwlqbUK
X-Gm-Gg: AYBFou1LpEu3nleSUcHNPdT3bnoN9XNAAZNhxP7jgW7O0RWzAfS2SzrekmQEXxPlIxZ
	rNv1yUXl6HBFNpLIgfZe9kxAdyECvoOVMNicQ0W7tFGFLAK5wg9av8V6Fo1+DzXcaltz5dN3uvV
	UVxmDUK45rt4BRZcVkxO85eKWABSKuZPQEVqzf29wJw5O0GLm1it5DOiMZp9I0icmAxFcQsB/RK
	q6URcTHokN2xGLdE5GGZ0LqeF8rZSYpZolZ+e2LvwGIfNiRP9/468UIm5TOdfdkW4QYEhUuy8SN
	xs3mTUtbplhMbLJT6sufkUlJLxDVdMfHLz5m0/V79uFmJM3NpKYfsfC3Rm+pEyL4P8sV/msgILU
	XYxV0SvGDTpClXTxT+DTcjy5pjEupLxH6pBvPqKW+3X57nkbhOErwbTk2cCRIoCwF2X7BcS+t+Y
	TQZVAVsVpu2WnC7ji1NAMpY7RnDIiKWjkoo+54cQCqFRBxfUlJhhGYQAVYy3pJhHNiUw2NGKk2O
	NmhDSV/2AXOGwlrwkYmqWp+2NQwF5dTlBkgs0NiWUDXE1MOkTrsZZSN4PpgGQlHhLY9qC3Lzmju
	KCc=
X-Received: by 2002:a05:600c:8b6d:b0:49c:e363:c66e with SMTP id 5b1f17b1804b1-49cf82420afmr41030795e9.1.1788527363631;
        Fri, 04 Sep 2026 06:09:23 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500CB6EF488A18F9C42.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:cb6e:f488:a18f:9c42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce554d52esm135575435e9.3.2026.09.04.06.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 06:09:23 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 1/7] accel/rocket: request the core clocks by name
Date: Fri,  4 Sep 2026 15:08:52 +0200
Message-ID: <20260904130858.27803-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904130858.27803-1-royalnet026@gmail.com>
References: <20260904130858.27803-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_060925_647595_13010EC1 
X-CRM114-Status: GOOD (  18.12  )
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
Tested-by: Sidong Yang <sidong.yang@furiosa.ai>
Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, NanoPC-T6 Plus
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Reviewed-by: Jiaxing Hu <gahing@gahingwoo.com>
Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
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
