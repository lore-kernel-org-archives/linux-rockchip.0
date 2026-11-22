Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C51606A320
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 09:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PfVadAxf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=g2UCKDe0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=om5jEvTkO0SFQSfgVRF+ayD59TRliS1fho1JyPMIhrI=; b=PfVadAxf1iNIjNT3bPwOJXx8Ez
	/lkzPo3U+tvo7wyuej1jixgMge6wZ6+9oFdffbXi3tQTnfb0cywbihBz5K+LI6jkw4q2ZWdQJHXVe
	l4K7NvuU5wqYFNkgs9zUnH8eXggGPp7serus6WMzyNF8M9cMkfmM9MQovioptAFRxRhJeiJ2LmAGK
	osuh1un0EnLxku7Rq0j15691BZJKKcm8CviDNA5jWCZUGkg6WLtIZUqt7YpggAj3rgWcNoKZjeTdE
	pwJfIccY25IbY9SmtKescE/CqXMcbhAWc7+vrfbW2j/rZybhXniXiTvv0iRQtLfvv6YC7Ou75yzbM
	RhL3p0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV3gt-00000000tsd-3Fhy;
	Sun, 22 Nov 2026 09:16:55 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV3gr-00000000tro-0uPD
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Nov 2026 09:16:55 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5c00c727a26so177394e87.2
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Nov 2026 01:16:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795339011; cv=none;
        d=google.com; s=arc-20260327;
        b=Cs67lss5LaKOKVg4758KvrynXnTvxmVbaL7N2KXNNFOsrzvm5cJyU9Z9QQiZTEqp2a
         alKtqrbwCt5kFEwMkPTVugn8q9+k6Q1TfKlV/K7WRcsPsVroWoFQmh6Y0l5NZRntTIdm
         pMlq1ANA3ltprw/INJQXxwipTZxlL7WnW/xGUETvFOlOic3Jr4hHTENgZnOc30V30wI8
         2/77NgI9d77SfPVy1epProyH3wS0KLkMlJQhDsk87IoK1UyMYoHPlD615w0sHLoKZY9N
         4+cXfU4envlJ89ru46LsxI2AWSwA/ihW2Byy0R2DCno3lHPjSXb7BWfvwjlN6c+5Gm3q
         Ebkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jlk4MoliGvZW1IkxqxKZvX+OlKzVs5YdkLc7yt4n2p4=;
        fh=Bfy/YOVIXtftauoMAyWMWLdKCFfPFcuDLwoPGA+Rm1s=;
        b=FPNMOMHpXZlnh4pt2LXdoLnltmTqvSTDcCU7//4x8CEY+dmFvAfyRtvQV73LVxASlQ
         u5Ls+SSrtWGyaUl7lREC8lcIwxMAec4WeNXfB7a0OT7SHpOh32G30unuNGHAuOem22Vr
         ttzA8zg4tgKpefb0yZMAY0H/FKE2ULWqNKJuHUqcusfmd+uLpwpg7DgHYojGvzNkXg98
         N9BXCxussQZBGdeBGvmGUiczffyOCJocBMgGOtmAapk4PhWW6C/V4vRNfxC6nO/uyWJO
         L6IMFf1onvQrKXQx3d8dmuggmJdllZv1KNSWm2gmu/IL+BLw9CSjZLRWF2kae+6J2Dn1
         D8fg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795339011; x=1795943811; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jlk4MoliGvZW1IkxqxKZvX+OlKzVs5YdkLc7yt4n2p4=;
        b=g2UCKDe0age70HqGJPoem9Igd4cf6HsWaQFfGXsPrV5U86CRGpEknjag+G9TQhYamK
         RVlCIWj9vs6SttGzrIhYihmd9cZHGgRCHPnzrEqjRY24VQQbcJHxny8xWub5Fw4V7mj6
         AfmSMAgo46s891dcc0iywxXTa1tB8yEb9xBxf+9WyOOzpCwy2OVDV/sL0r+XuGnrNrQH
         lK75+IEL4npEVIhAf9q2kZen165yMpMYndebvruFN3yWhVrOre0Oty9g1RlFQhsmEreX
         fTRsqS6a77Dr2nx2eIHyiz54bn4I0CsDKi6KdbmST6j7LYh+pbxGB/Q9U3GDKc1dCJTH
         iODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795339011; x=1795943811;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=jlk4MoliGvZW1IkxqxKZvX+OlKzVs5YdkLc7yt4n2p4=;
        b=DVL4A3PnhbQmoaxCZNDpEJSUkVUC3gzlOBBJn+VlvD+XZfj/8py+gprYn+6bWCfkBp
         kGeCxW4bCNPqXZkah+9wzt9s9Ah3gWQdCJ0rH3oYf3X0ZTBgbWJLiwTQw7zmy9jsqqB5
         P9v8r/0ZM6qUQAaKK0mjLytEdmsPvB27l6D7wjF7zYIC3Cce0qNuSBv8cu9JSnidP71W
         TC7+K/hznxyzOrqvXtKOJ2CMm8uZR/6VrDgfgqwENjGP3XEdT/zqu7qzEEGMiglgUryi
         3483kh298URZHoFVwZI/DwDFzDtRMDCZ2TVDX2GwlWM8lmGU0L47ni415cW4Dq2KkIXQ
         HFdA==
X-Forwarded-Encrypted: i=1; AL+hErFA+QCL6Pn7MWqvfWdbdrkhN8qIsNrCCn639DdIpTDUj/MJcVlDf0C7Z6B5y6+1eM7U4J7QG/G23FQp4p8OmA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/62q6k62Qedg+dzXceuMxXiPTsVk4C0WVbnaUz3fEdMtfn3BN1
	s5hEnXYxoIQ04XSV9LRJ5w18zBPfL5f0SuQXhXM5M4lCYEZGLR/y0oG6Wray9D0JCXN96mRHk8X
	oOJt4KCnKe6rxa1PLAYHwsxcqhneVNmg=
X-Gm-Gg: AZFdTZdpN35DA9aB20kP0s3kRcYzcESHS3tWGpeOUZf3T+bl3q862eygLzFxRvx1fvl
	96ol29FeXPmWQ03HeGljA7Io77a34xwuA9T0MVZFSTwY8nHL5gYBjNlBpj5czrySaNwFbl+Dc/2
	0Daqp0ISyGmonobXgqAZtXnMsEBqJFzMt4pzDM3XteXt8upuRdvQ+ySbmP6jZdg542zYiexKqAV
	9KxMkgf7G10+XiG3x8VlAEPi0dDhWTK8pGNm4CuQffuzq4utQW3ZIQF5XuUvbYmLAjEMQAtLkct
	N8MsRmv6KhlkRDqk1qB/zNJVIo6gupgHmOx2Pb08ce6uHQ0oN1tsz/NO95YwDVTj5tl44suVHi0
	tOTKw09JNZ0N8ezHCe0kjXwX+koXppGtNPwD2qNWkc6Joi5uHjxR8NqAcWieuG8qNuPSA/ak=
X-Received: by 2002:a05:6512:6719:b0:5bf:ba43:fa67 with SMTP id
 2adb3069b0e04-5c1bc935c91mr2187197e87.6.1795339010786; Sun, 22 Nov 2026
 01:16:50 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261119-b4-cedrus-mpeg1-v1-0-aa5ba1192822@gmail.com>
 <20261119-b4-cedrus-mpeg1-v1-2-aa5ba1192822@gmail.com> <1a1f912f033.2efff015191157.7190884739957848478@collabora.com>
In-Reply-To: <1a1f912f033.2efff015191157.7190884739957848478@collabora.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Sun, 22 Nov 2026 01:16:39 -0800
X-Gm-Features: Aa3M54oE-VNyvNZaxxRREWe_L_ECyiIpVpQf2rmUEBWZs2-DphbG3Q0KscfmLqc
Message-ID: <CAEy9hNVXZvfbW6U=Y7aiONidPKee7npGWpWuR2yQOeUu4aOVfg@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=C2=A0=5BPATCH_RFC_2=2F2=5D_media=3A_cedrus=3A_mpeg2=3A_decode_M?=
	=?UTF-8?Q?PEG=2D1_as_V4L2=5FPIX=5FFMT=5FMPEG1=5FSLICE?=
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: hverkuil@kernel.org, mchehab@kernel.org, benjamin.gaignard@collabora.com, 
	p.zabel@pengutronix.de, mripard@kernel.org, paulk@sys-base.io, 
	gregkh@linuxfoundation.org, wens@kernel.org, jernej.skrabec@gmail.com, 
	samuel@sholland.org, jonas@kwiboo.se, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, ckoever@outlook.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_011653_301958_08FD8FE4 
X-CRM114-Status: UNSURE (   3.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, 20 Nov 2026 08:08:50 -0500, Nicolas Dufresne wrote:
> MPEG2 requires MPEG1 support. The new format simply add noise, you can
> fix cedrus with V4L2_MPEG2_SEQ_FLAG_MPEG1 alone.

Thanks, done in v2: the format is gone and cedrus selects MPEG-1 from
V4L2_MPEG2_SEQ_FLAG_MPEG1.
https://lore.kernel.org/r/20261121-b4-cedrus-mpeg1-v2-0-95e4decf03fa@gmail.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
