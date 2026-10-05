Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19E78CA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 23:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W82lQr4wqSaBAW8GFEqlINr0k5vBsyLDTC/LJOp7HP0=; b=cJztVL30kygF/L
	VCD8WJ8CB/5MbvtCdd+S3CREiXNKDs1R4AUVsIDU0vu39ObNvoLY+w3Bd0NUkxJQRCWUvJ3UwOAA5
	54TdMz8A9k/7qVGv5aVjJm/iPtcFOg+G2R77vaO2lPMp8C9+elrb7/ljCOPcJfk2ELQt7dxJLrMWD
	maEg0WnMsZbMwmiCMeoJz5ro2s4n36PyWU7LG5FWwdKu/gqCG5ZTN1zujO+DWOoXQ5r0VjO57hWkz
	xD6FLOZOGNoBKSFB7RHz0BJSI/Qp+l9kRc3ouaXmdusJhKa9iTfFwhwTewSf+8wgqbvJEBkSdh+un
	ZsVC06yJVVjwxhBNd2ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDs6E-0000000HKOO-11yL;
	Mon, 05 Oct 2026 23:28:02 +0000
Received: from mail-pj2-x06.google.com ([2607:f8b0:4864:39::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDs6B-0000000HKNY-1WP7
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 23:28:00 +0000
Received: by mail-pj2-x06.google.com with SMTP id 98e67ed59e1d1-3964e7720afso763962a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 16:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791242878; x=1791847678; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=B/zPhhqSzZgiqvCy2v2R07ljbiJnf/kj+cRVGXz4l2o=;
        b=SigZaYHw1/FRNVSglcGINAYO8Q6Qf6XFc4W51LkL6dQTOTqO8s9E5jq7SOylGTGbJ9
         m3ztyr6akQL9mW7Og27NF3G6Gw4aTBGYDUZ8oxUNK7qnsM8wNVxmenDMrOdPqjysIC7B
         iBmWvrGXsyqxS6LHEdHtxlHCYubm8LkQOB6Gw0dCi1JK5NrqujR8isazQOXWDc69vazo
         TZGz6LNJFaKT9yenQs6jeRvTk4hLC+hM3UTUQXVSPXfvjn9T4oYa/IkSz5KRaBqSSLE+
         l+IekWJMbjP3eLestdkt0Vk5sno/xDKGg35h9ag8Ld1vwGEJ+3jybR5BOn/Z3U2Pwd6J
         VDtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791242878; x=1791847678;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=B/zPhhqSzZgiqvCy2v2R07ljbiJnf/kj+cRVGXz4l2o=;
        b=lcH7Js0aKXWfBxXNXab2RHl+TZSrcFWLp7q5RXUKjtgpFcAo6PH1T0Usrif0hlOM8d
         B82R/vjaIz5R6BsTLnD1zJSLeUs3tDfJx6p4Xym/1Hgg38BKFIRYuFoWlQDiyAiDmc/7
         g0Z9cbp7545Vz1OWnQELD8jUoZ5HVxu4WOWtUJfvA+6zaDcwkivzt9ECM8BxDlODcdo9
         I6lwVl94RQ0K5lhDO5p8bLwyg/ggGsFB+qOfmtXpX0yUQfJYrhCvX36UqsjeddDtgbTo
         v2w2HRis1T3rpAPFNHRCPpXqXVQ+ewnXF0aAmXrOPJ6PHVA/Wa7+Wa9JxX8E/SSAu8yv
         Zy/g==
X-Forwarded-Encrypted: i=1; AKwUvBzYXnfby9/+tDEGbGFV6FsaXbnC9zaJE/Jgaiw3HKC/fQqlM4TfdrzPmMeLwh4YE8KQcsf+waLg2DHMk5ihOg==@lists.infradead.org
X-Gm-Message-State: AFq9FYLQ9v2Qc77euZOgdssTVIuxZEpFlywbRAk7LtVKOGwBdYTOlLzb
	7r5p3b7/b3AeBh+u5N/TkRYPfGFukFRQ8vL/UYZx+wrtECjZe8jTeN/j
X-Gm-Gg: AYBFou1T6o16KtAlQkZHbKONrqpgBXL+vZdFW91jQkOS2VAYyqRDVEwT1ReSUpNp4As
	hObie7RUOA2GxU4NSZmjKkhZP7/+XAwGZSXFknYrDUjE5+eU6o+N8kyZrPFZ1bk1UcnWcq3HZmx
	Fzmm1vtT2iOkvHrllSHe2OwMggxEdCTObvvv0AwFSahZBumCSZsFanHR2r9ya4bjQmuwgbYpKKl
	smgFXoReZvgJSoGVHCvxjAziMA3Knx3Joi/2k51lqMYuYAXd9LVm0cnvqNeLu6eO28SQutgpotP
	BLbCYIvlahWqgX7dm9iCjcXR+CLMl123/Ed76Mhq4dG3k9hOlCnLV47JCEZmGFGBTqEUlSnzw4M
	kggC3S9G1VMdkS8D6zFWBsFI0C57YQXzAGRVyDr9TTIu/b9pNz+rGDMk5aXGrjhPHexqP0dfm4X
	F0NQ+lzMwOGtbbOP6aqmEZC/gt5YJjU0fmNH1KYO7BA16IYMLW63zfjrV0l6T7GA6Qe3I6/Dh7i
	HaXFHF/
X-Received: by 2002:a17:90b:5144:b0:3a0:a055:1759 with SMTP id 98e67ed59e1d1-3a6cecaa898mr10080837a91.40.1791242878358;
        Mon, 05 Oct 2026 16:27:58 -0700 (PDT)
Received: from ehlo.thunderbird.net ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a6dce36d07sm8230776a91.1.2026.10.05.16.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2026 16:27:57 -0700 (PDT)
Date: Tue, 06 Oct 2026 07:27:52 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: Sebastian Reichel <sebastian.reichel@collabora.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH=5D_pmdomain=3A_rockchip=3A_mar?=
 =?US-ASCII?Q?k_PD=5FPIPE_as_active_wakeup_on_RK3568?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20260925041751.495818-1-coiaprant@gmail.com>
References: <20260925041751.495818-1-coiaprant@gmail.com>
Message-ID: <382B43FA-B225-41C5-80B6-944D9D2802CF@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_162759_426757_5F2B533D 
X-CRM114-Status: GOOD (  15.52  )
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

On September 25, 2026 12:17:51 PM GMT+08:00, Coia Prant <coiaprant@gmail.com> wrote:
>The PD_PIPE power domain on RK3568 hosts the XPCS, the PCIe
>controllers and the SATA controllers.  All of them can act as
>wakeup sources for the system:
>
>  - the XPCS for MAC WoL, through the SGMII link
>  - the PCIe controllers for PME#
>  - the SATA controllers for hotplug wake
>
>The domain is registered with active_wakeup = false, so genpd powers
>it down during system suspend even when a consumer is on the wakeup
>path.  That kills the XPCS and the SerDes, which breaks MAC WoL on
>RK3568 SGMII boards, and it also powers down the PCIe and SATA
>controllers while their drivers still expect the link to be alive.
>
>Mark PD_PIPE as active_wakeup so that genpd honours the wakeup path
>of its consumers.  Consumers that call device_set_wakeup_path() keep
>the domain powered; consumers that do not mark themselves as wakeup
>sources are unaffected and the domain is still powered down when
>nothing needs it.
>
>Several other Rockchip SoCs already mark their PCIe and USB power
>domains as active wakeup, for example RK3588's pcie and usb domains
>and RK3576's usb domain.  PD_PIPE hosts the same kind of
>wakeup-capable controllers on RK3568, so this follows the same
>pattern.
>
>Signed-off-by: Coia Prant <coiaprant@gmail.com>
>---
> drivers/pmdomain/rockchip/pm-domains.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
>index ba66ae719428..16ef0a235f0f 100644
>--- a/drivers/pmdomain/rockchip/pm-domains.c
>+++ b/drivers/pmdomain/rockchip/pm-domains.c
>@@ -1296,7 +1296,7 @@ static const struct rockchip_domain_info rk3568_pm_domains[] = {
> 	[RK3568_PD_VPU]		= DOMAIN_RK3568("vpu",  BIT(2), BIT(6),  false, false),
> 	[RK3568_PD_RKVDEC]	= DOMAIN_RK3568("vdec", BIT(4), BIT(8),  false, false),
> 	[RK3568_PD_RKVENC]	= DOMAIN_RK3568("venc", BIT(3), BIT(7),  false, false),
>-	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false, false),
>+	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), true, false),
> };
> 
> static const struct rockchip_domain_info rk3576_pm_domains[] = {

Hi,

Gentle ping on this patch. It was sent on Sep 25, and linux-pm Patchwork shows it
as "Handled Elsewhere", but I can't find it merged in linux-pm,
linux-rockchip, linux-next or mainline, and I haven't received any review
feedback.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
