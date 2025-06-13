Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F162AC71136
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RDYzhTS122y8XojDets0oAgy8YhZP0ITFxb6RFuEqVM=; b=1KEe3NPl6kLnWR
	rakO+7HiYpIDP+7PngH0gu5/a0KtmaLV16eVwX2ooyTZLWua3zBclOMiKzVp1k5ft07en9aLK1/Jb
	G0zChN8xkg1t6+PtlaHw9ja9kNVJ0Juzee6ZKItSoyGSa6INBMJj69pvUvszps+dsdtyXoLS8woVC
	DCU20fqFJVMQaCd68RcVBK0J4M8y9fIU47ad/EyI3Ef/9WXRLwzmocJjIZXEW4fBhugyVw0MpOWPx
	0Y6dDnQNzjCuHJnM/ZajsBAXdlba0ma9Q9OZ4EbRxQr22/z/XSb4sRO01qItPj0lfCRG89Tl5Amyy
	bQmqgqLmsJBBo8jvWujA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQBY1-000000003V2-2blH;
	Fri, 13 Jun 2025 21:02:49 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQBWv-000000003G6-1Tsq;
	Fri, 13 Jun 2025 21:01:42 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-74849e33349so2412395b3a.3;
        Fri, 13 Jun 2025 14:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749848500; x=1750453300; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/Ea/eTX+P8wMCNrPfmeI34ssYwADQCsaNDUn6KV6aWI=;
        b=aZt+My6eml+EMhy1M7EoigpbiVBUgYtdKi8bm0o9fLqXaash2PdAvgUdGuU1OpVnxG
         pWV0ZP9aSxuW61SzbSAH+CS0DQhOL2R6g7B+xXOaZZxLKu38kxQATpr1+73J2x8fwFt4
         CUZ6V5mSQAGpZ58/KCKDRo04JO9qcqknqQMz7G59n6jtUEBJAkA6tzAMSSa4XW5e7woe
         DYYgHIQsbXxyM689KwgHTiz0BrcKm8/a/Ghb/CnEUSN1wT8oiWOYUNTD4Vn+E38X0FgE
         wbDPAZXOYa0ojrvs1THi5/w2PypiOnQwmlZvdipYDqhnXaB00aT3Np2dITxpClrnNvN9
         RdZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749848500; x=1750453300;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Ea/eTX+P8wMCNrPfmeI34ssYwADQCsaNDUn6KV6aWI=;
        b=ag21Xvu3T2upMALNk5eJDAMGYB0UnbDEWQyyPZOCCoVA62jnZyiDYBabnYV6n0ovSD
         gABIXVPN53lfrN++fxwc488oFWEv6N05bu/HM9aHP6Qtf0uMH+cdsO0F3H1EEfSqAF+U
         pplpaGI4NYu70FwoVvyUrMA/L7spsXmVR6C5MXfrStZaiJGZJUoRSlKJOjfnfzavwOyZ
         DKboA7taxTWDKVqbzcKSyME2ZHWSZjmw7GDJNfd6eAIklsbPYjSNylnRXe+ezDgbzqI/
         JLNbradgYpozNzHWr6925TLJGDb2i2vWMz+QeVwEEAU442Sv+0z/Go3lhNPW41JSy6ky
         hXQw==
X-Forwarded-Encrypted: i=1; AJvYcCVVDe2acvV72aTL2pvBPR4DKcNawKQH7vLOcBvwefVxIxyfT9Z3npB1pAjTLXPw0/M4lryq9XyrK8kl@lists.infradead.org, AJvYcCVv7pixKLOUVuz+rq1QhjPFdkFBbpvHUc1NLNDKBSXcxM7vNyaDzmF20l/saZN7OSXIJJ1pkb9GAIhQJ/SbGAsJ@lists.infradead.org
X-Gm-Message-State: AOJu0YwR20vo3uLd5u8nkP1zgRgdBnlf8VGWUkqeqbtdKGOOoQILAiHz
	ikaeP7ITja9clf3KzjzOUXaSRBcXVCiFref8xtFNFG/LvtpWLrQOp39A
X-Gm-Gg: ASbGncuCVLDejYn3dipvMmj2qYM3aSbZxfirN/9n3Cy/d/v0DT8bqThdLfB5iKsKFVx
	k9hrrwtnW7iDkBZ05bV2cSz/oVbRlBg/huTaNfan0CM8JBo/2V6ojFzU7vmli5QnaIlzSCwbmwK
	RNENWORBVt2Hq9smGs5atm1JLVt7OWSsgl02QPe54T0BCAbErtZQZLyUxpN+ejjiYDkaPLl6+3T
	Q50GBlGgEo4nwvK8ZRolMbMWGFW3eiudrPMem7x1Xnm3S5O3elLPQxi/WUHKEG/CKhZxMCKJNbr
	QrNyv5YdRhURjMkCeVMXDkRdYx+1UKgH5FdZdaKvQ7i2JqSQmcLE2tyv4J/R
X-Google-Smtp-Source: AGHT+IEsJDU1mE5FbmCdQgmCN7qJMpOL0gk1MDx5GEVgrbcSEqjFwfTmcrPEttgVlM8tBhRjqtH0pg==
X-Received: by 2002:a05:6a00:a85:b0:736:43d6:f008 with SMTP id d2e1a72fcca58-7489cffbb1emr1058801b3a.12.1749848500523;
        Fri, 13 Jun 2025 14:01:40 -0700 (PDT)
Received: from geday ([2804:7f2:800b:84a2::dead:c001])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900051a6sm2111176b3a.42.2025.06.13.14.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 14:01:39 -0700 (PDT)
Date: Fri, 13 Jun 2025 18:01:34 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RESEND RFC PATCH v4 1/5] PCI: rockchip: Use standard PCIe
 defines
Message-ID: <aEyRrtMZ0LidhyOR@geday>
References: <aEyJhoiPP0Ugm1t6@geday>
 <20250613205023.GA975137@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250613205023.GA975137@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_140141_391984_1769EB5B 
X-CRM114-Status: GOOD (  14.20  )
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

On Fri, Jun 13, 2025 at 03:50:23PM -0500, Bjorn Helgaas wrote:
> I don't have access to any of these TRMs, so I only know what's in the
> driver.
> 

They are not under NDA and can be obtained though Rockchip's
official site:
https://rockchip.fr/Rockchip%20RK3399%20TRM%20V1.3%20Part2.pdf

> When you say "without fear", are you saying there's a way to do that
> 32-bit write such that the LNKSTA bits are discarded by the hardware?
> Or just that the hardware forces us to accept this potential status
> register corruption?

I meant to say those registers themselves are defined in TRM as 32 bits.

> 
> Is this something that could be written using the config access path?
> I guess probably not, based on this:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/pci/controller/pcie-rockchip-host.c?id=v6.15#n141
> 

That certainly looks frightening.

> Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
