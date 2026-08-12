Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC67C5B56A
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 08:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jL5LrptRqSgImRh7DVs9xFSRMdoeXhaPX1J2jNPazos=; b=VtO7p9/X2xgtJP
	d8MD/yvtQpkU4fFO/9yB860DkdS3JliaymxhRSCvvAhggvbCeieNtVaN+z41Qka4pZdJR+1jbXz4Q
	mb+gbJOd6aj1K0fOM55G5Vo+92NTXNmIYQzr3/UeubZV9n5qZArfz/8RFbjX+aeTiII3t/+3mWyvG
	jX0ptTaNKdVy0iXUYS7D9FWRIlKWJOEnM5VvaTq6JwGBOGvtqVEYBHmGeInuJJHsuFypmoufuS4sS
	Nndr2WkvMbJ6xARmPbFVpK/nZFPDHrrdbdy0EcKoSSWlOdCdQMyYw+lyHqvrRkhf/+ww2g/CbUTWU
	vQhf/H2OR+kDou/mV0PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu4Q5-0000000Fejv-3n33;
	Wed, 12 Aug 2026 08:34:42 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu4Q2-0000000Fejd-3BLb
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Aug 2026 08:34:40 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-47f5d5dbf80so14393f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2026 01:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786523677; x=1787128477; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=RQFDNJdHLgyl4OSlrYmzm/QJoU+a+hgO0ne2eZ9DCag=;
        b=bn/2k+LpEfPCyqANY4015wpnilnZZIeeuqrEce4qrCLuZOZeicRvZ7Zswsm+p4Dx9O
         77dToAAmNrUhES0cMCpcXDZ49otZJXjT1H/J/AO05rpGQewVMCJAWTWlVou6ys2h+bQq
         xOmXg92lQ2jI6NQSSPNJQUzjK0srb959Uir8iM6OeyfiSBTzRwVKcuqpkOB8LFy9SVsO
         +OJHY4zRJyn1jUe2gVrS3kV2B5fX78iX680LmyJCYLC7eXr2/JCjernui0Ds7vJqJbVD
         rG6fKYHA04crpbgB/PYb824J1f2N5ZT41K3aAbElcjROBiqsuAKC6f72TIY0KcVFC0L/
         eJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786523677; x=1787128477;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RQFDNJdHLgyl4OSlrYmzm/QJoU+a+hgO0ne2eZ9DCag=;
        b=WPzDAY0DZj3TLgSxZPDZb3thbF/ytf8m+ncNJ+x0uvtahpNPuOgwxN0ccZT25G43M0
         2S22yuEyH4z9AfXsZjpSZpQGPCEgvHVCtgrp8G2usbbJN/jxQKw2rhLKk9ExMg4N1nte
         Rogt5k2FzfeBmq0thBtOjASMIfB5Ip8qDTxDF9HKyIfYkNie0sgnHzM36ccvNieb0sCa
         4J5NdtS6JufaGMpsI421dEFYEtZ4XG1iYlLu5Iy5jgvea2jbCMOzrLsjRsGtI1poIrlN
         AXQy7BTsr/d/3RqIs6+k9Dn/HUaliRwk6fkN0iSD0p1Jac0iHLloLZDUdM4i0dEjiEms
         bk9w==
X-Forwarded-Encrypted: i=1; AHgh+RoD/pmUc7gdI+Ep4WLVfU4ZY9/9jszCym19BJ1wbgF0VlwNfV9LJr1g78SG+3a/b8cNk/FG5tqFvLDgtQnFnQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxufRWPW0fK1PYBHHw+FYb4Vm0lfwNuffFdW4UxZ3MSDwAAq+CA
	oufAEZzSInSLA/00mYeeKh9HoVXk52Luk6Qt6ye4ioRLUyHWE4H5eUgW
X-Gm-Gg: AR+sD12eqpAySDPOILxtqAKSgDowHNKeDjHi0+KJTVj3ceAdcXvQ2h5N+poPHMjDbPF
	vdclNAqVMHOsGDuVINeQXfyviahlbPATOuAi7JfvbBKpkqFJVBmhEGW+2wiMTXQqgM9j1gwVwRW
	QP/WaFWsIljFSlyrsdwPVhGFeSNJgBbyLoHCmArakPp76kM5BURHftzSfMrSd+cMWOGD7GZWwNj
	mUnkRSlwBZ+IFpmO0q0pmgypiRyz/rph4gKNsMHjxT0ANx+Raheb0Sx2WzG3D1XcWOZ1ENrZsvX
	nIxvLxfoJKdwE67fZ8JGXxCRcNvHuucL2CEqirFAzbQJEmaof+GMEcbnyTeRxsR7jQA87ZiS7rR
	M1mQlB7fRk3PAUbBAXdfX5AyS3kbDTWHj6SVyB9Ylm4JOcdxN/3Lb3JOyKWufbow7Nhgyjt6Rmo
	Vxf54F5Xz4FPE9+jMYWZzhIpEq/YeHhBPV7Habt2MNb/XmmyUBlrBgvOUT+VTvF7VFuO7bTB+nk
	P/RZ+jQgYj6HyYP4KX7n1Zw2ershfwBc371PlFhEdSPeMH171xtbHxhN3MPCuaQJtr87w==
X-Received: by 2002:a05:600c:c8d:b0:495:7561:a9cc with SMTP id 5b1f17b1804b1-4997c16802amr21652985e9.4.1786523676661;
        Wed, 12 Aug 2026 01:34:36 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B84A600FEFE3CD53078703A.dsl.pool.telekom.hu. [2001:4c4e:1b84:a600:fefe:3cd5:3078:703a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48150d4e675sm5679637f8f.23.2026.08.12.01.34.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Aug 2026 01:34:36 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] accel/rocket: request the core clocks by name
Date: Wed, 12 Aug 2026 10:33:56 +0200
Message-ID: <20260812083357.60014-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260811212818.10487-1-royalnet026@gmail.com>
References: <20260729130743.128876-1-royalnet026@gmail.com> <20260811212818.10487-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_013439_523392_B7CF1848 
X-CRM114-Status: UNSURE (   6.75  )
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

A correction to my own message above, before it stands uncorrected in
the archive.

I wrote that the two test reports cover "the two NanoPC-T6 variants
besides my own board". That is wrong, and it misattributes Sidong's
work. Sidong tested on a Radxa ROCK 5B+, not on a NanoPC-T6:

  https://lore.kernel.org/all/20260802131328.75038-1-sidong.yang@furiosa.ai/

Diederik's report is the one covering the two NanoPC-T6 variants. So the
coverage is three boards besides mine, on three different designs:

  Tested-by: Sidong Yang <sidong.yang@furiosa.ai>        # Radxa ROCK 5B+
  Tested-by: Diederik de Haas <diederik@cknow-tech.com>  # NanoPC-T6 LTS, NanoPC-T6 Plus

Apologies to Sidong for getting his hardware wrong - his report was the
more thorough of the two, with clk_summary before and after, 90 runtime
PM cycles across the three cores, and bit-exact inference results, and
it deserved to be quoted accurately.

Nothing else in that message changes.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
