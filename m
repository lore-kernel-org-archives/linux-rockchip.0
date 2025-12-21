Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CDC4E66886
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 14:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwjzkoxKfTt7u1aBQiVS5f8p/jx5O2T1wOYT1m/kmEs=; b=AS8xQKxUWqt4kX
	ZXXkfVYV/O5zCwNzpOY8FPoLmguncxDLzNV7CE8D6Ec6xgZXF6zf9zsnXK8wBD/UsV7uT3XYtWfsv
	oZuvxmJ6so3exQNKLlPr7wAzmGJH6AZHCayQzFHOenkW2hncQ2+Pwu2ln6kDbRmbz5vtRZV1KiLvz
	57YQIF8hTZeUTsR3/9YVXbYbghZcJHca07P3AW1216T/BARH+Gc0wy7wXPr3JWXBUn0Lk9EudXNrZ
	fd5Ew6PcIVT+hKZfkyFo4X/n30AQhqW3F9jpVqZ1X19f267/WPSb5IT2VdqU+63MwI/P3cDcwfuA9
	huJcS3tcS1VS+lz61g7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXJzz-0000000CUbt-2okz;
	Sun, 21 Dec 2025 14:01:27 +0000
Received: from out-183.mta1.migadu.com ([2001:41d0:203:375::b7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXJzv-0000000CUbG-02ll
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Dec 2025 14:01:25 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1766325674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EnCgnR5pTlWvp05mToIOM/ovHvN7nLfvjB4hRz8Cv1Y=;
	b=SLxOPTJDtC3c7LfUo1AcgFHLJLpMjXLQUptfsVcW3HBlJ8+y4fc+eT6XmfmhYY0isrrbFq
	TZJpV51QsD0kcBTYEZ+mCEuZ/v29jbNztc58CTfkjNFtnP/AQzzHavAWOAfmFr7KUVTgA3
	pqQ9LTzPRRHEYbWnGMxIptUcY2WL2O63t1yVwQ22Ktwj+KmBmZNULHQwyTidYOu27knilY
	Yce+cFruuDCSRY80ep48abU+ZZEuceb82GkdH6Q9PcyR0TnxRAUfMnp6vag4dy/ytmlR2K
	mD2AWES6l1QFDLJig7/mFibHMdBgWJvxi2EmPx8ITaafHM05p5K8NqxN/xyISA==
Date: Sun, 21 Dec 2025 15:01:11 +0100
Message-Id: <DF3Y6Z8X4GC6.11WQOENQD4EDW@cknow-tech.com>
Cc: <linux-kernel@vger.kernel.org>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Dragan Simic" <dsimic@manjaro.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3] extcon: Fixed sysfs duplicate filename issue
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Michael Wu" <michael@allwinnertech.com>, <myungjoo.ham@samsung.com>,
 <cw00.choi@samsung.com>, <andriy.shevchenko@linux.intel.com>
References: <20251024024946.16618-1-michael@allwinnertech.com>
In-Reply-To: <20251024024946.16618-1-michael@allwinnertech.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_060123_699489_CA2A99F8 
X-CRM114-Status: GOOD (  18.85  )
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

Hi,

On Fri Oct 24, 2025 at 4:49 AM CEST, Michael Wu wrote:
> With current extcon_dev_unregister() timing, ida_free is before
> device_unregister(), that may cause current id re-alloc to another
> device in extcon_dev_register() context but sysfs filename path not
> removal completed yet.

I periodically get errors like this:

[    7.116152] rockchip-usb2phy fe8a0000.usb2phy: error -EEXIST: failed to register extcon device
[    7.117005] rockchip-usb2phy fe8a0000.usb2phy: probe with driver rockchip-usb2phy failed with error -17

This was today on a NanoPi R5S (rk3568), but I have seen it before and
on multiple devices. They are all Rockchip based, but that's (quite)
possible because that's what I use the most (and where I pay quite a bit
of attention to dmesg).

Slightly fuller dmesg output of the above error is here:
https://paste.sr.ht/~diederik/42c6b3405386c823cd9f837d73a9a32e810361be
And via 'journalctl' I hopefully got the full dmesg output:
https://paste.sr.ht/~diederik/7a6109115b1ad85290de482db091dad3759ec159

Here are 2 similar logs, this time on PineTab2 and Quartz64-A (both rk3566)
https://paste.sr.ht/~diederik/cfe606801d3dab0267bea7049687d24c0d6e8d71

Those are all the logs I have saved, but it has happened several times
besides that. But most times I just rebooted and didn't save the log.
Today I looked a bit further, found commit 7bba9e81a6fb, searched on
lore.k.o and found this patch.

So I'm wondering whether this patch would also fix 'my' issue?
Or is this a different issue?

Most of my kernel modules are ``=m`` which is possibly a factor. And
because of that, -EPROBE_DEFER probably happens several times.
Dunno if that's relevant, but figured I'd mention it.

Cheers,
  Diederik

> The right timing shows below:
> on extcon_dev_register: ida_alloc() -> device_register()
> on extcon_dev_unregister: device_unregister() -> ida_free()
>
> stack information when an error occurs:
> sysfs: cannot create duplicate filename '/class/extcon/extcon1'
> Call trace:
>  sysfs_warn_dup+0x68/0x88
>  sysfs_do_create_link_sd+0x94/0xdc
>  sysfs_create_link+0x30/0x48
>  device_add_class_symlinks+0xb4/0x12c
>  device_add+0x1e0/0x48c
>  device_register+0x20/0x34
>  extcon_dev_register+0x3b8/0x5c4
>
> Fixes: 7bba9e81a6fb ("extcon: Use unique number for the extcon device ID")
> Acked-by: MyungJoo Ham <myungjoo.ham@samsung.com>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Signed-off-by: Michael Wu <michael@allwinnertech.com>
> ---
> ChangeLog:
> V2 -> V3: Dropped some noisy lines in commit messages, suggested by Andy Shevchenko
> V1 -> V2: Update commit msg, suggested by Markus Elfring
> V1: https://lore.kernel.org/all/20251011053719.87055-1-michael@allwinnertech.com/
> ---
> ---
>  drivers/extcon/extcon.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/extcon/extcon.c b/drivers/extcon/extcon.c
> index e7f55c021e562..c08f642d7f5ee 100644
> --- a/drivers/extcon/extcon.c
> +++ b/drivers/extcon/extcon.c
> @@ -1371,10 +1371,10 @@ void extcon_dev_unregister(struct extcon_dev *edev)
>  		return;
>  	}
>  
> -	ida_free(&extcon_dev_ids, edev->id);
> -
>  	device_unregister(&edev->dev);
>  
> +	ida_free(&extcon_dev_ids, edev->id);
> +
>  	if (edev->mutually_exclusive && edev->max_supported) {
>  		for (index = 0; edev->mutually_exclusive[index];
>  				index++)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
