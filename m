Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A25ABC531C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Jul 2026 08:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qy8QjTHaZZh2fciXY9mR6FXeKiUkxeru2PRIJ+exWqo=; b=zeB7iSRlWt3GVG
	t3x4EI1A8/OI5ssUYy5P+EZr1zUfrkBQV93cn89I08C7e6ZNeL7IQqzob4lA1vB/XXHoWDAOV8W3R
	zvlLKH9tACr6m1N+quscrfzT1CbWUTt9qsZXm01jEGuDzxZ2Lfizbr+A5DVHPqOvv8CLru/6yL/vy
	dMgOyl2+Qi6Il9uqIg5mfPJ1STbp29mxxomtD0ndxijyKWIbKNeoQ2hyvlKE0vnL/SUXSjo55FLDX
	vaJv1Mfr1+8kvUz3fff+Wxn9Si5wQSyaHAu4c4HHYbbJeMxLP5FsOgl0eue0AjUttEtxm/vumsxeq
	Jn51AP+siwVBLiywvGbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnXJX-00000000AHo-0lda;
	Sat, 25 Jul 2026 08:00:55 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnXJT-00000000AGp-2oCx
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Jul 2026 08:00:53 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-92e57a753f9so109189285a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Jul 2026 01:00:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784966449; cv=none;
        d=google.com; s=arc-20260327;
        b=G6XCTPCtDIZGDUc/i8sOGwHPzQ1wBVnHJNQxdQVYhMNAqIXq+FSQqNSKkuN7mvA6pZ
         W7SeR5Sdm+jSpHPDBgaT4bQF6idyLkEReCaEUXzvYx8rZlFxnQECD5BKEOzhWcduYBlF
         tS6PhzoUThqwAg6t23VWOjl0K7aifGbSVwptvsJ9SsD5gwle2sBAx0zOwrRi/vWXaEGf
         Rw0FS2OT8E4Hbs+/tARqpMLTKrRaQxAZo3iYSlTFboHhbUugdOu3UJrKV8ID3K1BlRTG
         Sjc9TGECGgNq8b7vlWINh33FkSvBNOqURJ6az/Jw5TeukIA49qedbMh9g8atOuTzor02
         Yh8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=13z8xjIigSLm4fcji9bQpCPHK39sYQC+iiIlSwrcSfw=;
        fh=Zjclp3Ehf5gzx7qjWxnpYUXUMT6g9MEztJNmi+Ho+6Y=;
        b=cBUL6ba12r2jxoim0gdBv510BV0ES9rQOgVKYqBbIU+QMrigS1bH7e2N/YFL7XLBKw
         ecxztNytCW3/0YPEb6KHZug3pRxK34KxAN2J65oZzBdiSYNdxKDsOVc6+oYgEzeeuF8a
         ruQyen68V4yaIxFrtVW26VOpE7Uua5gMdpTe8F3LXtEOl1/67HrasadO+g4eKGJWxsvM
         YIIm87pSFgEE6v1ORR9GgBI2xJGZqTMPo30/HrSXntihXKz3m+0rMTEq6s3OROUmt2Js
         T7KZ/zl3P6MHM3cEYvVgrh9zUmjazJr+qjxEeynvnAP228NKzNlWn8y/HrBjKAUHJT0k
         Vu1A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784966449; x=1785571249; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=13z8xjIigSLm4fcji9bQpCPHK39sYQC+iiIlSwrcSfw=;
        b=X+7+yY+qxrClaKL2w3R7lmE9XGCpRfge4Ut/wDDgzZxuYcaZwQEd1iT83E4HxLetk0
         FlvKGDPhxZWRmHSyr0t7LZgzQ+zh4sBrfo3CXiTg0oJoqgZJGe1LD/ZfOh2qAab7zft4
         rY24PRQqSJpCEgnyKMgfWypQnUh0AhErGhF3eL+Cd5jWl8dfEwP6QdAkfAMjTsPVjm6U
         sCRS5DxtaYVfdUxBm4tyaQ34FXVB34T1LFtSVld2moMlf9QCtFhSEyVyV9zxy6jjLPBI
         g9w3AOppW+dG6Fmw0r81EII2bqOc9MwxoMUdtMSVDpcsrlGiBMvTxug8HmN1RhBnjR9l
         ITYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784966449; x=1785571249;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=13z8xjIigSLm4fcji9bQpCPHK39sYQC+iiIlSwrcSfw=;
        b=V/J90HjpcOW8Ip7ULXh2+i3+ahDxuMWrT8IdvZmvS2E8m8cnXy06VC/2sF+oh0Q/e9
         UinRSI8CZ/GIQi3f8ZNCzMRLkWJUJHn6kNQo1Ul0nJCTOKS6dWS6f5s0gpwein0SEjfx
         HCA5cnYLkqLvpwUNSwwPEh/CfimiIqYh97CrJwpYWGQRox3yzno8BegLGSek84lbGsqB
         WKmKxIrkhup5e0bcDoNBHOXXD9s+g/0Xpl0ihyiDCFw0uvmNyrQv5jdBWyq8LNbaF0OB
         DTbqeyIENAnWwiAZIrmeLhqcFrjE9I1hTuXArN3saxDUEwLwVBRuoRqE0ey4GSiRduSE
         P7ng==
X-Forwarded-Encrypted: i=1; AHgh+RpP2InaK6LNkjMMddr2LUwvPXOTshoyqGz2scFZhzIIxjB/Rw7J4UAlLoyK1mzOSNzSjLjffhFO3QZEO20yaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxPpsqLR3qhuHVXSSm5/W7UxrLcw87xS3ZpsiUHvxm4fqI+avTp
	H8jEyoZI1RL8VWSmna+uyTkkBFOxao9in2D1KZMdWjgBLuQOfN/H+1EnRrnHJ2t8BBFALnaFezr
	lt3236WaDP3+VqtW5Nc+IQCQoQMU6K4U=
X-Gm-Gg: AR+sD10pMZep30qJdy1RryjynA/afmew0K7d/BKwxDP1/L3b7fpQBaMMFsnge5hEGQb
	vkLNzSxNNFrpDaoNdoj3r8JnfSqRG1PHZCEO4u5tw2L0IKVRFI+E6A09oCxiRFshCBdG/WBQvBr
	WN+FUFETuYt/4ufxUjfJQHrDZSkR48dwiAuqkSd9uIWH8KFfk/buwW1Mrm1lCNpFtn7RyLd+NvL
	R7H/ReWNUHBSaLfx7xNERFaB3GpwXWImqO1NCuIE2YHTYRtuWn0SOQZ4Ox/GmHZVpPyyf7mk4+S
	bzg3O2MVtZqO4ulVi/TEw1u7WM6aCk7uMPrN0j0FVf11T+1UxvvO/ugo1bqKv38=
X-Received: by 2002:a05:620a:2681:b0:930:dd19:11ba with SMTP id
 af79cd13be357-932df6f0f30mr100360085a.92.1784966449572; Sat, 25 Jul 2026
 01:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <20260724111548.2109-1-tharitt97@gmail.com> <amOO86K_3wuTd_92@lizhi-Precision-Tower-5810>
In-Reply-To: <amOO86K_3wuTd_92@lizhi-Precision-Tower-5810>
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
Date: Sat, 25 Jul 2026 15:00:37 +0700
X-Gm-Features: AUfX_mzCV0IN9fI_10kkKdi3HsilTau4VYjXeApWLMbv2AYQ88l9nYF0tHwG8Pk
Message-ID: <CACak8wNJsmVKm3m+JwYPSxqfa26MVFRo3jE3YrppJPi5SBBAUg@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: release runtime resources when device_run fails
To: Frank Li <Frank.li@oss.nxp.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Hans Verkuil <hverkuil@kernel.org>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel-mentees@lists.linux.dev, skhan@linuxfoundation.org, 
	me@brighamcampbell.com, jkoolstra@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260725_010051_707636_5671B683 
X-CRM114-Status: UNSURE (   6.91  )
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

> Mix use runtime pm and clock is not good.
>
> You can put clk_bulk_enable() into runtime pm resume call back
> and clk_bulk_disable() into runtime pm suspend call back.
>
> Frank

Hi Frank,

Thanks for the suggestion. I will inspect the hantro pm_runtime call
sites and let me implement your suggestion into v3.

Best,
Tharit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
