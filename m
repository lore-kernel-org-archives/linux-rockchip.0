Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADCCCDD543
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 16:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RcMb4av0MMUq2+gMNZ9AxbpfgB+qCA3IFEPCEZaXRmw=; b=sbRmoltZewHiQw
	K/off0OyQZSkYa97UZ2f7TlLxGsRabxEIunrBemOUw+v0nGqqW7Xr9G4ekntfHJ0QDjYkhsfpHt9u
	0CGW+6UJ60pNx1Ox9OHeefa1zG/cPZE/JjFQaH9GO4wyg9jFOAQpELnGmS0BkijJL1dTPFDIisWCI
	4tsOq5hqiRWExs/EWo0QrHoZGPcPzzIWzZz0Sa4oV+MZ9FoBg2o6/wGdO6F8h1J7OFq9XLSJicXBT
	wJWQDFH55zaehWPtXl/nNyCTYzGNO7OV7MdkiCPPjFsn1OBIOzGURxHKdECiBIvQVq+DBy4uDDj+G
	bbfL744AO59v5t1l7zhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqxsn-00000008f89-1dSh;
	Wed, 18 Sep 2024 16:50:25 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqxsj-00000008f7W-3KfO;
	Wed, 18 Sep 2024 16:50:23 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-7191f1875d3so726366b3a.0;
        Wed, 18 Sep 2024 09:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726678220; x=1727283020; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=foIJI8m+Md961phTBzLPLyTlV1/r1hCpOS6+31+P9Rg=;
        b=hXIs0O2XgWf3wlGbs/k8rFJ27Sz/CErI3gp1rF1JRXET+J55CsMN+MJPasvL0Dz3oQ
         bRwb/G4PtFBJEcj5EBJFMwLHu4U4WIRDAbU3DjAbBfN1VONmCzn923ITY4dZulo9SRJN
         ciyL4LRpFOgzrn1y7g7Wrv6pKQaODcFk2HrEoW0R+2IR24PDDdVbqCQXV5e3MvDEu3VZ
         qiRTNihI8npxOs6WJ2Mh1MvxItZPNGTDKAcXqb1k3HIwM8GVjstGKhUwMPLhzYeW6ZVv
         bJTN4B85/U14UKEAOnWcUn/CjVP+/AdX3aF3KSlrm6f51DL0gQ8c3DefGPHkuLPsIrSU
         E7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726678220; x=1727283020;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=foIJI8m+Md961phTBzLPLyTlV1/r1hCpOS6+31+P9Rg=;
        b=MLL5MNc8EJFqXjWm0bq6Hj5QZUtBTgIv7scVWXqbpbSmpqehvvNrHarVDuj+WA5YwB
         M9DPGhNleX0TA/Rtu+nIuaQLhpLXC1SxVWW5y7B6D97tCQeD2ZRcjMw4NqMPe6y6hhHc
         p91rfVriiOVTEo+8JfRVLiYbCf6KhgoYeXawyedtuMYdVhIXhLSAgNKZfAkHuqG+YsIG
         XKCIxKC4Pmc8iSr5tLsOFaxYgifx/eNh9WXqk706GfnbvkHiFWU6fn4RWo2QfEexz8eZ
         pYIxiTMQmEkJ6WssiQk1YpN41y100Bm5O9ykbvJzWfMBP74GvbrePbMye9a/GNzMQyBj
         k0zw==
X-Forwarded-Encrypted: i=1; AJvYcCXsu0gFy+3rwga/ZLyuq9a9Z8+w72c3Sly5D418NkX2BSkYd8dBZB6Sbi0Q6LfcQeHQYsyNMsmHcwyrQZcj++Kr@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/cm0bVkaRg1s3q6epRqgcmK5orjHRXx8edZ9ySI3ndHabgM7j
	QaQCJibUBfWLUQdi25lIIjBRwpyLlQYzR4U0LYK2QVs+2T1jxnhanBrZJkOq
X-Google-Smtp-Source: AGHT+IHPYZss8BHhBt40yfIOL9hvTxkQqgXTDrf5SFcWPvTwbBBn0ATKCdqzb/MW3VFWMnJevPfUrA==
X-Received: by 2002:a05:6a00:3e26:b0:717:8b4e:98ad with SMTP id d2e1a72fcca58-71925f9b27amr13948182b3a.0.1726678219684;
        Wed, 18 Sep 2024 09:50:19 -0700 (PDT)
Received: from localhost.localdomain ([221.220.134.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db498f9eb2sm6696123a12.23.2024.09.18.09.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2024 09:50:19 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH 0/3] Add support for ArmSoM LM7 SoM
Date: Thu, 19 Sep 2024 00:50:05 +0800
Message-Id: <20240918165008.169917-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_095021_859371_9389C33B 
X-CRM114-Status: GOOD (  10.96  )
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

This series add support for ArmSoM RK3588 based SoM and carrier board.
Devicetree is split into .dtsi (LM7 SoM) and .dts (W3 Board).

Info of SoM and carrier board can be found at:
https://docs.armsom.org/armsom-lm7
https://docs.armsom.org/armsom-w3


Jianfeng Liu (3):
  dt-bindings: arm: rockchip: Add ArmSoM LM7 SoM
  arm64: dts: rockchip: Add ArmSoM LM7 SoM
  arm64: dts: rockchip: Add ArmSoM W3 board

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-armsom-lm7.dtsi  | 459 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588-armsom-w3.dts    | 408 ++++++++++++++++
 4 files changed, 875 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-lm7.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-w3.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
