Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F027CC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 02:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IBkJ142V2+sJ7eDNCgWb6JNm2//GVnaBWHNoyoIhk8E=; b=AneEPr5ZDqcNWmGfvJzIvBoXOA
	yJxk08s4HS5PBxXbxZ2W32OOPaldxNi+YgRXwO3gep3rkfEEXj1XEa3l/CEsbPpM0DDBmFfg4waa6
	ClPv3JkYJB1cCkHNVHFFrLX0Np+T5IwnHOmMJdRKczKN9tFHWudK/MWEl5iIZeZIOPr4zsv5VP9t+
	I2gYOus1Mp/t/Jd63q6ZjiMwvTPljIHM08ln5gpRQBtEmZv+QWAjolYFdGs3AVjNk/cSKB1svK93n
	WoFuMCZ4i5wyhcYpuS2Qn1M8L9vgFzPN4kNlGrJR7UEN1xz+C8Xmxya5jj/Bs1xo0abPHwJqEvWtt
	McK0bMKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdhTl-000000027Te-3WQ2;
	Tue, 13 Aug 2024 02:41:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdhTh-000000027T0-3f5k
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Aug 2024 02:41:43 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723516896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T4KCS3wY9nQhPAlvllmkBNCEOJZz3hSan8Vu+KsM1jU=;
	b=J3EOlSZmtOtkFBNzMFf1dIClhqoPX841FvPMks8N8Mj0GyM5+KigI30XA/mNys+YH+Drrr
	rBxCsKpLpDu9Q25eH0f+G3asGjvv1huwg49b8XwAPtvJ3NSlcjvN1YH9moElTmAu4PKHdO
	EISl9b7qa+PCpb1lNHoQ/h9dJRFQnweIHA2ddXTQicvJbeZcJ+/DG+h9/ImReWt13PPghO
	A9m6P1thmDTOZWLt2tkoMBgFTbK561oKX2TnQIPYw3rQV9tG4C/JGFG2BOJUm+PLW0vcjO
	Woz8/tz1nyxGUJVB7YU7fg9rCLD3a00csMac9N7A52wmInL3RZ1lS7s5rxQDew==
Date: Tue, 13 Aug 2024 04:41:36 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: Re: DeviceTree for NanoPC-T6 LTS
In-Reply-To: <d99fcb81-d864-4336-afe0-046c2136a4d7@linaro.org>
References: <d99fcb81-d864-4336-afe0-046c2136a4d7@linaro.org>
Message-ID: <2a7e3b2f61822dc8426b7aa7e5108c04@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_194142_462268_CE244634 
X-CRM114-Status: GOOD (  14.23  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Marcin,

On 2024-08-12 17:36, Marcin Juszkiewicz wrote:
> I bought FriendlyELEC NanoPC-T6 LTS recently for some development. Got
> Fedora 'rawhide' running there with Linux 6.11-rc2 but got hit by some
> issues.
> 
> SBC works with recent UEFI build (from edk2-rk3588 project) both in
> ACPI and DeviceTree mode. The problem is that there are components
> (like SD/eMMC and/or USB ehci/xhci) working in one or another.
> 
> I have spent some time trying to get DT mode working properly to find
> out which values I need to change for ACPI mode to work. And got to
> the point where I have a question:
> 
> Can we make rk3588-nanopc-t6-lts.dts file?

It's certainly doable, but it requires someone who's skilled enough
and willing to do that, while they also happen to own a NanoPC-T6 LTS
to develop and test on.

> Differences between T6 (2301) and T6 LTS (2310) may suggest separate
> DT files. There is a USB hub on 2310 one to provide USB2 for m.2 type
> E, two ports on internal header and one of external ports. Hub is
> powered by vcc_3v3_s3 line. There are no mini-pcie and microsim slots
> on 2310 as well. SPI flash is present by default.
> 
> Please keep me in Cc: as I am not on linux-rockchip ML.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
