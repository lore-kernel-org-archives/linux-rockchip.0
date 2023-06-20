Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11F12EB64D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 17:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hr7fjmqj5XmMn/ucHAextj3glhbreH/NOYt+vtDST/8=; b=rXYmOfxEkb5327
	wSl88A/qydCzrqj7YlJbOn7+hakd2C2tTT4KILaF/ZC44PUU57lhGlhU2eKTyN21geXfeCowh/usH
	vusYI+FVx2iqEtaD3m14AKzwxhbvWDr1b/GkPSopIhvNvIVZ9FaFzruRUqLvk+HMIK0HbJC+VUh0V
	NNVsziU46vMiTxKOuynTVZuC5ty8trUsp+OygmKPYD8Sm/1hAOT7jWutTOf9Y4A7md7YQrSIqgdRQ
	A7wRv79axEcbINCzWN6A4bSNapTcA8q89Iac9wuH4OavqWXR5niMgik/xd8p0IDqcV+6Vra5EaR/i
	YHb06yyOn47HBqOJD40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBf3N-00BvAD-2b;
	Tue, 20 Jun 2023 17:22:05 +0000
Received: from mail-il1-f174.google.com ([209.85.166.174])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBf3K-00Bv9O-2p;
	Tue, 20 Jun 2023 17:22:03 +0000
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-341d62e78d3so23504245ab.3;
        Tue, 20 Jun 2023 10:22:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687281722; x=1689873722;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZzArzRV9yR1n8VbuBTY+7vvGWbg9qkwrVAJHEY9NNQk=;
        b=kVKUa2fn5iLCERiCoNqXNSHg67+vMkUHuMQlaHgnebGTWEYucBSrkPlP5W8z0Ghoro
         KOLWirxveqAnyX6Sf2mW61SL/jr8S3n+6/j8CiIXhuFaWqznFDF2osmVLCloyPGr8niy
         J2fx3IIRNwYhVauM8GM1EVRlfZhmDwqC1SXvb5Y3/HZKCckMJ81CXEItKxHlfvL+5iGU
         yvbLRIhsjNK5AlkRRdQnH5ylGtvyqUxEEfZ/3gDxOFLG3dj2Bj+A6VjNn9taQ2Q3+tk3
         /KdJeBd7eOlOWZxwLLab2/RQFVfMjEMnYVN9hh+HhodK+JkJXDLhPiK0ZcqWjhhxqW02
         vdjg==
X-Gm-Message-State: AC+VfDx040rOzbX/sc5j3rm5IH3ywFbcVXCJYdi2Svf1NHpNXFoLfJfY
	ehpaWV7E+sGNBx7JUKpkrQ==
X-Google-Smtp-Source: ACHHUZ6hfk+zVOKl7DLQhfEUaoMDMo+kVVI9ImHz54JzzMg4HMzi6mdhb4jWHiyvv+6DTs38E9XflQ==
X-Received: by 2002:a92:da83:0:b0:341:da26:d2f4 with SMTP id u3-20020a92da83000000b00341da26d2f4mr12636140iln.23.1687281721777;
        Tue, 20 Jun 2023 10:22:01 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id c5-20020a92d3c5000000b0034202d05fadsm718889ilh.72.2023.06.20.10.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 10:22:01 -0700 (PDT)
Received: (nullmailer pid 3851810 invoked by uid 1000);
	Tue, 20 Jun 2023 17:21:58 -0000
Date: Tue, 20 Jun 2023 11:21:58 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kernel@collabora.com, Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Simon Xue <xxm@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Subject: Re: [PATCH v1 3/4] dt-bindings: PCI: dwc: rockchip: Update for RK3588
Message-ID: <168728171828.3851756.10954343791219685425.robh@kernel.org>
References: <20230616170022.76107-1-sebastian.reichel@collabora.com>
 <20230616170022.76107-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230616170022.76107-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_102202_938132_B7D6320D 
X-CRM114-Status: UNSURE (   9.31  )
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


On Fri, 16 Jun 2023 19:00:21 +0200, Sebastian Reichel wrote:
> The PCIe 2.0 controllers on RK3588 need one additional clock,
> one additional reset line and one for ranges entry.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml           | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
