Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 749C2106ACCF
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 16:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3e0RAY8W/6Mm9mUs8T37eBjy79jkqCHS9V81nhoIuwE=; b=dRzcHDybLFI8p4
	+65V/RLbnBZ6HM5aM8xsCZsGm7gmqD20yN+m9ZNCu8B8vawSULQMnPuH8O7Qu92eEZ/OrqKfdfRmz
	WaRyX1n25sSqjUIDlT4JaSy1D9YrrVRFmayiZiyOI8zqr0OAm9VcMKd6GWSX/mNSuiKN2vAvoD8o5
	HItmagJks//9k+PbNtB6URlODCVNFP/m3/9ZwIT9blU2YOM92wk9wfV+02LzqWqWds12x/UhUuMFb
	QsTl4tLASaPzhY6/Icjc5eb14jIX+XfjXp4U7DaCWIR21FVTTDhT2QKzRpkLjSYZ6tSdQNlfNnJgW
	KVCtpA4qeofinfCvxLiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0jJI-0000000EdbG-1qPZ;
	Thu, 12 Mar 2026 16:54:56 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0jJE-0000000EdYn-0bdO
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 16:54:54 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-509006c070eso10771441cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2026 09:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773334491; x=1773939291; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VQXCfPVu6b6dIVECzm0C8AUD7IL7VvpSkD5+M4S95sw=;
        b=UsdsnAJqPQvBZshtgN+VLLU3SwT08TUrr4ghixmMtGsByjJ1qVVWXYQ81GJLYPAQMS
         k/jsNU7shUhDXIm9x/y5r5vSBhTUYOwT5l/P9fRwoqHTWu6G/HMrTKt1nd8IppqVScK6
         oYfxrRlSnEh5Z6hLhagvYqI6BTSYgZug+uUPYF19v2CgPNzAKgDoxkDjOdqRROsxj8Zw
         RaTSGy0d7otss8KX82R3WOLZhr/WYFIyduQDfW7WxW8US8oQcLhN1K9MpJkylY5LU0Bg
         qkMEXYu6exBlWS3thd/XMLJkHngzIZGxE9nMIC2b6k0WkjohyfH7CrLt+vgd4O660HIX
         lRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773334491; x=1773939291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VQXCfPVu6b6dIVECzm0C8AUD7IL7VvpSkD5+M4S95sw=;
        b=Q/TaQsSNZhKIQE68r10iGgQF8C0fqAjLHJhkeisbeeGwzz4tsDxBUjbGejnYNChRU6
         +3+Mt6hs4QmgKRQ2lnJyGjVf5Ahzdhd+S6obuWFKzjDbu9OW53GLtx729iwwHDp5Lm8u
         JWYSwWvfEKAcKDBslCgVEQM9t1JRJoWa0t9aNj80Ja6585TxTAn/49cy8ggerYCOQwsX
         bq7O7UG2tYJ8HZlVjsBnTCyF//b2pYtIZguEZdjVKmeoXio8ZMxOK50jz3lFHdMz+SY1
         qtvfe/H1vDpo7XBzyW4HiM9H7cMeWw0dQ9ARzbV5ysNiIMdFJwDBZqsvng/c6Av9bG4M
         waGQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+lj2k28hcDIQpUpw33Xpy+5G/8BxKKAXPbWUR3WBU7doaqurNQRkmuHzf4B7mejf2OZhx8Fk/7VMbmG8UBg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5aIxVTW5etzNjRtVAmhCn+4ONSEnWqJhg+C5L7hJfZ8/RGqG6
	NpQCPITMPO5W+B+w8elcfLCsq7qdc/+o5ZEit2Rv1Q7QxVv9uAATgNwRH+7HBL/H5cY=
X-Gm-Gg: ATEYQzxXjSCi7oqmjm3DNtdyZqXdKXxpXUdlnaj2xnV18pmBpDRlm1PCVO0gxvut9KD
	lISsv6SHkSD0VL6tH78BTUCpvSdXvav1fp9ItgTBxeK00XUT6/33bvhfhyqQXRju9Egw93wrEKO
	OCrhycQzoHS5dj0D0HmcAvd+85pKM3OtUXdr3d9PsSVHkSQ+YlwxN0gfp+YiuKWNJu4YjGi2QTz
	wuFO7M4OzjR7fKBrA0x4gVfG7ZqsviMWzVM9zemA4Hj2BOZCkXgflVaEpXlj1bw1Etnf2OWRsXr
	iDyeCpeVkIa7qSv9UayfZd4+v70+Br4kDRIkPXXic4Ngk3/QknOEyb222SJhr9v2RI/HGKRY56b
	6L65UKX34ByFJzuCjoslA/fSKQnCSODJ/aJlUGGLk+oBlCxqX7TDt7mAtK9xJ0s04q8C+T/lwez
	mDweN/KEoQjnFNCjodtMBKBjp54vCR5GJLQYdhcFKF3PoyWwfSiQ6fXTNTZDgUSVIXQ2dkGOnyt
	7D5omYfZfR+iucorhU=
X-Received: by 2002:a05:622a:289:b0:509:44c3:5ffa with SMTP id d75a77b69052e-50957e10673mr1403911cf.52.1773334490530;
        Thu, 12 Mar 2026 09:54:50 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5093a119602sm36658181cf.28.2026.03.12.09.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 09:54:49 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w0jJA-00000006i8N-40X9;
	Thu, 12 Mar 2026 13:54:48 -0300
Date: Thu, 12 Mar 2026 13:54:48 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kuan-Wei Chiu <visitorckw@gmail.com>, Philipp Hahn <phahn-oss@avm.de>,
	amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
	linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
	linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
	linux-mips@vger.kernel.org, linux-mm@kvack.org,
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
	sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev
Subject: Re: [PATCH 00/61] treewide: Use IS_ERR_OR_NULL over manual NULL
 check - refactor
Message-ID: <20260312165448.GN1469476@ziepe.ca>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <abBlpGKO842B3yl9@google.com>
 <20260312125730.GI1469476@ziepe.ca>
 <f5688b895eaebabae6545a0d9baf8f1404e8454e.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5688b895eaebabae6545a0d9baf8f1404e8454e.camel@HansenPartnership.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_095452_240078_7AF8297B 
X-CRM114-Status: GOOD (  20.11  )
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

On Thu, Mar 12, 2026 at 11:32:37AM -0400, James Bottomley wrote:
> On Thu, 2026-03-12 at 09:57 -0300, Jason Gunthorpe wrote:
> > On Wed, Mar 11, 2026 at 02:40:36AM +0800, Kuan-Wei Chiu wrote:
> > 
> > > IMHO, the necessity of IS_ERR_OR_NULL() often highlights a
> > > confusing or flawed API design. It usually implies that the caller
> > > is unsure whether a failure results in an error pointer or a NULL
> > > pointer. 
> > 
> > +1
> > 
> > IS_ERR_OR_NULL() should always be looked on with suspicion. Very
> > little should be returning some tri-state 'ERR' 'NULL' 'SUCCESS'
> > pointer. What does the middle condition even mean? IS_ERR_OR_NULL()
> > implies ERR and NULL are semanticly the same, so fix the things to
> > always use ERR.
> 
> Not in any way supporting the original patch.  However, the pattern
> ERR, NULL, PTR is used extensively in the dentry code of filesystems. 
> See the try_lookup..() set of functions in fs/namei.c
> 
> The meaning is
> 
> PTR - I found it
> NULL - It definitely doesn't exist
> ERR - something went wrong during the lookup.
> 
> So I don't think you can blanket say this pattern is wrong.

Lots of places also would return ENOENT, I'd argue that is easier to
use..

But yes, I did use the word "suspicion" not blanket wrong :)

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
