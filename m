Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 161C0C3DA47
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 10:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+bYnzr94yI2KQSRErAg10R20K39kv0wrvAX5J2Tn3A=; b=PAH4hQLldOX6+x
	cKal/HPhAX2Rd7Hv4hfOotwby6TGJ/5ywo8KH/a79p9Pn75c1uY3ktrHR9i5QAtwFN8WB/2i5LQIq
	f00Ap8hfyFH4KIbZR23fhaSWeVpA9sDFe42gO/GucZbzUhXUxuBgSnGu4RI4fkDcWYjQ3TJLJGxIU
	eylV/6fiPIyIkwH4zmv8gNE4NizFfsTTmxTVdzTPMsNLaJrhxe6O9iiMUiQ7yn8FQ8O40zawrxU7M
	DDhnlApAWsB7ZYq4VCh0E6p0we5tf9fn9duhiQ1j2OBeG5ITDBpR60oG/+j/aPSpddiQmQK0k6SiY
	skqkieElyWaNqrm4yfIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqww-0000000DVun-0Axx;
	Thu, 11 Jul 2024 10:22:54 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqws-0000000DVsC-49KW
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 10:22:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4AA56CE183D;
	Thu, 11 Jul 2024 10:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 202FEC116B1;
	Thu, 11 Jul 2024 10:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720693368;
	bh=qheh9FPmbFwSDDu9nVDesVxIUWzyC3M+rpxEiBYjPGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gioyeWjQFLPyqN4GbG22ff3pm4ZuooLdw1DcXUpnDHwUllIjfnAdaT4r4U82OCKdC
	 ebZB7uTiZ5Q+BX8QjmL4Y01GCITZlV+Scf+aPHsLD7b5EZyJSoTxC2RnN7dNSmVWh/
	 fAdapm5lutGphKRWKErZceSg04RH31/g32KmIrf6pFnrGJMRkd+XSfXgpfAd+SYHma
	 t73k/5XCMvYU7i4jcXWbwXoe/wpUSh+iZCafQ8mS3gOYyRpqle7468xtgeRvEYz68M
	 DOwH661EX+dAhEIXLLcx7FNhZjUjvyL3EdZOsNoTBBtPRNpX7Qf/YaLEsOA48PAQty
	 NqwgBOBqIbPEA==
Date: Thu, 11 Jul 2024 12:22:45 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 42/60] i2c: rk3x: reword according to newest
 specification
Message-ID: <yzje4usiemngydl2tajqd3wmh3zqyxu4w3roolz3tdvevrsydt@yalsecywueob>
References: <20240706112116.24543-1-wsa+renesas@sang-engineering.com>
 <20240706112116.24543-43-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240706112116.24543-43-wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_032251_234688_4AAAE398 
X-CRM114-Status: UNSURE (   8.33  )
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

Hi Wolfram,

On Sat, Jul 06, 2024 at 01:20:42PM GMT, Wolfram Sang wrote:
> Change the wording of this driver wrt. the newest I2C v7 and SMBus 3.2
> specifications and replace "master/slave" with more appropriate terms.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
