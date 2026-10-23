Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3002606A324
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Oct 2026 05:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nQHjy48+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=KfJtO4yn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=yg5i2cSyBFYL1pT+X+v4CZjo9EJCX1NOiRm9vUZLLC4=; b=nQHjy48+IZAk6f8sC5rY3n6ByT
	6SJPrrseipXHGRicFDCidN59r6ODQxM6mBT4z/08Fax1SLxxDGib+RC84qTOGCAgy3xCB9Qprhsmz
	JCwvKzJaYLQwYPpFeoHBmCQsvMrRA2Dq7XbwrF9xGI0gezIwKywkpm/5OO3jq+9JOAVKQmMR7fXev
	THM6Cr1nfTquYnkgrUuG/QTvUn5JSSz6eSzGHqy5/QrO9ObzWYsKjxCQWdfSbaAfNGcEKC6Fl5Bh/
	jcjo/oNEysYkKyp8c2dilAEc2eXR9ahAqCDZeb83FAsTmqZwCw72931JLpcflhiwV8qIDenpubGmN
	0+flL6UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wf-0000000FWhi-3Dr7;
	Fri, 23 Oct 2026 05:36:01 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xK7wc-0000000FWgc-37Xx
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Oct 2026 05:36:00 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-36758ba1f01so235431eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 22:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792733757; x=1793338557; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YFwipSmzwQ403tXXCr3sam0ZTKk4Mily0d72SzJOBxA=;
        b=KfJtO4ynj5dH3QiNLWxmjMLNf6c/sh+IRBDvqDrg3oVuoVPqzcRYuIhXJEMPNG724C
         R35rLiJBFHEltoiP2wCIa70lgXYg0jnKo9JYfw+cP1a1k61y6bANfc8cHc4GjmaQpqh+
         2pMSc871VO6rwMfZtv700kkCvTJ9FiTvioX/SFdvLahGgHVknj/jhs0Qi5lk57KXsc6j
         ddMQocWm1FUMGj8K/WSRJ6kLUygUGv5imS4MONsVn7ow/+vabSWNgObDP9qXZYZhgjHV
         CPKwPbgSX+VdaYl85KmgbZ0D8K9tWgoGzSis3WnBvBwBDUALVy0gcl6OJMEYJWVV03W1
         tfuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792733757; x=1793338557;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YFwipSmzwQ403tXXCr3sam0ZTKk4Mily0d72SzJOBxA=;
        b=ox0BrfOomg/UJrP+YumETtjRQRMbMttoJnI+Ka1GdKTy/gP093byvOWm+nur+VkgNf
         xtNGdTlpAd9LMDWoYEonUIhIr2zZDT5XI4eqUastfhkWnreEJcR8vXb9JC7xa+1WNxIQ
         RPOJuEkFKX2nlF2zOlRy8Ulx+aO4tjcwgbddnYqBj0aKwtwU1wTVAGDRl7W3j6GxaU/X
         JGrdC7H/OaO4eEzigGShCeC1yZrzYipLfikDJ1ilLTt2eFq0JWB2289c9VV0Q7Duc953
         K9xSo59ByHwg7V3l7EzbZK1GvN84+bFFqk5cuaMLFEx/3oHyaGEe0ItC1voztpc2SuT4
         poVA==
X-Forwarded-Encrypted: i=1; AKwUvByBnYN3Rt8k7IR6Bzv+ZQ3OA8D5wWCCHl9TAe2tTOhTFtVwG0kfTlVk3Qpjnr4G03pjHFWYWg7BOQQgHWUbig==@lists.infradead.org
X-Gm-Message-State: AFq9FYJrPLaIyvsS1rJPMLCIP+g+ooUMimFYCU8TMx17+g2eRN6ZBoQ8
	g2DHaR8EeTDny4fzsCfS0I5cuoKGEhvttN+a4txSY8sMx6qenI7fwOhVLa9KgwgNbyY=
X-Gm-Gg: AYBFou32cevldyL2nf0gmNOkrw1dVc3aU19WQC81ytRaetm3f9iPmS6vBk4aE/J6/qt
	cl95EeZZ0LoMLiZ5yOiQU+zTBvospBtP0mhIQcCm1DWFn1oHdifLgP+2qJ5SfHNtar+w40+YNJp
	8mjqVGrtG0KDsrs4niogZkjQTFN4LuBCYZa1JgSG7/rGVeM2MZFraa1cWRGkjwgMRBBAQYFkAyS
	n0XuWWRhO959aEo10Hf8dY1koIcFi23sYw6WfSNO8O9QJUKZ6sW1FuyZFtSebDv+JzAeqr6lp9u
	S5kWKQAUC3DQNvOZm48a8vOx36mSv/QGpZUqB194LqprXxkjFt8zJpvcl0clTxm8WMj1JdG0Tfs
	IVUFD0khFYr++WKXRaZ6/eXg17XpZZKtZV7OLvhgHI4eEYtH+EngyBxRnQiZ7FNVkzj1D0FlrOs
	pCF5h5+RH3cIqTzOcy19aGfpNyIiBX43Wec0p9iyI4knvEVzjpe84qOG+UMJ63/154JadxbKm58
	nCsxVwCpoCCDx4zkMC5BE3QbLE9NdP/nRaHfRQFYWRDF3PYe/O3+Q==
X-Received: by 2002:a05:7300:c3a4:b0:34e:e7f4:cc78 with SMTP id 5a478bee46e88-369d954ad83mr1482862eec.5.1792733757137;
        Thu, 22 Oct 2026 22:35:57 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369d9c15883sm3542480eec.3.2026.10.22.22.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 22:35:56 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v12 0/3] arm64: dts: rockchip: add RK3568 XPCS nodes and enable SGMII on Photonicat
Date: Fri, 23 Oct 2026 13:35:45 +0800
Message-ID: <20261023053548.1595033-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_223558_788984_35DD3479 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds the RK3568 XPCS and fixed-clock nodes, describes the
RGMII PHY LEDs on the Ariaboard Photonicat, and enables the SGMII LAN
port on the same board.

Changes since v11:

- Drop max-speed = <1000> from the SGMII PHY node. SGMII is
  1000Mbps-only, so the limit is redundant (Andrew).
  
Dependencies:
- XPCS binding and driver (rockchip,rk3568-xpcs, XPCS glue, dwmac-rk
  SGMII, pcs-handle binding): merged in net-next and present in
  linux-next.
  https://git.kernel.org/netdev/net-next/c/5e91edfb0e45

- PHY binding+driver (rockchip,sgmii-mac-sel): still in review on
  linux-phy. Not required for this version to compile or pass
  dtbs_check; only needed for the follow-up that sets the property
  explicitly.

- Generic PM domain (genpd) changes: runtime-only, not a DTS
  dependency.

The XPCS node is disabled by default and only enabled on boards that
use SGMII. The fixed-clock nodes are always present, as they are
static clock sources.

dtbs_check passes with the current linux-next, since the XPCS binding
is already merged.
---
Coia Prant (3):
  arm64: dts: rockchip: rk3568: add XPCS and fixed-clock nodes
  arm64: dts: rockchip: rk3568-photonicat: add RGMII PHY LEDs
  arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port

 .../boot/dts/rockchip/rk3568-photonicat.dts   | 67 ++++++++++++++++++-
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 23 +++++++
 2 files changed, 88 insertions(+), 2 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
