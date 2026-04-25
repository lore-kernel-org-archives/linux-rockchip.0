Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4065FF885C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 18:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmLLmTklGpQxmBuU6IQGAOU1WG1BdL313k2BpktAOho=; b=sQZod8dvY6mSNh
	g8DW82IRgFUtU8AoKqX1BzRJevZep3W2g5/3vU6RIMIX/dXeQIE2xKh1PcZVVR8JRafCVfNdqYvQ+
	5RvOVWcHR1zn56LbO4EkhosNxF200aCDgdCRwmfO/YilDLQvvxb3x675kH29kcGIUbKGfnp2itTHQ
	OZVQn0jee4Zgkev6Ljhbc8zIcvn96RPFJUW+aqI+DHvdNeuJNhl5bEfzIT81qRLMU9UJJvtmXFZAf
	UWcT/iFIdXph3CQhbzwcVKjsGKZxMaQufSQTk7IYVWmC/UveniHLVbVoqGHAbSKL/Han8rmLpE55g
	hwuSX+LUW6RFR7Op8J9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGhgt-0000000Eimp-2Kmz;
	Sat, 25 Apr 2026 18:25:19 +0000
Received: from mail-106120.protonmail.ch ([79.135.106.120])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGhgh-0000000EiaD-4BMp
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 18:25:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1777141502; x=1777400702;
	bh=krRonHVJrX/AM3Nh6AH5T0UFeYhSLpzdF/4nvnQSNLk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=gGKKwFpLH1MS9csnCsGCaj772ZiXEHpFiJbKD9ikB4AiOZbOApbsKYuM2Lpo6d0Td
	 jsUmMIVZHjJQPTWhxS6NX8BqH0X6X0yACApH+A5N+zVe4tHzwuSTIt12XqPBcVpkSt
	 LSA+ahz0TEpg10rqEF2UhmksLdvvB82d848slt5RivxrkShNAJIPYNGJeqqq+XHJpb
	 1A6qFpDMi/BOfllc/1LmAuyUBbQFGcnz8luwp6frCOMn7Qg/9O1z7v8eCsNdciRWsG
	 9QC+5c8R6BKCPmg54c4PUiVud/iFKFZKaPcxkNnWf4k4wo28CScLdF6L5IqA92R5R7
	 rhZJAJhgsapVg==
Date: Sat, 25 Apr 2026 18:24:59 +0000
To: heiko@sntech.de
From: Clemens Malten <c.malten@proton.me>
Cc: linux-rockchip@lists.infradead.org, Clemens Malten <c.malten@proton.me>
Subject: Re: [PATCH] arm64: dts: rockchip: odroid-m2: Enable DisplayPort Alt Mode over USB-C
Message-ID: <20260425182431.9228-1-c.malten@proton.me>
In-Reply-To: <20260403072408.44926-1-c.malten@proton.me>
References: <20260403072408.44926-1-c.malten@proton.me>
Feedback-ID: 133261535:user:proton
X-Pm-Message-ID: c234cdecb3bf551e038e6e0b2df210f521b79093
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_112508_667200_111FCA21 
X-CRM114-Status: UNSURE (   1.99  )
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

Ping.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
