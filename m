Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA020606A680
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 21:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=b6tWy/wd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=eRRbCLKr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Sr/ANfAuImbLzBUSvzPTOsVSVfWzWoEDAnj/elzvpmc=; b=b6tWy/wdwHzc+IvjYsMLHSSIzi
	4WhKFUJEw1vScn6mNmIEijTxgfLsZD5whzj92JheRztPI5pWg9rcfIZSLIBsoqfdEyG+VMY3JOp1N
	XaMwRBFdeI8t/BlUfupJX4qTUUjkziJe3b1yMBAm7PgUCpmldc20Eum6N5uHfi9KohE7KTt52wZ2U
	dWpDHiAZocW/+Q7eJ1lc8q2uooriLcGYbvJ0R/5CIunTkGZ221VW/fhcgL+3e7vhavsUxj7VBIfAR
	4e7TIIk5RSZ2RDZH+GzDpTtWgWy8pC1lDPxdAkO3j78IE8cqSug7lu96qbz0uirNHhaogT2/AyCCL
	V9K9h36g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUWAS-0000000GJ6x-3LCJ;
	Fri, 20 Nov 2026 21:29:12 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUW9e-0000000GJ2g-3zNJ
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 21:29:07 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-4ad587ba293so909147fac.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 13:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795210101; x=1795814901; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=taf0KVPRoF+3JboQGvuM90twCXz2SjYe05359+kTlN0=;
        b=eRRbCLKrwckA1eLQEGrHCVZ+2NPlvPJsiFE7ddaWDqLVj8x7xphQsIxywYAaMjLH7d
         Dz25xyOJNRZfRTBcu83JjVnfFM+h/+XFpVc7zPs6zHv3hHz/jA8luGPy1xRl03p8v3K4
         uHPIyKZgCTAYh0yXDrs58KPZ7nASvaS7uJH6cjxeGdeybWfs4k66+oaB6s2NbzBFl2GK
         Q0XK9aXf7Zq/4r2p2DYblCwV1Tv3Tme/BGlR7LTFdr8B/cU7yg4r5VCmEL+2Hqs84fyi
         9dvT+2I/YbXFWArOx00MLeDFEoAu9dgrmT7NgZ0hbwlrfZ5pKUdET6994pE9LDLUcw83
         KxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795210101; x=1795814901;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=taf0KVPRoF+3JboQGvuM90twCXz2SjYe05359+kTlN0=;
        b=1LNrvvjpdtJoMVrkkTreRJ6nv/cWjPtNvaTgbKpIZqGoY1iCON4F/QqY++Te3je8Ax
         lQL4KH9ThgZwHQsBkybqERKCKnaZ96byokXmyxWd21kYXDEsFEygZu+HMXgM8SGTgWsZ
         k/D2YAa5OmcOiPkL5g7+jpAJa3KLzs6oaSw2iYL0rTUFVe/TcsYFQLelHdLGeHfTykvd
         9MAQ9NT50qdaHFB4c3o6LdpWv5CQdpvZ98I3izkMe07joCd/nC42mjDGNv2V7NYRd+aW
         zaqS1pEeA+/QJHu723HADiJrtKROWAUYSkSZLz4PCqYAFVzXRnIG14ZlUz+NQfsBXGRS
         YJcw==
X-Gm-Message-State: APuU4Z9wiCMgIs3ahMk/U4mi0jGoI5Nepd4VSWo09tLxA035MIq02KcF
	fIXLolo7MbMJ6voEQxLJ8odDEuiKDQ50tzCiMAl3f0bV+Vpg+3TAA9blqsCc8UQc
X-Gm-Gg: AZFdTZdlF9aUjuRNq90qXAY6m85m9lI5kHP0jwjciMVpS00Wov2D/wuPNIvcy1KDFpy
	SEfncKurNbEVT46gu+JIt/+ophJlCHZLMPyc45iJPIuyx+FhYv16wDX9mjPCjdYpI3a/NhzdMsr
	IinSITtCHqzWfNMvRJ+Wz78wW6RF/KmkpPuneFHF7RrF/zgOG+nj74rbGz+q91AiKwQK9UcWGOM
	rbhabeZ2O0q+YfTdD5Hb16GSN2S0nD6G9rbDFp2OZkHW3bfhg5NmxOSJJBXCQDP9kFnLKd4hQbK
	9Z3Uqgj58Fdquh3D2UiSUfvAk4M9PBYwtu+iK5lNMzlebIboZlvKmAxvRwczuQyenPG2y30g03Z
	MhRfGtXJdbFs3K5qhlBXEEt0LWdkbKSHvbuPPfBF5WYvnSouYwupLZYTjzb4UZXhrZayaTJym3I
	/l+z5vsT1w+HCoNB4l7d6k0IGkUl/K0dXYnkOQYMJ9aMfOQR90H2uQcK85ee9de5j9o54mfLCtb
	Hx+RdGgGB/iEQfR5FjjhnoVcXpyxl864TgO4LI3v94FEBMZSIGmB0QaaIudAgWZEk2gfV1KkhFd
	6qBVGPSCCB2svZ39WCwa9EpGxnS9jw==
X-Received: by 2002:a05:6871:eb09:b0:47b:df9f:6c0 with SMTP id 586e51a60fabf-4bc7d6650bcmr4022958fac.4.1795210100955;
        Fri, 20 Nov 2026 13:28:20 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc5b07d766sm3774126fac.2.2026.11.20.13.28.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 13:28:19 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	linux-pm@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 0/3] Add Cellwise CW2217
Date: Fri, 20 Nov 2026 15:28:12 -0600
Message-ID: <20261120212815.35663-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_132823_035483_6FE99FEA 
X-CRM114-Status: GOOD (  13.45  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the Cellwise CW2217 battery gauge driver. This driver is based on
the sources used for Rockchip's Board Support package [1] but has
been updated to use the regmap API and devm helpers.
[1] https://github.com/rockchip-linux/kernel/blob/develop-6.12/drivers/power/supply/cw221x_battery.c

Changes Since V1:
 - Added a default value for the shunt resistor in the binding
   documentation, and updated the commit description to note that the
   min and max for the battery profile is now per-compatible string.
 - Fixed bugs pointed out by Sashiko bot, and corrected units for
   temp and shunt resistor values.
 - Corrected include pointed out by kernel test robot.
 - Noted in the commit message the patch is based on original work by
   Xu Shengfei at Rockchip. I did not list him as co-developed or
   signed-off since I did not have his permission (yet) to do so,
   but I have his authorship included in the file itself.

Chris Morgan (3):
  dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
  power: supply: cw2217: Add support for Cellwise cw2217
  arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro

 .../bindings/power/supply/cw2015_battery.yaml |  41 +-
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  |  21 +-
 drivers/power/supply/Kconfig                  |  11 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/cw2217_battery.c         | 826 ++++++++++++++++++
 5 files changed, 893 insertions(+), 7 deletions(-)
 create mode 100644 drivers/power/supply/cw2217_battery.c

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
