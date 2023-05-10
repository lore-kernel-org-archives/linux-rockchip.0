Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33C97C77B7D
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 May 2023 07:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyCWKn8IHNP03r4ktO9Cm5fKkKSMuduXeeAPfHSOTuM=; b=dfBuGZU+5zDT02
	yvt9ClW1dJap5egkdR3+4duhzi7O0Y8QUKQUc+zzhPnmPxl5f74ykL9ztYvNPm0yUQ8zR6Y2RYVOh
	hoWASiNg8/pTRR1efza73b4oSIy/g8t4Xg7+lHwPkrDfBtJta8gfuVe2FaxajfZOEdz6644YufrLe
	POPcSW28/fHBbgtnroONawy/rc7uPk/lZG4j8Uuu1+tNEHvVsnDcEP4snn4cU4WGPj0b3VKE0e0Oa
	E72732AsKzG9Ac3d3hGavjKpYVogCNOJPYwDeWDcRPi01D+mUBpkV3eFK6gBjtu8QaXQyXEccEYpK
	Lxm8NsxAHQRiRrClV5zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwehX-005S1w-1F;
	Wed, 10 May 2023 07:57:31 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwehT-005S07-2S;
	Wed, 10 May 2023 07:57:29 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailnew.west.internal (Postfix) with ESMTP id 833672B0681C;
	Wed, 10 May 2023 03:57:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 10 May 2023 03:57:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1683705438; x=1683712638; bh=lu
	YuF/JxvULVmeDkbLyw1Zb3ZU/LU2UPbqzZwwIFgXw=; b=tJa8a0KbkrvxLGCR7o
	RenGyf/IB6qR1pixLlCkrrhzyY4nd6Hgh0GBNTsFmBpS0yMjL74a8jbaxz46Idci
	SbSk8gDCdjUF9MktAUpyyVurrve2RX/OUlZjer7wv7lNpvic911D/4E4OEUyg5Yl
	CsNBemqmjUcJsRVRfTneLAqz0mVFo75fWmzQg8OUbugSCgDvE8FdJDVbm4Dbqmoj
	1YpZKNl8oNskPtS6BxXH1Lq3mUjh400ZR/q5wuj6GCk5qtV6r3N/A94Sxu0Mv5Nc
	saY5yq+lnqIzpNAnBPijBvK8V0ZnoKZomnU0ISU4+RW7lk093hW9aX5chyoEv5kR
	PMtQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1683705438; x=1683712638; bh=luYuF/JxvULVm
	eDkbLyw1Zb3ZU/LU2UPbqzZwwIFgXw=; b=IojDGxNtfD0DJ2+CDtWHQSSGfufa3
	mL3zg7qEiV1DwRNj71zq5VhPgXz26dFRGtLgymYCP7w5nSNkImbCcIwUctOOm7/B
	ILWPc13tLoAl3sR8mTTKHxmONTLbjgfmpSWPs1lOuK8U9zXaZi11/wdQnTnqsNa0
	fk9xG4zZO8A/FbAQfy7FJOgON5rUl9is5pA99i6YUy6B0NoO3wsQm+3c64IcgMpn
	lFCY54lj9He2nNNY8D5OKNO+zkZcWTMElhVf+R6m4KGjeXdzVCUDRhD+BDi0wTeA
	P/w+qzj0IDnU03FOBPAkIyURywhEcUJomw7TS5cJzS2/BCp/dOUZTwQ9w==
X-ME-Sender: <xms:XU5bZMf7Es_B0mwWdMR6GPrBKUfqIBy8Fv2iQcwsFpJEzP-LUx33qg>
    <xme:XU5bZOMZtC6bj_qHm8gMWnmPqo6h9LwJqGP9JE4E7mQwNeBHLJ3ZhwG-0B2G4kmbj
    5GCo-AXCaGUyw>
X-ME-Received: <xmr:XU5bZNhPlWCTwCYTsx7F-DVagjVKZm_GDne2UCLTFm9eOeG9JFudqwkmx0c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfeeggedgtdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucggtffrrghtthgvrhhnpeehgedvvedvleejuefgtdduudfhkeeltdeihfevjeekje
    euhfdtueefhffgheekteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:XU5bZB97UnXv30emiW9sr70rvQi2LVWwvNxvEf-JAoLlrxnFx0dAJg>
    <xmx:XU5bZIsKlK22zhz6WYqNwgO7ZnD9qhkdh6gJmsYnXuZzK5TdRaKDqA>
    <xmx:XU5bZIH7i6ymzx6TM4i5eFMSOp4qcaSjBHhPECWvkwh2qGSziJl6Cg>
    <xmx:Xk5bZB6scUFm3rT8fS8eGVX945sSW2Q7ZKiIHhmaToKgTntgMO0ltQpY_qg>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 10 May 2023 03:57:16 -0400 (EDT)
Date: Wed, 10 May 2023 09:57:14 +0200
From: Greg KH <greg@kroah.com>
To: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
Cc: linux-pci@vger.kernel.org, robh@kernel.org, heiko@sntech.de,
	kw@linux.com, shawn.lin@rock-chips.com,
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
	linux-rockchip@lists.infradead.org, broonie@kernel.org,
	bhelgaas@google.com, linux-kernel-mentees@lists.linuxfoundation.org,
	lpieralisi@kernel.org, linux-arm-kernel@lists.infradead.org,
	Dan Johansen <strit@manjaro.org>
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
Message-ID: <2023051014-foe-multiply-ffff@gregkh>
References: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_005727_980883_94E26D8F 
X-CRM114-Status: GOOD (  10.70  )
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

On Tue, May 09, 2023 at 05:39:12PM +0200, Vincenzo Palazzo wrote:
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -38,6 +38,10 @@
>  #include "../pci.h"
>  #include "pcie-rockchip.h"
>  
> +/* bus_scan_delay - module parameter to override the
> + * device tree value, which is 0 by default. */
> +static int bus_scan_delay = -1;

Please do not add new module parameters, this is not the 1990's anymore.
We have per-device settings everywhere, this makes that impossible.
Just use a DT value, if it is wrong, then fix the DT value!  No need to
have the kernel override it, that's not what DT files are for.

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
