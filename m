Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AE48C369D5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 17:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaBpELYf2RQ9GHGSHpZ64JeTLzS8mu5pKLly1f5MAgM=; b=pXGyaaCsw+IcXB
	xGxThb5uj8pxkgJfytZwX/X48eHzgXnJe6iGkj5Q7RCdnDcpIRdjV7i/KSD6UudyBt9NpYCy8pi8v
	iPsX+YnZCbg41Rbspq3ekenM9oCvf4BM6d66YPe4FjnTGo6URRCFjFtCQL8br28SkvynV36PyQwtd
	9uF98LrOHAC0iD/Z9xsdPFMHl6ta/nlSHtMsqrMLLavviGalvBFjD4AqAL6hxOmWjhwzLjvhV5BOA
	+E7yW6WDE8RaQ0MAcP7RncqS9OE+jOXLlUMAE06Ex3jjPqMjKpI3xn9KF2dEYpIINZKNFBWmUMJ6U
	rpqaArX3yGBO78nsJkTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u95zy-00000003qCr-03Th;
	Sun, 27 Apr 2025 17:41:02 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u95y0-00000003q57-13Je
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Apr 2025 17:39:01 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-225df540edcso50467265ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Apr 2025 10:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745775539; x=1746380339; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vQlOF7pnuoHcV4tUzU9FAAnsi+yiSpTmFNxdSuCGH2w=;
        b=vL8TtCrgNfBt23ksD7MlQ+PPSvj2G7UoIRjIl4hpfRi0hYOqdoC5SjC8yYEwYhpMe2
         Z0L/Olf8jVZwgJVnLnSSD+ccce8ccPQwLZmSIhXhM26/go3fo9cla+X+Twep0Q+VW5zz
         QMTXwSNd4HVW0noC6lZq1wl5Bx4ZHWKsUCIhtESZyDcNVoJ1dtTgBtZ1FOD96ZZVPw61
         WHAsskcDLX+Ytx+oveP586okX53DO0YX2EJEiWP0nnwYDJT/fHh0MS2TmULsCcbrvXH9
         YizsN3bSWz9FrGETb2donTAW9RXxTmMNDkYBw3TnMxN8xNFOJ9lm3FrXEKkoTi3PNTBU
         HAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745775539; x=1746380339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vQlOF7pnuoHcV4tUzU9FAAnsi+yiSpTmFNxdSuCGH2w=;
        b=ribNngxo1ARlZzqw30mj4hMr9Nq1ZFOZyfL/fWxMgFwAsg1KAcaPayIIgNnu30gVf/
         lewYrJBWtcEN8GEAE4kY+tRhUw4MvfsjpticH9tlNghTKQwVXVG9vC0KnLB9BaSyA/AU
         umW1Ya4B4FtoECUuYCZpsOvCJKfgEadPdiBU22nhW1ksORLZ4Y/sfDfwb0gVIcQ0WWQf
         UvJLrMNPpl6aUijjyrju61fOVlyPUH+x/yM4vI4D4hGPMICRxMC5XXkqirP+Iz2iXDMm
         WG5ZoSEQJ4wduLL7/snpHPe25URQSf5TCPa3IBH7M5bvEHS/WYxHq8v3nzd597TnVW5P
         CHMA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ6nYpLUEQzy6kqr9JcvEaaZr/ftvxkD5V84qtQZYZPRyhG+nWvF85DkFaP0kmMMk8s5dMQ9sFypKHCZcbVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKW4FmPN/YLdKTJLhjPFe8dOXOoBTYyRiwRWOJUYCODv/s+WH8
	yLPLqOJUTZVrpdpdYWme6/Z3bhubjUPbCKCnFvLbP/mHnrkRfP6SIYXpn40ebTVfAxetbw+lEV8
	=
X-Gm-Gg: ASbGncuvhzkOBF2rjfn55TZwXJq+SkfYOHMsEjxzkc9C5sCkshxaosF0NZ8C73pebX+
	N+QOyhK+R3dMgaikjY/dr6BN95FWIpz+FfO3n9q4RxdViIZ/c/J6VsY+mILeKyo8vLQkXfcevQR
	rFWRsKWuZp1s63ivUEG+05EGVIsUxYYpUxyj9Sy/8b+w/VFqXUJo7hJp3NGZZKaERLLZEF1ozdF
	lQQvcyEzQXB4E6/ItpYFqJkrTN1ry2+PvDMrjT0d5fXXvXcNLGuHGnJDqGWo/OqMJKy2PH7BbL+
	DXU4LFt5AVP2Hz1SaPfMcJwruGGHJDHD3oXuPnFy9nc1LkT5x886
X-Google-Smtp-Source: AGHT+IEU5IH9SCIsyt0qXj4mqk3Sr5u/bdn7eIkZRJYO1TNJJ8pz73ALG1a7lc4tKhheycKSRkIO8A==
X-Received: by 2002:a17:902:d4c2:b0:220:ff82:1c60 with SMTP id d9443c01a7336-22db481b546mr195207145ad.14.1745775539333;
        Sun, 27 Apr 2025 10:38:59 -0700 (PDT)
Received: from thinkpad.. ([120.60.52.11])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dbad7dsm66569285ad.60.2025.04.27.10.38.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 10:38:58 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Rob Herring <robh@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Fix function call sequence in rockchip_pcie_phy_deinit
Date: Sun, 27 Apr 2025 23:08:49 +0530
Message-ID: <174577552237.92328.3418257212908173284.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250417142138.1377451-1-didi.debian@cknow.org>
References: <20250417142138.1377451-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_103900_296450_39B66515 
X-CRM114-Status: UNSURE (   7.48  )
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


On Thu, 17 Apr 2025 16:21:18 +0200, Diederik de Haas wrote:
> The documentation for the phy_power_off() function explicitly says
> 
>   Must be called before phy_exit().
> 
> So let's follow that instruction.
> 
> 
> [...]

Applied, thanks!

[1/1] PCI: dw-rockchip: Fix function call sequence in rockchip_pcie_phy_deinit
      commit: 286ed198b899739862456f451eda884558526a9d

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
