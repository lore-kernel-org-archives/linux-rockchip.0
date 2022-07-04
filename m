Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9195FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 13:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqqC+8emQyiLEhtx1OBtX1PKylWiHnVBsh5qpEMDRN0=; b=crpsyrCOtaIkDU
	AbJnzNMLKMXGnTa9hb2kbYBdqR3eh12QRF7CPxgaXuJgIh+1LP0cgDnHR1c3Kr0Ntfv/BxZ7axHTu
	aa6O2BVqIuYyyrraYW3f9tjIpAdAA3Hwm7tgeLnS6P08GmEl+xc5PnDoAWF8ki+x0ODrFuFdZFNsH
	vDHimyiEsRyd4xqO89RAPRL76c2sHfeVYJ/JM/6Dxx+wBNIs0v1maFA325W+boStvyB24FsviF03a
	tj68jSwrU96PoctX3hFoSAzpGxGBWPb0f6u5EP9RheGKpj1VyyEk8j8vruUIT4nvd6pBK1rHyYJnX
	Y7DmaKLkuW3UmyUqQGMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8M9V-009BR7-11; Mon, 04 Jul 2022 13:30:13 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8M8E-009Aoy-MV
	for linux-rockchip@lists.infradead.org; Mon, 04 Jul 2022 13:28:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 223A2B80EEC;
	Mon,  4 Jul 2022 13:28:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 539A5C3411E;
	Mon,  4 Jul 2022 13:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1656941331;
	bh=XIwtnQ6NKPC0BfotMk1G0wnhG2C7UeF+3OA9DWRZ//g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tcT4komz/hxh0ygo8sCYDhSPVVT+eRWQ/66Fml13ZZRD+jR8ATYL53Xe9E4Y5tpY1
	 uUqmREr/LbnFrqaEb2ZHAuQin+nuCUur3GirmiUpaYuyYXzIoHO/TBQFKaFYOY+NfL
	 uVhllpZSmwdH2pvxKJaGdA1x4VUjdro8CUiZvUZ8=
Date: Mon, 4 Jul 2022 15:27:01 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhang Zekun <zhangzekun11@huawei.com>
Cc: Larry.Finger@lwfinger.net, phil@philpotter.co.uk, paskripkin@gmail.com,
	martin@kaiser.cx, straube.linux@gmail.com,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	xuqiang36@huawei.com
Subject: Re: [PATCH -next] staging: r8188eu: use 'is_zero_ether_addr' to
 identify an empty address
Message-ID: <YsLqpSGHoehauWjs@kroah.com>
References: <20220704123140.100128-1-zhangzekun11@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220704123140.100128-1-zhangzekun11@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_062854_952270_6DD0156A 
X-CRM114-Status: UNSURE (   8.98  )
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

On Mon, Jul 04, 2022 at 12:31:40PM +0000, Zhang Zekun wrote:
> Use 'is_zero_ether_addr' to identify an empty ethernet address, intead
> of using 'memcpy' directly.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>

I am now just going to ignore all patch submissions with this line in it
based on a total lack of responses by the developers using it.  See
https://lore.kernel.org/r/Yr7DQJTPrSWTOa0c@kroah.com for why.

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
