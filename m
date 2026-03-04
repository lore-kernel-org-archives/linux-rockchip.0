Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A33EB7ECD
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 11:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gIIrNUpAvsMl+5/ph5OhAayxXWmkzPvi/W5XPZDa+x0=; b=WOCMqIbz3q0R1h
	grjaz3vSAn4pnK5YPotl7bqQH3T7FRedo2WEm65SOgiO1n5TA+5/Za1LqrN9u1uRBUIse6CuZO6HS
	39qcVcocfyCnEwspdl5HBllWmXBF7QLzT2pV8zXIVoH+XS9ITTeTVuwnv8Drq1WUDbEIjez1e4tLZ
	FcNFOEJyPENAfBHmFNbYVRzZx4D1eNGmYWwXXrmqUMkb5UGGxFzaCQhP9q3LrnApJoN07h5x6Yu8h
	1lRhxx/E94vBtvGQC7XMWde80awhYxmzSyPgb7laQhmspVJ8Zta3W+YqOQzYYSWx5Xh+qbFsSuC+N
	sXybtFMDI847zdg7CgvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkM2-0000000H5aD-1iIF;
	Wed, 04 Mar 2026 11:25:26 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkM0-0000000H5Zs-17hT
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 11:25:25 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-389fac627c9so103707971fa.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 03:25:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772623522; cv=none;
        d=google.com; s=arc-20240605;
        b=Cf+y/NNmXY4UoqStwa7yejn9rk0BNODE1gL01oWv14OVqUqs79n0/oAveXozf6/W/h
         toAJYUTy7h90cyzq5Qb7eK7I1pVi+28rRm2/AJxw8t0GJuAx60QrgpQO57cy1LfESVcQ
         /zy0I2yI4/XBWVcJ4VJD3i/OHXJ83GWhOPyNsyhyUoUv9CmCQ1tNRUJVyOZdsnNHucsd
         UL28VwlAccQiLV1xUgAJP86+GAXsGLvWP6zASupK+9wD4mrWX1kQ8lsbIeaZeaJQ6NT5
         YmwMmXs2KiWvvj2H7ZC7sygcL9LiaW3h/OpDe8RlOX0HGO1lHNOYaPWbzgF85hlBLdaO
         urkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jqB5j+E4DSf4EbBKzvqlflmatvTKbzzjeiwDCgjc31o=;
        fh=arb5UdR52u4iQ13fM6VAPNRDAvEwIBbfbpcl/JHzGWU=;
        b=bhp/x922DShH2KeP+jc793Z2zXl3rrCJBJ7g9yXF9aqvy9x/iGVhjr/RLpRD4TRoYB
         as3+U9RSiqrxOKev8ZZc5py9rKl3e+YJW3hG7+PnkdPllY0BwCc60nkH13plwhPwdOiI
         0WQ59iGnENjFzFDiejBVpz5oPD8uZWgvGgGHbxSomUo8AbB9fBfAW7PAYuFVVxBtyVMB
         vhcqMRFR4n8NvpdvdFELEwYpujl0MImNwRflc9Kiu82nF2NPecXX17QE/kcACGLpnt1u
         IfjlFCvxPityJGcZnnzVfCpwxVk5vsSkkO4U1SElFpdfpCFI2DQrFzlspGoRhsh2yBuI
         feeQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772623522; x=1773228322; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jqB5j+E4DSf4EbBKzvqlflmatvTKbzzjeiwDCgjc31o=;
        b=IxEvYGudPugTDdE5+voR5yaGJDHqY2PmaCY99A2VoGi39FflmVHgwMTRtrwNvyK0Vh
         HDw27UZrSVAquCi4uH07lVkfcf4tsVip5mwdD/bbpqNky0FOegSCS/Rx/upC8Vng0rUP
         fXsI57ru5IHasFmKJU11NQD+Z+pmhYJSeJynEQ+G0QSYwNYCT1iOXIdDh798K29aDae/
         ffE8poGGvyJnyyrF4MGV990rmXuJNua6zf/Aa8JQt8bMpvp0ZCKk+Ya6sjtSVN6GTAmS
         OQ113ItDkAQUr0Mn7bOQUPGittGjOL+IKmoNSSzubkx9w+0R0AwI8ClkpvGQyzsdExoL
         gdOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772623522; x=1773228322;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jqB5j+E4DSf4EbBKzvqlflmatvTKbzzjeiwDCgjc31o=;
        b=rVQDx/raVZjWukZx/hYk6fVkaZrxg5iSHMFzIwqSMIBdEZpyHGV8i+ewZAXQ61qjiQ
         Kkqf1mVW2r4xcLobIymLpc4HIUrdVc5DTCv2Xtw8IR4Xt+igjTdEfAZDq3WIG0cvtuE3
         op50DWwhg8avJD2nzURxBDTBaiAdLfHMkYF2zWclTH6048g6VAIZ06hKMsetFEaJIkxQ
         arc3RywwVFxqadr9DZkpw0U3SmlzQapvsTjzsUwx5OT5rBXJ67HHsUiJCAW5XdXu0UO6
         yJ8XUepKqqz+M56vd7pbL8aQWOQMvK+NHb0SgUYI6Dh2NszqvBIy92xB9wCCIndfnHYN
         Px1w==
X-Forwarded-Encrypted: i=1; AJvYcCV+jVlnQj/Lv4lhUVcRpZo3b+6DxoxTNJ1yKCAfvkyJuOKhX2CPJko7Nstg/3xSPDt8cDbF3GruDHGcWFyjnw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwfKwuydAbQ1BqG/fJanJYvJDBhUiiNasJwVLzNU3PzSeu5ltcE
	P2XBvqBB8FBSH2axk55xj91lxPhMrWrHJj1bfGDlwCvbM8NsNzA+astSKUbfJ0nu99/GunmAxUp
	H0j4/iRVCGqc2sFwlPYLxkaNum+uV9QhDz9Qk1xZ6og==
X-Gm-Gg: ATEYQzwH6rR2mO4U/jJd+g0wVTgRMtHvBCJrX0l6/K0eqDLMgS0mslmdWS/Ksc1Udmv
	kjHAT+fKdNc1T5sc82rsVznphgDIB5QJ/6Gz1JCySA5tjB47uupvziv++bDDb0wRPPrslCX2mmV
	/fShzMBHvMyrOh9VpbxvB4Fc4gBC8IcFi8aXzGnCJx5WC8qrMf9XcY3QZ3gCL+vhAU23zJYtgUM
	u8PN4z2ctXi/QmPHDZHdw6qzoGquD213neT7geC8zdtzYxYXkf5oK+3T2a7Q3h2JGr8LucJCawp
	qG66ihlI
X-Received: by 2002:a05:651c:1541:b0:382:fccd:f999 with SMTP id
 38308e7fff4ca-38a2c7bc7c6mr16035541fa.25.1772623521873; Wed, 04 Mar 2026
 03:25:21 -0800 (PST)
MIME-Version: 1.0
References: <1771988101-49877-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1771988101-49877-1-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Mar 2026 12:24:45 +0100
X-Gm-Features: AaiRm50bUQu-RI-pXbdDTdDQj139yGzcF2dqA4SgUmdK1yk7k6TutZG0mI55cco
Message-ID: <CAPDyKFrG1GFPPa=H0pnvX-+SpwD30vad8YYsBp7tZd5H_huxUA@mail.gmail.com>
Subject: Re: [PATCH v3] pmdomain: rockchip: Fix PD_VCODEC for RK3588
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Finley Xiao <finley.xiao@rock-chips.com>, Frank Zhang <rmxpzlb@gmail.com>, 
	linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_032524_385220_96D12984 
X-CRM114-Status: GOOD (  18.86  )
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

On Wed, 25 Feb 2026 at 03:55, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> From the RK3588 TRM Table 7-1 RK3588 Voltage Domain and Power Domain Summary,
> PD_RKVDEC0/1 and PD_VENC0/1 rely on VD_VCODEC which require extra voltages to
> be applied, otherwise it breaks RK3588-evb1-v10 board after vdec support landed[1].
> The panic looks like below:
>
>   rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'rkvdec0' on, val=0
>   rockchip-pm-domain fd8d8000.power-management:power-controller: failed to set domain 'rkvdec1' on, val=0
>   ...
>   Hardware name: Rockchip RK3588S EVB1 V10 Board (DT)
>   Workqueue: pm genpd_power_off_work_fn
>   Call trace:
>   show_stack+0x18/0x24 (C)
>   dump_stack_lvl+0x40/0x84
>   dump_stack+0x18/0x24
>   vpanic+0x1ec/0x4fc
>   vpanic+0x0/0x4fc
>   check_panic_on_warn+0x0/0x94
>   arm64_serror_panic+0x6c/0x78
>   do_serror+0xc4/0xcc
>   el1h_64_error_handler+0x3c/0x5c
>   el1h_64_error+0x6c/0x70
>   regmap_mmio_read32le+0x18/0x24 (P)
>   regmap_bus_reg_read+0xfc/0x130
>   regmap_read+0x188/0x1ac
>   regmap_read+0x54/0x78
>   rockchip_pd_power+0xcc/0x5f0
>   rockchip_pd_power_off+0x1c/0x4c
>   genpd_power_off+0x84/0x120
>   genpd_power_off+0x1b4/0x260
>   genpd_power_off_work_fn+0x38/0x58
>   process_scheduled_works+0x194/0x2c4
>   worker_thread+0x2ac/0x3d8
>   kthread+0x104/0x124
>   ret_from_fork+0x10/0x20
>   SMP: stopping secondary CPUs
>   Kernel Offset: disabled
>   CPU features: 0x3000000,000e0005,40230521,0400720b
>   Memory Limit: none
>   ---[ end Kernel panic - not syncing: Asynchronous SError Interrupt ]---
>
> Chaoyi pointed out the PD_VCODEC is the parent of PD_RKVDEC0/1 and PD_VENC0/1, so checking
> the PD_VCODEC is enough.
>
> [1] https://lore.kernel.org/linux-rockchip/20251020212009.8852-2-detlev.casanova@collabora.com/
> Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")
> Cc: stable@vger.kernel.org
> Suggested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Applied for fixes, thanks!

Kind regards
Uffe


>
> ---
>
> Changes in v3:
> - drop tags
> - rework it for just changing PD_VCODEC(chaoyi)
>
> Changes in v2:
> - collect tags
> - correct TRM section(Sebastian)
>
>  drivers/pmdomain/rockchip/pm-domains.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 997e93c..44d3484 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -1311,7 +1311,7 @@ static const struct rockchip_domain_info rk3576_pm_domains[] = {
>  static const struct rockchip_domain_info rk3588_pm_domains[] = {
>         [RK3588_PD_GPU]         = DOMAIN_RK3588("gpu",     0x0, BIT(0),  0,       0x0, 0,       BIT(1),  0x0, BIT(0),  BIT(0),  false, true),
>         [RK3588_PD_NPU]         = DOMAIN_RK3588("npu",     0x0, BIT(1),  BIT(1),  0x0, 0,       0,       0x0, 0,       0,       false, true),
> -       [RK3588_PD_VCODEC]      = DOMAIN_RK3588("vcodec",  0x0, BIT(2),  BIT(2),  0x0, 0,       0,       0x0, 0,       0,       false, false),
> +       [RK3588_PD_VCODEC]      = DOMAIN_RK3588("vcodec",  0x0, BIT(2),  BIT(2),  0x0, 0,       0,       0x0, 0,       0,       false, true),
>         [RK3588_PD_NPUTOP]      = DOMAIN_RK3588("nputop",  0x0, BIT(3),  0,       0x0, BIT(11), BIT(2),  0x0, BIT(1),  BIT(1),  false, false),
>         [RK3588_PD_NPU1]        = DOMAIN_RK3588("npu1",    0x0, BIT(4),  0,       0x0, BIT(12), BIT(3),  0x0, BIT(2),  BIT(2),  false, false),
>         [RK3588_PD_NPU2]        = DOMAIN_RK3588("npu2",    0x0, BIT(5),  0,       0x0, BIT(13), BIT(4),  0x0, BIT(3),  BIT(3),  false, false),
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
