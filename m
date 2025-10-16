Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 444B5CCD199
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 18:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE/enZL7uaOd7inbXW1dp2cW03z+UWjmCUB6QynZZ6U=; b=qMNiMqZeq1pICX
	ACcZFWErz6RIqr/xoNMr5pV3ALir7316iggcgpMgMCJFJ2zjRvbfWosXlhI3no5BioRlLlmSxCtnx
	vnVw92tmuvrdekFVpEf9MGOeoEnl19WLbRtklTXyeHiqbgFbfTDflJ1Un8OGDOkKRicHeOINxArXT
	9YYVQoZIGXM7sgA9qfI3xYWFT45H7saSCVUDtGdQfZoriR2fg4dhw6LieOa8ahQJmloE17OSNfhdd
	OhKXBFtqO8vNwyYstAihzZHWcshZCYxlDRnNyllJLhWp+W8GapK3QtJ1y5cY7IvLwYGn33ZAr9p90
	3cdVZLgv2fIchBLyeQVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9SlY-00000005hYD-0O9y;
	Thu, 16 Oct 2025 18:31:56 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9SlV-00000005hXj-3hjk
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Oct 2025 18:31:55 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1760639510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0DwL+c+9YdGQesQ1zy483f+QCC5NnESasUQDi6ea1c8=;
	b=BveRcg1IIkC8akOq8/rGmCQJR9P+fJ82dDncn+W/TWMm8k4MVrNnOBjvxV+pVwYmaUVv7q
	y92CCNPnJmbu0gSb2MTiNtTzO2vrORxHrcCpvLDQcKJr6WRlmzftOIV/3RKRyOtbP9zVuj
	K90eodHgaj9tr9Wd9RiAeUYlcSympMiVwEBSIWWyd3hHl4e1UAaDN2GNUwWLrbw+GfrQhR
	jj1poJMGkQt7MDNyUOeFhO91ctVC2r8x3snQYbXDdb2Nd7RPvvakQ4TLvN/N+pylj2rrIe
	lp5ZFVvhnB/KVA7h5BrQ6x8w2wB3C+xFyimscTAIIKmDigxAaqSRAIuAMIsFfw==
Date: Thu, 16 Oct 2025 20:31:47 +0200
Message-Id: <DDJYM7XTXAGN.16TCJSI1VPUAB@cknow-tech.com>
Cc: <linux-rockchip@lists.infradead.org>
Subject: Re: Endless spam in dmesg: ASoC error (-19): at
 snd_soc_dai_prepare() on i2s-hifi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: <linux-sound@vger.kernel.org>
References: <DDJ05640974K.3G1TLY1B75G7@cknow-tech.com>
In-Reply-To: <DDJ05640974K.3G1TLY1B75G7@cknow-tech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_113154_474857_8E114D51 
X-CRM114-Status: GOOD (  14.64  )
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

On Wed Oct 15, 2025 at 5:30 PM CEST, Diederik de Haas wrote:
> On several of my Rockchip based devices I get ASoC errors, where the one
> from the subject occurs the most, but there are others as well.
> While it should ofc be reported when an error occurs, the volume was
> bad, then really bad and now it's just absurd:
>
> root@rock5b:~# dmesg | grep -c "ASoC error (-19): at snd_soc_dai_prepare"
> 983
>
> If 'dmesg' buffer can hold 1000 lines, then I have 17 of these as well:
> hdmi-audio-codec hdmi-audio-codec.8.auto: HDMI: Unknown ELD version 0
>
> This means that after just a few minutes, 'dmesg' has now become utterly
> useless as it ONLY contains these errors/lines.
>
> Booting into older kernels didn't seem to have an effect. If it had, I
> could start to bisect it. I have no idea where it comes from.
> So now I have removed pipewire ... and everything that depends on it ...
> of which 'mpv' is the most important to me.
> Now those errors are actually gone. And dmesg actually useful again.

I installed pipewire 1.4.2 from Debian Stable (previously 1.4.9 from
Sid/Unstable) and now the count is steady at 120.

> So I guess it's triggered by (a change in) pipewire, but still the
> kernel should not be generating endless copies of the same error. Once
> or twice should be enough.

120 is still too much, but now dmesg isn't entirely useless anymore.

> Can something be done about this?

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
