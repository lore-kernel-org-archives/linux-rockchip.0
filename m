Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A7DCA5FB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t1RydcQ03RHC6lmuBjMi2k1cMm+blT+iZRms9wonns8=; b=rdQ42QZz+PcAmF
	k3aBZ0uGxEFoeUH/GjgTkae6RMIiOsmRhDJpsxIkaarzEJR85ssvApRtMBDUUcMidic4VJXrWt0oJ
	6lILbyfim3RICISneufBsKOuiQcUdXq92uiKrkcR08GniaUMZ2Q2VUO/CLx8i0NuWi0/yJLIy+zoh
	h4WoKNh4MS7AYiP02JLUmW/w6liJgWkhJ1mMymKY/O1kC47uAPiAC+QAx9SHZtS6A6V9WRa3XxGpy
	JOJ/DNmDWDpOOOTKRA+olVrVW6ep/0JiDU2+WGKExUMUecTWp1kW7osz4yvhoFSpj1g3o2H4LLx8K
	LuuRkQbVOBGxIjn8994A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqeG-00000005ZRY-44aE;
	Wed, 30 Sep 2026 09:30:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqe9-00000005ZO8-3IfO
	for linux-rockchip@bombadil.infradead.org;
	Wed, 30 Sep 2026 09:30:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=LPe34vRyIa6dML1EQo1KfXSPOK1WXOU9iwUTkrF5Ta0=; b=dzIFdZSuoNGpfIUY0/hzFWz5Tt
	N39RBxlH6dGYd4JQmcITrxVGDw5olyACNaowlIX0biBJ1xaGkRC+mZf1J/yUBPqJohRHaYFuxnHrX
	aNdaEqIhRnpX50FjKtVB29pzN58c11Det25jTEZ9kexvohfgR6iwe69u9IUOlH1NXFIs6BmPztyaf
	MTngdn3E2kszPwtIJlW4UxjivYXlOOzHlJ3WsD+AfomI3Y/KS9OHMIA+sosqaIDEQkBy1M+WERcR4
	Qa/X4n6ykp2NQtxM/wzXWR+7cy66r4j16liCKvtMJx30d5RyeSv+cmH7xtiwirOI1KAMaJwgiX0C+
	RU60/HFg==;
Received: from mail-ed2-x0d.google.com ([2a00:1450:4864:33::d])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBqe5-00000003aAY-3xbc
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Sep 2026 09:30:40 +0000
Received: by mail-ed2-x0d.google.com with SMTP id 4fb4d7f45d1cf-6abe19c4262so4909989a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2026 02:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790760634; x=1791365434; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=LPe34vRyIa6dML1EQo1KfXSPOK1WXOU9iwUTkrF5Ta0=;
        b=mzGsQ39l63jhW3yixd5HmiLxLLcprKK/FZxPdOD6e/YD30DjzPeSfdLE+F8LGNrIVS
         G6qB8/q/KIPslQtiMGVHLUM5T1k52Nv5fG+7tvGue2b6dMhkAl/jMapLyJA71K2YpWSM
         sjH040y5tS1t5ktDxAtt7m+UTI/GD3UzZ7RrjtKIG7WWbVLoSILgcmq0ws0n5TneioPn
         zBgyA9vA4fMbLA68O56DGcvJJ/EZ7yAVko0DxW3VczOR5KzgnYOn2q63RRQMRR3odFyZ
         nF97x0uqb3fVUmZS925sbKNj4VMa0Xof04PcEDsWWbMfrX6JQcT2+NpHRcENeNw4T+s+
         APDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790760634; x=1791365434;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=LPe34vRyIa6dML1EQo1KfXSPOK1WXOU9iwUTkrF5Ta0=;
        b=gef/l3HajBMKvzov2DfKTT4NQ6orwy46iGGNs+9UZellcxx90DPArFvuovMwufUQXi
         1do37aezGeou2HbcmZAhMNTqiLSi073oDl/I6BKfrGgGzLEpTzFbn5eVEq4gcQONPoMu
         QgMSZQ9bXnkjttEiuhuYf3c/SbB93udqyrIjZerNZdIeaaTdNBdEqs4adYtDrw1PGB77
         MOQKFob9mZPL2m+siVvKfo3MFS4Xw1eJsS8a/gEv/5wapTnnAQKYzBIKf7x495pLL3PN
         tEAoNcn16Oi7R9+HuCzoSXCYnrePfvCk3EZza5fztLE/S0oOHBGZLW3ypQRxDDtwT9QX
         yKkg==
X-Forwarded-Encrypted: i=1; AKwUvBxJUFPIqtbgif7kKd612xf3jFnqjnoTnp3G7RqGR9R1yOgAb9xy5QhqKdcZs6I5hjr7xCwbRBWaZ4zIys8c5Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYL08BOx9FM5esmRqxzaWImuJuLJeYUyRhg7gIXr1noo+GbktUM8
	QtfPgVGIMci7JaG+fskEQ9FWMcmagb1KEmvzCrBwvGgogLMbBLcCt+5e
X-Gm-Gg: AYBFou0aLyIUV4hHz7EQQd+0OJ2kLTFUgGFOEKmz63OFLHM/3I3oGtsIkAncZOwAd6t
	Y6Oz+LciwwRBIxKwaGz03oFt85flWh8kH0eOqa7T1bYsz/WG3SYT38fNJ0ao7D/rLs+OMq3X+7i
	FT1Zy/Ux3MfZ03njyM6SPlC7YAkJEdIHM1ga3vozUn2iLRVsoVV9AJlZ0bfm/0jEffDAkj6sa0n
	xwrOikvqBA+aCWnu1kufQln5SGNU0qyKsWc8SNeA93RkdwdxhbZTIaYXY5nd+7MKvTfVJ/w9Ed0
	q9MvG0kstGBFprOKlgq+mTF7Y2c5LlC2bz5smW5XLj7Y0gRE2ajFaaztLDglzxiebc28rGx7lW2
	aWfml2UHUEzF4R0QktZ2CBKfLp8KxiRcdRoxQp8K87b6sUnEuuUwfIkp7/2ouyb/oDnnZIwyGjr
	e5xjNoCYziwTXTdcqJw92eibA/9wjBBKvM0HK6Jf5VOyLeQtiDz5vSNBuC31aX21IOIO4MEE0dp
	JG9ZbyNi0tV
X-Received: by 2002:a05:6402:52d3:b0:6ac:c851:a0d7 with SMTP id 4fb4d7f45d1cf-6ae1990e181mr453683a12.23.1790760634236;
        Wed, 30 Sep 2026 02:30:34 -0700 (PDT)
Received: from localhost.localdomain ([193.107.16.39])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ae1568e8b2sm485221a12.19.2026.09.30.02.30.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 02:30:33 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Subject: [PATCH 0/4] arm64: dts: rockchip: add Forlinx OK3568-C
Date: Wed, 30 Sep 2026 14:29:03 +0500
Message-Id: <20260930-ok3568-c-v1-0-a0ffd55f5c95@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGDWvGoC/yXMXQtAMBTG8a+ic221l7bMV5EL5uBQaENq+e6Gy
 1/9nydCQE8YoMwieDwp0LokiDwDNzbLgIy6ZJBcGm4VZ+ustCmYY45bbaVuBUoDKd889nR9V1X
 9OxzthG5/93DfDyu5dl9sAAAA
X-Change-ID: 20260930-ok3568-c-c095925b1e26
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790760632; l=1327;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=g1Q/SRrVTtz6AMBI1bvGBzBewZqe2gXa75U3T+sIgKM=;
 b=0nGmsba4SEGFbfPrANmHlsF/U0MMw4A4GIhmRhgAN5sBwJg/zkO2KE0q8f+UPO2nAyb/oCkNk
 R5Rjiq0j7B1CG3MTMVTYUy3TWgiQpmMnhm6Sngvey6AjwmXmZZFcwcJ
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_103038_686885_2C6CEC9E 
X-CRM114-Status: GOOD (  10.90  )
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

This series add support for Forlinx OK3568-C board based on FET3568-C SoM
(rk3568). Patches 1-3 add .dtsi for FET3568-C and .dts for OK3568-C.
Patch 4 adds .dtso for FIT-PCIE-SATA adapter that allows to connect
SATA drives to the board.

Note: tested on v1.1 board. On v1.2 RTL8211F phys use dedicated
crystal oscillator instead of 25 MHz reference clock from SoC. Patch
should be compatible with both revisions, as in [1] solution.

[1] https://lore.kernel.org/all/20250704-rk3576-rock4d-phy-handling-fixes-v1-1-1d64130c4139@kernel.org/

---
Dmitry Yashin (4):
      dt-bindings: arm: rockchip: add Forlinx FET3568-C
      arm64: dts: rockchip: add Forlinx FET3568-C
      arm64: dts: rockchip: add Forlinx OK3568-C
      arm64: dts: rockchip: add FIT-PCIE-SATA overlay

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 arch/arm64/boot/dts/rockchip/Makefile              |   6 +
 arch/arm64/boot/dts/rockchip/rk3568-fet3568-c.dtsi | 331 ++++++++++++
 .../rockchip/rk3568-ok3568-c-fit-pcie-sata.dtso    |  16 +
 arch/arm64/boot/dts/rockchip/rk3568-ok3568-c.dts   | 574 +++++++++++++++++++++
 5 files changed, 934 insertions(+)
---
base-commit: 72d3fcf802c45d00b300f25b848a93c3a2bd7c7e
change-id: 20260930-ok3568-c-c095925b1e26

Best regards,
--  
Dmitry Yashin <dmt.yashin@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
