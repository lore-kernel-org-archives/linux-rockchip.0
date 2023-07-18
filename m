Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14F20C0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 08:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YMyLazAFkS2rxeyN+qY94bIfRcRkwIgvN3gUuqbGRsQ=; b=eQUPjyUw/qAcKX
	U1ExLmKJquQG/2Q946uHIUrObHjpPm+SvC7QDtTLMO5m+7cjaCM/vUPAlKJEaeiatir2uqhQrWaT4
	zpuO/4fv8K4XNn9zBCSd09xAwbCSgMqsHFoChhWUXdG2F9o4GXGfkmOsHuHI8XFs50gurEOXYMNYg
	WY9Kwt739Glc8xYZMbq/I552764Ih16rEu5XsN7rx+L/+N4t4QOzPc3pjrPZCD2nwzozizmDnNvG2
	x1KL12q+Ip4o7bh0AfdPfQT56j7uidyZkhOyw3096H52VCjrT/4Y/IbbSQx9OwI8e1o3iFaxBl4QC
	79vCJO+esygq8ClqGPXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2EX-006EMB-1a;
	Wed, 19 Jul 2023 08:08:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM2EV-006EKt-2j;
	Wed, 19 Jul 2023 08:08:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=zfYlVwMS7Et8yaT5OVN/2j8VFtpsP1EgygCJigxCyfU=; b=KZ2l8MT0Nl4om3Um7rIJmG2+vQ
	L5xiP6ZIOfy4BeoSVaSG0wT9shiIHyPIjuD5Vu6LewVddcnTEAY/mSxfEHIeGUprk7DvH9K1AvL4y
	SXv7NrOt5BCSoGqEooqcM5Uxx9uvbBjuuk3lKVjwIKJKSKMC5bdnrVQP8M8BgYXtlIii+O2hNj7Et
	U0CMZEGsNOqjiy+lHdo76Gx5E0ITor6UfllDbMTMyrRUlOqfR3P+JqCXbtTgobViv3J8VvESNgLoD
	p37FOtSJpCVyY8Tc0zrWA+v23OXdzv1UtKZp2DM/3QBc1THFWW4kFqfjWeZXxSS2YR5NtAncx+5tC
	JFNI9Iaw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLodv-00Bor7-1h;
	Tue, 18 Jul 2023 17:37:49 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 10143616A3;
	Tue, 18 Jul 2023 17:37:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC501C433C7;
	Tue, 18 Jul 2023 17:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1689701844;
	bh=J43/S4lutq118/A5V7YO0P4DU+erOplZ6RTbTJcyXXQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R1LzwR5aDD8TXdJqJdZSkB7/GA6wxpVZ6fnubikPocdmnJ5tem7vZpnYowJFNbdIi
	 B1YKxGR2ON9JVPgHbhs6Nft5EBG33UVV1yPBgVCT7qoqW4ude4jxxQovdxRjZeiFYp
	 v+Mtz00ppX7ZIVi3E12AW8rwY5jgUivU7D4xW2Pw=
Date: Tue, 18 Jul 2023 19:37:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Yogesh Hegde <yogi.kernel@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4
 boards
Message-ID: <2023071850-festival-illusion-6399@gregkh>
References: <ZLbATQRjOl09aLAp@zephyrusG14>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZLbATQRjOl09aLAp@zephyrusG14>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_183747_909281_37FCCF5E 
X-CRM114-Status: GOOD (  14.40  )
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

On Tue, Jul 18, 2023 at 10:09:41PM +0530, Yogesh Hegde wrote:
> This patch fixes an issue affecting the Wifi/Bluetooth connectivity on
> ROCK Pi 4 boards. Commit f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth
> on ROCK Pi 4 boards") introduced a problem with the clock configuration.
> Specifically, the clock-names property of the sdio-pwrseq node was not
> updated to 'lpo', causing the driver to wait indefinitely for the wrong clock
> signal 'ext_clock' instead of the expected one 'lpo'. This prevented the proper
> initialization of Wifi/Bluetooth chip on ROCK Pi 4 boards.
> 
> To address this, this patch updates the clock-names property of the
> sdio-pwrseq node to "lpo" to align with the changes made to the bluetooth node.
> 
> This patch has been tested on ROCK Pi 4B.
> 
> Fixes: f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth on ROCK Pi 4 boards")
> Signed-off-by: Yogesh Hegde <yogi.kernel@gmail.com>

Why are you saying this fixes a specific old commit and not also
properly cc: the stable@vger.kernel.org alias?

Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
