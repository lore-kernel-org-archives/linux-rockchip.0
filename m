Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DABCFB43F
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Oct 2024 07:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9bHKG0lDQx9bY4kogak8wmXX4J3HtLWF3JAjfcmJhY=; b=wsj6p+MNpu+oIn
	LJUo6d0BGfvjme7OfEKhh/m7gSm2wKOfXXtZMiAQ14IkQLBvFiQaBPMgz+nWxsXV83oIecnu4/sqm
	FXxfaUJKlDvggxRPqeU68rAumhYu5/ODswdBAIx+qLucC/wd7FCjj5zBzVDU/xALYvvH/fx+tTUem
	AkLbni989t7b6XhT5iSylzjZfwIAzmHnytX/VBD+jcPz1Gr+j8nUsZ3K5jCwfy/PCm2C4lrPyhMRv
	/mHdi6uRc7Knddn0lWk5CIQrh0SFSiVi+A6oW/T7szK2pEHyVi2YQJ1pXpkdnOwW5lVhcirC13df8
	fpCux2bcws/IHMpkGAAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxLtQ-0000000HHsj-0t4O;
	Sun, 06 Oct 2024 07:41:28 +0000
Received: from mout.web.de ([212.227.17.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxLs8-0000000HHmL-09jf;
	Sun, 06 Oct 2024 07:40:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1728200367; x=1728805167; i=markus.elfring@web.de;
	bh=lW2NTtgSXR6HN9BJzUyHvkd+FTWE/RFYjn0L0MqlDJ8=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=hMCOXAZn0Mc2FptfnJ69avOE9ggRZroODv7EErk5yqVZf8QJmhNkqQbcOtM1OOnZ
	 iFVkX33DlOUH6PfBwVFi9ynZSE1DkRmfZ6pTmC/RtXCvEwYSokAK1c86a0g4QN+eN
	 JGk5TTfIxVj4hT1//4v24B8LyGmD2p5u0csDpYloBUNMa9b4Pbb6NFH/E3ecnta2e
	 ZiESI4sTBcPKph0mk1T92Ia62jAf8MgEaUZWyfTSqXtuCoa1cyAjMX+8wK8HqkHft
	 8iVEHGmxUbICPbrWvrmqSwM7E1EeTR1cRC832ty8scRTUWHBUqjBDtmtlejbD8FkE
	 eSMOrHs+v5W6fu/v2A==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.87.95]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1M4bUq-1sxtYf2PVm-002EF8; Sun, 06
 Oct 2024 09:39:27 +0200
Message-ID: <821a7417-4f2a-42ed-9616-88a0c145fa5d@web.de>
Date: Sun, 6 Oct 2024 09:39:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Chen Ni <nichen@iscas.ac.cn>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Damien Le Moal <dlemoal@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Niklas Cassel <cassel@kernel.org>, Rob Herring <robh@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org
References: <20240918074401.2221146-1-nichen@iscas.ac.cn>
Subject: Re: [PATCH] PCI: dw-rockchip: Remove redundant dev_err()
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240918074401.2221146-1-nichen@iscas.ac.cn>
X-Provags-ID: V03:K1:Dn8EbyryMmfD0vIqg7CFb0Wxfi+mHdb2k6EuNRXBVwNOdnB349N
 2g/hgfR+OFAa1LzJFlZjyjT7KhWdQoRnpzGBbOZtxvolIOfALpnj6cKp/GAv0xf0bFPoSdv
 98N5JmSV8KLVv2+FM2buSbvYzBMV3LQw1B8KsqvAZwtSKrDnNUnSeSXL1YzRHci4R8mDcB/
 poHEUR0cQNJucwNhVmdPQ==
UI-OutboundReport: notjunk:1;M01:P0:MqY4sJMuk/s=;+zeb/3QHhcrQ5aN2iJwONFikDQW
 0f/GQBICASExoEQer8hJzfZMEEckAM7eMl/7WzQDnWC2qF2/eb+8GqsnT6Js3FCbcfShzmRJy
 R/P1hMVDHmh9DbOxgpgpOwVGZQRfiK6+H+xNl+N1ZPoL8VyqGIgNFJYHyYSIq6PchiEOQW4tZ
 f/e26lgMHJoY5NexKVW/FNrGDmp1o3CHbHO9vu4vwOQdLBKUfEbEMg3SIThEuh96zU5/ok/mV
 YIsUzF3xSJsA1d3NksiY3E9PwTUz3dsro1kZxrPIes0bk0VofrA7tGfYRmAqVTanjlLHjFmzG
 VSzXPZPG+Lx3nVQgO+yW3hQVkjbcfZUAV8nOxq13PfDB1spp5eJZbDYkZJcMuciosC5pB26XH
 yDUM494ihHpMWhibJwv6yJyLuBkwObsoKNWpL4+uKQt0wGllHPgeKSXRSiWmUG46NyGZ4mTNn
 VptyrZiKEhGE9uH8fkprEh6Nz0EV/OwgmMuqm6j3KRAB5m1zqVYeqICUuKTDKIsoo4DDaEOQl
 dOnhILsv4Dm3p25QGVHxE0z9FFYZy+wifAwIat6I+FFctn3YKVnbc9nt0n7tH7U5qb9GimQi+
 CwyR20NrQWEPT/NAljaJBJUPbJpZjOUPDSdZ41rnKktQiEUvEE5YedbHy9S20+0zanQiCxvcV
 9IvRIhj3lF2TCXJSLFQpgikIYYiBnYwKcsjj6GQkXGek8VADF3j/GWQRHZ9ZwQm0dbUUe4lj4
 flcoMggTdGM7WBaJFgdkt6nanBMi9BhC9KJTn0xFM+IdBGuv7Cm+V1R8EsI0h9V0/6TinsGaE
 BKlDFigzOdRtFnXIw+0i7v8A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_004008_604804_EC59BAFD 
X-CRM114-Status: UNSURE (   6.97  )
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

> There is no need to call the dev_err() function directly to print a
> custom message when handling an error from platform_get_irq_byname()
> function as it is going to display an appropriate error message in case

           call?


> of a failure.


Were any static source code analysis tools involved in the detection
of the presented change possibility?


By the way:
Such a patch can be generated also by the means of the semantic patch
language (Coccinelle software) for example.

Regards,
Markus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
