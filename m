Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22538D6A221
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 17:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzH1Y95o62otGLCxT1xNn7QNVLGoIA2i7aCpeye8bVc=; b=DWAybjRwS2cqxC
	ArZNRaPZjM0egWUx2iunmPp3yX+t0On+P2bJt8ppAHpis/3+z/FOIly4VUfFtFU0/vMG6hqarh8dM
	oXW6pmsfLr3LSLmt33SeZkzYoc/CGIwWydjPXIPOfhhPN9tfHupW+MOnpwKba21/M2x0koToSqlkZ
	18qTehG7j+lzVHLLtJjhOslCfGgKu+P/G+bUM1Y58XZnOItsMRKU2wbn8yEBOBTabRw81lF9M1b7G
	b3Zt5VSUrC7URFL1LltBri1GNitWsmM13GzyfjrFm0B2rfD4Wy002n0XqnKfp3X3pU8gGFajPvDnC
	swmwDLNlyIpN9evBPnNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBdZz-00000000JaY-37kP;
	Thu, 14 Nov 2024 17:24:27 +0000
Received: from mail-pl1-f177.google.com ([209.85.214.177])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBdZw-00000000JZ0-413z
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 17:24:26 +0000
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20caccadbeeso9840945ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Nov 2024 09:24:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731605064; x=1732209864;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4KfOJtzfwH/T6BnCgNIk5RTMp+CeuzSWNDpYp8Af7B0=;
        b=MJ9rUfFTFfChf1hTU6tSPGEB+lJX4uvPW4wDtjskIyCdPj86Mjv4XMQgtDWiYkH7MI
         4OSnMBcoPIy2eU0IdW2C2owbSxRCEn0kia7VRb945XXVTWVtN3xqkxgg3nnxkCpDjJ8+
         ZwWZbUEF1epXdLHh20bn0wLsnrq6+SFjsWQgAy5kjvl+5KTEg8ICP08aGSPymrPL5kNR
         O9Tm4NvdpufP8kd5FlDsRvOFkAJV96DIcMA9ostW9zzezCyj5spJpGXhAsk8pRas74rh
         XL/aHe1y45pgihF724YJmCLF4aq0ThDMye9GyJjlSIsqHXLibpL4CgBN0uufhS1gPFKd
         /ETA==
X-Forwarded-Encrypted: i=1; AJvYcCU+JkIVVeRIBEYW4xmzjzv0SyVJUORRwY6WdLOGH4EWq9Cee0yMLNaapqRXY4lt0JfQCNTSCRNwj92Cmaoxqg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJ+xF1tnLaZngFt4VLdqr1de4CEv3yuWGFsBcWDgtyZIc8Rp7R
	dgfqzsdzSAfoXUkA/3FNrAnl04BJEb3WeqC9VaO0x6nX4WLxqpnL
X-Google-Smtp-Source: AGHT+IHZa97Hmrsw68sqOZYGtSf6kmlJNEEpgylzpOkqT7/MU1vF03ZIjf4UlEa0R6ZwFWAsadnmHw==
X-Received: by 2002:a17:902:c942:b0:20b:5231:cd61 with SMTP id d9443c01a7336-211b662f252mr88839895ad.24.1731605062296;
        Thu, 14 Nov 2024 09:24:22 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ea024bd2c7sm1585144a91.34.2024.11.14.09.24.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 09:24:21 -0800 (PST)
Date: Fri, 15 Nov 2024 02:24:19 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
Message-ID: <20241114172419.GB1489806@rocinante>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
 <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>
 <20241113175222.eh76hksyj6sptwvo@thinkpad>
 <20241113205900.GA1184086@rocinante>
 <11cae8ab-a46b-47b4-b919-f7021057dc11@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <11cae8ab-a46b-47b4-b919-f7021057dc11@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_092424_996996_6A6EA738 
X-CRM114-Status: GOOD (  14.01  )
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

> >> Sorry for the late reply. Things got a bit hectic due to company onsite meeting.
> >> I'm going through my queue now.
> > 
> > Thank you, Mani!  I took this over and pulled this series.
> > 
> > You and Bjorn can have a look over the changes, if you have a moment.  That
> > said, at least to me, the changes looked good.
> 
> Thanks. But the kernel test robot already complained about a build failure for
> the rockchip branch.

We did see this in our local testing environment, too.  Albeit, I didn't
get around to moving the commits before bot picked the branch up.

> The series needs to go through the endpoint branch as the .align_addr
> method is only defined in that branch at the moment.

The changes are now together.  Thank you!

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
