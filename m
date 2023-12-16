Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04CD6C35274
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 00:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrlcieDpZBXsqeeY58IyOwYzynamvmz6K8Bae1cFGJI=; b=M07Oqrng+bde53
	t0IsYGBegBpcTSprpTWrRhtu+iyzyiuQqnG8c82kDaKrEOEHvSpjbGzZwdkEijrrtxr7kI9CQhgKu
	QgOmeModn0VqPuNZIut76zsKkn3i9F/9jpHJtFQoJ6dRHLwelqaDS35P0NyxIpedSNFsm0We1inho
	MKeE8rRonKjBIu/EhekKqKc7ohFhmw3tkgM+adayr/8sDuyUDIX8CbhmY+SeKshXQ3A4F4MCQKbgw
	W8wnP1MZOf0VOTIpenCD9pokQZ6Ic58Ie15qXsFKWrvVBLljWmEemK7H3VSClDmp3Dovyjz+3Lr2b
	2Ql+0/NGnn4IcH+1tRKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEIGD-004vNN-0z;
	Sat, 16 Dec 2023 00:10:29 +0000
Received: from mail-pg1-f169.google.com ([209.85.215.169])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEIGA-004vMx-26;
	Sat, 16 Dec 2023 00:10:27 +0000
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-517ab9a4a13so1016402a12.1;
        Fri, 15 Dec 2023 16:10:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702685423; x=1703290223;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Spo3/hZ8bxeF7fEaxgEqhtcJSHCMuSQdfr9Oa59N2+g=;
        b=auDYwP8KCkOWImWqHNS+YnoxApHgD8rh2VVgJ66eCFeJietoeIzJqVZTtqOQawa4Rn
         lUSJAHXU43CnH/F9Zja55DU5iVk8TjY3M1AFqBUha4KZ2gfgbpgxZ/jdp5t5TcxxzsrN
         Of5xzJiI6EmFrG7pmp+X7U8MzIy4//SEzbkWUWRbJbDaQxHXE7bGxE17simub3ewUFvd
         hLmzTcVJ2u2egZXUluiWUWs4gIB2aS2ghrYXpArQljkrCKLuwKId5uCgJIZWl/XtQlix
         65PgLGnxx2PwwY3aWsb7gOyLms/y3Xj8wxEh8IKns5hJaA+3JjCkrv2639FgqPGnDL/b
         LhSQ==
X-Gm-Message-State: AOJu0YwpCSp/aWoIskft1a+oT3/kU6pJfftn8GuTGeU9XouHFg3xuPav
	YAFyJLYO9MXp8rtqYciVcn0=
X-Google-Smtp-Source: AGHT+IE98CQysK2x+uTIv983lVLMgiO6PyltLPUOTrydctMMoJ3tXdlhdw3rQ75gjZBsCZj6K2+4YA==
X-Received: by 2002:a05:6a20:5525:b0:18f:cf73:3573 with SMTP id ko37-20020a056a20552500b0018fcf733573mr11872782pzb.121.1702685423442;
        Fri, 15 Dec 2023 16:10:23 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id e8-20020a056a001a8800b006cdda8519aasm14007334pfv.169.2023.12.15.16.10.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 16:10:22 -0800 (PST)
Date: Sat, 16 Dec 2023 09:10:21 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lpieralisi@kernel.org, bhelgaas@google.com, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] dt-bindings: PCI: dwc: rockchip: document optional pcie
 reference clock input
Message-ID: <20231216001021.GD1570493@rocinante>
References: <20231206145041.667900-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231206145041.667900-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_161026_711487_38E64EBB 
X-CRM114-Status: UNSURE (   9.00  )
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

Hello,

> On some boards the 100MHz PCIe reference clock to both controller and
> devices is controllable. Add that clock to the list of clocks.
> 
> The clock is optional, so the minItems stays the same.

Applied to dt-bindings, thank you!

[1/1] dt-bindings: PCI: dwc: rockchip: Document optional PCIe reference clock input
      https://git.kernel.org/pci/pci/c/639f666cf84e

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
