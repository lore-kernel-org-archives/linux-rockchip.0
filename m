Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E64AC55172
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 16:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXyieOdbqPs5hLpvPq6FrWEcv5i4bPBP2nwO3sFiuf0=; b=P8nBC9vH+S2NEN
	AFWepCmkH7n2aCEQvTcR+SDD6v0Jm6Dvme/eG87jSIM/EDpsk4VOXqqm+k48+NUj9KhWsMItse7GG
	G/gpgKGeKn0BZvB7OZggCAJT1+GHiM/L8BnXWSyGpdRoU4TRJdJ5dSPCu9tnKtSIKijFlxmAXg5TX
	V3f+ZFAWGn6TPP1SmdFCrhc/cWLyX0YRkUfebP8zM5/NNhHSQYC/+oriKAquZy0R014ossklNbg9i
	2EPV8lXSSroH7AphVQWTSjFQia9ouvSmTUUVpIC7V2SDPb9SIWre2HSYuh/9oTaiXVhMPMhbGVmn7
	vQjFcomyIL3m74nDy7RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqCaN-0000000ErcS-2iBV;
	Sat, 01 Aug 2026 16:29:19 +0000
Received: from out-177.mta0.migadu.com ([2001:41d0:1004:224b::b1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqCaJ-0000000ErZH-3Ybh
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 16:29:18 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1785601750;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y0OSr4PVxwlUzl29UswP2Ld/5ySXUrAk1c81FO8Jolo=;
	b=OW1WNFrkmP6loHKo7sJMqbrXaEig8yZmuh5ybE5188gYLkXVSJTXRRtI3uEBIrOahCqSzL
	eG9PQEkfPZdpqPo2KEG/FpcgZrkFDnvGFILUkkmIldT/BpE61VLPfUtoDBu8nCVeYWv50t
	r68PCxXxs+eza3LqF38f+zlGqwUHmraELWVDrFtipvcSr5Ft+8+6AZcNHUnFQ+RS5XKZZn
	piS2nn94sGCMCSbztvsI/kl/BbDZ0pmcv96INVPwT7FG9rWO44IEREaJdUJXaBjZYJd5mj
	vbd81zKOnJDFVeZHTUJwZ6SrNgZe22oImoPYpEuOh4UsxiTIhzV8LRbnlYT98w==
Date: Sat, 01 Aug 2026 18:29:04 +0200
Message-Id: <DKDQZP8UB0XY.U2JKKNUEA4CV@cknow-tech.com>
Cc: "Tomeu Vizoso" <tomeu@tomeuvizoso.net>, "Heiko Stuebner"
 <heiko@sntech.de>, "Jiaxing Hu" <gahing@gahingwoo.com>, "Oded Gabbay"
 <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and
 some numbers
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Igor Paunovic" <royalnet026@gmail.com>
References: <DKDOBW9CJ2Y3.10EEIZDTXPYJZ@cknow-tech.com>
 <20260801144021.7583-1-royalnet026@gmail.com>
In-Reply-To: <20260801144021.7583-1-royalnet026@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_092916_503235_915C3481 
X-CRM114-Status: GOOD (  26.74  )
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

On Sat Aug 1, 2026 at 4:40 PM CEST, Igor Paunovic wrote:
> Hi Diederik,
>
> (re-adding the lists, your reply came to me only)
>
> Thanks - that pointer was useful, and it changes what I thought I was
> looking at.  Two things came out of following it.

Then I guess it's useful I add the main part of that pointer to the ML:

  This is all 'above my paygrade', but the 'failed to get ack on domain' is
  a type of error which seems to surface on a regular basis:
  https://lore.kernel.org/linux-rockchip/?q=%22failed+to+get+ack+on+domain%22

(My hope was that it may have given Igor pointers wrt the problem)

> First, a data point that may narrow your search rather than widen it:
> this board is not running upstream TF-A.  Its SCMI implementation
> identifies itself as Rockchip's own:
>
>   arm-scmi arm-scmi.0.auto: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
>
> and it still fails, so whatever this is, it is not exclusive to upstream
> TF-A BL31.  If rkbin BL31 makes your PineTab2 suspend/resume work, the
> difference there may be something more specific than the ack handshake
> itself.
>
> Second, going through the archive for that error string, the history is
> longer than I realised - Peter Geis' and Sebastian Reichel's pmdomain
> work on RK3588, and further back "arm64: dts: rockchip: add hevc power
> domain clock to rk3328".  That last one is interesting because the fix
> was to add a missing clock to the power domain, i.e. the handshake
> needs its clocks.
>
> What I have looks like a neighbouring case rather than the same one.
> Here the clocks are not missing - all three NPU domains already list the
> NPU clock (rk3588-base.dtsi lines 864, 877 and 885).  It is the rate
> that matters: the ack never arrives if the domain is moved while that
> clock is above its DT assigned-clock-rate, and the same domain moves
> cleanly once the rate is back down.  I have not seen that variant
> described anywhere, which is why I wrote it up.
>
> That suggests something you could try, though it is a guess and you know
> your board far better than I do: if any clock listed in a domain you are
> suspending happens to be at a non-boot rate at that moment - left there
> by devfreq, by an assigned-clock-rate, or by whatever ran last - then it
> would be the same shape as what I am seeing.  Pinning those clocks to
> their boot rates before the transition would be a cheap thing to rule
> out.  If it does nothing, at least it is eliminated.
>
> Thanks again for taking the time, and good luck with the PineTab2.
>
> Igor
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
