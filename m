Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FBA8C7EE29
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 17:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sf34O13bBzU2UngJvaj6m/4WBcz2MmFXKN7yZGMc1zk=; b=EdFxj/rXo9J731
	uqzW2rM6lGQ9Ago5LzQEybOlSYi3JviPGQaItJqRjAaHh4TVMeEIrih1/PcV1rgUIHWAzk7kIMkzF
	GFP5ab8TYuLMpoPsXQJhx6LNn8nXvv1YJtdt+OJvFFjffn0QOrS/uZkgU11tNQPTEu/Jf0bTLjOhC
	FY1Q0j32bot+bLWnC8JBt9mRgQhWxKf+y3H8SGGJRccsvZPzPI9OB/kY928iSzo7pgFAVkGmp6qUo
	L3hu3eP8w0/dnlRdtumF9z09YOmbhWBQxm499VBpqZdzLRZaj4cmkIuBaaUM1qoCeEmQD92a3tWLL
	AcKJjTcBeWHMhMarjDnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q82jK-00Ghhk-1Q;
	Sat, 10 Jun 2023 17:50:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q82jG-00Ghgo-2y;
	Sat, 10 Jun 2023 17:50:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4A1A560C99;
	Sat, 10 Jun 2023 17:50:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D12C0C433EF;
	Sat, 10 Jun 2023 17:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686419421;
	bh=FSPOFeVT3IRw3Feg5vYApY6ilOghMdiZedPc7qlgIEU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ilWdjSB7+9+/wZ27/SrjWL09QWUyFjeAnaPCyp3c9593bPlv7cMA97wzvOnduTzbJ
	 UCQMgWjkAosmYPrUOEEhkZftuNadgPIaZxuYWErYaZ1up8SnKKgj1Wqz6AZcLASMzZ
	 gtDpzb+D5jRuZCUJ7P7PBFOmg46naJ0jwhC/i6rqE5dKHC/5NZRUmnYFTd41gY+RqZ
	 /qxLkvMYTYXwF4iE4J4YdwW8Nm/EbBPMy3kxLr0F6PUlsPa6F4lnYKtoQY/+5m02kA
	 9IGP52umpLYx7QC19ZApYst7uVhHKDXb/vlpEeEEY2MbLtcUPJBLLQD3gamqwUj67m
	 6wgBkxE9WYUFQ==
Date: Sat, 10 Jun 2023 19:06:55 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shreeya Patel <shreeya.patel@collabora.com>, lars@metafoo.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 heiko@sntech.de, sebastian.reichel@collabora.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
Subject: Re: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition
 failed warning
Message-ID: <20230610190655.5f3427a3@jic23-huawei>
In-Reply-To: <c5243179-9baf-59ce-b979-c596dcf6692b@linaro.org>
References: <20230610143601.173307-1-shreeya.patel@collabora.com>
	<c5243179-9baf-59ce-b979-c596dcf6692b@linaro.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_105023_003410_DCBDD918 
X-CRM114-Status: GOOD (  14.16  )
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

On Sat, 10 Jun 2023 18:30:57 +0200
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 10/06/2023 16:36, Shreeya Patel wrote:
> > rk3588-saradc isn't compatible with the rk3399-saradc variant,
> > hence, fix the following dtbs_check warning for 'oneOf' condition
> > failure.
> >   
> 
> Are you sure it isn't compatible? According to your driver it is and
> this change is not enough.

I'm not following.  the rk3588 has separate handling from the rk3399
Separate devices specific structure for instance
rk3588_saradc_data vs rk3399_saradc_data as provided as the match data for
the different compatibles..

Looks to be incompatible to me.

> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
