Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1462ACEACCE
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 20:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JixLcGdMe7rSGg6n3dmlz+hJfytyVECONEYaYhwxBG0=; b=1jjtli6iTX9QnZ
	+wZOVT8HHVEU1IV5hmD3jhL0wgeWuuqVVPqQ28zmY7YEcXJvB/tteixQ5z0VGBC+Xf8vZknzoOwlI
	V2n7IN7O7DGcBI7GT57AI1sIKGF0zX3IONkooKPAFbmVxNgcdWNmu9h/D8NzxDZvLRwrTo7pestDS
	qX5NMLK7jxr/RVecfx2XZ6AK42YOPo3S62aVMJUpmdb/Dg2i2GEHGQCkaWnK7JYWYUfvhpg+9HV7e
	7Xyyiuw2O9DpGQDgebSLQnm6wUFii86Z3UMc/CF6p9VAtQX6CCMJ7NdhmxU2FOSP02kW2Z6BjqQp0
	JnU+MnzUGWuUaB7sNnAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK0Ux-0000000D5LB-43B4;
	Fri, 14 Nov 2025 20:34:23 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK0Uu-0000000D5KS-2fdo
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 20:34:21 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-343ea89896eso2414120a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Nov 2025 12:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763152460; x=1763757260; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z2tUyhIah92QGKm3skN+GFPKLkbDp3lL7w3hkBKRK+M=;
        b=ix0wqGXq687OIMXkBJrM5YII5rgNxjH/4x4ezzZ7wQT6Z/vp9zea+UrETpN1uGxvRS
         4nbPEunn5oldyxDDF/UjUetkB2lP1/SEKs9XGfSzixVGIF3JijPZgpVFfP/jPJexV2d0
         qxcK+WfDkW9FFfw8lFR0TNhE78tmtuNBLs4U0clt8BcGAPiBevrVb9IFMfvQKtxRkN58
         X5+ACXZEnPFCLKDLP9X0ylBxHSlKXBdzP2Li6ZJs374ar4HuJuN6qsvr67ljhP75VfHj
         azdeQiq+5+50Yw+OFQ2BpQio18CJf0aYjClgKHu5L0Rg7uwpJtjd6pa8B90IJE3WYpo1
         4SBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763152460; x=1763757260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z2tUyhIah92QGKm3skN+GFPKLkbDp3lL7w3hkBKRK+M=;
        b=JnhdHPaYtlf1bYsUJDLoVEd7M/fMgmaPDTROBCFfqiMCeuI+fkC6JmL5PE9Pe0V5mW
         icalXr/wgjo1rHOdcUwwB7xSa2t345qIYw6uGeJZ8vygPW4njkdNDfuEQnPQcwYRZZhv
         nza1MAe9VNsIEFWbjx6F+tq+s8xeDlXElPEc7zVKOrjGSx7gkwdo5QN+N+1TKxxzpmPP
         4TEPtvXxHVmk3DRNPspKt5GTv/fstOVEAUOE+p5KezXO9aFkOQ+Y7tbJo8NklfNqsdhH
         GDeRdf43Vo9aDylgw5xdpNF6R+LVObMSrVwCsOUrYNgYJqsu3iDkdi/hljrzg4YkyP7y
         jBVw==
X-Forwarded-Encrypted: i=1; AJvYcCXs0s91H3r4jwHqCCNupvOF2L2b0OqebQSZODBEPcfbj/A+ip9HzkYPops2eOJgHR0KELFgjAYAY8p8BtBrYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwVERj2szZ972YvzSsaJxr7TtIT5rL/GmEiFnx2rH7D2MH9WV9o
	ADADQ505FXFmgroQZMTSrQxqop+zHJkPNhydS/sE9183hAv4wGNvutRS
X-Gm-Gg: ASbGncv3YDSaANhPl5lsOTMk9OsMABTucOb8BfeSEBMEwrP75TRgaiylHgW8kaiMgUE
	G3eQuxATE1KbAHBUhzRTQui2qC+K5Qn+KG6fXz9sGpohI9ECvxkbyI5VH9Lk3ebbn2afBNe/OOu
	uILUQr1iRdJcUSTezctTilZoN667QqvE+RG04O6G952RKtxURqiP1PwQOyynrkYKgvcazQ5r4+2
	Dui1N1Ye75mQBBCmxM6aLpQk9ZtuQNvuw7LZR+8K98vGjvl6vkOYEqE8nznMHqG+CASwgX7MAAv
	w2DKVcwWe4V04Oimb+e65FVNPL5FRSfpfF3LPIVWYVJjAd0c+Fcj/wLIegKxpOnmPPNrkgr85+t
	PtZG4Uzf0MG9cvU9iH+r1B9tv1xCBRfp+AfvzksUva9pkxs4uxr4eccEqpp8BnmgdNHRr7ilS8j
	5SjMww8H3vA0MYQyYn+f8=
X-Google-Smtp-Source: AGHT+IEe7JuZ4t+UG3Ej2ub9oJMa/3y/sYYCQh/JHxxvjriyxwW0b8MtjVbBgwEpy0ihZpW+2/eVvw==
X-Received: by 2002:a17:90b:37ce:b0:340:f05a:3ebd with SMTP id 98e67ed59e1d1-343fa7469ecmr4392519a91.28.1763152459570;
        Fri, 14 Nov 2025 12:34:19 -0800 (PST)
Received: from geday ([2804:7f2:800b:9c95::dead:c001])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36db22439sm5747058a12.4.2025.11.14.12.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 12:34:18 -0800 (PST)
Date: Fri, 14 Nov 2025 17:34:05 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci <linux-pci@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip <linux-rockchip@lists.infradead.org>,
	Simon Glass <sjg@chromium.org>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Kever Yang <kever.yang@rock-chips.com>,
	Tom Rini <trini@konsulko.com>, u-boot@lists.denx.de,
	=?utf-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
Message-ID: <aReSPbRxCgdNRI9y@geday>
References: <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday>
 <aRUvr0UggTYkkCZ_@geday>
 <aRazCssWVdAOmy7D@geday>
 <e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_123420_713004_82E41F08 
X-CRM114-Status: GOOD (  16.21  )
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

On Fri, Nov 14, 2025 at 05:16:21PM +0800, Shawn Lin wrote:
> Don't worry, it's helpful, so I think Ye could have a look.
> May I ask if the failure only happened to one specific board?

Hi Shawn,

Yes, testing is restricted to my Radxa Rock Pi N10 board.

> 
> Another thing I noticed is about one commit:
> 114b06ee108c ("PCI: rockchip: Set Target Link Speed to 5.0 GT/s before 
> retraining")
> 
> It said: "Rockchip controllers can support up to 5.0 GT/s link speed."
> But we issued an errata long time ago to announced it doesn't, you could
> also check the PCIe part of RK3399 datasheet:
> https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf

OK, I'm partly responsible for that as author of the commit in question.

First off let me say I do not intend to send any patches setting
max-link-speed to TWO for this platform.

I understand you issued an erratum, but are you absolutely sure about
that erratum? Because my testing shows otherwise:

---
With max-link-speed = <2>
pci 0000:01:00.0: 16.000 Gb/s available PCIe bandwidth, limited by 5.0 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)

/dev/nvme0n1:
 Timing cached reads:   3002 MB in  2.00 seconds = 1502.21 MB/sec
 Timing buffered disk reads: 2044 MB in  3.00 seconds = 680.79 MB/sec
---
With max-link-speed = <1>
pci 0000:01:00.0: 8.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s PCIe x4 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)

/dev/nvme0n1:
 Timing cached reads:   2730 MB in  2.00 seconds = 1366.15 MB/sec
 Timing buffered disk reads: 2028 MB in  3.00 seconds = 675.71 MB/sec
---

As you can see, not only the kernel PCI driver recognizes 5.0 GT/s PCIe
link but there's even a marginal increase in cached reads as measured by
hdparm, the gains are of course limited by CPU performance.

> Also we set max-link-speed to ONE in rk3399-base.dtsi but seems another
> patch slip in: 755fff528b1b ("arm64: dts: rockchip: add variables for 
> pcie completion to helios64")

I can't speak for patches I haven't authored, but I believe you're
welcome to send a correction.

Thank you,
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
