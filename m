Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42B89C3DA42
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 07:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WQe30l7oip29VvrMXifaA1EKgXE8JlY7pN0jE6N6miI=; b=ZOzsk4LqsqcdwC
	Vx87gZgo7lO/w2rFmcFE978ldBtrEqTeAqMClKGkdEAw1cwKE9mp2T19r061nct4hdLBDYaxzOxVy
	1nx1cuGAGJXT8DDQH95enCStGhm6OiMukOA7qjKADVW+C5CvqOFcmBQ3bWxiGoqmDLnhrMJSI0vg3
	Ya1BN9ohhz9c0xwEsputKUivl1mRF6LRHiOvlf9nhvPNCwe9ao8lDkq+ijFrdCLmc4OdI9MQbU1dj
	hivWtt2HWhAxaDO8eSBU+LRbz7QV4v9CHxbpYyE2j6W27rbqecr+8qTgEZi/rkqpGArr+g1mIA5iE
	jlS/MquzNaN4AC8Bx+2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQjCg-000000035zI-2Vgv;
	Mon, 08 Jul 2024 07:54:30 +0000
Received: from mail.eh5.me ([45.76.111.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQjCd-000000035ym-1T8K
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jul 2024 07:54:29 +0000
Message-ID: <705544af-d615-4ff0-a54c-72a69140ce6d@eh5.me>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eh5.me; s=dkim;
	t=1720425257;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=43AuIjgjPNUMvR/3RYgvMmJeBw4ayEVMKYvKD0lVERk=;
	b=a5yUZ0mevBzpnpKx846AnSeNQNtfxPvweqSecAhBhRBeGT3nxzkOF4+DMvbfUZH6ObYDAu
	KWEuwdMu9BduV84lZj3WgZPO0lppd7T+wmiPwQeXNv2YThPia7PxYQrnFeW7e9gO2aRpSi
	R41WrMtePFCKZ3Rw3MiI8KDpXI5UFrQ=
Date: Mon, 8 Jul 2024 15:54:11 +0800
MIME-Version: 1.0
From: Huang-Huang Bao <i@eh5.me>
Subject: Re: RK3328 / Rock64 eMMC regression
To: richard@kojedz.in
Cc: Heiko Stuebner <heiko@sntech.de>, Linus Walleij
 <linus.walleij@linaro.org>, linux-rockchip@lists.infradead.org
References: <c76c10dbb3e614b17a1879f3aa767b8b@kojedz.in>
Content-Language: en-US
In-Reply-To: <c76c10dbb3e614b17a1879f3aa767b8b@kojedz.in>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_005427_545520_41B63141 
X-CRM114-Status: GOOD (  18.77  )
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

Hi richard,

So the 96903ed0e846 ("pinctrl: rockchip: fix pinmux bits for RK3328
GPIO2-B pins") changed pinmux bits for GPIO2 B0-B3,B5-B6 from 2-bit
width to 3-bit width.

Before the commit, we have the following pinmux bits, note the bit
numbers in [start:end] are both inclusive.

GPIO2-B0: GRF_GPIO2BL_iomux[0:2]
GPIO2-B1: GRF_GPIO2BL_iomux[3:5]
GPIO2-B2: GRF_GPIO2BL_iomux[6:8]
GPIO2-B3: GRF_GPIO2BL_iomux[9:11]
GPIO2-B4: GRF_GPIO2BL_iomux[8:9] (unchanged)
GPIO2-B5: GRF_GPIO2BH_iomux[0:2]
GPIO2-B6: GRF_GPIO2BH_iomux[3:5]
GPIO2-B7: GRF_GPIO2BH_iomux[0:2] (unchanged)

(GRF_GPIO2BL_iomux[0:11], GRF_GPIO2BH_iomux[0:5] are used)

Notice that there are conflicting pinmux bits within GPIO2-B2, GPIO2-B3
and GPIO2-B4, and within GPIO2-B5 and GPIO2-B7. So this apparently looks
wrong.

After the commit, pinmux bits for these pins changed to

GPIO2-B0: GRF_GPIO2BL_iomux[0:1]
GPIO2-B1: GRF_GPIO2BL_iomux[2:3]
GPIO2-B2: GRF_GPIO2BL_iomux[4:5]
GPIO2-B3: GRF_GPIO2BL_iomux[6:7]
GPIO2-B4: GRF_GPIO2BL_iomux[8:9] (unchanged)
GPIO2-B5: GRF_GPIO2BL_iomux[10:11]
GPIO2-B6: GRF_GPIO2BL_iomux[12:13]
GPIO2-B7: GRF_GPIO2BH_iomux[0:2] (unchanged)

(GRF_GPIO2BL_iomux[0:13], GRF_GPIO2BH_iomux[0:2] are used)

According to RK3328 datasheet, the eMMC pins of RK3328 are
GPIO0_A7/EMMC_D0, GPIO2_D4/EMMC_D1, GPIO2_D5/EMMC_D2, GPIO3_C1/EMMC_D6,
GPIO3_C2/EMMC_D7, GPIO3_C3/EMMC_CMD, GPIO3_C5/EMMC_CLKOUT and
GPIO3_C6/EMMC_PWREN, which are not the subject of the commit. So I don't
know why these changes cause mmc module failure.

Comparing pinmux bits before and after the commit, the
GRF_GPIO2BL_iomux[12:13] are being used and GRF_GPIO2BH_iomux[3:5] are
no longer used. Maybe it's because the eMMC functionality depends on
some of these bits to be set or not set?

The patch below is equivalent to revert 96903ed0e846 however is made 
easier to edit pinmux data for each pin. Try to apply the patch and
reduce the changed items in rk3328_mux_recalced_data[] array as much as
possible to figure out exactly which pinmux data fixed you issue.


diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 3f56991f5b89..db835d7f053c 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -640,6 +640,48 @@ static struct rockchip_mux_recalced_data rk3328_mux_recalced_data[] = {
                .reg = 0x28,
                .bit = 0,
                .mask = 0x7
+       }, {
+               /* gpio2_b0_sel 3-bit */
+               .num = 2,
+               .pin = 8,
+               .reg = 0x24,
+               .bit = 0,
+               .mask = 0x7
+       }, {
+               /* gpio2_b1_sel 3-bit */
+               .num = 2,
+               .pin = 9,
+               .reg = 0x24,
+               .bit = 3,
+               .mask = 0x7
+       }, {
+               /* gpio2_b2_sel 3-bit, conflicting gpio2_b4_sel */
+               .num = 2,
+               .pin = 10,
+               .reg = 0x24,
+               .bit = 6,
+               .mask = 0x7
+       }, {
+               /* gpio2_b3_sel 3-bit, conflicting gpio2_b4_sel */
+               .num = 2,
+               .pin = 11,
+               .reg = 0x24,
+               .bit = 9,
+               .mask = 0x7
+       }, {
+               /* gpio2_b5_sel 3-bit, conflicting gpio2_b7_sel */
+               .num = 2,
+               .pin = 13,
+               .reg = 0x28,
+               .bit = 0,
+               .mask = 0x7
+       }, {
+               /* gpio2_b6_sel 3-bit */
+               .num = 2,
+               .pin = 14,
+               .reg = 0x28,
+               .bit = 3,
+               .mask = 0x7
        }, {
                /* gpio2_c7_sel */
                .num = 2,


Bao

On 7/8/24 02:45, richard@kojedz.in wrote:
> Dear developers,
> 
> I am using a Rock64 board with an emmc module. I've upgraded kernel 
> from 5.15.161 to .162, and since then the board wont boot up. Kernel 
> messages show:
> 
> [   49.117131] mmc1: switch to bus width 8 failed [   49.124709] 
> mmc1: mmc_select_hs200 failed, error -110 [   49.125190] mmc1: error 
> -110 whilst initialising MMC card [   49.139566] mmc_host mmc1: Bus 
> speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 
> 0) [  105.437111] mmc1: switch to bus width 8 failed [  105.446739] 
> mmc1: mmc_select_hs200 failed, error -110 [  105.447246] mmc1: error 
> -110 whilst initialising MMC card [  105.461639] mmc_host mmc1: Bus 
> speed (slot 0) = 200000Hz (slot req 200000Hz, actual 200000HZ div = 
> 0)
> 
> I am using rk3328-rock64.dts from the kernel.
> 
> Bisecting the kernel revealed 96903ed0e846 as first bad commit. 
> Reverting this commit on top of v5.15.162 makes my board bootup 
> again.
> 
> Can you please take a look?
> 
> Thanks in advance, Richard

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
