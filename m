Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FBE8C3ABCC
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 14:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLtTbTvKWQdyZJlwKn81nmbZcGTTH96Ull07CqpNPL8=; b=PixzlLgbNaxpGe
	yYNLPWc7AWRdDBsAoePhH9dVvBSOwn1Wg7U0yqESj1B9DzHCmspz75q7YA8pqQva7I+mG8j5Nf+TV
	izu3zBfqPs8VDTXc2I56BE2DOTKy+TETpKqtGqyO9klyPiuLS3cZ8142+XesBV1BnS1lIFNvLUNdy
	V6bnfNox5i0xkDvvK/9zr0c0nHQZKTTZ7p2mPbT/Y62lWTAoBhulRFjkzwh4oOgsc6KVZkFepQxj1
	Hw9PW8iy3wqfgxiVKppZCljjvMz0x+jr8dK+rn/HRcYkK0O0E3drS8vhH265QgGjxMiy4AgOaSJh1
	nKyxNTJMwOVHgiTGEerw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCpt-0000000FNOg-3Mg5;
	Wed, 14 May 2025 14:11:53 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFC7S-0000000FC5w-06b1
	for linux-rockchip@lists.infradead.org;
	Wed, 14 May 2025 13:25:59 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so49733885e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 May 2025 06:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747229156; x=1747833956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aakUawqIUHWGlW/tgWhb5T3+gxdqWvRqHtfYG+cbNxk=;
        b=RRCSczdkPiYKegR6SmpI5rogU20AurCLAD+u4BIIGrFeWhUqy+AhgO1QXPzSIkkbY4
         U6adNE5MYRK55IY5ydYi8voLaTRVhOiyaJ0O0BvTcQtkjKScnO4IUdKbhdVZFN52izKC
         FWLimaoi3I6wTX4i1GwbmpPmGxbZ8BI2Fa0+WfZTAAftsT8FcgRXu6Rk8fpO9Kxo+ELh
         XTAST4GkzmmVrVb/Az/TZEsORM/oSsxT7oZNEh6antBwl46ws+OwXR5h3FeU2/1giYHV
         LzAQsFaw/BMLALcAVyE+c10MkoMtJR/Z51psjNtaSyjeLpAhRGNXYCMvKMVGN1H4DpkU
         /BZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747229156; x=1747833956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aakUawqIUHWGlW/tgWhb5T3+gxdqWvRqHtfYG+cbNxk=;
        b=h3RwKefwTUCq1dD+UlYpp11qenBJCvWkQMz5aXX4qZYULa72CCuX6QHMcznCfvKQU0
         seCHXiDNCkHFe9+2gnGz3lxudUrTeyXUEOhqaS9PPcOgw1A0LsuhISiFnvOWANR1gIdL
         oGvAdde0zufyiRNLZg1qwVpYZxTLlgMD9ku9+bBAPnKtbbd/H9zv4Etsl7KIxek/F1DL
         tsuRSRUqFefseA6xMZ0bNHw8P+DGikjhemEEM7/0c65JVZPdJJzTDH29JNDB1BPDC/xX
         89Z7ZBWNEVDsKAjY0k/FKNerzlqb4+cxzlwXwGwOHSTHCPNPdG3zxU2G5NO8qgEV2BEC
         LndQ==
X-Forwarded-Encrypted: i=1; AJvYcCUf/bKhNQJ+UMAdV8LE3Ghl3W3VUdPn1nSJuRPFcGdM0AW54MWh6kZOA48Nsi80MQ6ha+qt2IH5cO86W3y1HQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8WuwQwdYfqIDSAiXj7JwlTkfDNXAntL/z6/fV9OSlBiXlCmOO
	KE0pXxIi9Xvo6gX4q/7G/iCCaW/UC77Drtxo9jQwlKIW22Pk83dNpInlhsLkDQ==
X-Gm-Gg: ASbGncv9KvkAnA9KXuFDduOG1vxgSCgXNWOKuDDz0kG6cPEAhP4O47lZtpYa5GynXCK
	RNqBXsz2C5WGxkVsWpZnPwxAbGkUISTEeKMYMs73VC94Nr/15PYVnbTlEKI9kQkB3p6j4RJ4bKP
	fqAWiMTIF+5MeYja39V2AP7HX6Z4060ejKsJOYRoldQPxpWKBdxDlUbI0mVFo1ciINhOTNTVIMw
	HrrF0tWz2jMuO7G4aDH7kmFM8gUL+fKeYwLPXQINGE7FB2V3w13d8ffyEjRIldaFCk1SXB7Vzv6
	AyobAPC1DHzG/JDQREB23LCjvQsqeHeXdfpaBRgC61wJmQiLLuGFsqv8+6stGK2VHHYmXrImJtu
	ru/yVXB17sbXRgnKWEekXl6pnaJL++22JQC75dcPn1I9C
X-Google-Smtp-Source: AGHT+IF69aVHh6QQL7Y9zF5wlxFHQroYuTRB4UFZmRCFpZtw3Ef3bncMvZbprgUs4BgS/0hcTEg57g==
X-Received: by 2002:a05:600c:c059:20b0:441:b3eb:570a with SMTP id 5b1f17b1804b1-442f285d105mr16754775e9.2.1747229155857;
        Wed, 14 May 2025 06:25:55 -0700 (PDT)
Received: from thinkpad.c.hoisthospitality.com (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442f39ef8c7sm29528365e9.38.2025.05.14.06.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 06:25:55 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alan Douglas <adouglas@cadence.com>,
	Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/6] PCI: endpoint: IRQ callback fixes and cleanups
Date: Wed, 14 May 2025 14:25:51 +0100
Message-ID: <174722913586.17855.970020852326837636.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250514074313.283156-8-cassel@kernel.org>
References: <20250514074313.283156-8-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_062558_053972_4ED96A46 
X-CRM114-Status: GOOD (  10.42  )
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


On Wed, 14 May 2025 09:43:13 +0200, Niklas Cassel wrote:
> The first two patches in this series are IRQ callback fixes that should
> get backported.
> 
> The reason why the bugs existed in the first place is because the APIs
> are very confusing. The rest of the patches are cleanups of the APIs.
> These cleanups should not get backported.
> 
> [...]

Applied, thanks!

[1/6] PCI: dwc: ep: Fix broken set_msix() callback
      commit: ef2a2813f4c738a5c8f71d47537a8e79b1058319
[2/6] PCI: cadence-ep: Fix broken set_msix() callback
      commit: 24e50b43ebb98f147984054730cf30aebae23c51
[3/6] PCI: endpoint: Cleanup get_msi() callback
      commit: 6f91c4cae6a3d895265e533630c00e1c4a0b8dee
[4/6] PCI: endpoint: Cleanup get_msix() callback
      commit: 262df0e1a10fa8470103d343fe85afbba4b25698
[5/6] PCI: endpoint: Cleanup set_msi() callback
      commit: 2b9391dcb26739d0b43927b329d2b670418c69a3
[6/6] PCI: endpoint: Cleanup set_msix() callback
      commit: 210de38727c862164e933d978ba39b66569ab552

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
