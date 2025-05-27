Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C55E4C54F30
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 May 2025 17:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLpStNAMEf7Mc3QoiVNQtejAELVZHi+4H0cQa4kCS4A=; b=vsQPXKisZ5VQni
	JuWwKge/wnNHw7s59SFkjWYW57u7ecwJisTJUEdBkDtEx+dJlcmSFiYgrAT5pUIQ4GK/9pH9PXpBl
	ddtx8XO4ff3/lACppfEedQyY8snOk3DWWBntC+k0amdkMw+1zWfbd1SlQF7T1GRj0ILuemvmZIOFN
	KKpVJjkczRZUWGQjn3L+VXdQTPEQIPxeGwx8OOtQTwwy5J0d0nGWKDRpRWUOKVD+cCTRFu2p83h8F
	CJTVDTE8muG4N0OdNPnwuqAPwKGcjPWCq3Py5KMVEoKIWjyKkLKcoV8441s5xHPfhP8Spug+O6WeI
	Amz6B7nmBuGtDYwSNI9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJySv-0000000BI2b-3BtN;
	Tue, 27 May 2025 17:51:53 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJySt-0000000BI29-14Rn
	for linux-rockchip@lists.infradead.org;
	Tue, 27 May 2025 17:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1748368307;
 bh=NxuLAslpzoOd596xivdPI/5y/Es3Nx0sBx/hh0IoOiQ=;
 b=NvpzLl+/uPxC00XSgJ+2y6jFOIuDxwD7CPpB+Rb9h7g8CrJroBgcSmwsy5IowEjJaTMhngOQT
 PEqcmPUHPcGVSJ8VZ5ATV56x5Qc8bpKjluUoV6HbNhdOr+djkrif4c3XBa5LJ46sL5jHns/ntkd
 kbscKI4JeCB9yeRvxp9oMIippkLUQ5iGdtWqGoQA2iFhs1qBqmeU3vKHmUoWMn3qMBFsmQH9Dj6
 6HwAcT4VlmQXGmaC8nGbZKnd+FAHGe6XWUf7OX4mBQdIigsbWIOY8xnyM9U3pSh+5peAXFT/KyM
 YFNDFtzBL1sJVYSe7Pig62qhHJ9ZhDeIDVm+DyI94EoA==
X-Forward-Email-ID: 6835fba8127b2e865ab3d1d9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <a787e6e0-d4ce-45e3-8263-2489585d3ec0@kwiboo.se>
Date: Tue, 27 May 2025 19:51:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: rkvdec: Switch to using structs instead of writel
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20250527150043.174415-1-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250527150043.174415-1-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_105151_642209_B18ED846 
X-CRM114-Status: GOOD (  19.34  )
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

Hi Detlev,

On 2025-05-27 17:00, Detlev Casanova wrote:
> In an effort to merge the rkvdec2 driver [1] with this one, switch from
> writel() calls to using structs to represent the register mappings.

Please wait with this until HEVC support has landed, now that H264
4:2:2/Hi10 finally have been merged I was hoping to be able to send a v2
of the old HEVC series [3]. I was waiting on v6.16-rc1 before sending
the series but can send it sooner if needed, [4] has current state of v2.

H264 4:2:2/Hi10 and HEVC have been in the works for a few years now,
would be nice to have it fully land before refactoring starts ;-)

[3] https://lore.kernel.org/linux-media/20231105233630.3927502-1-jonas@kwiboo.se
[4] https://github.com/Kwiboo/linux-rockchip/commits/linuxtv-rkvdec-hevc-v2b/

> This is done in order to have all supported decoders use the same format
> in the future and ease reading of the code.

Do you have any work-in-progress patches for this?

> Using structs also improves stability as the hardware is tested and
> validated downstream using a similar method.
> It was noticed, on decoders, that:
>  - Some registers require to be writen in increasing order [2]
>  - Some registers, even if unrelated, need to be written to their reset
>    values (it was the case here for axi_ddr_[rw]data).
> 
> Using structs can also help improving performance later when, e.g.
> multicore support is added on RK3588.

Are your referring to the linked-list feature (also present in e.g.
RK3328) or just for multi-core purpose?

Regards,
Jonas

> Performance seems to be slightly improved, but at least, not made worse.
> Running fluster's JVT-AVC_V1 test suite with GStreamer on the Radxa ROCK
> PI 4 SE gives the following times:
> 
> Before this patch:
> 
> - --jobs 1: Ran 129/135 tests successfully               in 77.167 secs
> - --jobs 6: Ran 129/135 tests successfully               in 23.046 secs
> 
> With this patch:
> - --jobs 1: Ran 129/135 tests successfully               in 70.698 secs
> - --jobs 6: Ran 129/135 tests successfully               in 22.917 secs
> 
> This also shows that the fluster score hasn't changed.
> 
> [1]: https://lore.kernel.org/all/20250325213303.826925-1-detlev.casanova@collabora.com/
> [2]: https://lore.kernel.org/all/20200127143009.15677-5-andrzej.p@collabora.com/
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 168 +++---
>  drivers/staging/media/rkvdec/rkvdec-regs.h | 567 ++++++++++++++-------
>  drivers/staging/media/rkvdec/rkvdec-vp9.c  | 239 ++++-----
>  drivers/staging/media/rkvdec/rkvdec.c      |   1 -
>  4 files changed, 559 insertions(+), 416 deletions(-)

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
