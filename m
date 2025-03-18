Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE174C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 17:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lt8wd8LfhGwKSE/Zcy1W9D2J4M1nl8r9Jmt/Z3lP0/g=; b=endF3Qf1Rmfoy852/vwnBevDTm
	h3twohsg8OaC2umig66ioftUSKQuzFNfplAQTkjrTbiYxa2Lm+YqIOhT3kkZkaPlXiqrxQvtfCZ7g
	BtJhgMTRZLLVcpdpLK60J+UixrKmbYo7259GEkNZUqdzfYfuWevNmj2tCODUp/5pqWZZi2sNLWO9n
	i5us6uiLfgUGGS9MVdSI/HhC9FNieK2C1vuqbNqeVFBS5Tr8vxzGMkKRwQ/L9jtMqZb2VZ6uXDYNl
	g6R5gqFt9E7o3lZLrUZ4+jI6JS7G3GKViQ7Tshc2JRD99cH6r2AwIki2m1JmGICSHR02vxZbOpbVx
	dZ+UJCvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tub3R-00000006jBW-1Bme;
	Tue, 18 Mar 2025 17:48:41 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tub2L-00000006izX-145h
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Mar 2025 17:47:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1742320040; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZUI7VTvWrHV1ge5QxUKg7jLA24lS3xKQLLsTR+cszhPNkADjf50CEOp6mcpnBngORgib39Ch3jWYF5izBmniMK6Zx2CsTvwisEyrmBPVFBttDjpcWHUF7pEDlhi8TMFWqNUXrdIFVmIGjsp2yQ6fkDXdsbBuN87nc83GhKnGuZY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1742320040; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=8PT3IpB2/LOiozh6p1ULOoH2S1XclfQa8VO/KYFkLiI=; 
	b=DOOBfLxLLeZOAsJRVOZxecRieMHe/+gqiRUPJ0OW9jVAd9lAQrU0oPELLPOq7bLolvADGzrsaVvKJg/YILTeiAyi03/PFHvVTbITfdsURHKxVRQ0rtxBHD1FM3lzSnRmZW0fo8U9gDG10E7OvWSk13i2q+88NPpz5sht1JO8stI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=shreeya.patel@collabora.com;
	dmarc=pass header.from=<shreeya.patel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1742320040;
	s=zohomail; d=collabora.com; i=shreeya.patel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=8PT3IpB2/LOiozh6p1ULOoH2S1XclfQa8VO/KYFkLiI=;
	b=GK9xVhLrmZ+RlMVzef2rEy8Us2nxLiODb3V9R6P4kc7lbaxnT18WYMoWsaKZzVBS
	WVPjlaWqtq6g06qBsQPxlCXtF4gEBhdB7ul4YgzF4dC38wPX19JTtbg9QDQkdjdySvE
	qkMfjf0KkhYv5CdoRGA0zCVgzmM8sPolg4yn+bKk=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1742320038090674.9001947899728; Tue, 18 Mar 2025 10:47:18 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:17:18 +0530
From: Shreeya Patel <shreeya.patel@collabora.com>
To: "Geert Uytterhoeven" <geert+renesas@glider.be>
Cc: "Dingxian Wen" <shawn.wen@rock-chips.com>,
	"Dmitry Osipenko" <dmitry.osipenko@collabora.com>,
	"Hans Verkuil" <hverkuil@xs4all.nl>,
	"Mauro Carvalho Chehab" <mchehab@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	"linux-media" <linux-media@vger.kernel.org>,
	"kernel" <kernel@collabora.com>,
	"linux-rockchip" <linux-rockchip@lists.infradead.org>,
	"linux-kernel" <linux-kernel@vger.kernel.org>
Message-ID: <195aa5df0ad.1177aac592665581.1522789073273936352@collabora.com>
In-Reply-To: <fa5622428f071a20ca5df96218aedc84fb7edc1a.1742306464.git.geert+renesas@glider.be>
References: <fa5622428f071a20ca5df96218aedc84fb7edc1a.1742306464.git.geert+renesas@glider.be>
Subject: Re: [PATCH] media: platform: synopsys: VIDEO_SYNOPSYS_HDMIRX should
 depend on ARCH_ROCKCHIP
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_104733_365865_9E35EEA4 
X-CRM114-Status: GOOD (  16.40  )
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

 ---- On Tue, 18 Mar 2025 19:33:27 +0530  Geert Uytterhoeven <geert+renesas@glider.be> wrote --- 
 > For now, the Synopsys HDMI HDMI RX Controller is only supported on
 > Rockchip RK3588 SoCs.  Hence add a dependency on ARCH_ROCKCHIP, to
 > prevent asking the user about this driver when configuring a kernel
 > without Rockchip SoC support.
 > 
 > Fixes: 7b59b132ad4398f9 ("media: platform: synopsys: Add support for HDMI input driver")
 > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
 > ---

Thanks for the patch Geert

Reviewed-by: Shreeya Patel <shreeya.patel@collabora.com>


 >  drivers/media/platform/synopsys/hdmirx/Kconfig | 1 +
 >  1 file changed, 1 insertion(+)
 > 
 > diff --git a/drivers/media/platform/synopsys/hdmirx/Kconfig b/drivers/media/platform/synopsys/hdmirx/Kconfig
 > index 27e6706f84a37375..4321f985f6320611 100644
 > --- a/drivers/media/platform/synopsys/hdmirx/Kconfig
 > +++ b/drivers/media/platform/synopsys/hdmirx/Kconfig
 > @@ -2,6 +2,7 @@
 >  
 >  config VIDEO_SYNOPSYS_HDMIRX
 >      tristate "Synopsys DesignWare HDMI Receiver driver"
 > +    depends on ARCH_ROCKCHIP || COMPILE_TEST
 >      depends on VIDEO_DEV
 >      select MEDIA_CONTROLLER
 >      select VIDEO_V4L2_SUBDEV_API
 > -- 
 > 2.43.0
 > 
 > 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
