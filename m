Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33AD8C61DFD
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 09:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TE/KEBgPMtWQuuUdM56C9M8ZPyEJgfpnVWakxXuFsqs=; b=XgtYtkIck9KUlE
	ewanx2IboHv4485qxLqvsEIjDlT7zbRj8jWBTfUBVMaXVOHdbeJXvrkAncQ8TZQGteZGdYw56Btyj
	4YWtVDaAQLeeIH+l7yXMe4WPRl5Fo/+xEmXr+nDhaA/jyHYageslDPEddMFc0jXhzk6X9fNngOBAB
	FyG5vvSOHLJcpvqNNNg7mqJKKJ1ARCLHwk2gASrBPmbFNQ0L05SnlRq/emFaYL0hM+04PaQsUZsVo
	ES4KXDEKSob4wMCRqds9oVGS8tcs2qPPd8hy+J+ObZOjuaDK2VbcXg9sSW55c6PAtKfrAyFB9T+4F
	uvziB0ykU5zcrY0iaNXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gz6-0000000EBjq-08dz;
	Wed, 02 Sep 2026 09:10:20 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gz3-0000000EBh6-3kgQ
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 09:10:19 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C37914E4148F;
	Wed,  2 Sep 2026 09:10:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 935226053C;
	Wed,  2 Sep 2026 09:10:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E1B3A11C792D5;
	Wed,  2 Sep 2026 11:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788340211; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 in-reply-to:references; bh=dWQm08I1k5LyUTw+wBhW0HthtUeHce+mEdC10fdxN/A=;
	b=1SirV6k9/fAEqVYJRgYQiMtRJcFLFJPD9Qa4SPbnxEoaWVGcRuMj27XmFPWJx+kj88yr6f
	KM3VAlxhYw00T6QKynkYib37xl0DjDmgT8GWTwD1It91umoj0nBGz1iQ4/gCPi+AM5MZRs
	1/Pnl1HsFVZSKN19K8BbCJyFMAr4m40pnJvI8stNwbccFQopVO2XbpYfVDZzsyqGzxCUfQ
	RnQvv2CV5zryqYFdoJYXGLulq7bmwVm6tdMyl9niiFkFa5vqXADjm6hemoiKtSK9iCEp5u
	Gt6KmJVE68xAjOKQrb+H6RTkhc2xxvicacXTlbPhyIpbN42rWTvyHkQNjK8S2w==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Alexey Charkov <alchark@flipper.net>
Cc: Srinivas Kandagatla <srini@kernel.org>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  Heiko Stuebner <heiko@sntech.de>,  Michael Walle
 <michael@walle.cc>,  Finley Xiao <finley.xiao@rock-chips.com>,  Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  stable@vger.kernel.org
Subject: Re: [PATCH 1/4] nvmem: rockchip-otp: Serialize reads
In-Reply-To: <20260901-rk3576-otp-cpuid-mac-v1-1-ea9135270fc2@flipper.net>
	(Alexey Charkov's message of "Tue, 01 Sep 2026 19:33:11 +0400")
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
	<20260901-rk3576-otp-cpuid-mac-v1-1-ea9135270fc2@flipper.net>
User-Agent: mu4e 1.12.12; emacs 30.2
Date: Wed, 02 Sep 2026 11:10:06 +0200
Message-ID: <87ecfc81e9.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_021018_082978_D2D49554 
X-CRM114-Status: GOOD (  11.96  )
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

On 01/09/2026 at 19:33:11 +04, Alexey Charkov <alchark@flipper.net> wrote:

> The OTP controller is driven through a single set of registers holding a
> state machine which has to be stepped through for every word read, yet
> nothing keeps two readers out of each other's way. Concurrent reads
> interleave, and the outcome is either a reader bailing out:
>
>   rockchip-otp 2a580000.otp: timeout during read setup
>
> or, worse, one of them silently taking delivery of the other's data.
>
> Reading two cells in parallel from userspace on RK3576 reproduces both
> within 150 iterations - 53 read errors and 9 corrupted results, the latter
> either losing their first word or, in one case, ending in the two bytes
> which belong to the other reader's cell - whereas the same reads issued
> sequentially never fail. Concurrency is not hypothetical here, as six
> thermal sensors source their trim values from the OTP and reach the driver
> straight from asynchronous driver probing.
>
> Guard the read path with a mutex. Reads are the only way into the hardware,
> as the driver registers no write callback, and they always run in process
> context, so a plain mutex spanning the whole clock-enable, read,
> clock-disable sequence is enough.
>
> Fixes: 755864feb729 ("nvmem: add Rockchip OTP driver")
> Cc: stable@vger.kernel.org
> Signed-off-by: Alexey Charkov <alchark@flipper.net>

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
