Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D505C25B7A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 10:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUOoiTn0xbihaeWm4wC05IpSOnDgBvXPpWrASYZKa20=; b=HN7WwjMXN79LJR
	2iTBgTqK9OWmwzLE4kqEhMDABLR0T4ale2PVh42EoXdEJU/ZILLQdevfdX7KVu4hIuTAAEYlQM0N6
	vDVdSC+2p8gpeGqah9UPk/wFJOqqWBmf/yn2MyrD2hwz4DOH3vn+4ZMTAJyaACaH1/qcYGpY+QaAH
	BlwgdSwqOPl8W9BOiVh3w+RGFw2+AwpEsvBXRr33vacndVXLvxDoS0m0FpESj82dmjFbDnIgnXZaf
	2lDsTYYNLKddaRRptMU1oLDgj56lvfs8FGS/vMjhCPlFbL1xTIHTIRYOBYB/Pl74g5TZ9YHbI6Gal
	JXyPvWIIk6bp4PJeTqBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7ulA-00000007VDI-49YI;
	Fri, 17 May 2024 10:24:20 +0000
Received: from mail-oo1-f46.google.com ([209.85.161.46])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7ul7-00000007VBt-1QzZ;
	Fri, 17 May 2024 10:24:18 +0000
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5b279e04391so795944eaf.3;
        Fri, 17 May 2024 03:24:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715941454; x=1716546254;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utTS+aOX/YDTXs3/LL/rdwsXu69hxlwppleXahmsJw4=;
        b=IANaNlgJnG8nHZlbABsWIllHQB9NK5FBJQtmrHS7wGRxgAacF7EMmEDIo/8o5EWAg6
         Lb0QoyQWoPUMd34+HYyLsOw9k/c4wViir5MKRAeHm1e9OB4tzXRe6gYsCLR97vqwFsc4
         kO6KdZ6EOW44c00SZNynBH7Y8sZeUlRG7vE7hbEb1unSSxReC2txuLb+43q+uWdeDv8L
         pNUHv5ffhSyJMzw6ska+waUdncWm5tjz3P6aGql027goI4Dg6UVUC3EJtuIvgGT1gI/x
         IWMtfHVJJI80TxvI5gyExE3fdjFUCOsXZjFflQkPnHW1VWUjr8FTe07uQsNHoR7eF2hE
         paDg==
X-Forwarded-Encrypted: i=1; AJvYcCVOEmjpx8dTEJt2oeCC93rSuM7kypvAtUIM18AFZw9g6TbNn0mPN9crD9pZTQPPOH6zNDYc6ZrtaLAUZfK3Um8ImqC/flKsWbhQz3i/jplGZ3fo0rAyy1skvxjvV4Ld85JXildEFLwMA9d5/a6KilerURDbSjEfrs4=
X-Gm-Message-State: AOJu0YwuCCJkf7Swy1hGLLv/EcgE0cYiVKbmKyto2UPsAnAvPvaSbmku
	LGRlz9wOl/FuJnHe5JgNEsOa7Md6fLqzK8Buz0ojjUpbS2h0ngIW/7iUWS+w
X-Google-Smtp-Source: AGHT+IFkkik74BEqe3gBhvwlCwhm9yFWu4UcK6wzhxoD5njw6OTN/q5iOIOZIlXmELGdYAaylWrj8A==
X-Received: by 2002:a05:6358:248c:b0:184:c1b:4136 with SMTP id e5c5f4694b2df-193bb50c35dmr2328637655d.6.1715941454537;
        Fri, 17 May 2024 03:24:14 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-65ae1565c08sm2378754a12.20.2024.05.17.03.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 03:24:13 -0700 (PDT)
Date: Fri, 17 May 2024 19:24:12 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: rockchip,rk3399-pcie: add missing
 maxItems to ep-gpios
Message-ID: <20240517102412.GE202520@rocinante>
References: <20240401100058.15749-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240401100058.15749-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_032417_398536_AB511EEA 
X-CRM114-Status: UNSURE (   7.60  )
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

> Properties with GPIOs should define number of actual GPIOs, so add
> missing maxItems to ep-gpios.  Otherwise multiple GPIOs could be
> provided which is not a true hardware description.

Applied to dt-bindings, thank you!

[1/1] dt-bindings: PCI: rockchip,rk3399-pcie: Add missing maxItems to ep-gpios
      https://git.kernel.org/pci/pci/c/52d06636a4ae

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
