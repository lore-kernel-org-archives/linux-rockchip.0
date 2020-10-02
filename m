Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E96C8C4363C
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 16:42:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D656206FA
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 16:42:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UNPZUV6T"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9D656206FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7oCnglVM7+WRB9k8h/xo+JOY7npJYZ+BSY6mgqF/5dQ=; b=UNPZUV6TvpbziZeJNkhVXopDV
	wpz2pfAECys8woHdyjyMpDIYSm8R/FvNdvKHkXITUWO2C8fztiEm42LS2CEmm1fISJsbYFNAYI302
	RhRZU3qFN7DmhYB0NsMX2RetGM/bP1ScDCW1xAPAfU0oJnTOyRohllS2iUJGd6pBvY159DxuG6gCw
	YUo6McvYgGF/riD3R7j/+8ng77tnI3V51MCVXgXMhJ6WQ3mtPqroPf4erNxyaiBfKN5oq+ZVS1RWU
	cqQpsLiuFQty8t75XPN9oeKH8ONv33bLovUDS0+znDB7PxNQo07Fs5O/2h2rI68fjcX5Oq4Lsjtd1
	QTsoErjJw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOO8Q-00088N-Dg; Fri, 02 Oct 2020 16:42:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOO8J-000854-Ih; Fri, 02 Oct 2020 16:42:12 +0000
Received: from [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa]
 (p200300c7cf13ec00987cfa6c93a91dfa.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 98B2829DDEB;
 Fri,  2 Oct 2020 17:42:08 +0100 (BST)
Subject: Re: [PATCH v3 0/3] media: rockchip: Introduce driver for Rockchip's
 camera interface
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
 <CAAEAJfCBi3AE23hbHB19FFNpmELp2hh3BU+qrdtmgBFJzv9A_g@mail.gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <e80036b7-f66f-83f0-a9cc-b904e0089db5@collabora.com>
Date: Fri, 2 Oct 2020 18:42:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAEAJfCBi3AE23hbHB19FFNpmELp2hh3BU+qrdtmgBFJzv9A_g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_124211_727443_1E92CB33 
X-CRM114-Status: GOOD (  23.01  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 02.10.20 um 18:31 schrieb Ezequiel Garcia:
> Hi Maxime,
> 
> On Tue, 22 Sep 2020 at 13:55, Maxime Chevallier
> <maxime.chevallier@bootlin.com> wrote:
>>
>> Hi everyone,
>>
>> This is the third iteration of the series introducing a driver for the
>> PX30 camera interface.
>>
>> This was previously known as the "cif" driver in other iterations, but
>> was renamed to "vip" following Ezequiel's advices to match the datasheet
>> name.
>>
>> This is based on a BSP driver, and I'm not fully familiar with the media
>> and V4L2 frameworks, so I guess some review is still needed.
>>
>> This new series adds some stability fixes, and introduces the
>> double-buffering frame handling, giving better performances.
>>
>> Thanks to everyone who reviewed the first two iterations,
>>
>> Maxime
>>
>> Maxime Chevallier (3):
>>    media: dt-bindings: media: Document Rockchip VIP bindings
>>    media: rockchip: Introduce driver for Rockhip's camera interface
> 
> I can't find this "v3 2/3 media: rockchip: Introduce driver for
> Rockhip's camera interface" patch in my mailbox. Perhaps it was too
> large and got filtered?
> Or maybe it's an issue on my side?

I do see it on my mailbox, if it helps..

Dafna,

> 
> Cheers,
> Ezequiel
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
