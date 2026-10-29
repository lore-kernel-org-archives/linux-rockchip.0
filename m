Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757F0606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 08:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MyKAdLJK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=m8NqNvVj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=7LykoZ9rIV0HlJmoQcvSU7O1kqxyh62tTIEZSJEOIJw=; b=MyKAdLJKzpe1mOZ9slTVSW+uPf
	ZyOr9gql0S9SKcz2iTwB78e7UUwrhtRWjketxAwXV5KCQe9M9zycgkkizu1Idswf4foPArauHWpDq
	Xr4lOSX5TnOjQMWYh2gcTKOa4ZkptT9LUpkUZ4/RfU4FyZFmmgxu5ioF9E9Ly9cxRDTGXKEAtaMS/
	Wevm7IDY+tQ3xlkqhhMhKjaNBltrD/UR436xTOTLghAa1T5NNPHhG9FE27bA+uzLfFE5b6VH2LGCB
	NN9Xujg0F/IsLDsR4iKic3CapUizkdfspqGVmRVlZ7G2vYqamjxcLqZ1cMYnL9vaX8NkVEaozCTFp
	OGSKMgRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLT8-00000008iie-0dX5;
	Thu, 29 Oct 2026 08:26:42 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLSV-00000008icq-2ASu
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 08:26:40 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2eac4936dfdso3588455ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 01:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793262360; x=1793867160; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=xSAI1Taz7XPgEgkZ0/+WnfXZLsVVAFKEoUaZ094DMNk=;
        b=m8NqNvVjZ6f4aEXVlf8l/sG/t8JWyDYifdbgFWVEC9pQpcM4ekPqlPYAU48F6+9qHD
         6/aYXrCtok1w/sAd6IKF2PVduodiR5nl9BBDxlYTCJ5DFvy3oqD25jlHL+BtNfJVsJRP
         2JB2hyOparoAZQ7fPhcgxhodw5oc5sNbBJfiza8N+RRnE2R0JiaCeJpWEXsKlTg1ZMOl
         bw5dhzhVQH9Utv4qCIZZ6sICG7IadigGuMV/lO14HUsEIWc1pSp6tUhM1YaYhSsopI8b
         fILkgiyjZK32f3eNe7NqEOH2+IMq+BqOL/MHqdi2GzBGfVDIPbtV1/aXwkjTH7VeJIe+
         fcmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793262360; x=1793867160;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xSAI1Taz7XPgEgkZ0/+WnfXZLsVVAFKEoUaZ094DMNk=;
        b=mTuxy/Wu4fq+QfCk22qP6vf3Uubj/WYabSc9paaRpPJwOY9Kc6t4q2u9wwJipprAKz
         kHcdSeVkruVPEpDeciSeugSd5hEC+PueKrwUrSb7lwbsrhgMyhTrrac+5Hi06Yr0Z9v4
         8hZjrN9akkWOoQLWG6PDUB3Kv5SXsm33bDskEie2SGqq8lghPxFGAr2HtvKP4AsAsiWf
         NdSlXcfyHsu4YnxS4dKrACmxuUUPcnHwFr5oXRmSzt9y453J/jsdhXYPqaeaZPqdhdzY
         u9pxHYqySQk9AWs27eNzbtQhhv/xb40iZIPixJGrm16xq6nJHHoM1VzugD7oz9nwSs9t
         SiBw==
X-Gm-Message-State: AFq9FYKYIRSdc7IpkO7/Z+suVW6BRRADITgqkRuRB2jqgcj6gweQ4j4f
	GwwbRhUztXK+OpW7oHTppMyIHDmv3PwdJmFwb01ciab8AyL2iXwgmvbAm85LxUTw5Rs=
X-Gm-Gg: AYBFou2W98KrwinhhVgpM9H54e49f7duIKvs+p//9qp2+tRJA/gq4ylTdwd+K3WxUfB
	HLJgKiuHUS0dL3bS4woxe6zXWqhZe/WyQb5BHnbc0G2VrhxhrsRGXYZ9rYGJ8YscohMBiqkcMiN
	p3X9u8xRp8BQCLqNHesD4KtdbZCDhPiiT+BvLMQUvE7bhtHWsvw4BIiSJCSoygVzuB/vXrz2hdS
	wOHqrn2r+7UEPOsbkYuM2ZIzUV7MNpCwTdCxi+wt3nOiEfhEEvsVNdpYET0UkexyApL8T3vBEcQ
	NjLKazb/DOTLpg56/cmn1APluMi/T2Exg4xjHpJuDBkQsGTlP4Sbb17KaIOuibXlqrN0aFqQrWE
	rIEbXieJnc8xN8xAZC46L0b6Ld7Tr6/Rjp2U2t/Q7rGuGb2v1yBcdTLcclYmuDxvheBe7O4pa+f
	QlExy2/tvxEQ6gwhQyeUy56FLiKrJks/9NrkPcoPvaGQ9cMgkfAN0I/blTCPIiYXSlJwYGt7r8R
	yA0R0ewRdTeHqyg/qYYvp/D/QkLEnD5oAPiIJhtjSN+AapBq4zSq3rax9t4MzJliungeXRbbszf
	QHoluSTt/1IhuJpJAvfdkIGLIRr7+D4+
X-Received: by 2002:a17:903:32ce:b0:2e9:4175:306b with SMTP id d9443c01a7336-2eb00052bc8mr67641045ad.1.1793262360067;
        Thu, 29 Oct 2026 01:26:00 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eae6b7a216sm30031585ad.16.2026.10.29.01.25.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 01:25:59 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	Amin Gattout <amin.gattout@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Coia Prant <coiaprant@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: Add ArmSoM Sige7s support
Date: Thu, 29 Oct 2026 16:25:19 +0800
Message-ID: <20261029082541.469999-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_012603_559731_3AEDC86A 
X-CRM114-Status: GOOD (  14.64  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add support for the ArmSoM Sige7s, an RK3588S-based single-board computer.
ArmSoM confirmed that it purchased the CoolPi 4B hardware design and made
no hardware modifications for the Sige7s.

Keep a distinct model and compatible so Linux identifies the board under
its marketed name, including when a kernel-provided DTB replaces the
firmware-provided DTB. Retain coolpi,pi-4b as a fallback compatible.

Following Quentin's suggestion, the Sige7s DTS now includes the CoolPi 4B
DTS directly and overrides only model and compatible. The existing CoolPi
DTS is unchanged, and the common DTSI extraction patch has been dropped.
The series now consists of a binding patch and a board DTS patch.

The v1 series was boot-tested on an ArmSoM Sige7s v1.0 board, which booted
successfully into userspace. This series retains the existing hardware
support provided by the CoolPi 4B device tree.

Validation for v2:
- Build-tested both DTBs with arm64 defconfig and W=1.
- Ran dt_binding_check for arm/rockchip.yaml.
- Validated both DTBs against the processed schema set.
- Checked the new DTS with dt-check-style --mode=strict.

Based on next-20261028.
v1: https://lore.kernel.org/r/20261022125339.82746-1-liujianfeng1994@gmail.com/

AI assistance: Codex prepared the v2 changes from the v1 patches and
mailing-list feedback, revised the commit messages and cover letter,
and ran the build and schema checks.

Changes in v2:
- Drop the common DTSI extraction patch and reduce the series to two patches.
- Include the CoolPi DTS directly in the Sige7s DTS, as suggested by Quentin.
- Clarify the unchanged hardware design and the reason for a separate identity.
- Add a background comment to the Sige7s DTS.
- Rebase onto next-20261028.

Jianfeng Liu (2):
  dt-bindings: arm: rockchip: Add ArmSoM Sige7s
  arm64: dts: rockchip: Add ArmSoM Sige7s board

 .../devicetree/bindings/arm/rockchip.yaml        |  6 ++++++
 arch/arm64/boot/dts/rockchip/Makefile            |  1 +
 .../boot/dts/rockchip/rk3588s-armsom-sige7s.dts  | 16 ++++++++++++++++
 3 files changed, 23 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts

---
base-commit: 6d0933ae9d46674a6ea63a87e9e9ab4e662670c9
branch: sige7s-next-20261028

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
