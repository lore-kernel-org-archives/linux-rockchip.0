Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62406C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 02:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxXa8ZYRyg45zRiQNEBiRgB3lpx1ZIx1WzmT7jb/NpM=; b=hDH7McOOxGehow
	w8isfmkfZjlFFLdPGquJxrv+0lnibP9M/Mws8YKJhXx0QGHY4t1fRcSREzUFnVndP0MJN1klGhQ99
	YJt/v2BUgg8qS+TEc2gujWDcjnmNTyKIB06RctWt4WmAGxbaYOpAxp6HYChwxoY4m+N/UJAavQ9pd
	eu2aoZpyUwcekVTq2qaYsaEBkIgM4HKt7BiN8DxNeuQKiCj/qaC0PgmN0Z0DwpfnyjdQFE3PtmzOU
	lMI8/XWRxcKGIQ23kZ3Wd3nxD2ILlj1CS9CGnh53N1+mB4KHXmKeJnNCjljQ+Lc0yiLUlL+om5DiF
	urmAGVJkFwBpZPgin0ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRlfe-006sTZ-V0; Wed, 09 Mar 2022 02:03:22 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRlfS-006sQQ-6E; Wed, 09 Mar 2022 02:03:11 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 293B1AC0613;
 Wed,  9 Mar 2022 10:03:06 +0800 (CST)
Message-ID: <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com>
Date: Wed, 9 Mar 2022 10:03:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Daniel Stone <daniel@fooishbar.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
 <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
 <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlNS0xWSBkdTU8fHR
 oaHRoZVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRQ6PQw4Ej5ICTEyTjNPFDZD
 LT8KCk5VSlVKTU9NTEJKSENNQ0lJVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSExLQjcG
X-HM-Tid: 0a7f6c6a657bb039kuuu293b1ac0613
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_180310_449700_C9255D85 
X-CRM114-Status: GOOD (  10.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Daniel:

On 3/8/22 22:04, Daniel Stone wrote:
> On Tue, 8 Mar 2022 at 08:42, Andy Yan <andy.yan@rock-chips.com> wrote:
>> On 3/7/22 21:09, Daniel Stone wrote:
>>> On Mon, 7 Mar 2022 at 12:18, Andy Yan <andy.yan@rock-chips.com> wrote:
>>>> When run a weston 10.0.0:
>>>>
>>>>     # export XDG_RUNTIME_DIR=/tmp
>>>>     # weston --backend=drm-backend.so --use-pixma --tty=2
>>>> --continue=without-input
>>>>
>>>> I got the following error:
>>>>
>>>> drm_atomic_check_only [PLANE:31:Smart0-win0] CRTC set but no FB
>>> Can you please start Weston with --logger-scopes=log,drm-backend and
>>> attach the output?
>> Please see the weston ouput here[0]
> Are you running with musl perhaps?
Do you mean the C library? I chose uClib-ng in buildroot, not use musl.
> Either way, please make sure your
> libdrm build includes commit 79fa377c8bdc84fde99c6a6ac17e554971c617be.


The upstream buildroot use libdrm2.4.109, this commit[0] if from 
libdrm2.4.110

I cherry-pick this patch to my local libdrm, but has no effect, still 
has "atomic: couldn't commit new state" error.

I have do a search in libdrm and weston, but find no one call 
drmModeAtomicMerge, is that right?

[0]https://gitlab.freedesktop.org/mesa/drm/-/merge_requests/167

>
> Cheers,
> Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
