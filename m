Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8165EC3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 18:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EqAt4XGytOzAYgJ30RgZCp67EnQO8z7myWd8niukd4=; b=ZMuoS6XKfoRxzo
	UpLVtKrC/zZScwjJrRxL+EVyHQjRhjdh14RhFATxexo5qfIFGBRqBc8lWaRN44aOpjHsu9oE0Fprl
	XmMZutTbosmL3VCbQoMIF9H0bQQjWsKkhUwYgwN5+FdVYYnWoAZucMKJlrf7IdhEy3LOFCPsJewAp
	Y8Rxg/UwC/bv3AVcMrpmTiX4zPxRRNRqCgxD+d/2U/gXgylLnHLqd0wUGZjwWAgD50hK3bhbWbXO9
	u+fg2XN3WtBiIE05gpoqFa+ktCm/zmX144gMi69a7H1KqqB1bkYOg4OQ048NBReW4E4NzoDhmv6LE
	Y6k7gPYpkxBxh1Q6eRAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZaBw-00000006Lmv-2dO4;
	Thu, 01 Aug 2024 18:06:21 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZaBt-00000006LmX-2AQG
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Aug 2024 18:06:18 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 08A4440460CC; Thu,  1 Aug 2024 18:05:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 08A4440460CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722535539;
	bh=8TV5DwJYV27YdvGwHWo9ffXTN5cjDWmzzlyafnAnMXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xfbctd31NCXfEIsmUQCV/ps5lb95zozcemwjzkPJm71nEJB9yqfPF5PlOHvTqhhNs
	 mLeh0Il1FHFjTWa/TuwG547q4hUJvLzcz5eLdxdgOPoyMFpB8CTmZkzyY8xhY1Q3pj
	 k+TGIOqaDHvpsySUGLaVTwio/MFeQqXY3HNVwmh2DhyNJ1f+FdSpXSQG59bimftd3a
	 qk30ZQK2dMuZK7UTjWH2EJUrONtdIj1uzqqgBYfsyVg/wVlab7I9NYlR01CfnEHvgr
	 vqXI1T7qdedjna8EmkwNsUqvjwhMbKypge2duDGlWieoO6wCNv/4tv/mj4K8m3L8ZA
	 izJqaC3V756cQ==
Date: Thu, 1 Aug 2024 18:05:38 +0000
From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de
Subject: Re: [PATCH 2/2] dt-bindings: arm: rockchip: Add NanoPi R2S Plus
Message-ID: <20240801180538.GD14610@ветеран.su>
References: <20240731204126.8689-1-jin@mediatomb.cc>
 <20240731204126.8689-3-jin@mediatomb.cc>
 <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_110617_647135_FB7AAD11 
X-CRM114-Status: GOOD (  18.55  )
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

Hi Krzysztof,

On Thu, Aug 01, 2024 at 10:10:09AM +0200, Krzysztof Kozlowski wrote:
> <form letter>
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC. It might happen, that command when run on an older
> kernel, gives you outdated entries. Therefore please be sure you base
> your patches on recent Linux kernel.
> 
> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> 
> You missed at least devicetree list (maybe more), so this won't be
> tested by automated tooling. Performing review on untested code might be
> a waste of time.
> 
> Please kindly resend and include all necessary To/Cc entries.
> </form letter>

thank you for all the hints, I did now use b4 to populate the addresses, so
I hope I did not miss anything. Sorry for the first fail, I am a "once in a few
years" submitter and I am having a hard time to get through the whole process :)

The patchset has been resent.

Kind regards,
Sergey


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
