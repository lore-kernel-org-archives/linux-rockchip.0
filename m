Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 134A5CEB2CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQ77UJplnOulAJV5rO13KCn83kp5vQ3iHQeIdOS6aAk=; b=WMsMSyDcD7ToIy
	i4BP8Ov3vcLT0fwusb4LZxkBbTygABHYcjINGc22uPKbju18+m89Yhd2zmB2mUVInIlxjDtR/njV4
	c4bdu/3dt/KDPf75tv55O9YzBl+Pvt0Fly5fDmBDir58fICzFyVbVbk7BbNQUt7B1F4njPVs/rEWe
	oj/hURXt8GiWNUCGqkJ0rwmXIMt6T67u4zhnMHJrZkJj3RdVr8L2U2VTBV7B5D6OtqqysGd44ZHSP
	rUyAUBM07+LkL8QVnRiQUga0Dw4rzDCe6ReCaKqC2Cd/4ZMSc/kppoleNzp5IYtPUlx6/mx+qdSWY
	vpHNpUXAWGsbzosuWyJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCJL-0000000DdRy-2Otx;
	Sat, 15 Nov 2025 09:11:11 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCJG-0000000DdQK-1Ivs
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:11:07 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-bc169af247eso2453977a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763197866; x=1763802666; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xq3fPnKASXQtpwph9wF/EfbRc92D/a+itaxLGojV4Lk=;
        b=eSy6iKAWgrLa2NaYjWf2LOGKbJusMnldvCdbwZrVEt9S4OuTTJ2++FsUzdptgAr3a9
         ysSCojQs+ulEODJUYoJKCc4LXE4CHArDeRZZqC4XCWPvzUNptMfNr2CPPl/WphUMONHB
         sB3a2VJU3vzlfRLfo5EqMo2vuMrwwe4hyspSwpKJE5P/JAKGQOniccI1EcfTO2mrf8b8
         rfmRLzuyGUnPJHOQV0osvL9t/AHHCluyMIlxHvECAf2TtQ1O6Gb1JB8kKXMgBw+Iejlg
         GDEVaik/m/Ulq9CA+k5VPRIIdvY6vdcj2KbaonUyywUL6KTaehcE4kt349v5GaSj71my
         nZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763197866; x=1763802666;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xq3fPnKASXQtpwph9wF/EfbRc92D/a+itaxLGojV4Lk=;
        b=Y5jJCRzPN/Tsuy8G+F7xYFUhXZMzoP76ZXrV6qqWPN8aF7iEPkhmyIoA5+7QR96d7O
         JY6wz04pjzyK73f9g++FIUXqBM40f7s6qAmiiJbgVvs2XKeSz/ZsH72cUWBgodjJPAXQ
         oHzOTBe5cxJwDp3IRHDscvQUhkgJf1SnRUArsoYAkYWQ8NK0y6v836q/6JP1vp55eoXt
         SJ40ZIhEKgccwVWth6RF8rT0aPREMnfzPBVmE/qBo8MN3VV9PngETEl3lG6japbxE6jx
         iGuLZxPkN58UeuhbRXqBDUAegqWZXxRt82Y+ho9WOPr1Wxm5rm+nybssvQll3C7aKEDE
         Np4Q==
X-Gm-Message-State: AOJu0Yz/ePC54IS6vWB4b1QNV0bs2HknkAtNSQX02qQeuwyT+XElZgsz
	k/UsbRFo31jxwW+2X7hVQIXzDMj9kJv8lKUd2GdC2pLhikVjqyHknySLeizvujBeOfBgSDRC
X-Gm-Gg: ASbGnctZzxXxHr8tT4W9B4/yeZeNKjcIeFcGyXbi5FbthW7LXQyT7kTJbQc2VYN2mNx
	UdZ1mn6/Rfz++PoPOp05HI3jNTM2ugnA+OY8cASBKi6OQgFdr657/TiKFkffDFuO3BSzon4a17g
	/2sB4m1jVLP62jFDRUedQ1cm1nvs8Ga4JvhdflxEdUkAGQtOMlwouM7oA86R71sjwTJH1g4OIqr
	/zSWPDUIlt1812LHI6FVrPqvrMeDSYtYMCjp2Yl11ioA1/ykWf2WvLnemJLHbDrCqhEkFYqMjqN
	Y9q1Omq+6d6kwnsoBZwH2+dPmTtdHoa7xGdo2gBtxYWDQJ21901h4775Hk/mcxRz8gwve4fKu96
	2D4Wq4e9276UnZft6v9po7/WrRtgkMcxqptgNx/kX0o77QsMSonyt68th1XB9OGJV4SJMA7M+M3
	m1l/wsT+vw
X-Google-Smtp-Source: AGHT+IH9/crdAL/odtABr+5A97CdQPw4u3wDAvn6Sjfb7QYJpDPxj2xNfdzG8PUpaUTw8aHQvHD0Zg==
X-Received: by 2002:a05:7022:69a5:b0:11a:26dc:eb61 with SMTP id a92af1059eb24-11b40e7b696mr2640354c88.7.1763197865521;
        Sat, 15 Nov 2025 01:11:05 -0800 (PST)
Received: from geday ([2804:7f2:800b:a07a::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49d695821sm22799663eec.0.2025.11.15.01.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:11:04 -0800 (PST)
Date: Sat, 15 Nov 2025 06:10:58 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH 3/3] arm64: dts: rockchip: drop max-link-speed = <2> in
 helios64 PCIe
Message-ID: <53332edec449b84d8a962f2b5995667766359772.1763197368.git.geraldogabriel@gmail.com>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1763197368.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_011106_424768_7339138E 
X-CRM114-Status: GOOD (  11.28  )
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

Shawn Lin from Rockchip strongly discourages attempts to use their
RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
failures that may happen. Even if the odds are low, drop from last user
of this property for the RK3399 platform, helios64.

Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index e7d4a2f9a95e..78a7775c3b22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -424,7 +424,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	pinctrl-names = "default";
 	status = "okay";
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
