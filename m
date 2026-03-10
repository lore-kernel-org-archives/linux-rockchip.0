Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02F01FD4F1B
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 18:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UWLFF03XP1wOsJUWdUGy2fwCbw4MHw5/9MyDAuopn1g=; b=S06KzSX3Sszfa+
	6ruHLXtGzpH05gWNeDsKsjY9b0uOItchWj2P97NzROpOvYOddw9Tjmv4ssxNTT68nJYZRR5Dj1Y/N
	0b22ntluWuLx/q8fFfvsBxIyESksDNQ4pr/dxbx6SJlFVQMcsUJtQkbTrB4O/TZMNCXReIfwqDcVj
	z58jhsERZmZDc/kupV2Gg9Ff9Km2Fayny9vSHzqtFr1CyA8djsE+F1eGLH1bzlVx/YS+5Tm1iZz+k
	4CygB448A/c2od2+kwrqIFJ70JeA2RZq+02CXP1aBucyxzBbiKKXq4web8NzMA+MimbtB7igO4J4K
	bWBsWw4gmpjMsqQlilrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w020l-0000000A6FP-0ZpG;
	Tue, 10 Mar 2026 18:40:55 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w020h-0000000A6BI-1umx
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 18:40:54 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2ae82df847bso30023715ad.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 11:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773168050; x=1773772850; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bjFZ9oZWWc3RZ4UdO5rq+AZbr7uPDX73K58gh1+yuH0=;
        b=gtLybQfMSjecfKBaGNqaukRn3K/7o8JorJppIKNpCc+QM/VJDFJvQwwbooZQ9FcmwP
         GCJvFN1msrobA2RnJ6du+aZ+7LE8i6/Pk9CnOufc1FiA/Ls9JTwqbiEwN0GiAlxEDCyW
         7H7mM09xEr8SCiQcpLZ64RPaXO8aM0vVmSFf5Iw80b+sAnAm9XsVaGZVzWdCHJWBX+ib
         /6nxmSb16ClMReUtBFSqlLUtXsyUxp9FlN1rO2Ktv660+THVRNhWB7k87ee+i1sMFwOr
         JgIovHR0jlAXD5w0qlh76L4y4llZogMns7Q8v4LbegdO35xX29KypZYhSSLLNFLOppEI
         Cy2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773168050; x=1773772850;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjFZ9oZWWc3RZ4UdO5rq+AZbr7uPDX73K58gh1+yuH0=;
        b=bL96wpFw16r03mWVTr4VmdWg97/7gnflCIA2NSH2dikOgeti2s6IlSgoMd5/0b7rZo
         dk2EHOzHgD31TOJrRZlSShzn2F51sKgzsVx6PUnWhZLJoKOdzPWZ3o9eZ97eAPPEoj6h
         /1mCr0k9VSd7Sdx+5Oizn5cPhXRoHh3aeTDZirv8DxcpjwRaTNxS4z6xrIwfJkPsbxI4
         IOuIBTya6iUuTf6y0SwS3b3PbjGbDSAA/PAp5rSsoOvleZ0qHLwHp9awvdqXHAA5occQ
         cvZ7D3P59dLbJpWDKPCxNmiCgedD/HUZhyx86gJNZwbZNvp0flgVDL+1nwWrxJEf14Uy
         oy+A==
X-Forwarded-Encrypted: i=1; AJvYcCV3U1D9XU9N7MWLkQkmGgcNqRWTKYiPl96eYN8odkq4fBQu4bR5hVyamyrP2gakh54+wcGzih5KQNpp/PENeA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyB4w0Fb3A7ZbYlhVAN4yiWyJ2VULM/FG0yLoRJMAyoqHwsYvt6
	dSmZot/hKrbThXZ6tbu5B4hmAY21rryNzYRwbpv3PSUg62sZTBHkH1S5
X-Gm-Gg: ATEYQzz7YkBOVMOqZpygZENGFEEoG2oNcrqpVNKykaR9u1AJD4KIakrrXGtqmuKWzFA
	pKrb+6YISdFonklRZOe9YiZn6SH0k0FgNwv9fZLVxP757Elqfs7t9Ft+J/H+71SKT1dcz0AwrYD
	J8s1AjA84klnC3jTD1LaYZ+5i1fdESX9mG0jukorlyztwzsQL3Rli5+KQeS3PaSs8PiTncv49Lh
	PHStoXvMn5dYlzT0t2i8IkOw6UElAt6YHQlNDoS0w/o4KSgnr6szsF9weuyzwgqydwIYiAPozQD
	He0qD8/LMChzF2DWUV2J9IBN9Ky4/uquihaOnbpNPeg4FShfQXBXJ3C5gi8qvsYkvj66PAcV2fU
	+dzcqhCg2n0LtM9gltTIz22oAipOkpIl0feMYWm5FZhH++FHscLgXWBKhrF32D6k/sPz90up89Z
	krFcGIoaMlDexIbPm7USM6BcSvL73F2dIGanx8Y9cVJy5xcw==
X-Received: by 2002:a17:903:28c8:b0:2ae:5671:7071 with SMTP id d9443c01a7336-2ae8252cf0fmr96662285ad.43.1773168050081;
        Tue, 10 Mar 2026 11:40:50 -0700 (PDT)
Received: from google.com ([2402:7500:a44:85b:2953:97d3:b283:95c3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e58592sm220535625ad.14.2026.03.10.11.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 11:40:49 -0700 (PDT)
Date: Wed, 11 Mar 2026 02:40:36 +0800
From: Kuan-Wei Chiu <visitorckw@gmail.com>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
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
Message-ID: <abBlpGKO842B3yl9@google.com>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_114051_531528_8351CF99 
X-CRM114-Status: GOOD (  16.83  )
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

Hi Philipp,

On Tue, Mar 10, 2026 at 12:48:26PM +0100, Philipp Hahn wrote:
> While doing some static code analysis I stumbled over a common pattern,
> where IS_ERR() is combined with a NULL check. For that there is
> IS_ERR_OR_NULL().
> 
> I've written a Coccinelle patch to find and patch those instances.
> The patches follow grouped by subsystem.
> 
> Patches 55-58 may be dropped as they have a (minor?) semantic change:
> They use WARN_ON() or WARN_ON_ONCE(), but only in the IS_ERR() path, not
> for the NULL check. Iff it is okay to print the warning also for NULL,
> then the patches can be applied.
> 
> While generating the patch set `checkpatch` complained about mixing
> [un]likely() with IS_ERR_OR_NULL(), which already uses likely()
> internally. I found and fixed several locations, where that combination
> has been used.

Thanks for the patchset. However, I think we need a explanation for why
switching to IS_ERR_OR_NULL() is an improvement over the existing code.

IMHO, the necessity of IS_ERR_OR_NULL() often highlights a confusing or
flawed API design. It usually implies that the caller is unsure whether
a failure results in an error pointer or a NULL pointer. Rather than
doing a treewide conversion of this pattern, I believe it would be much
more meaningful to review these instances case-by-case and fix the
underlying APIs or caller logic instead.

Additionally, a treewide refactoring like this has the practical
drawback of creating unnecessary merge conflicts when backporting to
stable trees.

Regards,
Kuan-Wei

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
