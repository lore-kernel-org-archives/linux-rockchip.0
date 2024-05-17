Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BFD0C04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 11:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/h3mfP6W61roXGJ1N/8T8S9uoJHkbSb5Ti0NZ3mSsFM=; b=Aa7RV9Tv75SA5E
	m0uBN0a8PLwK9sYyRl9N9q14YBekSFKtUQ+x5CxxoAnBa2Qm8xj+rcj2Y+UiQNmIo5yRePMW7y0DR
	D5VptKluZaHcQbu8Ej6xRz+/NZbkwURIf4HeEHG4r7UgR4PE4JJ/3se1f/kEVWdlW+D5FNNlIWQBb
	9+SIVq0QNFeplSDOWeaQrJw5snVYE51AuuQ1ZYoNg9+QtGMZren282cTBl/Fnrove8N46VwexpWAY
	Vs8cWMamMHw2O4PKKhAnGJZ4WTzjDe2nPHuVPnDCXTZoJvtMpi6r+n8+5Tj9nNPeliL2OB/ny3ASI
	usWR+nIsoGot+E9wrY9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vbs-00000007cpb-0yzU;
	Fri, 17 May 2024 11:18:48 +0000
Received: from mail-pl1-f173.google.com ([209.85.214.173])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vbp-00000007cod-0DL9;
	Fri, 17 May 2024 11:18:46 +0000
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1ee12baa01cso5400695ad.0;
        Fri, 17 May 2024 04:18:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715944724; x=1716549524;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G+OAOc2DlBXOsFn/45TrqzX3VilnHDSuT5d3HGuQrhc=;
        b=dCrtdJvSr4wkHfrUE4IabrsD5pvArdOUkGzGpdXn8V2O4Ma56Y5+ZD0aSHcdL7CaT9
         gcN6/Y0RYIoFAkLhzpfTFHJGUDKtjkvupWcoM7xRZe2moXHvr9VqrcZ/vCKdugjeVnst
         d4mCC6+42wFeRG36kliiAI0CuAbjyeeHmRUouK1kMzpQT9TE16bYscPuqALOMkaaMVXA
         WijJxOFgkI4+x4X5eFckUCRpewrB0bNRvU/vjZfvAOcOyaV8jzwU0wS/yOKgQDBLu/E+
         W8PGsuk/SImSdpoY48iy4YxJdG2p4u6aLZahUFTfqVvzjrAJ/v6jDRPeX6CMoCYrA7Mh
         lQfw==
X-Forwarded-Encrypted: i=1; AJvYcCXdLFy6GdzLzKQJIGG/esWZfkVewIM7JI3hbGODEWg17lzAltxifnvIPK7PHCo6EsOflv69kIk+unWmaY5pLOigDvpddpb0bErxbkLoXNUWRShwSIl+7mbOVTBNzZdNbczz95ti7sc/cMKCytpEwPzwg/wg6vEESB0=
X-Gm-Message-State: AOJu0YyLoLGc519dP1OgT0T8V15L/wZjaJU1Xy9urhCpjuaFvX6RTojp
	WWTRUZIaWFhpZ+aHlV2kkNrFozXcESethfz0uqwZIw05ybxFvMUh
X-Google-Smtp-Source: AGHT+IGiiihAOY94cy5pdg9g6VeEBNcWJUXDN/if/WPRNFY3fBjCmkXo+yKhC/+ULvBmwurJ3MA7UQ==
X-Received: by 2002:a17:902:ecc7:b0:1ee:fc5e:5cfb with SMTP id d9443c01a7336-1ef43d185f5mr269754115ad.19.1715944724198;
        Fri, 17 May 2024 04:18:44 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0bf30cbasm154107065ad.126.2024.05.17.04.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 04:18:43 -0700 (PDT)
Date: Fri, 17 May 2024 20:18:42 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lei Chuanhua <lchuanhua@maxlinear.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add error messages in .probe()s
 error paths
Message-ID: <20240517111842.GR202520@rocinante>
References: <20240227141256.413055-2-ukleinek@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240227141256.413055-2-ukleinek@debian.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_041845_112305_31CE666B 
X-CRM114-Status: UNSURE (   7.83  )
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

> Drivers that silently fail to probe provide a bad user experience and
> make it unnecessarily hard to debug such a failure. Fix it by using
> dev_err_probe() instead of a plain return.

Applied to controller/rockchip, thank you!

[1/1] PCI: dw-rockchip: Add error messages in .probe()s error paths
      https://git.kernel.org/pci/pci/c/8ab425aa02ac

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
