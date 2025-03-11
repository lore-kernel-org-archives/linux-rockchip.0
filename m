Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64625C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 17:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmr9WE/HO033wEXUnxhkQH2IVxenLkFMJmO2u+h3mCs=; b=2ouX1/uz6s4DZ4
	dMaQX0ATjogiKTUSk+SMlZSET4fbvrRdIRfdFbEwNRhB4/iHyHVorJC4uyn8o8jHEf68FM1AySZ1O
	tpRN4WOXxBjEj9VrS5vLSwD5tWaJsI9BSzpRh1Ov3qjCSm4s0xuw+dFTb4YkwQ9yoDkgu/IN0HTeA
	J7F5m4RRV+cPEfHBoiMH1jkKnDYsz+5LX6Cr1r+2jD46bT6hOwB0ibEDMD2Xwwx+8VpM0whfkIOko
	jWRA54JKQoUxk1qD66Ueo9N2OD3v0nnhgBeIUZKrzMrdCdd7n8nGTU68O0aVckKpPnwr5o74PXZt1
	MSrjoiAOyZ9iCVq+Kj5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts3Zk-00000006URc-3YSV;
	Tue, 11 Mar 2025 17:39:32 +0000
Received: from mail-pl1-f177.google.com ([209.85.214.177])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts3ZX-00000006UPQ-39IO;
	Tue, 11 Mar 2025 17:39:20 +0000
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-22401f4d35aso104496415ad.2;
        Tue, 11 Mar 2025 10:39:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741714759; x=1742319559;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJPhCqOA/x8C7+uwqlrf0fJMOjg+toTeNzwmc6kfiEE=;
        b=Di4olpqGmaL8KQynkhFQPPTEkAnsJ2WXwl6saBnUIUFpyUCvdRZ/bMzqhB8luUMnkr
         Sre53zCWaP6JCZuTe0gwiZgbnOJ4fa0rxSCgrKhPNY+18Dm2NHWGqOo5U9hz4CVAoEcS
         fEQCU1SfSyvLRH/z/4UCZ2IKgxcC9+8tJB17pRsXPVy7gTKp3xjHH8FrSI7Q63cOzbG7
         yPt8LQEOmuK172Ca0/nYmST/Y+Zxco3f/MH32TbEdcSxdxXlvsUHLPWFaX7PgoVzMdQv
         tCmJ8fdWzV2gm1HKm9CjczJnVK5uT3w7c7w4ZnEb0NkORAw9GV3sZlm8QijfRnwnhP2r
         EYyg==
X-Forwarded-Encrypted: i=1; AJvYcCULjVhG5R6vVQxt+h1w3UXdxud99En9jCglVc8Rr4WqB+rVxth5Pi+ODzbEdXsBmtQGMLDH+doh4imWdRsLfKls@lists.infradead.org, AJvYcCXnoZumfeXYr+TqTCKdSyflmCO0F0j6q3py7kNHK4SRrzgC7bZk9eL64v5XjXYdP9hN/TKMFvcciT0qPIuK4As=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxVUGNZ4vEC5J1DaWkmF0j1a9WPvUif7FaoXWSQNtuR3GDjGp3
	W2WffprBtwW2+rRzp5BYQ/UaXS96Dk3WTY4oywTyzDP0etpBG8+I
X-Gm-Gg: ASbGncsLO5m8T0c0h0wNEUy0akCnUbIbwxtdV5q3scf/LIp11geAfgJ5ws7ZBj41QFq
	9Y3oBeycVmwcF96gbTkdYNxlmn6OWMcXFKQ7G5g8D7TzJSlbc8vnMxRRkJXPvVhtI9tJW+Ex1t8
	6z/A+WKkzmLSOuKOa8WULnetqyZUOIA3cUDN0kqTtDqyDgdEgnFHK8ZPNbIcanXiKflZpGus7e3
	gIa20JrJ4aD3Bg/w/qDQ383uk2bQdyCHNaCqAFl94j2VJWBUBmnsv6aELmh9jI+Jhp0z6gTdAYA
	cSduCwVDp6N5jFgWbHMjXEmTOcO70cNFQBRl4WswnTME9peuicf1eS1ibvQkpbgV7MA7fLdJuy3
	QNFo=
X-Google-Smtp-Source: AGHT+IHmkmW5YLt+panPYkV7ekm3RJZ9cmgQ2u7tF6hqN6YJIhhpS9OXTrPzB4mw8w1OTZEBxQ6XWg==
X-Received: by 2002:a05:6a00:1395:b0:736:476b:fcd3 with SMTP id d2e1a72fcca58-736eb8a2cfemr6649510b3a.24.1741714758797;
        Tue, 11 Mar 2025 10:39:18 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-736abe02bdasm8989497b3a.31.2025.03.11.10.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 10:39:18 -0700 (PDT)
Date: Wed, 12 Mar 2025 02:39:16 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/2] PCI: dw-rockchip: hide broken ATS cap in EP-mode
Message-ID: <20250311173916.GA2673952@rocinante>
References: <20250310094826.842681-4-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310094826.842681-4-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_103919_812551_E72BAE09 
X-CRM114-Status: GOOD (  10.86  )
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

> Hello there,
> 
> Address Translation Services (ATS) is broken on rk3588 when running the
> PCIe controller in Endpoint Mode.
> 
> This causes IOTLB invalidation timeout errors on the host side when using
> and rk3588 in Endpoint Mode, and you are unable to run pci_endpoint_test.
> 
> Solve this by hiding the ATS capability.
> With this, we do not get any IOTLB invalidation timeouts, and we can run
> pci_endpoint_test successfully.

Applied to controller/dwc, thank you!

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
