Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2069ECEACDF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 15:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZnTG/Vw0cgpd9Dpi/A/GnGWGZs5YIxU2nZGQ8KxhqeI=; b=Azd7gTQNMvPzky
	PqwWTZVKh69/gZTLDqEA9T5BLxGwo1yZXgpFGgOJ0kDW57ThWY04iBnVInshRnvRRWegeTZdNuNbt
	QvyjH+2EAZpzZ2DEIDn0k3ZYUvmaHvyYPYxICPlZOolKjv85zKI7CDExnVzvpibDYciB53bP3riOk
	W58ckHQFqm30mwflsBSjex177CDG4Si94oBCPFXrFYk8ifE4y7QE4VwgIwY9EGRF6Xn3PprCT5Lck
	ykhIPJ3wmK0d99QsLV13Q+wY5ZkP0WQSNKMfQXmTucqz2yiaSzdNAphpQlml8MY8AJ4oKiyZkW4Y4
	RS5Cvscyx7GCmQnHRjEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svf80-00000003OAD-1YBe;
	Tue, 01 Oct 2024 15:49:32 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svf1P-00000003McQ-2LfU
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 15:42:45 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3e049185cfeso2126995b6e.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Oct 2024 08:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727797361; x=1728402161; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+aTQoAFuJz1zyLJojlJXvxUZfbLTbgOl8RgfLwHTN3w=;
        b=fIKjyE8fjL5BDJ7FViIHOw3PfSqqRZnh+j0tzKflLTFY1O4sZ5B60l7UhTNRXF1IRB
         SWZCkPIKyECmwvWGWcwMJ8c6qdO1x1FDMaD6LCtm+FHOLgTBPq+iQoiMKtu7NSoBu7bg
         nwgrviF3EEztLkVr5B48TLT8pzegAvLKzBshDwL7LsZJdjD2Egoe8265MojZFZsTGoVg
         1TY7lqRaZv8+eKuF2JcZzSH0g5j5JzeD26Tdgl2osmZQ54li4jNCxFTznmnprjjitEF7
         gZuXGo0I6kUrIlzf21xqITZog/JmfpXoaPhetr/bTHwqZL+pqAb5LJr2GiyHDR+Pqi4e
         1Ggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727797361; x=1728402161;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+aTQoAFuJz1zyLJojlJXvxUZfbLTbgOl8RgfLwHTN3w=;
        b=JVazhn+a71q9fQn12NgHJZSEahWoc79RIio2El27D0hTuGeyA1hasMjs8AjDGlXd8s
         iF+II0mIGIP0BMhnz39oDj7g99uHDAusxIpLy67nik/cWc2kE+Y8E99WNVoKOd4aZxib
         +uHidP+hJyEIKse35mkiGm0vIvpmV8bL4lbKK7eb48uG/ZwUuMn/kYwJw6rcb3CJaUFa
         lBbNK9lkvGQbfXNRFk/PcewfhLId7Ouhi5W+D0eF5QtXjo+ds3Z5HTJcz1hs2wSrEv7I
         Idvm3MIEYtcP6FcoayA75z2ax97dEylmgkgDy3Ru5zO/1g1q5w2IIG5sWBL+HaIYHY6N
         arPA==
X-Gm-Message-State: AOJu0YwsmCAmEqA6OszO3PkSMcED2tj3bu/mr5I25kE6QtRsE9+p5dUg
	hZ9SGaj8N1Z+t/T2gwCvKGyAWJnkJzQ6aXTFyrjLi+BgTkAO+rUNkv/NCSS6
X-Google-Smtp-Source: AGHT+IF1idztXvqQuOq83eYq7ncv9IXF1MC6zB0YgYdjXv5LvqmVsVWcYvGuurXlOwiQbf8pFrT8sw==
X-Received: by 2002:a05:6808:2116:b0:3e0:41cb:fe5b with SMTP id 5614622812f47-3e3b4187609mr95275b6e.45.1727797361244;
        Tue, 01 Oct 2024 08:42:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e3935c6293sm3120485b6e.53.2024.10.01.08.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 08:42:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] Add Powkiddy RGB20SX
Date: Tue,  1 Oct 2024 10:40:14 -0500
Message-ID: <20241001154016.87386-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_084243_632285_B989819E 
X-CRM114-Status: GOOD (  10.73  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Powkiddy RGB20SX handheld gaming console. The
device is mostly identical to the RGB30 but with a few key differences.
Namely, the size of the battery and presense of a function button
differ from the RGB30; these changes cannot be detected at runtime and
necessitate a distinct devicetree.

https://powkiddy.com/products/pre-sale-powkiddy-rgb20sx-handheld-game-console

Chris Morgan (2):
  dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
  arm64: dts: rockchip: Add Powkiddy RGB20SX

 .../devicetree/bindings/arm/rockchip.yaml     |  1 +
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3566-powkiddy-rgb20sx.dts  | 89 +++++++++++++++++++
 3 files changed, 91 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb20sx.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
