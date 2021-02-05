Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2838DC433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 18:42:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C48C464EE8
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 18:42:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C48C464EE8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XYRXnN45hAxT/4Fd4xoVGBa5HKo225HFo9Ix6X2zppk=; b=BTX2F667q1H5mVRUevV/tCEqt
	emmzxc0zVeIYzej99dlHc17Aj9JokWPBVsKhwXYZ3IZO+zJX1Tek3igV2RiglZTr2cGkwFn+dy+nL
	hHsF3e2IzptsfgBuSrUL9eG6rdRvDTuyQ+ujlGUQx5BJftn7SUnoW/BFBjHnfzppdwQY3YClUyGo4
	FK9CblU1U8cMbetvuRZOlVNtXYD6e93Az6+yl75o7HoXhDuQd+cUYLb5EKaEWNlPlNMWBjDK+dBZA
	iYrJwHMkQI+tQiTHxMVvSTIWNv87TBB/HJrOcCT2swfKN9k1A+ioIab1GNeSxA7y9ELpkbS2jaYpT
	VBKJcX8QQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l863S-0005Y1-Kg; Fri, 05 Feb 2021 18:42:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l863O-0005XF-EM; Fri, 05 Feb 2021 18:42:03 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6922E64EE8;
 Fri,  5 Feb 2021 18:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612550521;
 bh=Och95jZSPmS5JZOu3rWCNdzFapqEaxA4bX7uCQJwQso=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IX2kVxDXqUuV7iowgJJWwlByQAXihwSnK8hf2TkQT1LjJOn+hvItadXV2bJyoRau7
 HOKkWGUOj+U72dTLpf3ngoAqJxxjr7HVVQLOZ3JeSerI0czD9EOtEjff0dN5pwjAzL
 lHXtfzrHcLi0OEG13gFG+8vkS1XZn7EwSFmEV6Q4u24sKbaLeKU3RydjLgcxSyVqH9
 o8/POigpER9rYtSUxohfdtok+MTincfAKZNBVtrzVs0qURvp6KhO+I3fVBFRCsQ/aP
 QPOOkbBMHxXEPzJyBa4FDHBlm1WDl8DvdHUM+I5p77ZkVSZ+QkDIpX6sWoKuZFbqjt
 APStkyUYfhrCw==
Received: by mail-ed1-f54.google.com with SMTP id df22so10015677edb.1;
 Fri, 05 Feb 2021 10:42:01 -0800 (PST)
X-Gm-Message-State: AOAM531bANRtU6rSG/b3RLX90pNn7IKekQSazzHqw6cKaMOFyu2g1Ruc
 /laLpl/fdLtEa2vG88ed+F43Mm+LEvl7QrRR/g==
X-Google-Smtp-Source: ABdhPJwnoYzJJaU11tmANzpBNOiB4Jrz6Z0M34lW0MRbvQXE//h7k1Ng7TT1yLPvbcgMbS512EbgqHcxVP6l+HwWAJM=
X-Received: by 2002:aa7:c895:: with SMTP id p21mr4907518eds.165.1612550519893; 
 Fri, 05 Feb 2021 10:41:59 -0800 (PST)
MIME-Version: 1.0
References: <20210205114011.10381-1-jbx6244@gmail.com>
 <20210205114011.10381-6-jbx6244@gmail.com>
In-Reply-To: <20210205114011.10381-6-jbx6244@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 5 Feb 2021 12:41:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJwNdUfoYM8SZmOgMG9iAyZkJ4-kzjjiDDm_mdmghTEOA@mail.gmail.com>
Message-ID: <CAL_JsqJwNdUfoYM8SZmOgMG9iAyZkJ4-kzjjiDDm_mdmghTEOA@mail.gmail.com>
Subject: Re: [PATCH v3 6/8] usb: dwc3: of-simple: add compatible for rk3328
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_134202_571672_165F8CB0 
X-CRM114-Status: GOOD (  20.17  )
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
Cc: devicetree@vger.kernel.org, "heiko@sntech.de" <heiko@sntech.de>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Feb 5, 2021 at 5:40 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> From: Cameron Nemo <cnemo@tutanota.com>
>
> Add a compatible to be hooked into by the Rockchip rk3328 device tree.
>
> The rk3399 compatible cannot be reused because the rk3328 SoCs may
> require a specialized driver in the future and old device trees must
> remain compatible with newer kernels.

Yes that's important, but...

> Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  drivers/usb/dwc3/dwc3-of-simple.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> index e62ecd22b..93bc34328 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -171,6 +171,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
>  };
>
>  static const struct of_device_id of_dwc3_simple_match[] = {
> +       { .compatible = "rockchip,rk3328-dwc3" },

Why does this driver need it? In fact, you don't want this driver to
bind to the dwc3 node as we're binding to the 'snps,dwc3' driver.

>         { .compatible = "rockchip,rk3399-dwc3" },

Given the above, you might think we should remove this, but we can't
since there are old dtb's with the dwc3 child node.

Presumably you are getting lucky here (with link order). The kernel
has no logic to decide which driver to bind to if there are 2 matching
drivers. If we did, it would probably be the opposite of what you want
here as we'd pick the most specific match. This driver should probably
bail probe if no dwc3 child node.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
