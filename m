Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABC3C71148
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 16:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Bi5vDOMdNSfVUe7GKX8EfYTZKxZHC8C6B3kn1ZHGE0=; b=HZcy1DId35Lq0k
	iI4/uQuVBz6COEmyP97iqReUzKdU0E8A5UaIw2Xum5d5hKEaurUEVT1sMayK2t/y7esJsQpKh/v5v
	nyb41P4To7dAjFj31rMOQRMn9kc+cpzdjK6w8U9V15/erWJvcPb2EnhmnJ9C0Fu0l4DrTl0qPtBjK
	/fhD+r4BpIMkJbdOTsWbP2+kjPGvZ5fnss6sjpK0k1VB7R4b8SVnkCYiX30Tf2SmgSFRQ9Su/wVCT
	Q5o0inU6G0dTCadkM0CY1tVXttQYYwCqNH5BFCvmLtEVT3Ow+MGb/HkxEhY31GVzY1DodMx6Hsw9w
	pR39FBDEWFU/zJCKzGcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ70z-0000000H1AK-0LqP;
	Fri, 13 Jun 2025 16:12:25 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5lY-0000000GmAl-2ewD;
	Fri, 13 Jun 2025 14:52:25 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-235f9ea8d08so22434315ad.1;
        Fri, 13 Jun 2025 07:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749826344; x=1750431144; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4uBBexglmDg860eeLxvF6Ft+pxKPH1DbiU+A4sUq4Hk=;
        b=Lf4X4/vwax7XQ70WeEN2IciT5i/6YOOxWbnjIGcWvEDBUNXnC5wrRQm/9u20V62UnP
         iIX+8GKCH7Vo6FDGYx265sLMLwplYg7g/nDdNOa+XFaUJW+RfDs/etH1D/JL7B9owQh+
         8iG1jyp01G8oh4P6HEaQ323ZSk8bxEHXbZyGC5of+2A9U+6vm271WHksltTbXWhPqflG
         fpxmGV9owZEvo3jnqWoQ4ll0ZXkvmY9g89JIuhfRw2ODBgmWfeiUHHlwcoCsWrpYoabV
         dYB0k6ZLKOYwua39L7RAxyfvf7z5Z1ngFI8OD3pgzNamPlD7XGaTeRfuVPntcBKVGXP8
         B9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749826344; x=1750431144;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4uBBexglmDg860eeLxvF6Ft+pxKPH1DbiU+A4sUq4Hk=;
        b=ToEqwD348Tz9TC3GcEKRPkY966a4RI4yWbZZ9kKPTpdwg1HDot0wRf2aZ5Aspt/R2W
         K6Cwi6uqpE5pvBOTMKSK/QAi0ovj+FZ0tyCgUlw15Z3eQvnmfvX7gsSvzau/ZVVlLLue
         fIQessMI4Wc0or3WZgkpRBeIixmYdoOtrYMfIbzkKtLvuserwPR9iTepQC0ujzE4RBcM
         jJd12lFmZ9Si9ZeslxnbO+5mLnjqPAHIbs68Qbx+EYC/1spJHMCqoHo2vfTlfrLDITI1
         mhGpC7KWqSbtiuj6l4FAGdNjWDN6WJzh5MAHcblySpmvspg0YB9qFzF91zBogVf2RcPI
         aw6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUqf5Fwr+ec1KRE1PG+tXgbsUAVDBQNSxCvyscN9C4zcYvOE51VSg1/GGAucC0k9bZlRBwt4XyOIP5H@lists.infradead.org, AJvYcCXj4i/2HksGX7mpGML7xK630ZbCV5hqzAoir+y6rB/f2l79vk8ANFtR1FUxTDsbKc6/O7nlv+STgEd5mOqP6GuK@lists.infradead.org
X-Gm-Message-State: AOJu0YzBe2tqaVZCreJq2nsDI61ZKxM34Wv0oKKdkIyUPtvjqJ0wB9dZ
	YmHJPQrZCzMAarVTZGugeOB4pAZyXYYAL/U19Yr6rTaDwl1jyqjvTiJYfXa0vmhl
X-Gm-Gg: ASbGncs26piiNcxv7plf7EIl5WWhBwKCJL+wYn9UfHTNypyT4pPNow3ooGAA5JsYxUC
	nvZyXWdkrPQT7908pGRELiZMZHyplFF9TpXRfvjn6n78YNAppnakz3dI44U9MSADbAcraqjnbd7
	C9894um1n/WeHsg0d47lfzz7j+kImkuUgXm8w0Pc4pzc6NGKd70M9UmmupGF7jGk65bpSVKSQw5
	KDhcxOrx+044xY3RYVM66GlCIqqYSArKCmPtsR/FxybA3HpWMBXUf6J34gggn94IF3RpooXcqdC
	jKuWW9hNCVzeYkVpxhuWjN/Da/vn4oegI+KH+XaOWLWUABVGVA==
X-Google-Smtp-Source: AGHT+IFQeye4Ii3UTFFbxfeoPbcctur87XD4ln6xuqpdoBOQEc7zFFMytQsOpO1QCns9uvG3EBfxYg==
X-Received: by 2002:a17:903:320b:b0:235:779:ede5 with SMTP id d9443c01a7336-2365dc2fc73mr52226365ad.40.1749826343841;
        Fri, 13 Jun 2025 07:52:23 -0700 (PDT)
Received: from geday ([2804:7f2:800b:838f::dead:c001])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de7827bsm15095945ad.108.2025.06.13.07.52.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 07:52:23 -0700 (PDT)
Date: Fri, 13 Jun 2025 11:52:17 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH v4 5/5] phy: rockchip-pcie: Adjust read mask and write
Message-ID: <b32c8e4e0e36c03ae72bff13926d8bdd9131c838.1749826250.git.geraldogabriel@gmail.com>
References: <cover.1749826250.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1749826250.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_075224_667540_139E2C07 
X-CRM114-Status: GOOD (  11.57  )
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

Section 17.6.10 of the RK3399 TRM "PCIe PIPE PHY registers Description"
defines asynchronous strobe TEST_WRITE which should be enabled then
disabled and seems to have been copy-pasted as of current. Adjust it.
While at it, adjust read mask which should be the same as write mask.

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 48bcc7d2b33b..35d2523ee776 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -30,9 +30,9 @@
 #define PHY_CFG_ADDR_SHIFT    1
 #define PHY_CFG_DATA_MASK     0xf
 #define PHY_CFG_ADDR_MASK     0x3f
-#define PHY_CFG_RD_MASK       0x3ff
+#define PHY_CFG_RD_MASK       0x3f
 #define PHY_CFG_WR_ENABLE     1
-#define PHY_CFG_WR_DISABLE    1
+#define PHY_CFG_WR_DISABLE    0
 #define PHY_CFG_WR_SHIFT      0
 #define PHY_CFG_WR_MASK       1
 #define PHY_CFG_PLL_LOCK      0x10
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
