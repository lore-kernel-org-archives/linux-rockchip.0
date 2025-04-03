Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84796C3600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Apr 2025 03:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTnGLGmnAoGTpL11aSwNGGz/z3mgnK6umn0h8ONJqXs=; b=qeO6WSgHiEGebd
	hMX7wOPofLMb6t56qC4pk5ssw8LNzAu53Y0uecui7xNagRECskcnXWXYzDeoUUcOdFUprnSDVrzAT
	G0wj/ofIyM2V/qprI5xGRU2odyvT2qURxkuSXLw2q048UPSDC6YfTWAYZO8AL+uvMz5AkWLWI0t0R
	YXgRvxFMAtZWgegexxLGaIdwFBmewB/Qhm2ldPMsSKLmcAiQjNaIQsgFnEfOlwPBzfgSxHY2epdsD
	My9kFTMt+1sl7vBEVmSZFuVtZs8W/fsHB1LsX6BTkMMj/8/WGcRHSB56ROx/AgMGwjVz4LvYw+fox
	qOJ2rSdiWYNIrev0Hi+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0Bgg-00000007iMr-0ppE;
	Thu, 03 Apr 2025 03:56:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0BPZ-00000007gDF-3ivR;
	Thu, 03 Apr 2025 03:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DAB/c14Fg3o1xJJLLR/NmN5SxSatifa3mDS6AANge1g=; b=FTqpjol9qZOCXTBCOYchES3XZl
	GAQylqGP+xSw1FbyoTab8mKft1mhUXRoUFvAvuRZfr1T+QwU1m5KePO7o9KNYHrFzAlYG4czGI0zr
	uDes3STopMaYIkUmJSugjS1p2qpR1dPhO+VZ6eGyef2GKrXYE4/Q8A10gZ1/scoONLW14/TADAz/8
	X9hbDgvsAwxmcCBdkvjG7UKbxHpg6PWG8WWTy9+WV9RwSRfLQvWovqZ5LIA+HG1eZA6uKgj0Uzx7h
	3lyUZfzmBrzbFF+erS+PQMe/nPCf8Stz6IxVP6W6Fn3dBbWYOKV9nvZ8XRac/mksvynZhbWz3Eqoa
	vqiOAcWA==;
Received: from m16.mail.163.com ([117.135.210.2])
	by desiato.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0BPV-000000078AP-2mf5;
	Thu, 03 Apr 2025 03:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=DAB/c
	14Fg3o1xJJLLR/NmN5SxSatifa3mDS6AANge1g=; b=a3i/XnF2TQn2LM4jBfj4Q
	j1REz8Tf4rC6XuKVQJr/jQRLD5qJ4QjiDmTQEqgTOnMZdTpESFC5WopI7kddBYmY
	zM/GX5mNEJagda2iduhyWJ6J//s45wce4+NzVJIQaOKmgLF2CKw+pddNdGRc06cx
	GcPwY+NrQeDfpL3jCMh1cA=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wBHWgmNAu5n7FfDDg--.28713S6;
	Thu, 03 Apr 2025 11:38:00 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: dmitry.baryshkov@oss.qualcomm.com,
	heiko@sntech.de
Subject: [PATCH v3 4/9] dt-bindings: display: simple-bridge: Add ra620 compatible
Date: Thu,  3 Apr 2025 11:37:32 +0800
Message-ID: <20250403033748.245007-5-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250403033748.245007-1-andyshrk@163.com>
References: <20250403033748.245007-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wBHWgmNAu5n7FfDDg--.28713S6
X-Coremail-Antispam: 1Uf129KBjvdXoWrZw1UZrykJrWkWr4kXry7Wrg_yoWfZwb_X3
	Z7Aw1UJr1Fqa4FgFs8Zw4xGry3Xw40krZ5Cr1jyrs7Ar4S93yDKa97X34rCr1rCF1I9Fn3
	uF1rWa9rCwsrujkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU89iSJUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gEkXmfuAW8v6AAAsJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_043834_756106_28656281 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, stephen@radxa.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

RA620 is a DP to HDMI bridge converter from RADXA, which first
found be used on ROCK 5 ITX.

This chip can be used without involving software.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- First introduced in this version.

 .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 43cf4df9811a5..421f99ca42d9b 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -28,6 +28,7 @@ properties:
       - enum:
           - adi,adv7123
           - dumb-vga-dac
+          - radxa,ra620
           - ti,opa362
           - ti,ths8134
           - ti,ths8135
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
