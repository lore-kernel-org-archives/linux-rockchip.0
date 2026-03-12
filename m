Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 114FE105A597
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 12:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzuyBKC7Nox662QFhX9zCF34Rjyw4E0Hcbfo4Pfdepc=; b=nDY6OWWZ99bawz
	zk+K7l10DwOnzvCiD2Ie/Qlqi/lA2skQiBUpmnKqMmExyGZZ1jOJOZuOuo5RpjgGNEZ/5htQtv2H1
	qOueaqplIuoit7Cfll9Zqvro6oq/iaxF9DKzp/gno4zIqKlnjPsVKvH3mwIvh7s4atVePN6Tv0PcP
	7nAP5/uOHCy0mQP+4Z3Bh3wX5MLawKBpjteLvNpFkWY3ujYtTm4AaJ2ioxybsVOjF2mvSiS3BVU6a
	1QdhKpetnxKVqTHGSijZIsBaAs0jBCjV+5oIvrdG3Tih9xzXWiN55JFHBOE3oYIyzKIOT3cZpb4RI
	LhNOHZdwdD5pIyDHKqEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0fbb-0000000E5ar-2eIt;
	Thu, 12 Mar 2026 12:57:35 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0fbZ-0000000E5Zy-2IXA
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 12:57:34 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-50915e14cf6so7425481cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2026 05:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773320252; x=1773925052; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J1SF1XBHkHR0j7NZVucv0LxpGoGXl67PUefLsfwpAbo=;
        b=iw5qPPT34HDEMIsXfVuGQVadqiiLiCX9PSYu6mfSb5q8pG2Zta++Bi5jO5hu2g6YFJ
         wTc1x4CTfGSRObks11vRzEMH0mSz+45H7uSO3crnDdnisto+K8YOB10zRI6ki0FMCFsl
         quYIW0rxZamxVD0Dvo41iehkwXSFpyOoaEKCRjIdmnKSkyfT9qp/tn9EWTZSyUGjskqL
         L0tHRaj/DsG8f62JeRyuh3eRb4WbBZYm7Us9AVQUnVgVM7W9mZjWm7bYERmVff30jOwO
         3xQXwyYZejNFjkOKkdENzhA0keU8N9kA7HoVCtMQNarVUa6rmwTyDoQj4IqEckHnTW6K
         dJ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773320252; x=1773925052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J1SF1XBHkHR0j7NZVucv0LxpGoGXl67PUefLsfwpAbo=;
        b=QnvXrK4EWWwEcihRKTgkwOicy3m9lSm+x6XndXMfrzTtAY16Z2470QQ2ky0in1P+zT
         +8RF5jFUq9UHVZGUrYMKbp3e3JZZG/LT7KRZ8ATKkI1QsHFkoGQrCEu3eQhSaFfa+cuG
         3AUqkfQIc1fDJv/faJTfmTlSpFZeOXGmSQHflFOWL52YoCoeLOzAiIvodN/NtoZzUaFk
         NmjC5tDnOXxuGyGo0dhjnawD//blxZDavLemqAxfW7LHLjx/PJgOSPPcP9Z8k19puv0C
         TKBUQuzii8amrNoKZpEJVVAwqvtkBKkoyjz8JpN4NKjvzqVO+2IiIOEZI5gqXEA4siUk
         VLdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLUuUWm0xuqkDWsdhn+uCB3dZ2+6FoSHE6GrzYeNlvvh1gmPfwGGy1T1KHDHw/yynzA8qBpQilROzTQKx3Nw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzyU48/yhTGxg0lK/QFIuf4KD/Cx06c6bD2C3wxB40+tV4oZnI3
	DU0V4A66DtqN7HF9AI6LUbvH142TmXg7G/1Iyy5P5GVLtKwS9CXuQfzXqj0bh0rQkLs=
X-Gm-Gg: ATEYQzy/qO/HayUeX8PeCTNk/Fb1aEnjfZZbJ0MqaIjrz+Nb5fBc2KMRa6Sk4WqCOYa
	f5t7aPX95jDXrqf3Oik9XE8l+Z+TQSJEOVp1+Kpy8wl2ajJtpV2nxHVBWjlnf/DovveZzX1hUwQ
	CPhe/WJI1DB6sW8A9Gdj5b9nFIorA5Oyw3HIivNBQqQCA7Q0ksjNLw1ZB1zSZZxr8oCxjK0sPXH
	7zePgele6Dy4z5NoDkXZDqqgjLhmYzOlJ5vA0Nt/TPNt0KdmrMAccJLnoZPrmNo7JVBN4bfbzyx
	/rITkIcVtmpzehKWgwtye+TSkIwhc3UzJFaN2AxjhGt2pZ5L6JcKNDbiW++CuGvPd0nCX22bUL4
	nt395vNC1KKLiLNHd8kDV4vUJdoXRldj7O0vPBxauqLbCR5VVSjNTJonjN+vcfZ98kUGL4KW8xl
	tB6ks7nPWa1LtCC6nTqZ8pOofB9SxUESfEKS/3p6CjmHr5Xo5hM5fN6oEafCEU2v8mkKIuiiqz2
	/nfkvK8
X-Received: by 2002:ac8:5d4d:0:b0:509:cbc:127b with SMTP id d75a77b69052e-5093a1bd58fmr77950521cf.60.1773320251710;
        Thu, 12 Mar 2026 05:57:31 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89a65bd318fsm33341196d6.8.2026.03.12.05.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 05:57:31 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w0fbW-00000006fKD-1POa;
	Thu, 12 Mar 2026 09:57:30 -0300
Date: Thu, 12 Mar 2026 09:57:30 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kuan-Wei Chiu <visitorckw@gmail.com>
Cc: Philipp Hahn <phahn-oss@avm.de>, amd-gfx@lists.freedesktop.org,
	apparmor@lists.ubuntu.com, bpf@vger.kernel.org,
	ceph-devel@vger.kernel.org, cocci@inria.fr,
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
Message-ID: <20260312125730.GI1469476@ziepe.ca>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <abBlpGKO842B3yl9@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abBlpGKO842B3yl9@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_055733_593062_A8662916 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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

On Wed, Mar 11, 2026 at 02:40:36AM +0800, Kuan-Wei Chiu wrote:

> IMHO, the necessity of IS_ERR_OR_NULL() often highlights a confusing or
> flawed API design. It usually implies that the caller is unsure whether
> a failure results in an error pointer or a NULL pointer. 

+1

IS_ERR_OR_NULL() should always be looked on with suspicion. Very
little should be returning some tri-state 'ERR' 'NULL' 'SUCCESS'
pointer. What does the middle condition even mean? IS_ERR_OR_NULL()
implies ERR and NULL are semanticly the same, so fix the things to
always use ERR.

If you want to improve things work to get rid of the NULL checks this
script identifies. Remove ERR or NULL because only one can ever
happen, or fix the source to consistently return ERR.

Jason

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
