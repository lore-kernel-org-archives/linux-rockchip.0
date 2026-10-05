Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59626CA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 23:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=twIPdvAmON3TF6GgCb07GhvwEBmQU0fBDXf9T9G2huQ=; b=TfJovxu22wwbLb
	fn0BrpaKfRU5DUCgj9LPBDvclIxDHLKJzy3ySmwDT6Ln3DA+TG3EmSTefn3vCwd+B/kk6HvKb39eo
	dD37lgcQlPpc+0ijzIWV6m9foFXt5XE0FQ9ZSTaV+ekvE6Dj6MuY2xWIII0l8TlAs2gTDYxxQhatR
	mbbMV/U91mg2+bWQkpI9q58zlJUkl8I/l0yFB3JuqCJzLPTMpeiQdUNi//xKs553ajb3hrV/lBKvs
	m1MNYHDhyH0sDuIc3ecHKCLytVV2P2rmnljr6HxKU59QqlCXW+Y7hIhtBvajMUXoMVcnrMNuAcd2P
	iEZfQ7G2YdlxAFgEotNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrf3-0000000HJ2d-1eC3;
	Mon, 05 Oct 2026 22:59:57 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrf1-0000000HJ1r-2Hit
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:59:56 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc150711112so158266a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791241194; x=1791845994; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=h3ikYaSpRCSX3H8ucJ72hbBucRgUg7rHXJ+trb1hlAM=;
        b=em12/678LbMWtlD5tfCRGFmNxFEBGx5yBIf/up1e+/ARGxU1md4le7tOLPA9KM2dqs
         n1yjTauazVoQJq4ITDCYYaucIQF8DlY1g4A1m23M4MQu2/MEtdwZPtZWBrbwdGfZn01b
         dKaK+A5oQIlGJC78g/PtnkbvU1tIdwRhXo3CcP+TiH/1YqJbtZ/J8I+orQlsu+O4TRH3
         +tb4wwVFZ4QxG2FOLykxnTufYqQEPcLmyZIN9ZzG+QFYpffwh9OiohM3DGFOSK3LTkL7
         G/Z7lRT/vONqDv2By42AW0vUwP8dGTxi3PlmZ0PcVk6TtmNu9GQUqhebAUImAa1HTAks
         Bs+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791241194; x=1791845994;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=h3ikYaSpRCSX3H8ucJ72hbBucRgUg7rHXJ+trb1hlAM=;
        b=RJi1T5Zg4j/xwW7eaKZ7jwkz0S8RKEX87pxLMu+/6jtnIfUKE1AKx1Bv13hI99raUA
         La36y/DjodEe19JeKPpf4glAwdD1QBytlOenVqAYFsJNs5gu+jKFR1br08weOsgkcOY3
         gdcOUD2+sMF4zq2Yxjw2U0rI8sXPhmZtSxBG4cyN6fkY7W2kz0bZpZa2WEi+D14+Pdiy
         Ek6JJv15yAchhsnLaNRVNHtd1pnOpytmS/Y9l9FNKWAAR9Ag1AQvS35v8fMEx2sGse72
         EFsJeKfndqUkrgTRlI5nOMXXK9BptOAqNq9yF3hrlHBUFzx+xuA0kR9lOyjMb/ke15/5
         sYpQ==
X-Forwarded-Encrypted: i=1; AKwUvBz5MLegANWC3NUK8w4EknQmM+XY9F9ANqeG24y23SCqxVIsFl1h7fcLb4hIZIs127mzjCHc/xOHAngNItbutA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIgXSyc2xQtUYkGwBzhrgmt8zE95c8homBx4IfjtuIZj9BiAbD8
	nFSfgn9BYCNPIeKSGvzVPcSHrkh2laYPeKKQ1dhOp/UTJE7yagym4AfD
X-Gm-Gg: AYBFou1xOUV1V2aWuRPaGdojzc98LH3bA5gvLSpM4UQr2/Ehl7FbW5p9wzr8ysQQDak
	tRq1G0O+YFcJyxJMa7QAIBCuE6V/GgVgvqNVH1Xua51R407FpJ1Iixg/8zAmbG8f7oeXjQ2OFZt
	dDxTo14PRepYXE1lgZ0Q7eRX5CLqJJmvEvGq8ah0118rkMqy1tCpltmscWRsnQcRKDxa6gsZzdM
	R45Cd8CkTzUx6/x7m9c+1RDFFkvi1Ur7xExAXPgnejz28C6JGqAl9Riyov/rmbbT4+7UY9gLRlK
	0QK1k8te4t+TAXVpdKiM+WZW0D//eN4wYuar/ElApS56jZ+sVGusroFPzPf3bj7qmeoR5l4Ne01
	o/yW9O+5ruFnmKvCyfE13md7zEcShEBkbQKL/I6VF5Q4I0o4LONjxGvU6qMsxW/5naNQ2RselUY
	dCGvswo+ZPgDaYCzBPFvUtjFfmqhRRh425fc2aCSFBiXmLpvhI5+mCICiUskTSmztWDvts
X-Received: by 2002:a05:6a00:94d1:b0:886:3d9e:aac1 with SMTP id d2e1a72fcca58-88af58d4ef9mr10577114b3a.45.1791241194303;
        Mon, 05 Oct 2026 15:59:54 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88b0b8f5b79sm4183327b3a.15.2026.10.05.15.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:59:52 -0700 (PDT)
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
Subject: [PATCH v11 0/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  6 Oct 2026 06:59:42 +0800
Message-ID: <20261005225944.1171574-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_155955_617657_66F9D2F8 
X-CRM114-Status: UNSURE (   9.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Changes since v10:

- Drop the top-level "default: 1" for "rockchip,sgmii-mac-sel".
  dtschema injects top-level defaults into every matching node, and the
  injected value conflicts with the "else" branch that forbids the
  property on non-RK3568 variants, breaking dtbs_check on those
  platforms. The driver already treats an absent property as 1 (GMAC1),
  so behavior is unchanged.

===

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
driver routes SGMII to GMAC0; if set to 1 (or omitted), it remains at
GMAC1. This is necessary for boards such as the Ariaboard Photonicat,
which uses the SGMII interface connected to GMAC0.

The DTS changes using this property are sent separately to
Heiko/linux-rockchip, and the net-next parts (XPCS glue, dwmac-rk SGMII
support) are sent separately to net-next. There is no hard build
dependency; the pieces can converge during the merge window.
---
Coia Prant (2):
  dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel
    property
  phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568

 .../bindings/phy/phy-rockchip-naneng-combphy.yaml    | 12 ++++++++++++
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c   |  8 ++++++++
 2 files changed, 20 insertions(+)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
