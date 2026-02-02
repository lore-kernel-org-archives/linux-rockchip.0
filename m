Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 254C9E7DF16
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAnlxEuDluxHLcM6Chf0C58p6xuvYcKmGfoU6OtWifs=; b=jBWkVZoExRI2Yj
	fpwryfL2T200+Eze1SLl/zwr4A+KdyARUnfH40FiLEDVkHOGNHpqs6uccw2IHMp/4Mq8Mh/Q2FyTp
	HypGYC0nja3V/Fnyw5IIMARdmxy+SitSJhivwG/OV1hFXaVbDoeYDEAKBQJ4N2JgZZNdFk6Uh686Y
	tt/DhS83YfW6KNMEWnuc4f84eLfxG9OeW5l0kiOSxHqzr7a0IN66G7glsquelkDu7LPTskbUNB8Nz
	V9VrJ7SDFUwAziEwDfOeLta4jpN0qRDK+4Hw7jeI+8GH9cCzHNU1231gbDNQtYGuVtw/+JJyWSmTk
	p46ligHQYXw5/vaMmjTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmyLN-00000005P2F-1ETZ;
	Mon, 02 Feb 2026 18:08:13 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmyLK-00000005P1Q-18wA
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 18:08:11 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-658f1fde4bfso3825199a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 10:08:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770055688; cv=none;
        d=google.com; s=arc-20240605;
        b=Eug4TAJKGX1xbepeLMgSoJV/R4zRK887Vj0okDxNXLotTliJ79HFvp9TQRWScnOq8O
         EjGaLk+Hn1LiTuuzgD7lmV9L5X5zGjZBbsbGJ4DGxcePWBx+FcBHgcXrDgBNkwjks8es
         QDY/dLIdaDWIvSbHXaFLEua2Thubi6OqNmX28s9okP4L1s3ZjZ5lPfhv2paWaM/Z9LBB
         cOQAhA2DJbrBvPWhX6QeMrK5qcFGnnWJ4h047CrcSbArYBj2ZWp4vzkvjRc1IfblDVB6
         ec8MPa17D67NZOpAGzp94IxeVTsCkGZjA0b9i7v4COfH5he12UG9dS+OCI+WdWFPvJwY
         C+Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=F8nmJNYA2lQjU4+qs8oOjHrg0i1hA4xuDHcHJv4bmlI=;
        fh=VVTkKcNNlz9MDQzDzFJYryK2lMOVGkstV8+FFWs2kZE=;
        b=BarR93zIhJ84HbVg0NUmdrXfCUwBSBDQ0jscfk7HPaG2OU9l/eCz3ECS8Nt1pAlyqM
         05kuexhG4MH3vfbwIOdVkE/XC/xhp3LZgeKCKQzZhXFjA66xi9iMXzjv4K5DQWiqnFIi
         DsQwYGNfDRfE4eHdUmzbk260RcQyPBWAp3faqPwXWqkN270u86hQWLTxJbJn13+A8WA/
         ntMmVLLHe/kTz1Q7AO2/WSWCSx71JKLPUkoYf7V9UkYmzsX6/k8ItfybJi0Ps+DpzAYr
         swJ5h/t8TGLhbjaXphKOjfl5qHm3+M8gBhMedTHg4qUevB0/VlLvCaxoVeQqTFQfQPZ+
         mdXg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770055688; x=1770660488; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F8nmJNYA2lQjU4+qs8oOjHrg0i1hA4xuDHcHJv4bmlI=;
        b=molvdKyd/IjpTkkQ1iw/MwmAYJDgP+NH/VnkEjPwUwCkPh7UnIfdjZRZ7sSCnIRpcn
         dHwROVXkSdBA6WqbNyNZnRGuz+0v+mgUZqLyuFgr95DZqe6gj5RsRvMbFdNAqL/6/9Mr
         hZt7i5NzvMW/FlUZfGP79c5f7lthZgJZVuLcj0YR3iMtlnzAT7Uv24wfhWl+9ltIeqVy
         4+atPQ0OemfuZ9wpijKlZPRLfznx5Jptek/8ckHCkwP8/WR00z3h/d4jtOqSlM6rvEot
         hYfklmAC9JY5SGpDjCTz8Q+4f//D5uCusBGKZ5Y8b7olMMrKjYUQn1d1rh3xLca8agxs
         z4Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055688; x=1770660488;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F8nmJNYA2lQjU4+qs8oOjHrg0i1hA4xuDHcHJv4bmlI=;
        b=c9xYgttdtWr2kSOWDgCJzdFt4xNQlf9rjnzBJqbA+h14gPKxfFCXq/zyDbbF8eO2pO
         sEHB2qTLOi/EOz8KbPoOdY3OCxgIYy2ePrJcI3N/bRA+ifirC5Rou6FHTQeM7aTvLnZs
         QcwJz1XZNlI9VoQ5OUhO4OlfB/XQkWTw+f6fC+Q7si5O8p2YOtZrDs/sSoYEZox8a8mk
         sEP7veN+WGeg8Qs+M7W5pozCggxnFiE3ai8mSHY19NLBNfMJdjk+wZdW+hPfqxfEmDTM
         BwdYL51igoQ+m9OCEGNW9Hx4LwVaRHP15ywMc+FCofiHewWFsgemTSL5/5RpSUZeHqpe
         dSgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzm5rutYqueWe58GDDwTF3IzONzk3ccK2AmUnruCdZpJvR927HHmxBcPQ2qHvf6C1MBNdbvnmMrMIRQbukgA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzeP6pvHhud9KWNGmd6zb4vTZr5P4JrrqE703BJ/lkNnb0Vbdhd
	VEBuaPure1bZsmxKvvBWRmRgAh90D8h3lBR1fLYdA004vodUv6d1RhIWFvtLmoYeMhHbZDq836M
	/y7G7boYszEyIZ06efQmPtTR/1PqeFBQ=
X-Gm-Gg: AZuq6aIHYV4/juby3XYsHoB1rGyCyIoVDsGGF+RCU7reljSHD/M1vq4iatX9lneU7zU
	orgJYEaZaA1wdIGVeelfMiuboZHhcQzgdCKKFdF1J0XwyIQWI+kJ2NjeNEFeDmTEOEfcfKpkQio
	zIviZX/dgy8t8DP/mA+RtAGxdJ7P9cTWNdj7us0vdUKlieKzDw+rNP8SOWAITdgqwc8Q3H6GPCF
	kOO+dh3jeA6vMIRBhJ6ee+I5jKaYqH//4/+AhE0H+jT7EhznYO2BrFX68HlCsuDhJY=
X-Received: by 2002:a05:6402:1a53:b0:62f:9091:ff30 with SMTP id
 4fb4d7f45d1cf-659327eb130mr152714a12.3.1770055687927; Mon, 02 Feb 2026
 10:08:07 -0800 (PST)
MIME-Version: 1.0
References: <20240809073610.2517-1-linux.amoon@gmail.com> <aXtpg0V_sifQEWHJ@grimm-nixos-ssd-2>
 <aXyHITrZ89Mmn8_J@ryzen> <aYB2IVdh_kth1wtn@ryzen>
In-Reply-To: <aYB2IVdh_kth1wtn@ryzen>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 2 Feb 2026 23:37:50 +0530
X-Gm-Features: AZwV_QiGldhVnV5gsPLLz7K7IUZirLvxF_bXbz8XfJgEu77Yy7zS1U4IFVWDkH8
Message-ID: <CANAwSgQtWifFNFe-rK7s9VCPJ68A7LSP+va2zZWr8W+vgZOjYw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
To: Niklas Cassel <cassel@kernel.org>
Cc: Grimmauld <grimmauld@grimmauld.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_100810_407785_3B72119A 
X-CRM114-Status: GOOD (  16.89  )
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

Hi Niklas

On Mon, 2 Feb 2026 at 15:32, Niklas Cassel <cassel@kernel.org> wrote:
>
> On Fri, Jan 30, 2026 at 11:25:37AM +0100, Niklas Cassel wrote:
> > Note that I've built the network PHY driver that phylib wants to load
> > (CONFIG_REALTEK_PHY=y) as built-in. As long as the PHY driver is built
> > as built-in, I don't think that the problem the modules code is warning
> > about can happen. (But I also don't understand why it is trying to load
> > a module when the driver is built as built-in in the first place...)
>
> FWIW, the reason why PHYLIB tries to load the module even though it is built
> as built-in (i.e. is already loaded) is explained by the following comment:
> https://github.com/torvalds/linux/blob/v6.19-rc8/drivers/net/phy/phy_device.c#L852-L855
>
Yes, I have gone through the history of changes.

>
> Kind regards,
> Niklas
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
