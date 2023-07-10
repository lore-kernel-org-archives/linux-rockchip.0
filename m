Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6ED7EB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 10:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gyvm6/9c2DQyTtSPYDxNpJVkT8WNEABz+5DT9KBRozk=; b=P9j9y3U2kFmuRsJ0rdtf+XZUsi
	XfiGd2ZlQc5xSkxbHqk6npaiY0z2BDmEAFsNCuckAX+GEIAhywa8+/2JVuhStDMkj7s1V7N6cxmTh
	EacfvE0aLnKoBRVp1eWfdqnB3/UVH3S60WxgUaFPgExhoHgd3IQCj/ZUup/IKoKvLgew+8zw+Fzmx
	rX4MpVBQ4ME9tGLF5OY2BTUdSj7lNrqvdmY2mhql5B/4buqzhIjpt3ZPEzLVXdfqpBla7KPu9J2mz
	fUvhn8FXSOtE/8lpTjcke6CYYkX9gHWAhMUShY0gIcLBX1ke9VTM/smx8L5smiqQhfGMFJoOBQnS3
	wGoD0BVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qInrp-00BBaA-0V;
	Mon, 10 Jul 2023 10:11:41 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qInrk-00BBZ4-2w
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Jul 2023 10:11:39 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:f087:2614:ec9d:569f])
	by baptiste.telenet-ops.be with bizsmtp
	id KNBV2A00B1w4dBK01NBVv9; Mon, 10 Jul 2023 12:11:30 +0200
Received: from geert (helo=localhost)
	by ramsan.of.borg with local-esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1qInrd-0010sR-3d;
	Mon, 10 Jul 2023 12:11:29 +0200
Date: Mon, 10 Jul 2023 12:11:29 +0200 (CEST)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: linux-kernel@vger.kernel.org
cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
    Philipp Zabel <p.zabel@pengutronix.de>, 
    Mark Rutland <mark.rutland@arm.com>, linux-media@vger.kernel.org, 
    linux-rockchip@lists.infradead.org, sparclinux@vger.kernel.org, 
    linux-sh@vger.kernel.org
Subject: Re: Build regressions/improvements in v6.5-rc1
In-Reply-To: <20230710100012.2625532-1-geert@linux-m68k.org>
Message-ID: <bd856932-c2fb-d5f2-17f7-f7f1a1773adf@linux-m68k.org>
References: <CAHk-=wj8sPDVoWgaceAs1AiwZrHV8mtC3vQNGbeV6-RypJi6aw@mail.gmail.com> <20230710100012.2625532-1-geert@linux-m68k.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_031137_109520_A580E24B 
X-CRM114-Status: GOOD (  17.80  )
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

On Mon, 10 Jul 2023, Geert Uytterhoeven wrote:
> Below is the list of build error/warning regressions/improvements in
> v6.5-rc1[1] compared to v6.4[2].
>
> Summarized:
>  - build errors: +3/-4
>  - build warnings: +36/-18
>
> Note that there may be false regressions, as some logs are incomplete.
> Still, they're build errors/warnings.
>
> Happy fixing! ;-)
>
> Thanks to the linux-next team for providing the build service.
>
> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5/ (all 162 configs)
> [2] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/6995e2de6891c724bfeb2db33d7b87775f913ad1/ (160 out of 162 configs)
>
>
> *** ERRORS ***
>
> 3 error regressions:
>  + /kisskb/src/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c: error: the frame size of 1392 bytes is larger than 1024 bytes [-Werror=frame-larger-than=]:  => 1036:1

m68k-gcc8/m68k-allmodconfig

>  + error: modpost: "__xchg_called_with_bad_pointer" [lib/atomic64_test.ko] undefined!:  => N/A

sparc64-gcc11/sparc64-allmodconfig

>  + {standard input}: Error: unknown pseudo-op: `.glo':  => 1097

sh4-gcc11/sh-allmodconfig (ICE)

Gr{oetje,eeting}s,

 						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
