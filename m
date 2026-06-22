Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18C6ACDB466
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jun 2026 01:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScGDkgSpq+cE11iUhofNA0EekQ6cqmzDg5imLqIRPmg=; b=g1rMnx2l8j6s7s
	UCzhUDL/RkStnkOOOBr3B72kaoVB7wFdIBzSRg4C0EUWxqhhmBpe4bObd7X6ekC6IV/mldHN+lycu
	48npmNa1plj9+OvmhIH6FAJk9qfITjrVYAM53s5Ago8KdQ+fCLr5atGwzK4Nt8CJ6DLSorxbbM28T
	bEGI1zcSESJxi5q7uT4/ejredjbtTYfJnhCo97YVEgsbqV127cThXqef0YHazHifAvgq7tEHSfSHN
	C2OCzvU69GVwx8e8SM1eEevy7K+xzBjI4RPgko96LbViQgvuzPywQh5wtM39XPvjHntl1X+n6vIrx
	c/B5IucRBI+1nAfaAGlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbT9w-00000004GTv-2uLv;
	Mon, 22 Jun 2026 01:09:08 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbT9u-00000004GTE-2907
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jun 2026 01:09:08 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2bf125989f2so23320885ad.3
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Jun 2026 18:09:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782090545; cv=none;
        d=google.com; s=arc-20240605;
        b=AYqATFY6byS0NAyZnzrBejBWVWHYTQRpkCug8yFAGhzlX+KJ4e47NR9AcmEnjIWuhy
         CEFcQ8XPqq+d8bstwvTFV99I4Px897afKHTq4eI3wPDpe6IWFGU9wnU4/rxPadnyit+w
         2WUdiYEtGvXCxzMaM4rJuK0LT6oFPPAsBZDkAel2/724jsC97MSJMtHLBehbWbWbskXT
         f+//nNK/eUJB93EHNBV10NmTWEwWlpDHfV61xO0bvrn/2TRdk8AHfp/Kd3QW32boXzuF
         t2IRgGF9A02OUGc5B6LkuXmLzqre5+nAMN1PU4v+GYRjEnuh7TrILZEvhDYnuIwtzT3l
         0qlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q9f8PIvMVF+hZapXjR2Pan8tM2MhsJBoGLqzWF0navE=;
        fh=vsH7rEQwfQHchLaQn030gOJBSv81CLGu85cGF3QS7dQ=;
        b=SSq4D5Qi6At4Iphj6oV2BhRAxJbSTxASGDa3u9msGNo/z3fKKvbHIfiwQ1jVURFjtD
         e8zpmuHTp4EIsiFjzGNArT0qF2Rn1UZTydQp+7m+l5+uewPvIlivWkwPF6zRpeu9O9ly
         WSvvztx6Y+m/JS8wuK6OzHXM6WbtLWpIOoInENO74f8VDlneKqTVvZWjUsKoBGaX/JfA
         eaf5rQPjMA6Y0w0rxVWcWWVo4k0/9baZFP0NAFBfwD/KqhXJgoqr6weYYrALRk2+R6P0
         TDsHqWCUgZaJqTbKCs78Jla4I7v3rnukx4t5/kdjwfVYDQwnEeUd1uHxWees1ej63ubg
         jNcg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782090545; x=1782695345; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=q9f8PIvMVF+hZapXjR2Pan8tM2MhsJBoGLqzWF0navE=;
        b=EfG6N/Wi0g9VtsXehyEqwXFZaxOxqc8LJb6kq2LA8hFIfrJMtocy+6OxFN9LIonfpP
         Cl5wIph4bYBm5gXW2aRUpVaKm4WjlhzgNbzEiTJoX8lWRkbJEZAPDj3S566SqEpr0+1D
         lcKjLThwmPSK5/tqXPPW05w7LSNB9A/I2LK6e8RGjzdITsIlaQhronMMmaL9CqofoVDT
         ZDn/FiWPyoX2a7ZEtX/YsVm1U1TlhIrfFNby8YRMb/e5ihzipCljZjvmJHvobIVwve8n
         /IpdLsfFL7626PGzJFxPkw8omMInCXColaL/G7inZG8nPDtIdmZt7UdLY4i6qZMeS4hW
         GPew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782090545; x=1782695345;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q9f8PIvMVF+hZapXjR2Pan8tM2MhsJBoGLqzWF0navE=;
        b=intFl9IuCO0P/l+VzKloIbVRNvszCHAjcAOjTZXjzApKyuIypfAtZbdwKgF0eE7gv4
         xGbdUSZymlCOjJuaj1icXcfc3TZthDaOyI2wfcl2KCMyBln8n/VK99JXErRCsL47UXC8
         ZuzaHGLf7s63oaj9hTYsELlz/CZddKiFlbjarDNji3XmOW1HWPiyIBWS6CWstHk9/Ovb
         K5gTkNW5RrGJS1HenQ5Mj3pNPrf6IfxQ1guCJKvismWk0rqTJU+8iLoR+LRbGPf/vEo5
         vqhdYj79/3UMoxW09z9/X39Kdipp2tAJas4KodrCab+Uaz6kYrAFlbb8QjZ/WZ2v+Yye
         reSA==
X-Forwarded-Encrypted: i=1; AHgh+RpKMh/GeSQSJ1KirARkzOp7cRod2XzzGj2MNr0abLIwZDsZkbS7nwaowSHZ7JAY4UeNdtbZcXUydy9NFVMJzw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzkd96UwMFQHp9Ak5NFWx6zMTpFcIheBfbTfKUlUXPaNKdvpy8g
	ne91FN7vLSaJ7Snsu1h8f2o24kpqMTBV/BKudxwwW5wdaRY397tyDbOIby4Wuvz2ZiODfpN+0d9
	WIsblGRm3Ib/RonFX8loE3d5NcXMKQFU=
X-Gm-Gg: AfdE7ckuXVpggsIfoIX94c5tNyTlHLB41tFcOEezBi1Brdp85sjYXnXPWDU4xJor1wX
	2lPM91/eoHinZMLUGQ09Kc1439ogYE/izyThrVP9bhO5KpK69v2q5n3Qy+sfm/bFu3kC7WFB7im
	C1J9MbPF+HF9UhKaqawmK10jMuoaU7B5BC9Ji9nt1o1LfEFWOQfiTulNOZ3baBJgsqT7/odAwc6
	N4wjmgx9Tkb02xQJb45BaIpkDoK9EsdVAuyRuQ7A5pgxxfJGtc9hTIk7CwGC7wxmBg3aGNtv/+r
	iXw4qWxonABelskXqGVwpknuJJc/AvMu3/bC/Q==
X-Received: by 2002:a17:903:4b2b:b0:2bf:2114:ecc2 with SMTP id
 d9443c01a7336-2c718f965c7mr131313365ad.35.1782090545565; Sun, 21 Jun 2026
 18:09:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260604033554.96996-1-phucduc.bui@gmail.com> <mPIrpl-QRw6_Q9DZcTQ5xA@collabora.com>
 <CAABR9nGEHmy4YSqFSyh+gqXVwNgpaGOjqBeUZyHBmMibHwvMxA@mail.gmail.com>
 <D9b19fqJSQK5FO2BflNEKw@collabora.com> <CAABR9nEJg2R9dkGOrn9aZ_b=J7qMU06UKv+HcwdLmzckBoGL3Q@mail.gmail.com>
In-Reply-To: <CAABR9nEJg2R9dkGOrn9aZ_b=J7qMU06UKv+HcwdLmzckBoGL3Q@mail.gmail.com>
From: Bui Duc Phuc <phucduc.bui@gmail.com>
Date: Mon, 22 Jun 2026 08:08:53 +0700
X-Gm-Features: AVVi8CcmgoD8a-6Hq5plimGJij8Yn44KzsAgWV7isqS6VvBWdYzEzn5_4Mf-32s
Message-ID: <CAABR9nHBcfmdJu2=gT6iJ0efi9QtqKFC6gAt1rLJaUpyOmPzfQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] ASoC: rockchip: Use guard() for spin locks
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, linux-sound@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260621_180906_575084_3D717C26 
X-CRM114-Status: UNSURE (   8.07  )
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

>> If the patch worsens code legibility through excessive indentation and does
>> not make any functional changes, then I do not see the point of it.

I completely see your point. While on the subject of rockchip_sai, I've created
an additional patch focused on improving readability rather than just moving
lines around. Please let me know your thoughts in this direction.

https://lore.kernel.org/all/20260622005613.21870-1-phucduc.bui@gmail.com/

Best regards,
Phuc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
