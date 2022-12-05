Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BD14C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGYvrBxH0t4nBN932Kz1hFs5maGLaiw0uJMmWf1TE/s=; b=MZHksslTXsp2WR
	JMj6ud0SMjJqCNcogdfj4+DRLm6kG4SNhGFVNzXKoPyqSeNFQbiRB+3KizO4sLeEoTy7CzGMWIkXy
	EA7sqhWNoIl5Y5CrMgtdyXtneGXvygwpNfa3IZhcj1TcAIUya7uPOROgwm4vI27BWpe1N6MUnETU4
	8tnu111g8sRdBdyWbfvvUR4VtdUhlv36spZ9taWlr2u6gLQlwP4ihrQYxsYdiArd2VZ43FIsfBwsv
	/ra1BwVWoSlMI6r1Gr8LOKO0EwnyvuHxCK+BrLaHoxZS9uLT8GAW1erW8j2QePpfx6Ed2tGI9pAtf
	OFEykXJ/FkI40mNje/SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BYR-003Qx7-5d; Mon, 05 Dec 2022 13:30:43 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BYD-003QqC-QF; Mon, 05 Dec 2022 13:30:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 5A8F0CE1283;
	Mon,  5 Dec 2022 13:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A809C433C1;
	Mon,  5 Dec 2022 13:30:20 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="ZHV2azxK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1670247018;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=77miVuUVU22opWZzTtZsOCj5BnnAupU555MsmQ4hl2o=;
	b=ZHV2azxKBleZixdMsY3L6P7O6rjWGg/LZL3gSZLqZGPG5YIwdQKHZWN7dR36amXBb5CEHm
	Vt0EYxfpl8P+3ki5UFRU3RBGw0U7lNkkhW7xbBznehCiIVl/Lh8eTsGiW/u07+ZiLTqUIF
	zv3kThwvJt/l/BZyuHsKPi3OhdKVJ5g=
Received: 	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 5dae6f5e (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 5 Dec 2022 13:30:18 +0000 (UTC)
Date: Mon, 5 Dec 2022 14:30:17 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lin Jinhan <troy.lin@rock-chips.com>,
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/3] hwrng: add Rockchip SoC hwrng driver
Message-ID: <Y43yaS1ybCCG6szm@zx2c4.com>
References: <20221128184718.1963353-1-aurelien@aurel32.net>
 <20221128184718.1963353-3-aurelien@aurel32.net>
 <Y43uiVo41vljLsZM@zx2c4.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y43uiVo41vljLsZM@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_053030_040512_5BCB36B1 
X-CRM114-Status: GOOD (  16.00  )
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

On Mon, Dec 05, 2022 at 02:13:45PM +0100, Jason A. Donenfeld wrote:
> If your intention is "90%", this should be 921 or 922, because the
> quality knob is out of 1024, not 1000.
> 
> Herbert - this seems like a fairly common pitfall I've seen all over the
> place. It might be worth making a mental memo to reject or ask questions
> about numbers that seem "too round", when you look at these sorts of
> patches.

Or alternatively we could introduce a cheesy macro like:

   #define HWRNG_PERCENTAGE(p) ((p) * 1024 / 100)

and then enforce that everyone use that. But that's a bit wacky too, in
the sense of - why is anybody using a non-obvious percentage in the first
place. Like if you see "512" (or better, "1024 / 2"), okay fine, it's a
device that guarantees 50%, which seems like a common enough physical
thing. But if we see "HWRNG_PERCENTAGE(90)", the first question is why?
What causes that?  Seems very weird. And it's probably wrong.

But if it *is* right, that deserves a big comment with explanation,
where the calculation for that "921" literal can be explained in full,
or, better, evaluated as a constant expression in terms of hardware
constants -- something like
HW_CLOCKRATE/FROBNICATOR_INTENSITY*1024/TURBOENCABULATION_MODE_WEIGHT,
and then it all makes sense.

So maybe rather than a macro or accepting barebones "921" values, if the
value isn't 1024 (0), then it needs a comment + an expression computing
the value.

Seem reasonable?

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
