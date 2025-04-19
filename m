Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAB14C369BD
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Apr 2025 09:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZ5gH9+L1UHfjaJVjkjGdHLPDFudTm5kVqpxBhgTTgQ=; b=YCz49qlVAj1/H6
	xSlbAf9W1VP9RqFBaffYGvctriv16egsu0eDZcLHp/x0vFyczKmteaSz+0m3Lf64+JlLkifF6gU5c
	MysFManp5syIy0MzPYwqRkHrnF+jWfudM+xbWi00mw/V1XZmNOwno9B4uk49ffva6xQsLUVmPiV+9
	rqIS9ZQFB3CPxU477eUJ1Uf+EeI8/StLQmg8zx0IE/eMKBLfzSf2Sqt+2K5E1QAMAoSMSJaBknLUy
	AbgjOo99VetUX2hO3WEB6IUpHDM0dRc/0N7mkLaL7fnkYEniqYgG2Rj0CQ38Qb14BD0j9QSDTzLrG
	juctrwh83wXu4LJ/Nc3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u64tf-000000017GW-1ZLB;
	Sat, 19 Apr 2025 09:54:03 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u64tc-000000017Fn-4Af9
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Apr 2025 09:54:02 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-af52a624283so2243681a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Apr 2025 02:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745056440; x=1745661240; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z9yKVzIA+FhMTC4rrM4hDlH+jkyt/OHi/VKWuwVsMN8=;
        b=wRkLgPPCCdKBcf6sOGr1tzo2DFfvUY8q27HWymGR0am65GaCSAVDAaq4MbkSDIU7Hx
         lecvkyZ4dJCNWyst/4P5BP27/GGVcqrSsiNT4JkLKLF2kIjQp7kkrEqgC/Su3A0o9uZh
         4EvmOBt5M9bWFs/brxNxVmvZQ3u8N4R5R65qyCeQ1mWrFST2xohXRM38K15ipBdb+CSX
         jCpMhSs5IINcb9+VWa18p1GNbLZRBkZSrxB0+gTBaoXXa13UMtpBKEaGRFAzMLT0YYVv
         BmlQDZNBaCckAIdYj+AneOx42+RwlRuGtHe/TbVuov5wtwRBqhyNUeRiD1XtOc9sj+Lb
         WMHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745056440; x=1745661240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z9yKVzIA+FhMTC4rrM4hDlH+jkyt/OHi/VKWuwVsMN8=;
        b=q0zX2k1KcxDBVxXiQHcbvATFQE8K0sua54nd+/pXNhPoVNCgx65ZdycFZZ1btVexMM
         DMjo2Oo6RilQPHkTztaR2pq5HXPjV/qG8AsVr7RIDDbh7YHyoiv0nv/j06yEUoNqIfM8
         RjxbqY0tu/JytLDXuC11acH5ONLhTYMlomrP7R77aEbojfj65c0bAERDrEfDOqJRFg7v
         07sxVyeZu8zx+lJfd1ttPwbJpQk94AswaPlni1QaI3sRjLOMYZdMIjDckD5zyKosHcjm
         lnrX/GiFUaPlgGW9IE66vwjsOaNxIBTYx6wbWBT3mLW5m7ngyYpT1V6Mbo77l8YH57mQ
         f/rg==
X-Forwarded-Encrypted: i=1; AJvYcCW4B0UhuYpAGbQNNvZ7gBxywQKF2Io2optELreEgmG84DWmgkPSg2WmtRTq4bapoEY1JmC2g0qPjHhPJDeAqA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzpkyrD7xQl6J3oA1HEX1+b7MwDj2WhG29bUxPOY4tzK1KZvjaa
	yQtzUgX5zNXbHbbBcekaG7SF5N7h6RKHK9Md0WCBxOR9MKfI4uHF9Ds1eOZnGg==
X-Gm-Gg: ASbGncsn7uiCAaxV+RkXz7iXKRYgLOaSECVO3PYZVgw95SDSDvkeT0O4wBf4Hj7sciy
	5ShE3P4aq5JNnOM1OAk/R9DV5pK5UhdoSjZrf6ookn4aWc4J8ExCdwJcOhV3OKNN/8UeWsSxbAs
	F8BlckIKuU4YDwWAxnCluhf0NPfCAZTheVGrt4SV045ZZED5LwAif96/S+JdlMXQ3tb9lDWnVuB
	L/yPaKPpeBsZnkSiFEoc1jTcHlx0JUV89+nclcxPEC7DOyu9bfunPjqHhN7Xfh3hPuDvf4TC5D5
	TFq0k+AHoFKI2Vz1Dw8LkSrDUK5mCAP0DPW8+SRw/XB/WqBFNYE2kQ==
X-Google-Smtp-Source: AGHT+IE/nEJy748pRZBsgQs1pUuc+KJsoas+6d1SDGbI9MhgwRJ1z7aHS2ich2UbQnlsP6+skuAA/w==
X-Received: by 2002:a17:90b:524d:b0:2f1:2e10:8160 with SMTP id 98e67ed59e1d1-3087c36108emr8133093a91.11.1745056439818;
        Sat, 19 Apr 2025 02:53:59 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087e05db51sm2695542a91.43.2025.04.19.02.53.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 02:53:59 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Simon Xue <xxm@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/7] dt-bindings: PCI: dwc: rockchip: Add rk3562 support
Date: Sat, 19 Apr 2025 15:23:48 +0530
Message-ID: <174505638863.29894.12853512494056448618.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250415051855.59740-2-kever.yang@rock-chips.com>
References: <20250415051855.59740-1-kever.yang@rock-chips.com> <20250415051855.59740-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250419_025401_038553_FB46DADB 
X-CRM114-Status: UNSURE (   6.49  )
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


On Tue, 15 Apr 2025 13:18:49 +0800, Kever Yang wrote:
> rk3562 is using the same dwc controller as rk3576.
> 
> 

Applied to pci/dt-bindings, thanks!

[1/7] dt-bindings: PCI: dwc: rockchip: Add rk3562 support
      commit: 1d6d956497ded6ae02faff74ac493adefddc2c73

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
