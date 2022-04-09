Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E40EC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Apr 2022 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpP8emClo7XwnNT7OJv88xUJ9u9lilBwVFiFFoJMxhM=; b=PbwNrRuPbm7Ev+
	uxMMMTrspmD+FA9aejBOq4D8EzlSVUp+V6VwMhPHYw8sZww48cvDi5pJlu5HuMNe3vCKB6J1cUdId
	JHUOBwyjPoIawJ2JRkrkhCRTc+l8xFyPsKMEipH1+sgnbFlOofsb+IKRo/bOa8kDj29pJVGC6JPc4
	NFcZB6GQ5mnmWc5LI9w9uRUMgCsBvW5E+7mXjlBjAVEhxsQtlhJCSTMBp0lAFho78lUdymqrGccEK
	S+LuwCW+jG9ZacqdVzGNU7at1731dwWYZRUBpMM7z5NIUmxCSNrQBgUCq4UlWLeAFNDOnks2MEr1k
	ecaqc2VZ5RMFk3A6WgOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nd1sm-001sC7-7p; Sat, 09 Apr 2022 03:35:28 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nd1sa-001s8J-3e
 for linux-rockchip@lists.infradead.org; Sat, 09 Apr 2022 03:35:18 +0000
Received: by mail-oa1-x34.google.com with SMTP id
 586e51a60fabf-df02f7e2c9so11684015fac.10
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Apr 2022 20:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NhYLnZjSBj3vGUK1h2W/q7E9jlIzGMped+bnp/r8ylc=;
 b=WHVpb8hi7JLuhz2Zor+MoULlhOCIpVXQZs5W+ydESh5QlFHxXdfquBsTXSVjcpNT8/
 MrqOr2JpiL1nodleQMUITY4Epp+3bfaiTGmuq7ulVvp57sFykjfzGsI+n2k9G796KlN+
 JFqQ9z406TQiqnk4ZADdYM3mDCuqqofoxbAB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NhYLnZjSBj3vGUK1h2W/q7E9jlIzGMped+bnp/r8ylc=;
 b=U/IWpvgvVkwhdOtKoz+8W7x9wRK5khKSU2TcNOZt7LNYbFu7P0tU77vhVwcijSGbpR
 2KKEB0ByT3vlKj18Iri2drBmYJx2O8Pjg4mQtZno3wSN9w9F5VSfYQnc2hA+r05BfpWK
 cs7x8jyUWj/dt7yZ7kqlb5Kd62JsXVXxyHdAsDGqbOP3DF3kneT1Zy3zaQdDhdEqG3Kl
 jaIoZMNIFDnyfpewTzmwoADLxhz4TXRVOsHzVlZFfR3ipgyotKAB18MtAL+aVy2n/pEM
 2hSOh1jybw6V+E9UJcJOvJkHIbVYKOAmv+yETB5YExtlTQpx+iBNZlMWs51FzP7yRpux
 08nQ==
X-Gm-Message-State: AOAM530mdYbLIbK4OFdiCxAFN1MkDnaIzAAph+ZJO0jAeUn/7KgRs4hj
 TWcuo9+EGQs42a1V3WHznHAjyyHMV2VIGg==
X-Google-Smtp-Source: ABdhPJxlSEXsAJL2vQw2oWQ5X6BQioWp8/pxsH7Pnc+mDI4sQD19hyN6gmaYDK0bZhM50laz5tY5jQ==
X-Received: by 2002:a05:6870:a98e:b0:dd:c79d:18a2 with SMTP id
 ep14-20020a056870a98e00b000ddc79d18a2mr9401525oab.198.1649475312167; 
 Fri, 08 Apr 2022 20:35:12 -0700 (PDT)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com.
 [209.85.210.44]) by smtp.gmail.com with ESMTPSA id
 124-20020a4a1b82000000b00328fd5c77b4sm9538710oop.5.2022.04.08.20.35.11
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Apr 2022 20:35:11 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id
 88-20020a9d0ee1000000b005d0ae4e126fso7413918otj.5
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Apr 2022 20:35:11 -0700 (PDT)
X-Received: by 2002:a05:6830:1041:b0:5cd:b09b:2164 with SMTP id
 b1-20020a056830104100b005cdb09b2164mr7808516otp.186.1649475310609; Fri, 08
 Apr 2022 20:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <CGME20220406094558epcas1p4fa0c77a5acd6b73c192f6b19136cd5f9@epcas1p4.samsung.com>
 <20220405184816.RFC.1.Ib865f199d15221eab4ff77f70bd7e9e2eb04d32f@changeid>
 <c8664eae-4a10-bd1a-8898-01b96c05331e@samsung.com>
In-Reply-To: <c8664eae-4a10-bd1a-8898-01b96c05331e@samsung.com>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 8 Apr 2022 20:34:59 -0700
X-Gmail-Original-Message-ID: <CA+ASDXNx+nwVKuisMAsHEKLfd=hqBzZmhFxphcYUF=bamqN2kA@mail.gmail.com>
Message-ID: <CA+ASDXNx+nwVKuisMAsHEKLfd=hqBzZmhFxphcYUF=bamqN2kA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] soc: rockchip: power-domain: Manage resource
 conflicts with firmware
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>, 
 Elaine Zhang <zhangqing@rock-chips.com>, linux-pm <linux-pm@vger.kernel.org>, 
 Doug Anderson <dianders@chromium.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Kevin Hilman <khilman@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_203516_177924_DB2BDDEE 
X-CRM114-Status: GOOD (  20.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Chanwoo,

On Wed, Apr 6, 2022 at 9:38 PM Chanwoo Choi <cw00.choi@samsung.com> wrote:
> Instead of adding the specific function for only rockchip,
> how about adding new function pointer (like block/unblock or start/stop and others)
> into 'struct generic_pm_domain'? And add new pm_genpd_* function
> to control the power domain.

I suppose that is technically possible, but I'm not sure it makes a
ton of sense.

First, genpd doesn't seem to typically expose operations directly to
client device drivers. It's mostly about abstract handling of the
dependencies of "how do I power on this device?" behind the scenes of
things like pm_runtime_*(). I guess maybe something like
dev_pm_genpd_set_performance_state() is an approximately similar API
though (i.e., a genpd operation exposed to client drivers)? I could
try to go that route, if the genpd maintainers think this makes sense.

But secondly, this isn't exactly an operation on one power domain.
It's an operation on the entire power controller. I suppose I could
make a new domain here for the memory controller, and teach that
domain to implicitly manipulate all the other domains provided by the
PMU, but that feels like a fake abstraction to me.

Lastly, and perhaps least importantly: this likely would require a
device tree binding change. So far, the memory controller hasn't had
its own power domain. I guess one could argue that it has some
similarities to a power domain, albeit one that is managed in firmware
-- so maybe this is a reasonable "bug" to fix, if it really comes down
to it.

> Because it is better to use subsystem interface.

I don't agree this is universally true. It makes sense when there are
truly abstract concepts represented, which are likely to appear across
multiple implementations. Or maybe if the object model is complex. But
this operation seems very SoC-specific to me, and it's pretty simple
to implement this way. Or, do you think this is really something that
others will need -- pausing (and powering) a power controller so
another entity can manage it?

I guess I'd also like some thoughts from the genpd maintainers (CC'd),
of whether this seems like a good fit for a new genpd callback and
API.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
