Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FFC4D637C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 20:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zC7NxokQybcvw+dP/VF/BR7bjE8E3ZqmKBNr72boXI=; b=i+lmce0ZsV3/p6
	WQoIj//SPGI0X5h8TALu7374P2Uz++D43cG9XsVoelLmI1EhR6q2fVtADWvT6gRPrzRlUHvqS7FGL
	w7zFUBT+vgoY/U46xHX61P9a4jDVsOqa79OCmshu2HRrWonysy1mQ2wINed9jK71+lZOb/g0dEd3a
	lOmbnI2eskA4S4wUgoahyPte77Z5C+SFHlDtZIXqLDLBJwlnHMmJxuL0W8zxLV7NjtEUc3STFBQed
	pCE6uh6YwTKC6D1sPul30Fx55UQHeU6Skt4un3cICtTgXq9eB3QTeChHXjQmC7Vzjmcaz61LbbiOH
	z9OYeFmhFz5Xw9ntV/8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBKSB-000000080zR-1C9b;
	Wed, 13 Nov 2024 20:59:07 +0000
Received: from mail-pf1-f182.google.com ([209.85.210.182])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBKS8-000000080z6-2aI5
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 20:59:06 +0000
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71e5a62031aso5869790b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2024 12:59:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731531543; x=1732136343;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9J4zvU9f0X+PlDgNJ1sENPy01zMEXJgST3zN9cLzi1E=;
        b=Y717rsqXQUlICwj7dXw8SIKVclN47L9rV3M/7BcE0WDoFPKPu5yPXETxPJBpDVIfEN
         3pYjZbLhlUjWK5MLByIYiv5m0BtGBwngy1vAkXQcGrWKO+ZEXxnmBYqlbVXUK5ZKygP1
         /ht88bZqEFK8LZSFXF7DjXuRDW26Kh1gvAcL5h2yg0OouZUmsRz99W51GFjIJrwjBK8m
         Kyw6CW0vGCMVSlquacMoCEg+mb0/eB9JPnkO0WNp2WufKEe6Bpo9rALagwcxlJTErUAM
         BMu1EzTPnk9pTqNsNrTeiDUzYaT+Zmc8ZMyyoWt14rJvddn1AJddhxC4Vaj5mUikA14F
         FrGA==
X-Forwarded-Encrypted: i=1; AJvYcCVofRGSBqPmsRjrZxiT0dVqO2cavVZw27MwplyGV0yDjhjAHDUrc95YSO3GVL5gkzOFa3uWgE3KEyjMrDtChA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyD4ixyRJnb2wDZKsoqg6lpnXPA+U0PNSzLYYJGUqQGeWqsUO2t
	z28U95txm5O8qPWH6qCFSUzx16ZsSFAqw8SuOjToDWM5qzD+K69rpzr8Al+A
X-Google-Smtp-Source: AGHT+IHK77Wl4FhKcRILI7fsi3rFSgXTC8o7l11oge5mtuc26m0bP+byiMu9fj4txKIvj+uVPHcy6Q==
X-Received: by 2002:a05:6a00:1150:b0:71e:cc7:c507 with SMTP id d2e1a72fcca58-7241338bda9mr30364270b3a.23.1731531542802;
        Wed, 13 Nov 2024 12:59:02 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724078a7ec7sm13607982b3a.55.2024.11.13.12.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 12:59:02 -0800 (PST)
Date: Thu, 14 Nov 2024 05:59:00 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
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
Message-ID: <20241113205900.GA1184086@rocinante>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
 <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>
 <20241113175222.eh76hksyj6sptwvo@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241113175222.eh76hksyj6sptwvo@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_125904_685031_40937B9F 
X-CRM114-Status: GOOD (  14.39  )
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

> > >> These patches were tested using a Pine Rockpro64 board used as an
> > >> endpoint with the test endpoint function driver and a prototype nvme
> > >> endpoint function driver.
> > > 
> > > Ping ? If there are no issues, can we get this queued up ?
> > 
> > Mani,
> > 
> > Ping AGAIN !!!!
> > 
> > I do not see anything queued in pci/next. What is the blocker ?
> > These patches have been sitting on the list for nearly a month now, PLEASE DO
> > SOMETHING. Comment or apply, but please reply something.
> > 
> 
> Damien,
> 
> Sorry for the late reply. Things got a bit hectic due to company onsite meeting.
> I'm going through my queue now.

Thank you, Mani!  I took this over and pulled this series.

You and Bjorn can have a look over the changes, if you have a moment.  That
said, at least to me, the changes looked good.

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
