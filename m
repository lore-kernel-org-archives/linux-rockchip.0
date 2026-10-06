Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CF46CA5FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2026 16:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yNYvxQFlf7kGR53WsIyZ8sAYSUGQH8kkq+rPzzCxpz4=; b=rtiM7GqQEdbLOl
	scJ64XWMHdh06/ksUKfDyBzv4r9ErR2pnkPr81j2k7zb32V3+O0CKL9LUE06/g0F+YL624bk3f/Q3
	iwEfTTQ35R+7imRiS/Ej4DQMnIkt3cdjvPPh0xe02Bs3nyIY+LuevzZorbJMAeCnMiqAtmKhvSseM
	TJns0dfKC9Uz3SZ6m66DYMTETgEzpl75J+YnxkpJlbAsqvPik02DOQep5hPB3sxLxjHQ+8fbXIt4e
	+ELtD11hHsDJuYOSDxnkNWegR6ZbGMrJhZ9pSONkNHdlgui6z3DDu21Au7d5XLZK3TwSnTs87xCLI
	8KP1jAZBlUveNws7t3Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81d-000000018Pd-2zKa;
	Tue, 06 Oct 2026 16:28:21 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xE81a-000000018OS-2I4C
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Oct 2026 16:28:20 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc7c6cc3513so501292a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2026 09:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791304097; x=1791908897; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=iyS59LHL863YniTBRLDQIsOwBigLIOw+B5p59bUiqbM=;
        b=s+4N9H+UkIKQDngEpuTUHfAlSDiS09UyeGZL2yQrlKO1rmjA6iqQxpR7UQvKHnM49K
         dBT0sdvS3bPOXKVjz6HewVOliqzOfSTFMZlB0c7zQxj48qfYOZQldjr8mkgFyudd+Mpm
         HaXJY45sHkfjFFIen1JT5D6pvIwDrVtHUUotIcvK1gEvFsYNo2UtiFEyVPVBVMjo9FBU
         hOFeX0BpsRRE6eNzRiPb4I3+amgyD9OYxM2IT5mxLoBb2vVEXg5H7mpJMKXgL/7B/Uw7
         D2J7xsbZ8x6kZO8vIevQ/4AlBCD7TTFCn5hcrCT4gdcmHscgbycnAt/XQS/r6mWtWszw
         IOCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791304097; x=1791908897;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iyS59LHL863YniTBRLDQIsOwBigLIOw+B5p59bUiqbM=;
        b=fb1sAp7dDoJ32KrNbt+Xh8hSezNO8FNj9bjHVp9EPCZzYJ26Ag7BlQaOzQUyU4yWxc
         FLcS7+eumS34Xr3J+sjmDHKhkMR2uc7aivvoRgx4RkizB4TrnGnze/Uvf+x4/ahK4QN0
         HcFEBjRC6QhIR7C8OUXIA6boV6p/sww/vKEMkpsVBu3qZFhlt+vRVkfEcaMtI2e+Rv/p
         xULBkA3E1rNMTnzLtzROzttes4pgIqMcZ4/pobKs6Sg7T/DsWIlftRzoihq9DgcxYSNF
         2Ma5FM6vlcL1IufxjGYMNE4gQG1GR8CHvTWeVsJW3VNODMA13DOPGJLmidFYD+35SeyH
         mWmA==
X-Forwarded-Encrypted: i=1; AKwUvBxLyqfhG1q3DzE2Cod7Wn/MwgAHvHQprmFnKHIR+EA4FdklVPkliKASxZ6NKCt+KrIhctM4oculNTM68cUytQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYIDIg+N/Uob8ul23cUjcoy7L88VuYjhuM/QspkH9Sh0ndXdrEWj
	3G++bkO0O9dZcApHznUs9jElRli5cwOp7JZhCKBIK5L0Ood/umooPlVG
X-Gm-Gg: AYBFou0jcQBUJehT2eKCnTSMJUCuRj6xgB3jAuOOTxQf2XTZs4U6OKZUDSFdz3pbTEN
	sAFDhxqSngCZ13Lj70TbgI2X1UTtgtU2V6Jn53OzNjUKySeBzHKQlPDY4wPlgPTJ+t7IH1wZrN6
	e7W2pBRXikPqHZGYlH4PNzUSZ6hYbpX80Hf1cG+0YgC7e1JlQ31VWID03wi6iASDAX8XuYx+k7E
	31wA9Lie6Q5UCNnCHRc92SRwsxjtoW9JePU8pLZgri3Ip+1+bu9IWcRBX2f9ohQyr7kcyTkf9Qk
	Ax1l5EfyiBpdy57YBLasSE/B3GtBWw4KFr93UU607Tp4cbME+DooXYcguoeKR+atWY5/1YZaRkm
	3GXfz24X0qdO2nL+7fgPGgYmzgaAW1o0y9TffTSzcIsI0Fii+LTIT34TSZK946B83TNbVm4KW3c
	sjqbhs18vPMREtR7OWmED4WKYX6MCh/+Y8rqoSr5rECZgjZs/djXU9M1RnqYbdUNv+5yt6
X-Received: by 2002:a05:6a00:3cc7:b0:881:f5e1:6e8c with SMTP id d2e1a72fcca58-890df4ab129mr1783463b3a.33.1791304097548;
        Tue, 06 Oct 2026 09:28:17 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89188a0d603sm259898b3a.19.2026.10.06.09.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 09:28:16 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v13 0/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Wed,  7 Oct 2026 00:28:04 +0800
Message-ID: <20261006162807.2843858-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_092818_589699_771689C8 
X-CRM114-Status: GOOD (  12.02  )
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

Changes since v12:

- Only write pipe_sgmii_mac_sel when the property is present, leaving the
  routing unchanged otherwise (Shawn).
- Validate the value in the driver and reject anything other than 0 or 1
  (Shawn).
- Drop "default: 1" from the binding; the property is tri-state, so no
  'default' in the schema is appropriate (Rob).

This is the PHY part split out from the v10 RK3568 SGMII series, sent
separately to linux-phy as suggested by Vinod and Jakub.

On RK3568, the SGMII interface can be routed to either GMAC0 or GMAC1 via
the GRF register pipe_sgmii_mac_sel. Patch 1 documents the
"rockchip,sgmii-mac-sel" DT property, patch 2 adds the driver support.

From the RK3568 TRM (Part1, Page 229), PIPE_GRF_XPCS_CON0 bit 1
(pipe_sgmii_mac_sel) is defined as:

    0: SGMII routed to GMAC0
    1: SGMII routed to GMAC1

The hardware reset value is 1 (GMAC1). If the property is set to 0, the
driver routes SGMII to GMAC0; if set to 1, it routes to GMAC1. If the
property is absent, the driver leaves the routing unchanged, so the
effective value is whatever the bootloader or hardware reset left.

This is necessary for boards such as the Ariaboard Photonicat, which
uses the SGMII interface connected to GMAC0.

The DTS changes using this property are sent separately to
Heiko/linux-rockchip, and the net-next parts (XPCS glue, dwmac-rk SGMII
support) are sent separately to net-next. There is no hard dependency;
the pieces can converge during the merge window.
---
Coia Prant (2):
  dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel
    property
  phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568

 .../phy/phy-rockchip-naneng-combphy.yaml      | 13 ++++++
 .../rockchip/phy-rockchip-naneng-combphy.c    | 42 +++++++++++++++++++
 2 files changed, 55 insertions(+)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
