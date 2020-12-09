Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FA8AC4361B
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 21:44:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BA3823C91
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 21:44:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3BA3823C91
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vMF+4PGsUdJatMI9PG+wI6m+zyoAfsbcfKa1fIU2rGc=; b=YnGAs2w/W5wbau8Wj8MzfdQbh
	B0LE9rBwePn0BjN7mjP+GHZRaTfgMrLW05QVtRLg0+DKCWKrTOqRFBybvzUp4a30pENfCXEuVqzaD
	VjlnUm2TAuGUepa1T1Bsg8MZwQbJABYRial+uBGgnT9yo6c/UllxI7e3tx3nd4+yFPeh6439Bp76x
	8cgdt6UcmOqPbrDGOWvhh8TbdDSR/y5+WaivybYHI3AxzDrd/ZIkcjuEfLQzc+Pgs6QtbZ6bByzYg
	Oiyd8vZN4hW4Jv8Wg5H4gELZN2saPXMwh6mJ7gvIX+Q5qV1LYtlTeSeKFjht9VFlWVKH+M5sgCBtE
	GsyEGQmww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn7Fn-0007JU-29; Wed, 09 Dec 2020 21:44:07 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn7Fk-0007HP-O8; Wed, 09 Dec 2020 21:44:05 +0000
Received: by mail-ej1-x642.google.com with SMTP id d17so4331509ejy.9;
 Wed, 09 Dec 2020 13:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TYfiACm4P9e4Q3UXzVvxYYSBgj6W7482KDX0U+gqWbs=;
 b=dZmtXaLDGCUswwrzjS8ONF2OhQRmKYjl1nzSnc3mmiJsqNbVqL3manL5sjzglo7CCY
 1wc497+Sbhlix2kE2CrMvplc808zgbRKSC03CDIRVaXDRwMrqK+7SWFQDwil2NB2dPTg
 pDdUrg0oWsnoDkoNZpHgxWJgDl8njos5JD/PPNU/lEER943nhqRrpxItMT8/mKCOrlgb
 Oh/rLXbDyZJOr6qzKQ8ogKqLAKm540ml5BK9bltrYai3mshwQvG5mLxWAumPqnD8CKSz
 YtOSQPzHKU0JffPiybQFEFyydZIsbEvTbikLd3is5hvLpi4gEcLCpdGVPZCKuwOt5yl5
 YnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TYfiACm4P9e4Q3UXzVvxYYSBgj6W7482KDX0U+gqWbs=;
 b=g38rn6sgI5GqaRClaj24OwxTO3kdd6G5DG/pXM06d19Y4PbaESm+biK8bZHZpjUQdA
 j5W2VjoFVK5LdAn0V349FhuK+tGvjSSxpmREHxoNbDqp86yuFBVsE8lpVSbL+TW9gpRd
 clhO6BLqqm2J5BP//B9k7MDqluEAgTz4CC9jitAeZUXVKnTiARi2tbXbjrMws3RBBg/3
 dHFM3nvOV/94ZUaGMyHvdgZ/r5QJ6/BTOiDLKM2RrrR897R7NfBLyWmGS5cFM87IVtZX
 7gzqTKpax1pGGZiK36lWCYUvZ6InQh+rbyw3971uX0eNqsg3H8tvQx1p9UWtMR0tHagN
 7Yiw==
X-Gm-Message-State: AOAM533uuNYcjdr1oZhPh3h963B1Ymk5aQNy6Jzvb76emxuAjpqpd8Tx
 VSy7rR8So/9QY+08No0xYXE=
X-Google-Smtp-Source: ABdhPJw8Oidd7MiYim2KDHlebjhNwIYc6G5UNWFqv7rjerwne/emDzLWDDd6gsqRcg/RCqRAXT5FGQ==
X-Received: by 2002:a17:906:4994:: with SMTP id
 p20mr3748565eju.391.1607550242169; 
 Wed, 09 Dec 2020 13:44:02 -0800 (PST)
Received: from skbuf ([188.25.2.120])
 by smtp.gmail.com with ESMTPSA id lc18sm2600554ejb.77.2020.12.09.13.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Dec 2020 13:44:01 -0800 (PST)
Date: Wed, 9 Dec 2020 23:43:59 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v6 0/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <20201209214359.gt4wisqh65oscd4i@skbuf>
References: <20201209212017.vx7dps3jasjcwg6j@skbuf>
 <20201209213449.GA2546712@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201209213449.GA2546712@bjorn-Precision-5520>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_164404_902640_743C93A2 
X-CRM114-Status: GOOD (  15.74  )
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
Cc: kw@linux.com, heiko@sntech.de, benh@kernel.crashing.org,
 shawn.lin@rock-chips.com, Alexandru Marginean <alexm.osslist@gmail.com>,
 paulus@samba.org, thomas.petazzoni@bootlin.com, jonnyc@amazon.com,
 toan@os.amperecomputing.com, will@kernel.org, robh@kernel.org,
 lorenzo.pieralisi@arm.com, mpe@ellerman.id.au, michal.simek@xilinx.com,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 rjui@broadcom.com, f.fainelli@gmail.com, linux-rpi-kernel@lists.infradead.org,
 Jonathan.Cameron@huawei.com, bhelgaas@google.com, jonathan.derrick@intel.com,
 sbranden@broadcom.com, wangzhou1@hisilicon.com,
 Michael Walle <michael@walle.cc>, rrichter@marvell.com,
 linuxppc-dev@lists.ozlabs.org, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Dec 09, 2020 at 03:34:49PM -0600, Bjorn Helgaas wrote:
> On Wed, Dec 09, 2020 at 11:20:17PM +0200, Vladimir Oltean wrote:
> > On Wed, Dec 09, 2020 at 02:59:13PM -0600, Bjorn Helgaas wrote:
> > > Yep, that's the theory.  Thanks for testing it!
> >
> > Testing what? I'm not following.
>
> You posted a patch that you said fixed the bug for you.  The fix is
> exactly the theory we've been discussing, so you have already verified
> that the theory is correct.
>
> I'm sure Krzysztof will update his patch, and we'll get this tidied up
> in -next again.

If you were discussing this already, I missed it. I was copied to this
thread out of the blue two emails ago. I also looked at the full thread
on patchwork, I don't see anything being said about the culprit being
the size of the config space mapping.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
