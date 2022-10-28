Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EB1EC38A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 18:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A0tYXB/IYqe7CrEgRnTe487cS5A+HfuVeBtaf2BIGec=; b=1Zz3tdezTWiEj6
	fpsu2DjpQkC9jYBYhbUdYePVJPeZMQD8R2A7RYHg8d50yUBfPrNSFR5ITQueKzTSXMogmv8GAXMPF
	i4ZoYgol+/FtUVN6MBxqY64+h99SnIwM5rwtdbDKy12MZ7mTZYifRs5DpoXJ02L53RNCNP85oMZDi
	vOygc3Y7k5RV7La1biOgXpCzFTqEDaW3/C0+263xNL0aX9X5gVtpfJfDsD7qxBzdGUICPDfaXnHGX
	4KSIddnzdmw0yDIW8ZSSmy9u3gfVyq5kDgq4GWDzrvrjFVN4mS7wO30mJsKZgFXBAvAMARp+DqSuB
	+CyBWXMd0aYKTk6QAnXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHx-001g0M-FL; Fri, 28 Oct 2022 18:41:05 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHs-001fw9-Nx
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 18:41:03 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-13c2cfd1126so7220636fac.10
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 11:40:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=31+stykkUZ4/Nnbkeu0GbJDIFpFhChj+cNfEHMQOYCI=;
        b=Idd1MDTAQXdraD4CVDaNCxXX85ZFyWnwiww0KNHkeBlmfRLmFIYEyhB791eiLjMqaj
         HbokQrbWhDnjcy60gXfrpXzXGpuQKP6CbVts9A+gBQO9nPUTIq3fI9Py4D1CBOAY44k/
         Q8r5C1t7SNvEC3K74pVIfg+pmhdx0GYPeD4sdQcH/XJCt96pILsi/N8av7sarDd3eAEe
         qj+ebLLVuUMPutQ+OPnHd/v1OhQcl+JalC4XsSliZJSgZcUHoebzm/H4y5ONU14oepuD
         Wlz33VrqyphQxd3ZJHdHdPTiXDSlw6C9K40AKHPMj9lRUu9zBZL+raOAxach6nwkQVn/
         LOzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=31+stykkUZ4/Nnbkeu0GbJDIFpFhChj+cNfEHMQOYCI=;
        b=OT6RdAOWX8tBJr2vO160f6I80oAoC53nlGXwlWlKXTzH78vygo0B+vamuXtmIp4XUU
         560rkrNBxgaJdH+qrbKuurXy81tIE5ktcwMfV/jOLAmPiKvmk3oPmXmbvwEjvFHWHsbM
         Xa6epuk9kA4uxQ6foDkxTG1HXtwZsvS9XUHvJzcvyYOPECitsmN5IT+Gnky8EGFX8aOH
         JaoV7zX3IjHk4luVeqZt8y0xNNnrQJ3e5n92Po4ITt/raFRxr/rqKacMc6Vmqy6ojgbI
         GBxTOXx+GMklaEge4Jc3doqnBR+sfUjxGmcdZzqNQxIQPBq9ly6BTrdxKLL4/fkAG24L
         Y/TQ==
X-Gm-Message-State: ACrzQf05vZVG+i2OqegAVLCzK/FbBsBvYhhLqRp+HNatGVZggmtXJ+5w
	pfGJdqlhNC05eHSRQytEAxLKLr4Pavc=
X-Google-Smtp-Source: AMsMyM4sCvcEQtsJXPR4XpFx0rkgWJka0bNRN0TI2IpQmRBNrZvKyL1vAch33hThmUqp34xleoxe3A==
X-Received: by 2002:a05:6870:968c:b0:13b:cb3c:67b9 with SMTP id o12-20020a056870968c00b0013bcb3c67b9mr341778oaq.250.1666982454595;
        Fri, 28 Oct 2022 11:40:54 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:53 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	michael.riesch@wolfvision.net,
	frattaroli.nicolas@gmail.com,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Add Anbernic RG353V and RG353VS
Date: Fri, 28 Oct 2022 13:40:41 -0500
Message-Id: <20221028184045.13113-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_114100_814704_5ECCBA5B 
X-CRM114-Status: GOOD (  10.29  )
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

Add support for the Anbernic RG353V and RG353VS handheld gaming
consoles. These devices are extremely similar to the existing
Anbernic RG353P.

Add support for the battery of the existing RG353P and RG503 too
as part of this change, as to keep things compact we must first split
the 353p devicetree into attributes common to all 353 devices and
attributes that only exist for the 353P, 353V, and 353VS devices
(which includes a different battery in the V and VS).

Lastly, add poll-interval to the parent tree so that it affects all
existing Anbernic RGxx3 devices.

Chris Morgan (4):
  dt-bindings: arm: rockchip: Add Anbernic RG353V and RG353VS
  arm64: dts: rockchip: add Anbernic RG353V and RG353VS
  arm64: dts: rockchip: add rk817 chg to RG353P and RG503
  arm64: dts: rockchip: add poll-interval to RGxx3 devices

 .../devicetree/bindings/arm/rockchip.yaml     |  10 ++
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3566-anbernic-rg353p.dts   | 109 +++++++++++------
 .../dts/rockchip/rk3566-anbernic-rg353v.dts   | 114 ++++++++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353vs.dts  |  87 +++++++++++++
 .../dts/rockchip/rk3566-anbernic-rg353x.dtsi  |  60 +++++++++
 .../dts/rockchip/rk3566-anbernic-rg503.dts    |  79 ++++++++++++
 .../dts/rockchip/rk3566-anbernic-rgxx3.dtsi   |  47 +-------
 8 files changed, 424 insertions(+), 84 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353x.dtsi

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
