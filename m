Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C92FEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qN0tLU+R9b8U8qTfme9ciS3xKjXwqvtbIYgQwFpJVtc=; b=yCSAXnIcFwwLeI
	PKRybgY7O0F57o/Rao1FsFnjIrxsIlCSz5FHnOX12H6mRDGzPfe9OjTERGGYtdYPO0kouRSL/no1l
	j2HNtd8U9B/KQXZb1MGSwVZn4KyR7tflY9vsbhq5y8IyZyj7CmuHiZrth7RsyKutp9qUrYsR8fvkW
	6mdb4NIqHHgpHhidKLptTIZl2wFfJ7J2QjsI5rPPmzJNTOutD25jlSc1P0rwpPqiQqe/ff8+/AVBR
	pDtWdxJlXLaCI/ssQzuo+FgE+HJyeheM3cW+x2vULqo6or2JbpmTYfKnmk5PiTAgzDstKe53PPkZ/
	fpNKePalXML5+HD0WRWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGj1l-00Dq58-2z;
	Tue, 04 Jul 2023 16:37:21 +0000
Received: from mail-pl1-f180.google.com ([209.85.214.180])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGj1j-00Dq4D-2C;
	Tue, 04 Jul 2023 16:37:20 +0000
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1b89cb535afso9914295ad.2;
        Tue, 04 Jul 2023 09:37:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688488637; x=1691080637;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qq9caxBhUaIDTOUts0hMPoGeTAHn1nr/fwkbfDRFOV4=;
        b=ApLIOv/vWv8HB5Tda8bcfFhy2FWb/0veAeZzq5JhIGFhwP3xrR9RQkFSrscZQrjhnV
         9jF8qBpIZPGxvbuogLro4+VJaPV6Vdb40/6Yl6+gOq1lcRedlczzzhGqOAA37okRziYB
         bx0QuX1CsXyizXLZjZEc7ethovhvm5EmKSBTV11j2k0EVgyzBA7ZgjZGGSQ8U2NFM08E
         IcvZGKTjx+ZyWlOmBJWwfutFXBJLWV4h/2KKwZ0GBJxPiGIYI2hQxKfZdLztKOG029fs
         63XiCetvEvrUCmaj8hDFjIC1JCGTtQ7Ywoye7w6QkURDPoyIV8nmLHqw3tDwhKqKJB6Y
         vFzg==
X-Gm-Message-State: ABy/qLZtLKTU09ZEpWBOICaugV/FbO+zSQa8UCTUAIp636ijFFeBYgnc
	eTeEz+99SZme+TIQAEjAOyw=
X-Google-Smtp-Source: APBJJlFLrXdz6T8wRfchr9R6PTEOz95tWasBcijz9afT2zIq9026AzCHmKf2iLbvuD5b+Zi1eMkf+g==
X-Received: by 2002:a17:902:8682:b0:1b8:95fc:d12 with SMTP id g2-20020a170902868200b001b895fc0d12mr4921692plo.54.1688488637557;
        Tue, 04 Jul 2023 09:37:17 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id j6-20020a170902c3c600b001b8918da8d1sm4605652plj.80.2023.07.04.09.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 09:37:15 -0700 (PDT)
Date: Wed, 5 Jul 2023 01:37:13 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: alberto.dassatti@heig-vd.ch, dlemoal@kernel.org,
	Dan Carpenter <dan.carpenter@linaro.org>, stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI
 address
Message-ID: <20230704163713.GB435329@rocinante>
References: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230703085845.2052008-1-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_093719_723432_FB821B3B 
X-CRM114-Status: UNSURE (   9.27  )
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

> A 32-bit mask was used on the 64-bit PCI address used for mapping MSIs.
> This would result in the upper 32 bits being unintentionally zeroed and
> MSIs getting mapped to incorrect PCI addresses if the address had any
> of the upper bits set.
> 
> Replace 32-bit mask by appropriate 64-bit mask.

Applied to controller/rockchip, thank you!

[1/1] PCI: rockchip: Use 64-bit mask on MSI 64-bit PCI address
      https://git.kernel.org/pci/pci/c/251c859f4b6f

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
