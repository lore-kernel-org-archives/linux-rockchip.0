Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE144C04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D27BJXNU93TvI1vf1PhCA8xfbffAkS69eza8weRlezk=; b=r5GY5bnhOwmpLW
	I02zhiaJGKbta8bGVhfc366lVMPlBHYNMtesDLQ+PlpFiRyYr1eHNP5nPFiG/X1DDj4lrCixXCTx6
	2W1h8d8I1wpcYjmSrrRUCn1/E6NNuCGqS6OArNiqnXyum6XHLSBc1vF2B2Caf74bYG99kplTiN1u6
	cDNavAO+AeQDt3YsIJNY7QNcM5EGEpYa6XaqgiOBcSBkaShTISy/dGFm0098h5e0SyM3jT2KXmrtb
	UndJNx7nsTUYMmCa9nAcwwhGn5A4NCCRLzMt+LQxeMULmNAjf+4vLN/KFr3qo1LF1ETcfty6j8TRm
	aRzxgtPJbPUyZR7ALJCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vbJ-00000007cgX-0sxa;
	Fri, 17 May 2024 11:18:13 +0000
Received: from mail-pl1-f171.google.com ([209.85.214.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vbF-00000007cf2-3QxB;
	Fri, 17 May 2024 11:18:11 +0000
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1ec92e355bfso5446715ad.3;
        Fri, 17 May 2024 04:18:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715944688; x=1716549488;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sg/FBsZBDfXOHm/J/YMr0AFImmpjs5YKstuD+GBKpXk=;
        b=qV0ThlISFYTkaks6N9XWI/FIbIsoVuS95wg06Of7RHtnt2xrYQZpC8pDmedXxG9gBC
         haVajsiP4VQmz+zcpvzyT7H/R3Fsa9LTKuc08v1Dd6K9T1z+h3kC739YazRARlXOLND+
         pf3swnR+bBGeQdmiMaLO5HM8WBO2ds5QZHzJ2+vv82KwMZXgaP6aTTaGT34xA00xVOtZ
         SfHt8KYL41gGUbrS4+23sbKMeNeJMELDL4Q9oQwEPisR/ftVeDiSCMuHztCsML7CGby0
         X99xWc9Ht9Emm+RL/LZu4z7f/QFIP92AY+jJsMltNDwHSL8uNehMjMtnoFoxfPkFOf4w
         jk1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXq6tNxi4q/3W1h/aQ7451hv/3CFyEz1iisnQfED9XQRPxDCqVGugxQnhzqObjzyl7CaZdfBhaFnrkQu0VXZFFpIphGfq8WmqaIwgGnQ5L91GXRy9agN1qyA3vKqP8/gUY/MCrs+NBZQZOBkxu49nelbBkuAG01gfw=
X-Gm-Message-State: AOJu0YxJ+WOwVva8IvbIizfeTD954UgaYSyiVf1ujLHkKkzRJsS/+lha
	POL1kXp7sgmp87Uu6gc23wz0WhbHHT8aTb9104pBLMaPvrtI6mDG
X-Google-Smtp-Source: AGHT+IGLCMl5Tz+z4zgIma4FE1efOHYJkIWhZpHWnn6EOooX40/8TI3S0B+Ebm6UayoulagUE+YyWA==
X-Received: by 2002:a05:6a20:6f0e:b0:1b0:66d:1596 with SMTP id adf61e73a8af0-1b0066d17b0mr12990949637.57.1715944683500;
        Fri, 17 May 2024 04:18:03 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2b67158c39dsm15203894a91.35.2024.05.17.04.18.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 04:18:03 -0700 (PDT)
Date: Fri, 17 May 2024 20:18:01 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip-ep: Remove wrong mask on subsys_vendor_id
Message-ID: <20240517111801.GQ202520@rocinante>
References: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_041809_904107_F9DFB889 
X-CRM114-Status: GOOD (  10.16  )
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

> Remove wrong mask on subsys_vendor_id. Both the Vendor ID and Subsystem
> Vendor ID are u16 variables and are written to a u32 register of the
> controller. The Subsystem Vendor ID was always 0 because the u16 value
> was masked incorrectly with GENMASK(31,16) resulting in all lower 16
> bits being set to 0 prior to the shift.
> 
> Remove both masks as they are unnecessary and set the register correctly
> i.e., the lower 16-bits are the Vendor ID and the upper 16-bits are the
> Subsystem Vendor ID.
> 
> This is documented in the RK3399 TRM section 17.6.7.1.17

Applied to controller/rockchip, thank you!

[1/1] PCI: rockchip-ep: Remove wrong mask on subsys_vendor_id
      https://git.kernel.org/pci/pci/c/2f014bf195ae

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
