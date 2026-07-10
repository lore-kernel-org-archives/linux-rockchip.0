Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0131CC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 08:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d49XGrxvLx4aHkf93nQhpCzy1TQYCKNX93jIVnz10K0=; b=kCPjVDfUBr/eIO
	6EnkZbWa2RY/g5om6hEpHDU0ta0WzEUJANEtlySk5vcJomcGe8eI7GPytu5oWPr/98LVItbDjEh22
	5I/8WQYTFiVTLCJNzPPoBTtrwHrTYtybOsmvD0RCbE0oC5gofeSMkS5eGuvZuTWeKSF01ZyRH8cJH
	pSJbGjHOiqdaSm4YUCOPGAyECuPIvAi6PYCnQzT+mfBtMgQruwlWrmGtfUxC6KNj84ZZuL2DXCbpz
	cxEz4WBFNHnB9RGx1+ag5V1E0z3r0nweGGdFsN7w0J8y18w2/vIcf0w4EYiFeZ6XkYHb5nN4NHQwo
	IeaqqTAK18DxwSGkOcRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi6iQ-00000004TKg-0zX7;
	Fri, 10 Jul 2026 08:36:10 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi6iN-00000004TJz-2DWo
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 08:36:08 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1783672564; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MlqrxxF1wJl30uhcuItAXefnCQNT7gx8V1zSoI9gSvrHhJ+V2cTSQa6Wzn2+prnQnz3y/uAUU6uEXkTYeew+cDSBtOBTb8ZTfXyJEf0MH0sjvthVgaVb6wsIV+kZ5/+l2Gv5lqOIcRHjGR56gZ221EhB1zQhkY8723fS/CHx/rE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1783672564; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=Fw/fy3UoHLfUYgga6EEL6C47y2bXn7ggaSSiSrjCLtc=; 
	b=Lb4l7Atv2XMjCiOjwrrl/0ozFxegzYK9jvPBC+3pQAP6e6qiCPBm9TQNz+5FU8jJQJR3HceqL7swuqha1D/iOtDeAc22DabmJERjmXFyWFMbEqJScthJ+P6sw0O+fdSkbUiQZB4O3+gtoAdXVGCf0/Ob6kV4aT/8Jf037HG8OSg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783672563;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=Fw/fy3UoHLfUYgga6EEL6C47y2bXn7ggaSSiSrjCLtc=;
	b=cBiQXQowncOes/dL4TtYWdPZjV7wKVqO8HHf+jEYoo4mFLbr11w1k4KHTqm1Qg0X
	+LNzGJowwOppaDaSmkfSwn5VJviNJvas+GlYtmw1zQI5Cc0HC7X3qHws3Oixy+5r5XK
	RYbdHNocDkR7A+Csb5qgKht/ZOoZT+4feWT5bPtA=
Received: by mx.zohomail.com with SMTPS id 1783672561028400.80903517610943;
	Fri, 10 Jul 2026 01:36:01 -0700 (PDT)
Message-ID: <ef9fa1fa-0267-45a9-8e4e-00eccffdf470@collabora.com>
Date: Fri, 10 Jul 2026 10:35:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] phy: rockchip: phy-rockchip-inno-csidphy: fix
 rk1808 hsfreq table
To: linux-rockchip@lists.infradead.org
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
 <20260630-feature-mipi-csi-dphy-4k60-v3-1-176792ab71fa@wolfvision.net>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260630-feature-mipi-csi-dphy-4k60-v3-1-176792ab71fa@wolfvision.net>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_013607_648899_5E3851E1 
X-CRM114-Status: GOOD (  13.93  )
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

Hi Gerald,

Thanks for your work.

On 6/30/26 09:48, Gerald Loacker wrote:
> The rk1808 hsfreq table capped at 2499 Mbps, preventing a data rate of
> exactly 2500 Mbps. Extend the final entry to 2500 Mbps to support this
> rate.
> 
> This is essential for RK3588 reusing this array and fully supporting
> rates up to 2500 Mbps.

Makes sense to me.

> 
> Fixes: bd1f775d6027 ("phy/rockchip: add Innosilicon-based CSI dphy")
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>

Reviewed-by: Michael Riesch <michael.riesch@collabora.com>

Best regards,
Michael

> ---
>  drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> index c79fb53d8ee5c..5281f8dea0ad3 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
> @@ -170,7 +170,7 @@ static const struct hsfreq_range rk1808_mipidphy_hsfreq_ranges[] = {
>  	{ 299, 0x06}, { 399, 0x08}, { 499, 0x0b}, { 599, 0x0e},
>  	{ 699, 0x10}, { 799, 0x12}, { 999, 0x16}, {1199, 0x1e},
>  	{1399, 0x23}, {1599, 0x2d}, {1799, 0x32}, {1999, 0x37},
> -	{2199, 0x3c}, {2399, 0x41}, {2499, 0x46}
> +	{2199, 0x3c}, {2399, 0x41}, {2500, 0x46}
>  };
>  
>  static const struct hsfreq_range rk3326_mipidphy_hsfreq_ranges[] = {
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
