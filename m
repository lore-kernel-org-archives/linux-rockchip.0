Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E43DCC7114A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 16:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0xc4PKsSECCuqdGVBrCLjZRGtJshVBKZAcqruIhEPA=; b=GY05EO+yY2m40F
	G/PlG/IJCEhZnRQl6bbUHlbNH/DuIF445FycKUTidOyXRsK2EvUGmejdR/L2qcGUvzB9IivgSvYmi
	g0kvUjj/7Wtsp3cAOS53y+tmgHURg9i4T+B3ewm7A61FtySHVgv1dYeD4MCvN+OmXwKLN5BHj4cLS
	1XPuRxhddZIgh3/eylSZvtONGsmJSTMuckNr7Sj0ZQ/42j1fCybkyGm14P0lhepGLWK8e1zXdZ6td
	pMUnNW8Y6DKoWemW5OYcHscXi9LLjYwsaUiqOgI8yycQMqM9kikcbGmYsxvC9mM7Sa4N/62OFYQb0
	57GAZ+MOhCGNk+WFkPBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ75Z-0000000H1o2-49FO;
	Fri, 13 Jun 2025 16:17:09 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ5tp-0000000GntU-2JGc;
	Fri, 13 Jun 2025 15:00:58 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-b2f603b0ef6so1626498a12.1;
        Fri, 13 Jun 2025 08:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749826857; x=1750431657; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H8jiEiES8+qUM2cqXDPdwSgaPuU6OGlRs4pC0s/GeL0=;
        b=PzvAC0mxjai0UwTTC6CUENozaI9FxY8t2X0vgFuv1e01f2jq4BjOuF+Yq7JGCpJ/7Y
         DWovrMFcH1nhMQNN6CNOT0lU8a5E/mcjb06w306YEk1TqKbyY5ooZ/9UMHjXDrxZzgPv
         LmNzSQaKY1NI71NXRPi6FRqdUUIW6xCuvYEfWnQD7GgZWPqJHOdR8gUn5TH2kbw0y4xf
         zP+ME2VV8u5muNf7UvoEteaUJ3jtVyxllUnUeEr7vVaN9RR/Lgk04agoNJVbKrqpyNXF
         t5FNUz4fdwIARd+qKazxfPaXcWkTwSPXrvJPmGvgc8Sc6mLGN3BJifWpob+BsL4FhJpG
         Fvgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749826857; x=1750431657;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H8jiEiES8+qUM2cqXDPdwSgaPuU6OGlRs4pC0s/GeL0=;
        b=V1tIDbV+X9zQ2KAiyC0Xb4WgtUci1s5n9zR/Z8ZP/vjGwiaaMOYMblJdTxe73sc7AI
         Qd0mTfYTI5dL4ezRlf1TJW/UZYpDy85kISvA5blathl295bBLe41DdxtvD9bHWPibJL/
         6X1y9Syhw1eAyYvAGu+jVyMSdCEjU2I4+l1Eqt+N5qlsos8Glrztz7qSGTWjVTgfi3g0
         k31peoKwEpyaJpHfeGsE5tM91x3xEUHUxp2cFCN+2n9/g6huQ0YXOAKkj6C9xOamEwGG
         tn/6ucnsrPIXXJ9+QFEY9IQ52xBrsQ/UWSSvaso+6YDT31irIWS8NXEHdbblV0DPZiuX
         j1Xw==
X-Forwarded-Encrypted: i=1; AJvYcCV38QyqQqGxXRuRhwHHjpfLaZTMSikrj8rsPwJaOdATkVT96UB0sjZoc7EyAnZ10+AO5aiwtDhEhktu@lists.infradead.org, AJvYcCXEp3tIaIzWR15w2xqa29c/elOtV2OUA2zVpfE/CwGKu+8iwIklkbGrBxOijKzCOQwcnXw2tqBztYSQGGBG34it@lists.infradead.org
X-Gm-Message-State: AOJu0Ywph15PFI3w4WtK1R7qc5RxoENVQdzNqKV1h1OqusiCQJMNMVPT
	oMPOO6JIorJZiiDJFhTupN6FFb6VbEAjzRa+ndAk3RUBKBfdcte6tgAwP+4Vhhcp
X-Gm-Gg: ASbGncuoIayMYJMqgCbfmUzPtzlf681QQrZydXyniW9MxCTjYa1CDkTFV5SARwcs0tQ
	YtSTm0JC10Fi+/5EL/UZvSjJmanzwoef08nFYA8VQ8y8JlssUmBlgMU79z6m71NXj5ik8q+nphM
	A4wzghyFJAIodnqvaAO6nVFN5PopJiu3ye6SLGTawL3n85RTVJ8Ke0rBi/j9FmzVOHYoleKzydY
	ZAxU+GNzlmlogpGS7DHnJW0/bx7FKcFVj0+goI34QoXg7yGvZb9osi+Y6Wn8C0bdezCZYJ7TR11
	dWbCnTGhvwIpfE03xwWLLZESQrzaqG+bUhAAYvPTCG7wTWsHXmGyuvSTzHCS
X-Google-Smtp-Source: AGHT+IHC4qfJgFLaeGwJ0qqEkImTRcGA8emN7/hG0BhuZcGgDlfiA7i4akpRVf9dQJcSyAfy5FGJnA==
X-Received: by 2002:a05:6a20:2445:b0:215:df62:7d51 with SMTP id adf61e73a8af0-21fac8b12d8mr4816889637.11.1749826855282;
        Fri, 13 Jun 2025 08:00:55 -0700 (PDT)
Received: from geday ([2804:7f2:800b:838f::dead:c001])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe1691be9sm1813060a12.68.2025.06.13.08.00.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 08:00:54 -0700 (PDT)
Date: Fri, 13 Jun 2025 12:00:49 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v4 0/4] PCI: rockchip: Improve quality of driver
Message-ID: <aEw9IVCAtANnLPib@geday>
References: <cover.1749825317.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1749825317.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_080057_590579_2F63BA51 
X-CRM114-Status: GOOD (  12.69  )
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

On Fri, Jun 13, 2025 at 11:48:27AM -0300, Geraldo Nascimento wrote:
> During a 30-day debugging-run fighting quirky PCIe devices on RK3399
> some quality improvements began to take form and this is my attempt
> at upstreaming it. It will ensure maximum chance of retraining to Gen2
> 5.0GT/s, on all four lanes and plus if anybody is debugging the PHY
> they'll now get real values from TEST_I[3:0] for every TEST_ADDR[4:0]
> without risk of locking up kernel like with present broken async
> strobe TEST_WRITE.
> 
> ---
> V3 -> V4: fix TLS setting-up in Link Control and Status Register 2 and
> adjust commit titles
> V2 -> V3: correctly clean-up with standard PCIe defines as per Bjorn's
> suggestion
> V1 -> V2: use standard PCIe defines as suggested by Bjorn
> 
> Geraldo Nascimento (4):
>   PCI: rockchip: Drop unused custom registers and bitfields
>   PCI: rockchip: Set Target Link Speed before retraining
>   phy: rockchip-pcie: Enable all four lanes
>   phy: rockchip-pcie: Adjust read mask and write
> 
>  drivers/pci/controller/pcie-rockchip-host.c |  4 ++++
>  drivers/pci/controller/pcie-rockchip.h      | 11 +----------
>  drivers/phy/rockchip/phy-rockchip-pcie.c    | 16 +++++++++-------
>  3 files changed, 14 insertions(+), 17 deletions(-)
> 
> -- 
> 2.49.0
>

I somehow have screwed-up threading again. Please ignore. Resending
now.

Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
