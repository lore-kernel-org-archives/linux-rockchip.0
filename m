Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 971D7CEF174
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbfX6NuCElsLyNcjI7ahhr23Dcm/dILWLtWA3ZrBNro=; b=IA4Ay83JsPnk6G
	JorEXHk5PDFPXwg0ogYA/cW/oRkoKwzMgV0BBr2b1as8RJBi7ATFRWaMgTWaqXqZv/fW80T8LFkkL
	OfJM5PCRSVwQKOqYOIL1iO2dSpbO/Z01eeVcERHgyj3cw7dFo/D/cb9nB/WZshTwYdw1NATc4dTtR
	emCChurziWXTJmbrDV3F4XNhpStb6eNOWp2qkZxC8UoN+YYPzhEEMQxMZtbfsUha4OhpQXwPUt5PS
	dCa8cQsxiSjHvAzYU/Wv2XSoObU/kEeTt1YaChej+KHEbJmyThnhUd2Z5efI+D47SSdxJRX8UhwA/
	Jyz2nmXK8N6BRCTMnxRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syARG-000000061iw-0fjv;
	Tue, 08 Oct 2024 13:39:46 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syAIv-00000005zqf-3Rkz;
	Tue, 08 Oct 2024 13:31:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7D439A41B4E;
	Tue,  8 Oct 2024 13:31:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 578DEC4CEC7;
	Tue,  8 Oct 2024 13:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1728394268;
	bh=VkLg4Yp5h3hnS3U7tHlCL7BPi28EBnRIH+jX7y/NtO8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XB+6xxLkxXBYLihVlaeUGOIejnMzteJexCwex7LhbfBEA+p+JagD3h+2IKHntLT9+
	 iDp+CYQPIEe67QJDhxSTNBqoKNFSZTPYCWp0t2epWrmTUYVw679oYfkG4PNMGxlnDw
	 f4J+nTLpA1Ic2lPrG1S+SZtRIOK4NftcR/8V7zJU=
Date: Tue, 8 Oct 2024 15:22:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	broonie@kernel.org, heiko@sntech.de, rafael@kernel.org,
	oss@helene.moe, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
Message-ID: <2024100852-esteemed-cosigner-a70e@gregkh>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_063109_950235_90BB56F5 
X-CRM114-Status: GOOD (  13.20  )
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

On Sun, Sep 29, 2024 at 11:21:16AM +0200, Dragan Simic wrote:
> Some drivers can still provide their functionality to a certain extent even
> some of their resource acquisitions eventually fail.  In such cases, emitting
> errors isn't the desired action, but warnings should be emitted instead.
> 
> To solve this, introduce dev_warn_probe() as a new device probe log helper,
> which behaves identically as the already existing dev_err_probe(), while it
> produces warnings instead of errors.  The intended use is with the resources
> that are actually optional for a particular driver.
> 
> While there, copyedit the kerneldoc for dev_err_probe() a bit, to simplify
> its wording a bit, and reuse it as the kerneldoc for dev_warn_probe(), with
> the necessary wording adjustments, of course.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  drivers/base/core.c        | 129 +++++++++++++++++++++++++++++--------
>  include/linux/dev_printk.h |   1 +
>  2 files changed, 102 insertions(+), 28 deletions(-)


Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
