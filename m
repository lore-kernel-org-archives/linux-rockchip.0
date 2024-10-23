Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D006D2E00A
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Oct 2024 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dfbiHTfsUphlba8TAvmikX2RV0NbJyLIiCkvI/aeO4g=; b=zDW3BX5yRlrBnMZ/2gCu/hIW3v
	cQdWibMXIKQ0XBja/0/dqtoy2kRQprfLEXtRfoj9Po+ohcL35xx2PMWTSOwlolfQuZso8H8pB7RmV
	5ftGEDUUC4SGU70Wz1Bcm6Pc0rPbNc4d19JoSgzoo7jvNTNHDI2Ht0dwWItHQvXQEZj+3PRH4an0t
	/3qjiHqql165k9YA1OjBSZLvdIwO8qCOgv7qLv1AUejMcqylQdtSIcvMIagL/wEHdwQg6tS6Ru69f
	2EV5EARbFkCGS65hEvl8Qp+hwcNVoN8zXyeEZuI7jza2BL1Y3nUnvK2w89KR6bELyIHRRn1bkWyj0
	CUtft7jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3RQC-0000000CkQ1-2eWE;
	Wed, 23 Oct 2024 02:48:28 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ROe-0000000Ck6F-1CKw;
	Wed, 23 Oct 2024 02:46:53 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1729651610;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nEq1SZifJDXlP2JwO/RVjrcRncUXHgMqVXF5WLRMOHg=;
	b=jlY+sOSiupErrBepM9mxZc4CBuX4roOR2F4e37HAakhWimwO7hJwA2v6AOYij9+fkvPqph
	gQ1Dz6tDiQ/AqAQRalDnRkpFljOsEfNYv8TKHN2xpC4mAYP48BX9Cm7Acv6K+gS9kVuaMh
	yVDb7PM70oe6XYAfkEsGt4no3Ah9KUDRxInrU1deMDsXl/rqxoA6pjUfmljnRulgW6r3V9
	yd8ap5JfpLAyOiLXW7T9vPeJzUDuf0JDoD3EO/XpWcuu9i0hnzcOwOINALMqeoPm9nhEZU
	no+juS2TeKVSBt7vzbccrCqB8RIkJLvu9MkJKCJYkfOeFNppqjOCr4n8zakTZQ==
Date: Wed, 23 Oct 2024 04:46:50 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Shimrra Shai <shimrrashai@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: Thinking about firmware and hardware description for latest
 Rockchip platforms
In-Reply-To: <20241022165413.2156-1-shimrrashai@gmail.com>
References: <20241022165413.2156-1-shimrrashai@gmail.com>
Message-ID: <b12103b968cd5817f25deb7277d6054a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_194652_668738_CCE8AD7B 
X-CRM114-Status: GOOD (  21.61  )
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

Hello Shimrra,

On 2024-10-22 18:53, Shimrra Shai wrote:
> Now it would seem, then, that the most straightforward approach would
> be to simply bake a DTB in for the hardware, but the problem is that
> it appears that DTBs are continually revised in kernel development
> even for long-supported chips (e.g. the RK3568 and earlier). And that
> creates the possibility of breaking backward compatibility, so it
> seems there's a chance that if one were to just include a mainline
> .DTB into a firmware package there is no guarantee it will remain
> compatible forever with every future kernel version. And having a
> user have to upgrade firmwares all the time just because new kernels
> came out also seems kind of to defeat the purpose of having a
> firmware-provided HW description.

As you noted already, the DT definitions are fixed and improved
all the time, which is actually great.  However, the backward
compatibility is ensured, because newer kernels are guaranteed
to work with older DTs, which doesn't mean that the board DTs
provided through firmware should become frozen in any way, as
explained further below.

> And to this I can think only of two options. The first would be to
> have a "political change" on the part of the kernel developer team to
> agree to "freeze" in some part the DTBs for these platforms (I also
> seek to work on firmwares for the earlier RK3568 platform and perhaps
> also other RK35xx variants) so that they remain continuously
> backwards-compatible indefinitely. But I am not sure that would be
> something that'd go over well here.

Freezing anything would be simply wrong.  It might look good from
the perspective of having something "stable", which is similar to
how x86_64 firmware works on PC motheboards, but the continual
bugfixes and improvements are actually extremely good, because
they prevent various ARM boards from effectively becoming abandoned,
which is unfortunately rather usual with x86_64 motherboards that
become so "stable" that some nasty firmware bugs are never fixed
and their users are left high and dry.

> So that gives the alternative option, which is to do like on x86
> systems and start to add some form of ACPI support to the entire
> Rockchip driver stack, because the ACPI tables are maintained on the
> firmware side. However, it likely will still require a fair bit of
> back-and-forth here to do the initial establishment of a full
> "standard" of such tables for this kind of setup viz. my discussions
> in an early attempt at this on the I2C subsystem, e.g.:

So, there would be never any updates or fixes to the ACPI tables?
That goes back to the above-mentioned abandonware.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
