Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 035ACCD3436
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 May 2026 07:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X53pNtxMgULzSYV3idHYc5mHi4qOn/JoHuXjNVSZcD8=; b=GvfheFy1piO6mM
	koULMlEWWVVWa0a1Ud9ylzVBHZQZ6f+UL9UJt0nW3PmwDIVc9tCs4hgBt7BO9Ec8g6F5N5+geu56o
	przT/ZywYF9zL28NOIxknVMpvE81akWAC/H3Ithv/5w1H2ep4GqlIMklFo9dVcygd1/HUVdxB4QV/
	s/IIsjGDu32p2zs8ZmLzR+1LFTB2oZeUjcU7f/OROVgTewnPE0Oi44kxTx6/2ySF3zG9GykIb84UP
	GE9Zwz5mwX+VFMg1OaoQG9sadWD7YWKQRdsQIlrniOTuG09um+2mkV3GTe6KiI3bpnrBbEJjk2EVU
	7u+J+nZWbJie0/KoWE7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLFdM-00000005q7p-1NOj;
	Fri, 08 May 2026 07:28:31 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLFdH-00000005q6f-22Cx
	for linux-rockchip@lists.infradead.org;
	Fri, 08 May 2026 07:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778225299;
	bh=7gm+mcDWEZxlLbT9ThUjYICxy8NSTbZxFiGykculdGs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CrGH8IBiryMwAX1r5+LHr+8JJcpFaZm1z/QYpMt7+BoJDJbrjOvhfeHUmIcdgMOSu
	 O2FYrlhP1nQp6Z/GPD2nWE+oM0AP5eSA9J+JtWzgQ8fSjQJiJ7IoCTyaMCqvGcz90w
	 +A9SOSifaRlb6SYFxSYdFp6/SFCyCAzWLshZCdh4irqzKhExn0R1T2uVYTqeCwfS/m
	 x3fj5cKx1Gv9gbAzFtPSCz20sO2+BUe4mlaq88vGUL69tTMl2Rsh2JJzCR2WDvWZIY
	 C88GOWyur1tFnLJkCb6o+3MXFnBpIv2OHhsf2zy8Uy+RErJoYo0EqbeOmQW8KiIcCI
	 x/lI6F7vwtXDg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 298F717E0E08;
	Fri,  8 May 2026 09:28:19 +0200 (CEST)
Message-ID: <2b2aa38b-329d-4c05-b1ed-bf6c29209f8a@collabora.com>
Date: Fri, 8 May 2026 10:28:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: drm/bridge: dw-hdmi-qp: seamless handoff sets wrong
 tmds_char_rate, breaking audio on strict HDMI 2.1 sinks
To: Simon Wright <Simon@symple.nz>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "kernel@collabora.com" <kernel@collabora.com>
References: <ME3P282MB21960D9D68BFF520316BDFCEA83E2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
 <38b2e226-c8f0-44b4-bf71-66caa0b27d43@collabora.com>
 <ME3P282MB2196C1D097CB4A61D2376FAFA83C2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
 <61e86f45-cc62-433b-b929-2df66ab0f1ff@collabora.com>
 <ME3P282MB2196331E84F4BB5FC72419A5A83D2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <ME3P282MB2196331E84F4BB5FC72419A5A83D2@ME3P282MB2196.AUSP282.PROD.OUTLOOK.COM>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_002825_878545_9AF8BCE4 
X-CRM114-Status: GOOD (  18.39  )
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

Hi Simon,

On 5/8/26 8:53 AM, Simon Wright wrote:
> Hi Cristian,
> 
> Thanks for the pointers -- I should have checked rockchip-devel
> before the previous reply. Three things to clean up:
> 
> * Sige5 in linux-next and Sige7 in rockchip-devel both match what I'd
>   derived from the schematics -- dropping the DTS follow-ups I had
>   drafted.
> 
> * Your FRL work in rockchip-devel supersedes the BSP-derived prototype
>   I was going to port. Standing down on that; happy to Tested-by the
>   series once it's posted.
> 
> * Acknowledged on the HDMI 1.4 vs 2.x framing.
> 
> Tested-by: Simon Wright <simon@symple.nz>

The trailer must be added by replying to the series containing the patches, i.e.
see the "Reply instructions" at the bottom of:

  https://lore.kernel.org/all/20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com/

> 
> Heiko, Vinod -- any chance hdptx-clk-fixes v1 can be applied? It
> cleanly addresses the high-bpc rate recalculation and uncommitted PHY
> config issues on RK3576 hdptx, and Tested-by results on real hardware
> (R76S + LG G3 OLED) match the cover letter.

This should also go with the reply above.

> 
> Reproducer for the audio mute:
> 
>   1. mainline 7.0 + hdptx-clk-fixes v1 applied (or rockchip-devel HEAD
>      -- same code path).
>   2. Sink that doesn't tolerate incorrect ACR CTS values -- LG G3 OLED
>      is the canonical case, LG C4 OLED behaves identically. More-
>      permissive sinks play audio regardless and won't surface the bug.
>   3. Set a mode whose tmds_char_rate is NOT in common_tmds_cts_table[].
>      Affected rates we tested: 1920x1080@60 bpc=10 (185.625 MHz, the
>      original-bug regime -- requires max_bpc=10 set on the connector
>      property), 3840x2160@30 8-bit (297 MHz), and 3840x2160@60 8-bit
>      (594 MHz).
>   4. The mode must be held for the duration of the audio test --
>      `modetest -s` releases DRM master on exit and fbcon reverts to
>      an in-table mode, which would explain audio playing in your
>      test path.
>   5. speaker-test -D hw:0,0 -c 2 -t sine -f 440 -- mutes without the
>      fix, plays with it.
> 
> I'll send the CTS-from-N change as a separate patch against
> rockchip-devel, 

Any submitted patches must be based on a recent enough upstream branch or tag -
in this case either v7.1-rc2 [1], next-20260507 [2] or drm-misc-next [3].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?h=v7.1-rc2
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tag/?h=next-20260507
[3] https://gitlab.freedesktop.org/drm/misc/kernel/-/commits/drm-misc-next?ref_type=heads

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
