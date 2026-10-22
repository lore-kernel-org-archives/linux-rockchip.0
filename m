Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77A9606A31F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 12:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gXp3XS6o;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=R0/T+L6B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=WOG1XsJnbsLWjy4cW81L9cDJdpE0J0BV2UQVb62v0fs=; b=gXp3XS6orO9bmAOIv10YTsHjzI
	RWGfkceZ1RGHeH19KS0mA+QRLjACoUIEiUaZ1LIwa7da+jaDRc3LfaepozHAnOsfIZO18bh+Qf7cW
	i2076ZcftRbOOCzYjxvNjsql0CemD+9hpaBC55dDHuj6zVOLH8zuWnbxukrFtmysgNo8Dobl/j/UD
	oIE1sgC1SIuk5xBgtLkp9jjJqb+81MIBG8d5sOGkfVEOKsI89FSs/WvDvO6yZkuVKgwbfQ7ZG4noc
	H6fBccM/zaROQuTcTsA1dlbAOd2JiROCIZy5EwEKHxoBczrlMF19DSSFV8tj3eqYRfHYHpsavMVYz
	ROuM9LZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsIw-0000000E6mO-05zY;
	Thu, 22 Oct 2026 12:53:58 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJsIt-0000000E6lT-15DI
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Oct 2026 12:53:56 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-396affa9420so199994a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Oct 2026 05:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792673634; x=1793278434; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hJXOwkkBJmyzw8mSfRsieQwN95oGOjBRB10X28KVVpE=;
        b=R0/T+L6BauD4b0iCjj2SLt3oiGUxvVqaocQX57SUOknivUq67QQeuSj4Uswmda1T0T
         PTrgN+uGkILMHO8YwxSld/fV3cmNzHRan7nc0e0cCpabNbEBKZWOiWatDDuQ5Q0aehQG
         R+raCzZjInfmF1ic4rck/M21TxeAT1jNCm2JeRBsz+C7x7tsWQUNAzxdN0URUo930sJP
         VYULvLCJWDFPhfz9MgxAmowYBmy0wQfQ5IYyyJ+SvNrd+qFv/W94Wz1DDEzCqMzDJEt+
         WV4cvOkonLNFTpt0EaxpMmKnXuQH69v302A+sRAurz4CEcP45xlPEpuW39r29H8iEVMw
         N80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792673634; x=1793278434;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hJXOwkkBJmyzw8mSfRsieQwN95oGOjBRB10X28KVVpE=;
        b=iV4Wk1FIRHFd07RL62bwG01uMG+RiFm+2Gm8NyznOxNIL2eVPZHtZBd3IfTQt11KVF
         6S9Z0U1enm6dKXfzCTLm+c54EgWLWP/SGJxEWkdjF3b3io9BXwxfI2juCdVU9mt6u9NO
         v41CZBRe/r7gBWDtcSMYDs62SFuw6ReRQh/l2gP0pRlCRQ+x2CG+ZK+nu0KdzxD6Wu4e
         zZbnoTYVjPRiQPmi6Po0OY5NSp4zQB/hGwCy5ETDaK3mT8wxfR286kNi+iRLBc0KWmyS
         Jcl/UNiMkpAATvqXGgdmlhBsPs6mS4zE6NUGNWsFoma24rXM/L58qDuQUklOqCkdRQGi
         Ff5w==
X-Gm-Message-State: AFq9FYLFdKeZrBsUIq0txEXZFAjn8qT5+WoonhMwzCmdTYFwTUFckIUF
	kG2CsvPcMtcMpFCR88Ecv6tFCKrxKQRZ5l8ugfcgK0geJhkqkr6YaTqsbk/Vo4vbYWDSjg==
X-Gm-Gg: AYBFou0cyBaOzOLFvQsYjNvrQ6V18hIfzxnMeMH4UaPT1su2NlYS0WwJg8A8R0DEcxB
	SKmIeS1HPXYp3bGNuSZImzjZR4hampPqOTY6JaofOHZlKNhOn5RgU83IYcOiaF163Fr+wA788TT
	DCdiPIjFu693j95IQyI376A78GsNPbe2nRwaQAULUUJT6QoQvaFkT0KAfqZ2NjYGVewQ/Ol22kC
	RLMzXRxW/hmGwSwOwBIpZmJJvxHmRIq9pGFMjIcSD8YjhTQqSirpi0zokVSqsKhr6UuskloVU+O
	ray9pjnIplYG7Y07JeuRE4X1hp23rPLqU3UFB8zfKzI9y6qr5eH9hQ+k1dTznXBpHAB51nVOKNp
	k5aX/Yu1Bf2O+14g3iJgqVU3AtYxtFu/C/zSILq1c6ua7sV89hM7TWJJ3qyEsAT6g2SWzyUBUL7
	KXz8fAKzG+OuedowhEkjfirqSE2R18zJchLYTQxSH12kiIhQscwMauPbxFuHPb83c9so88eUl/I
	/gV8dw5Dj3wQe3E3sCSqecDGgi1f5O5KahoXhdaQyuVK0hVW5H9P08gnCY=
X-Received: by 2002:a17:902:da81:b0:2e9:6468:2005 with SMTP id d9443c01a7336-2ea43ccf96dmr64409565ad.2.1792673633997;
        Thu, 22 Oct 2026 05:53:53 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b435243sm23704165ad.31.2026.10.22.05.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 05:53:53 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 0/3] arm64: dts: rockchip: Add ArmSoM Sige7s support
Date: Thu, 22 Oct 2026 20:52:51 +0800
Message-ID: <20261022125339.82746-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_055355_299477_8493D9F5 
X-CRM114-Status: GOOD (  13.51  )
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
Cc: Hrushiraj Gandhi <hrushirajg23@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, Rob Herring <robh@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org, =?UTF-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>, devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>, Michael Riesch <michael.riesch@collabora.com>, Chris Morgan <macromorgan@hotmail.com>, FUKAUMI Naoki <naoki@radxa.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
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

Add support for the ArmSoM Sige7s, an RK3588S-based single-board
computer sharing its hardware design with the CoolPi 4B.

Document the board compatible with coolpi,pi-4b as a fallback,
extract the existing CoolPi 4B hardware description into a shared
dtsi, and add a Sige7s DTS containing its model and compatible.

The generated CoolPi 4B DTB is byte-for-byte identical before and
after the extraction. The Sige7s device tree differs only in its
root model and compatible properties.

Boot-tested on an ArmSoM Sige7s v1.0 board, which successfully
boots into userspace. This series retains the existing level of
hardware support provided by the CoolPi 4B device tree.

Validation:
- Build-tested both DTBs with the arm64 defconfig and W=1.
- Passed dt_binding_check for arm/rockchip.yaml.
- Passed DTB validation against the full processed schema set.
- Ran checkpatch --strict: no errors or checks; the two warnings
  ask whether MAINTAINERS needs updating for the added files.
  The files are covered by the existing subsystem entries.

Product documentation: https://docs.armsom.org/armsom-sige7s

AI assistance: Codex reviewed the series, ran the build and schema
checks, revised the commit messages and cover letter.


Jianfeng Liu (3):
  dt-bindings: arm: rockchip: Add ArmSoM Sige7s
  arm64: dts: rockchip: Extract common CoolPi 4B board description
  arm64: dts: rockchip: Add ArmSoM Sige7s board

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-armsom-sige7s.dts    |  10 +
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 936 +----------------
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dtsi  | 941 ++++++++++++++++++
 5 files changed, 959 insertions(+), 935 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-armsom-sige7s.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dtsi

---
base-commit: 8f7df005a7564bd7ffa75da9c3085d5b996f1e16
branch: sige7s-next-20261020

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
