Return-Path: <SRS0=FO72=HR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EF2C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Feb 2021 14:05:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6475264DCF
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Feb 2021 14:05:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6475264DCF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fivetechno.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v/KzP3gRU6NEg2u92zPJzK0LXrcGcSzRUoPNKGpT3V4=; b=LgdfNv/TcSRjiILJSyuJulGIZc
	AvCCscLZnMBs72zJEeZp5PIGnrNEtEHjfj70Kf3MCrUd359IvRncEgkOGQk/fvym8xtsGIUxBoU4N
	p04dBeJ6dydUAoTRXMDiRjNij+ChDMsZq3GWRw8yTCCHiCD5X6IMV+/ZU5ibC9WMgKM7KUO4l0bUN
	7VeeTGqdI6EUy6dVgddTwH3+gXLbuEBM0Bz4BH4Vt8HrYq959gGVWRYwWNwu7uvgq8e94d6VqFXw6
	KCW0x8cyotK+HtkVMxGC6UxGl1QK7H0rUNof4tvL4fbhhQegOICK7ulot+e1F907wPIIixtEO3ixY
	I7wdFu2w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lBeVK-0003SM-1m; Mon, 15 Feb 2021 14:05:34 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBeVI-0003Ru-47
 for linux-rockchip@lists.infradead.org; Mon, 15 Feb 2021 14:05:33 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1lBeV8-0002Fp-20; Mon, 15 Feb 2021 15:05:22 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 11FE5KrO028561
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
 Mon, 15 Feb 2021 15:05:20 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Levin Du <djw@t-chip.com.cn>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Organization: five technologies GmbH
Subject: [BUG] [BISECT] rockchip: roc-pc-rk3399: TPL misses dtb
Message-ID: <a197cddb-f363-f790-f743-5012341591ba@fivetechno.de>
Date: Mon, 15 Feb 2021 15:05:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1613397932;
 32016080; 
X-HE-SMSGID: 1lBeV8-0002Fp-20
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210215_090532_296109_B0727E4C 
X-CRM114-Status: GOOD (  10.79  )
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, u-boot@lists.denx.de,
 Heiko Stuebner <heiko@sntech.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With recent U-Boot and roc-pc-mezzanine-rk3399_defconfig
and booting from SPI flash I get:

U-Boot TPL 2021.01-00884-g0a2aaab0b6 (Feb 15 2021 - 14:36:50)
Missing DTB
### ERROR ### Please RESET the board ###

Bisecting points to:

commit 0a2aaab0b678fd1778ff2fc59d0770fc82995532
Author: Simon Glass <sjg@chromium.org>
Date:   Wed Jan 13 20:29:49 2021 -0700

     fdtdec: Use CONFIG_IS_ENABLED in board_fdt_blob_setup()
     
     This setting may be different in SPL and TPL. Update the code to check
     the correct setting.
     
     Signed-off-by: Simon Glass <sjg@chromium.org>

  lib/fdtdec.c | 2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

Reverting this commit fixes booting.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
