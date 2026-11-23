Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA96606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 00:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FBUss2H2;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=qq.com header.i=@qq.com header.a=rsa-sha256 header.s=s201512 header.b=Or0d2ZLc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=3Q5eBcqHo/m9RZ4w+5Dt+IidPxKQpYBxw1WGMNgLRM8=; b=FBUss2H2ALfhS1tl2wOz9fS4CF
	fZZVDE9Jo6Vrh901aQZ/kGy+CcX8LcZRpyGrNfqihvK6+/MmQQ9s53OZx/FwK5npVhh5IZTxgDxgb
	CDbLQBonc66dcTJO/ykkfo3+psFEno72o3f6jdCDLepXGRIANzBzAQUORq6ZpkkNLJcngaWPKv5rp
	7SBS3tquRZdxM1XnpmR35W3ZpduZVM/UZiIG54426xVr4UKixZy6rsKNasmR8TJuWWqHZteX3QJIL
	Y2aIks0+0RFwoqBYmwpsj7q/OVvVj4Xc0rRAG78+wMv3SBb8iAXiwGbuXe5+M6HpByuih5fZLFma2
	XFF/4kZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVI53-00000001yho-2HJm;
	Mon, 23 Nov 2026 00:38:49 +0000
Received: from out162-62-58-211.mail.qq.com ([162.62.58.211])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVI50-00000001yfG-3nia;
	Mon, 23 Nov 2026 00:38:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1795394321; bh=yiu3e28olulx9CP4DCFh65cIlree1aq3t6drmeR73js=;
	h=From:To:Cc:Subject:Date;
	b=Or0d2ZLcu+b16rQyG5IQT1smBg96M9vYpecJEKl4QkM+Bbz78dCV1Y8R9O0KtQ5yW
	 yi2zPtIXyYYl83SY7TZdzU1xXbH0+C4T3elGluSVj4OuEBhQnRJKLWaEuYrtMuJgSd
	 H6xTtZQ2E5/8fd/wQvax7jhrrCo5lL90xMCBUo/w=
Received: from jerry-PC.lan ([2408:8249:5f:7101:71a:8713:56b4:5043])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 9A63524B; Mon, 23 Nov 2026 08:38:38 +0800
X-QQ-mid: xmsmtpt1795394318ti52zpha8
Message-ID: <tencent_C2AD19EB4A6C91A75AD3DC4089CB875C4005@qq.com>
X-QQ-XMAILINFO: N6IfSeM/PG+tAWNxvtWBwLmUUzyr8ZzrighoDFLmmCSU5B2ewDbPje4PUSipFz
	 7dVhdBP3gnPQ7yeNdEt3qLysumbsNfCmKa1ShtXzu0fn0jzHh13+Z3XKgTyQkHHx+rSKxQzqSEuk
	 c0Ry5y9gSBJHLR/e7KpuYd2AFivDNOsXkK2JpD9334XmdDTK4kTUig/Zed7J9f/T6LeuV/2UaL5b
	 PwIMHGeDQF47YjSO+3CDnaH1yB5wGCm9Tf1L4Pf/qXK+g0yaG6IwsYGN3UDWPN0S2Fq6ws8PzdUG
	 ZQ/UEhrKY57sSshHTL62ojTgkJ48aPR901WRqwxp6d/HIN0XhISA+ZaRKGPtv5TNdSXYTs7knsmN
	 nlmKaSs2xRFGqUQC1D363Wa/IRIMmTPu+wgvLyksA+LA+8OFdnRAMPpn6+sck6XofWKXd3/Z4dTt
	 UMf2m+hmwhjXQ9hZfoMVzk4HNjrmuo4efdIEOtAbOLpH/pIueFifPIhhugmD8FvS4ptWr4t3gSGS
	 rF6AtVTlRpmOURyvUkhFnxPnxMOXldG9cTiHXqM70/lsjDol3kwlsr2KI6nODHE1CUT2h0h3jeFR
	 5Onf2RVjuYKHxXp7K2+Pm5C693bSmyNJwYiS3rz8SSir5pMvyQ4SQJagprZ2+VPlTtTaaXVTD51l
	 g8IcYymAdGlK/1qTqZz5nOfJRrpohPiNJFtQh//0poqwF//UbfQBOSgZrPC1X/0oeJC4r9WqgHEg
	 6IsG17RkKVARuuMLoUzirqF7fOxVaUqWnSk+hCR23lcTnprYw/WYXSLluWcnoI6DTjHIyZiPfNyl
	 fUnDosFPF66XOhctySpNXCGRxEjKfdFkxOt2QZBQ/wLwF2nk3MCfvK5IFDCzqmZi0qzfnSpezFmb
	 Pnr4O7yhi7bUZYm5zaukrMbEpF0GQu1qkAuMyeX99no3pL9jBk+hP0YBfSGD99Nuf3j5pCqJrNGY
	 3Je7LEYX33zLrI2gbU3IRy79VroLtNkMDS02M4e0k9C4DQpiUYbRMgyRZZUaskv6aYbSZc34SIq2
	 M+heTsjq3FROWsyI7tk32RfbucANr7YHRfKdEZpj/XGXW5Ql8hhKAxa0zenEsyURtb3TKtunb6Mf
	 HRNHllkkPYB8WlexpU3sj1JhaC4YqpDD7WyOPU4nAESAoQOuLHKvd1+JKM8wh48p7PfDj5BJPq89
	 rLUcUBZARlihVv9dBfiB4GWGuT
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
From: Xiangyu Zhu <1194781887@qq.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Xiangyu Zhu <1194781887@qq.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] clk: rockchip: rk3506: Add the SAI MCLK output gate clocks
Date: Mon, 23 Nov 2026 08:38:33 +0800
X-OQ-MSGID: <cover.1795394137.git.1194781887@qq.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_163847_473764_60924811 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3506 has four SAI MCLK output gates: SAI0 and SAI1 are controlled
by bits in the PMU GRF, SAI2 and SAI3 by bits in the system GRF.  Model
them as GRF gate clocks so the SAI MCLK pin direction can be controlled
through the clock framework.

This is v4 of the earlier "rockchip,clk-out" binding/driver submission.
That one introduced a generic "rockchip,clk-out" compatible plus a
standalone driver, which is not acceptable: upstream already has generic
GRF gate support (branch_grf_gate together with rockchip_clk_add_grf()),
and RK3576 and RK3588 register their SAI/I2S MCLK output gates with it.
No device tree changes are included.

v2 registered all four gates from one branch table while only the PMU GRF
was added as an auxiliary GRF.  The two system GRF gates therefore came
right after two PMU GRF gates in the same table, and
rockchip_clk_register_branches() keeps using the regmap it picked for the
previous branch when it finds no entry for a branch's grf_type, so they
ended up toggling bits of the PMU GRF.  The SAI0/SAI1 gates are now
registered from their own table, and only once the PMU GRF was really
added, so no branch table mixes two GRF types and the PMU GRF gates can
no longer fall back to the system GRF.

The series now also documents the RK3506 GRF compatibles in the Rockchip
GRF binding, including the "rockchip,rk3506-pmu-grf" name used by the
clock driver.  The RK3506 DTS uses the same PMU GRF compatible; that
rename is part of the RK3506 DTS series.

Tested on a RK3506B board: the SAI0 MCLK output runs at 12.288 MHz and
drives the ES8388 codec, audio playback works, and the GRF gate bits were
read back from the registers to confirm that they get set.  Enabling the
SAI2/SAI3 gates sets bit 2 and bit 3 of the system GRF (0xff288004) and
leaves the PMU GRF alone.

Changes since v3:
 - add the RK3506 GRF compatibles to the Rockchip GRF binding
 - look up the PMU GRF using the documented "rockchip,rk3506-pmu-grf"
   compatible instead of the vendor's "rockchip,rk3506-grf-pmu" name

Changes since v2:
 - register the SAI0/SAI1 gates from a separate table that is only used
   when the PMU GRF was added successfully

Changes since v1:
 - drop the rockchip,clk-out binding and driver
 - use the existing GATE_GRF support like RK3576 and RK3588 do
 - limit the series to the clock driver and the dt-bindings IDs

Xiangyu Zhu (3):
  dt-bindings: soc: rockchip: Add RK3506 GRF compatibles
  dt-bindings: clock: rockchip,rk3506-cru: Add SAI MCLK output gate IDs
  clk: rockchip: rk3506: Register the SAI MCLK output gates

 .../devicetree/bindings/soc/rockchip/grf.yaml |  4 +++
 drivers/clk/rockchip/clk-rk3506.c             | 27 +++++++++++++++++++
 .../dt-bindings/clock/rockchip,rk3506-cru.h   |  4 +++
 3 files changed, 35 insertions(+)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
