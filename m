Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45016CEB2C7
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 09:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YHe1aJxnfJuHFJmxB4hmUe/K6mzhgiKzjC7dzs4XC5c=; b=UCm+ZrsP/3ooRd
	EPFcXMcXrFSAzZo5oBWa4plvYaLMFmgDqaKjUAEa5sddwTxx2KvBhcCn4Mk33b8VB8apSUftvJs5y
	ddWkqD8X+kYq5Z9jN2+tUh9AGbWRW0H/l3gHpzMu+24ZJS2AxodPw4pJFOfN9cRwCrwAoACS2tgfN
	RQEGh3mPlZ2rzhVMbFSHRO1qJIEygaNnDl9O4Vr6CL7SxsUESc+uzjd/J+nitcPZAy/PPdAdKTNVf
	KB3O1Y0VfmZVVi6yl4IyxZXHqJhaaO+nMJqjHjfFbxtwoE6UGDXRdg3YIsdSmCknYcruOBBFQwLA8
	EiWwr9QsUjHUBPCQBwsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCIP-0000000Dd7q-3I23;
	Sat, 15 Nov 2025 09:10:13 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKCIM-0000000Dd6b-2nwY
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Nov 2025 09:10:12 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-bc274b8b15bso2014006a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Nov 2025 01:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763197810; x=1763802610; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ADQAnSwvVC1ImIoBeUuLW2dj0lHsSmlBEy4wGW0y87o=;
        b=c2UnbdOEx2XyKRoktMHYc0udbaooRzSZLHE8RYYl2VBGIluaD/PALtWRVH7Wr/MyAb
         Fs9I788OQytYE9m2pejFHOfW9Aiu+Aw7hLHNigAOMt5s7QFqgBQADwaeypvKo9MG6t2i
         16bzG1AfIUYY5f3HRISngBc3kDFBrC04/gHMhjbHJVs9gLJ6QuLA9q6Kmm9fTi9igv/6
         hzunKwB9mg5xfAPSP/ckdJ/O+5n57U2xOCcJtaeaS6qr2+8dzdXyImvi11BQb1ulycP2
         S8h+OfhZDmFs1SyeA8Z4S/P40RB/v9odM1tI7QUdI6rCFk+Bk4TkT/WaSy1169ljhVdn
         PcNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763197810; x=1763802610;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADQAnSwvVC1ImIoBeUuLW2dj0lHsSmlBEy4wGW0y87o=;
        b=aWrX+JQBl+KUVUEfXVTYSjkgZ5JUD9UQAcNU+G+hNyh4lvJdJ4QOP61JhJxKTd5AM+
         VkS4zRuW6YIVA08mJ0tfCddcfkb8GNXnxNc59jy9hW8SWWtiPthXIXJFrSvkRpHMS30V
         3AAsD9iQHuTk6kwJw6KXtL/0rHeD7hyAfKrTMtWKs6hV9Mq8ReD7BkDWERIiWTniBrtt
         gC2cThDrrCSjfLGHuW3K9xOmSiasjmR+L4GDaR6FkGwnt5WpTdTWh7GLfORNCL3acdqn
         ipvr4xBa9YA5b1AlRT79W4p9iw94IDGefrgXsXlAzGuwhFwz1fZmmOyfj9MX+//t2xWf
         Ru9g==
X-Gm-Message-State: AOJu0YzOfjL6dvwvJnKBa1oq9wBE+1CXhbdHZdM1W+yrwiAZ8PTCldmP
	OJu0NrjGh8IUIOzz9zVsXhHGEiqSqTxplkylJ8TVU5AG5mi4HjvS+V0cAAcYDKVMX0a2ZSnZ
X-Gm-Gg: ASbGncsLs2qU188xoQpB2LoC4J5RAQ65S9zPAXuUJIifO9T3KJVeDnAh3eBtn7etIua
	RNxFDMxs/h6xgKm8gYImHST05yeeOOcfNDY7SNqPBwX+g2sw5cQEeo6eNlulyaEq9b2LBggrWCB
	ajFFOaknThhHTbnSpofQmlYMMk7i1lgfrJqiIaK3BIe+m9QAMWX1MNhp4hRLVQdldx2YKNRUOpP
	TBpENsUYC/4nYcf3/fIcgROFwKL/DOsqXtaT9lEuFud6mV4XI2FSrfRH4//4k5mE/vKZuSeuHV0
	N97uN4e/I1CA9ELK1Lc7UASfVnx3vk3u9E5fuE1JmRoenTVB3jyFNUi0nboecLm3iBkxVEH07cs
	C5CKRv2M2xV32X/Q75dpeCYBEATo3isS7bH2E5P22H6pFkjeCH9uhgJ98umgeUI037iBkFcsBJA
	==
X-Google-Smtp-Source: AGHT+IHdjP02d7ceK6K3dpKetL3hR+ZP5vYC0Jlsf4TI9ATvPdblwdLfXK7WX2I855lZDI3z3GpW8A==
X-Received: by 2002:a05:7022:7e0c:b0:11b:9386:7ed1 with SMTP id a92af1059eb24-11b93868306mr476264c88.46.1763197809720;
        Sat, 15 Nov 2025 01:10:09 -0800 (PST)
Received: from geday ([2804:7f2:800b:a07a::dead:c001])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b06088604sm20965645c88.7.2025.11.15.01.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 01:10:08 -0800 (PST)
Date: Sat, 15 Nov 2025 06:10:01 -0300
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
Subject: [PATCH 0/3] PCI: rockchip: 5.0 GT/s speed may be dangerous
Message-ID: <cover.1763197368.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_011010_700209_C53C9398 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
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

In recent interactions with Shawn Lin from Rockchip it came to my
attention there's an unknown errata regarding 5.0 GT/s operational
speed of their PCIe core. According to Shawn there's grave danger
even if the odds are low. To contain any damage, let's cover the
remaining corner-cases where the default would lead to 5.0 GT/s
operation as well as add a comment to Root Complex driver core,
documenting this danger.

Geraldo Nascimento (3):
  PCI: rockchip: warn of danger of 5.0 GT/s speeds
  PCI: rockchip-host: comment danger of 5.0 GT/s speed
  arm64: dts: rockchip: drop max-link-speed = <2> in helios64 PCIe

 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
 drivers/pci/controller/pcie-rockchip-host.c            | 5 +++++
 drivers/pci/controller/pcie-rockchip.c                 | 8 ++++++--
 3 files changed, 11 insertions(+), 3 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
