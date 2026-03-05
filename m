Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D87DF30946
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 13:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDPK7h8A3u0KvSCEtUZcOsPFh2kQ0dHVJh93U4jZqzc=; b=OwmJvMV16geZKK
	WBamyfE+meZ3jj7zGVhisEqd6ec5EjFNd+NNpFP9bXTeqyMH7Hn2jo1hPLQIFZJcLt1RCbyNxkNj7
	DueNPxIcWtyAlSF1vNzZex+zc5r6EkxN/LCj4PIcOHLowaXja7Tzqq4bdX7Bq1A0G2cNJRK7o2kDc
	WxIw0NFjDmfkWsc7NWh8hu5na+w4NTM68b28s89SZ7OZ8OCj9xZ8z1B2BXdAIWkT3WwUoBoDrVtCk
	CJMDjASsKJAUbpa9K9awdK/8VTUZ2+r4vj+6wTuCfBQizdyUaDxbgS7JBtXzpkxBfD69p4BiqYjcH
	TIoADMyGYPkqzj6WDfqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Kx-00000001q9Z-2VeX;
	Thu, 05 Mar 2026 13:01:55 +0000
Received: from mail-pl1-f180.google.com ([209.85.214.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Ku-00000001q8S-2yid
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 13:01:54 +0000
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ae43042ea7so53424885ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 05:01:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772715712; x=1773320512;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7IxpxVkGnClS/pzWnTPcTEx+bl+pPZR21vGpLksfVXc=;
        b=UuBZvgk/CE7sLbfXqpjwlAk7LiEfYzl72ttMEypmMep6T5FflwqW0QOHoxR5E++mti
         QKlT+A9u+9L/DaAnf8TJDL94k10TTnIHfVPO3lkc8Htz1OcmRmKz9a+88N7yrGTlxTuK
         PXCtmYgG7UjpV7mhrcGD/wUc5/fcYWgnbW1KOPoMTO3lMJ3MMzrKAkHt9kSi03biDdu0
         ZIk1If6O2GxY80bW7GrxyiRd3zLEDVhtom7lT7M886T8NTFOGKf3cWo6DbClz52o8846
         XUKtEUM3VJQYjf0h+sAeNkl8KHT0HSDuB322eWuF2soVp2MZf2EIeDi+hataaEBfODBB
         9VGA==
X-Forwarded-Encrypted: i=1; AJvYcCXcGzIgD+KgCpcgOnRSRYZ7AEJapp5JIbHSubRyWkP9AiqHCg07l8h7249HZZNOBWyCpJzl5vkye9KX0nb+WA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/Kw600rhPZ7jH4iXvzDp1Ze5GyqREaE1T4MMv2mKigxjpdSpL
	w/npDRmW5ZqAjhyqOCYkG4z7kld0zIVB4l0L6szoKFpKnngleWFlcaIc
X-Gm-Gg: ATEYQzzpNP+49INnBUMHQkRguqcXkwWRSvdrpgRj7KhL/0EBGFrwp3QT60ejYar3StT
	ALkbOVxjmffGw0s14r77kKs7qpsY3RAQ8hFPzY9FaV4Vr4eaR7Wy4u8AZ4DqdDwd8hZlatgDh7F
	Ra7IA4UDJBVX5OE2yCqEg6HODhGHGfEF1AYXvCBsX7n+fX8rVSSXq6LspHZ8HSoh7UptUyXFug3
	wEOypH1rtmxZCw5GN8qXghhVzBBoaxogECJapB69QVhGvp4W4EB+YMhSLuqJGZ5+m/x76oygbFK
	vh5fnBnhNnCsAPfauGshDezNR7+u5tolLL5w9mKu/UvyP583Yx5S7bHM0bqhzVGx0W+loIaCxGQ
	aVqWqud3gZSSv0eHdDSqRiMKZOozCTdxnquMqCjVCJUGxgJBoPY5OnpFnaqrQD1S8LXasVaL7zh
	e7Al3fo+qCQl7v8S32/TvhhypvvHkQGW98MdjybR3hISp0QCJPuxP5km82g5ckzv0ZPzaYrSgkC
	YrM4SpVMbAmtE+bnd58QEZ+oo3nIpn0xPk9PU01VUe9FlvBLhAGthrrBFA1Gw==
X-Received: by 2002:a17:902:ce03:b0:2ae:5b52:3818 with SMTP id d9443c01a7336-2ae6a9deb2amr60551085ad.8.1772715711782;
        Thu, 05 Mar 2026 05:01:51 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae54136b28sm115696425ad.73.2026.03.05.05.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 05:01:50 -0800 (PST)
Date: Thu, 5 Mar 2026 22:01:49 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vladimir Oltean <vladimir.oltean@nxp.com>,
	Joe Perches <joe@perches.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org,
	netdev@vger.kernel.org, spacemit@lists.linux.dev,
	UNGLinuxDriver@microchip.com
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
Message-ID: <20260305130149.GA1659133@rocinante>
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
 <f3a5aa3df78553ffc0fd0024f5fd36a4e2158c88.camel@perches.com>
 <20260305114352.2f7btqixg4tu5bzl@skbuf>
 <20260305121532.GA1649635@rocinante>
 <20260305122957.GA1652563@rocinante>
 <20260305123956.ojkt4k3ly64xz7fu@skbuf>
 <aal6kWDx_3XRGB4K@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aal6kWDx_3XRGB4K@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_050152_748417_5409DA7D 
X-CRM114-Status: GOOD (  10.40  )
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

> > > For content match, it could also be:
> > > 
> > >   K:    phy
> > > 
> > > I believe this would match everything of interest?
> > 
> > Yeah, and way more. Think USB PHY, network PHY, etc. Don't want to drown
> > the linux-phy mailing list in unrelated patches, either.
> 
> Also phylink, any memory management / DMA stuff that happens to mention
> "physical", and probably numerous other examples.

Makes sense!  Sorry for the commotion here, then. :)

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
