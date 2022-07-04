Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C37A4C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bi88MqtRim9nVPgD2xReJRpj41bSqchnoA0cJB5Ugnw=; b=MUEv0dLCIypKwk
	Yo/E06g2zulEgigiJ6N5Sa6liK/HeQQPdgkqKlraWx2krORPp8ouzFYfTI4y1DUGSR5w78qZ9M3D2
	YrkUhlhu1ApLD1pD6lzqmR/ygcLeEMQ9WHmanwEkeereImysqZylQrvAVDxTpzz95dxslvw/oNuYi
	9tehBV6dcxJakbeePkWP6Q/hGB2WR5iouEgPJJ3NbH7HfrX68tfbGq3RqVcnegzkOmvTEYNk/aNMn
	GskZghmCRv75EidjV9QGrJSmiKFy8WWNxXKSfNJ7az2hobo4DZhpC55kLUK5INfnPCGJD3Fl42XqC
	ymQ3Jdgp69A4LHOjnxRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8MHr-009EIe-6o; Mon, 04 Jul 2022 13:38:51 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8MHj-009EEH-3R
	for linux-rockchip@lists.infradead.org; Mon, 04 Jul 2022 13:38:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A8B29B80F02;
	Mon,  4 Jul 2022 13:38:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEF81C3411E;
	Mon,  4 Jul 2022 13:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1656941920;
	bh=sX7TxP424twppRN1f/ZzLHQ8nFFTfUPTC9wPXPhX3Hk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ra4jra+raOcTf1THMILW6OB7aZ6DT4eeTMnRU52o1MtnzmNDD3Oea+p95DTX6shvI
	 VMfXlVDD5BSE/zM0EEb51Qtl6ITvqoWDu1gKsgSKMFJz6Kx2i6/WhP0fSmhzTv6ipb
	 uLIA60f3yG4fTZKl9RZ55QU+Jypn/c1BA5XEbbck=
Date: Mon, 4 Jul 2022 15:38:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhang Zekun <zhangzekun11@huawei.com>
Cc: Larry.Finger@lwfinger.net, phil@philpotter.co.uk, paskripkin@gmail.com,
	martin@kaiser.cx, straube.linux@gmail.com,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	xuqiang36@huawei.com
Subject: Re: [PATCH -next] staging: r8188eu: use 'is_zero_ether_addr' to
 identify an empty address
Message-ID: <YsLtXYa4kRYEEaX/@kroah.com>
References: <20220704123140.100128-1-zhangzekun11@huawei.com>
 <YsLqpSGHoehauWjs@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsLqpSGHoehauWjs@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_063843_352838_24FC462B 
X-CRM114-Status: GOOD (  12.38  )
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

On Mon, Jul 04, 2022 at 03:27:01PM +0200, Greg KH wrote:
> On Mon, Jul 04, 2022 at 12:31:40PM +0000, Zhang Zekun wrote:
> > Use 'is_zero_ether_addr' to identify an empty ethernet address, intead
> > of using 'memcpy' directly.
> > 
> > Reported-by: Hulk Robot <hulkci@huawei.com>
> 
> I am now just going to ignore all patch submissions with this line in it
> based on a total lack of responses by the developers using it.  See
> https://lore.kernel.org/r/Yr7DQJTPrSWTOa0c@kroah.com for why.

And now just ignore patches from your domain, see:
	https://lore.kernel.org/r/YsLq5vXtJgLWCqqz@kroah.com
for why (patches sent totally ignoring previous requests.)

Please work with the open source developers in your company to fix this
broken process, as it is causing more problems for me than it is worth.

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
