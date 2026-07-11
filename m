Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C23C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jul 2026 16:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QNjc0cLw+DzcYYqFTY5ChAdZOF95Dv/87xRvaDPuSms=; b=B6S
	9lbb1pLGtWVqS/HN7jC0RvM0Lhng/RtXNE7F1FHd5AU6lAM5brp23e4VtAdmelBeA20U75IHxeU7M
	45g5r2qslc3Z23SC3xlfqyy6WNNQVJ9pJ2CJv+2c+OplzFKjDJ9MLYeDDufb8uLnvwxM2Sh//K/dx
	6Quc4PbqXGMFE/69SQ+ppAd0iMtyJqMszMWrY81kPlewRSgYAQ7wwZCz4puZv5S+CY8SGlUUtRvaz
	U+7OBYDkodcOPWDHiUVvHqqsO7/AiuMtkOKFSqLOSi6DYIXDSl7MoLSiwSDyZRRnwZuecGrDfHLmg
	cx2O0s6gkDmfjYW27mOI4QyQo07VKkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiaSZ-00000006h1h-10a6;
	Sat, 11 Jul 2026 16:21:47 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiaSW-00000006h1L-2RfB
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Jul 2026 16:21:45 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-c95d0a54ea5so1290769a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Jul 2026 09:21:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783786904; cv=none;
        d=google.com; s=arc-20260327;
        b=dFwD6sfPWChZ+PMDcKokJUVOaxtpqIC68+LLDFMv+n2tFFdfCGUyYf0e1clGxRV9qz
         vz99efJX13+kDix4l173OaacWHUoIOlf93JW//gIAzL2i6baAZxKSviOhF/qwqv0G4tV
         f+KWb3+km7mzARzq4ogf4A5plOuUOj2RG/R6WFoVPJizwSdAnfmRFd08sFLRwNjYbf+b
         2OpXIKGEljFoH9+msAozBEFhRfVJzccjnypnj0XXeZlIdFjW6IMWt3iQfzqN3LqEWxBT
         53WfeAX86sp/pyOP1QnFF7UNACfsFom+DlfZJzn7KsS7kyugJpchvWcqmnqdkoDeeWAJ
         uLYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:dkim-signature;
        bh=IkZJamJ+M8WQOpkR7LJu0TviRyZe24pp7M1ZDxPcp5A=;
        fh=+S59iss1khD7Phgpxaw6TfzdkZnYoHq76HDPsYgQzeQ=;
        b=Kz4Eub9zuz/ca9bOiwFxmw33BZC0JAhCq8w/r8EEQSI6SDnlNh6kJQbZOEXlvCxPHk
         wPHAavXyb6mNwT6/kGVhvAObAbCJpgltalCnKignUEzEMG+ChUkSpIHb/sF46Y7XUbPx
         UgxSK1wwjfw3sPW8y8LcvVQdoFW6Vj94O6JZ914CE/5g+XpBw9uRptoQtdjoQkZ9ESbK
         RjIRMI8zsdGxtR/jWw8LsNpyAgRBBIWUt9DJworo3gwQUHuQHEPuZTKfm4RkP49CFr4P
         zTA4hJ/REuiQT+90DIn3qXMYUcbhNNzH73XG+6O6g6p3UGoLjzfEsP2iL4SoYD33fDVT
         WhPQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783786904; x=1784391704; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IkZJamJ+M8WQOpkR7LJu0TviRyZe24pp7M1ZDxPcp5A=;
        b=CSUBkoYh21IAWecxrISxPxnNqe4w872yt5s3OWdnmxmktYUwqOpgxG5pxTGvl1cYq7
         In9+PJenQgQd/RI/cYAusNzJSfox9msXJeN73k7Ckx2CbMiUn193fJmf38YgEpX6sI4+
         cvg9WXwmN2WgS0axznYziQ4C1kwvYwA74HMdBtK+dYzne2aEYCumTHFHmgYFvFZQmgVR
         oEbwnmLmow8FZcLw8G1GxXDXnNNSvAvf5QGXqSnb6jBN5GXBtkuj4n2L4Ky/ndvLmev8
         X/L7CqZXTWloboQ6rEYD43+a/C/McKbIBTStl0pH1PNRI6MXXTSGoEvMgWFfYMGGM4Nv
         Egpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783786904; x=1784391704;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IkZJamJ+M8WQOpkR7LJu0TviRyZe24pp7M1ZDxPcp5A=;
        b=MvDgjhNNh8XRqcj8ukQXLZHu6DKEOVYTGFq6ny1QeeygSnCub7K0YUcbZCJu8GWHBQ
         QWZTdy/+3e8fFiQbv/DEE5rrzVIRvdimezZ7rLWAMF/1TM6npaZqotd7VGVcBB+qA+5K
         Siemf6lvuLFv99vJ4yf5LwaK4rMEuewI6Am/zFVgm73tlAYCUsrmfrn8LqQzI1w8raYV
         PlyO8Px6n3RUc3UR/EWcRPq4gjTGAyZ+1Q+96rz2KUWkRjfBBtdUkFdxkac/YKy18vs0
         2W8viE+imtkz4WF/EJ2W7Xe98UskfFi0F6PMrM3D96JuS0AI1D/rHcRNhphFgu3dGXL6
         B1eA==
X-Gm-Message-State: AOJu0YwAdzXpAoEe+5+5vXCZYU8+AoNwVtUHT5OMB0VkVvpj8AlqZpmt
	gsHmXdToElZpcy4s+ruJzpaC7G2g9MuqdZ6rzloUoMewR6xUYnX8dQDzCSKl0MQjSJeMmaVqd8H
	EAT27vv2MSHW0tKwxKCqFGbQrEypNYYNwi00o
X-Gm-Gg: AfdE7ckHsKtYti2FpahdCvG0+P1fwqmeicWQVyCZ3CYmR7YPra9x6kFABINQffcGnki
	jvMn1UUQGPOCcfdrt09duJbQQGRTROEFMrfo6O3PfPWsc4JP1xek7M1atNhMZvaP+TxZyuWeGok
	Kkmb3GSPtnPwUpy3bwDDQU4OM9dbxqN7xd1kqT0LOWaWO76VTIQtquzfsk7u/W4LHxBK6nz7Abk
	NYkV599ArtRMuVbikftzKDXDDMkPUFt1M8QtFqtLOnV4n1HDoejZoJYmWEg1i7klCetREMXU+s8
	DNq3soUwY9JS2RQxh3H9JUKyn8144A==
X-Received: by 2002:a05:6a21:3295:b0:3c0:9c1a:8941 with SMTP id
 adf61e73a8af0-3c111073a8fmr3418460637.73.1783786903644; Sat, 11 Jul 2026
 09:21:43 -0700 (PDT)
MIME-Version: 1.0
From: Dave Jones <s.dave.jones@gmail.com>
Date: Sun, 12 Jul 2026 00:21:32 +0800
X-Gm-Features: AVVi8Cch_KqxQJaqK4XWCpdhc43yKKRXmhzKbo2GCax0eCIsuFVZXjwUhEZ0vnk
Message-ID: <CANf5e8YTxDsMdqOd02ht4J2qUU8rTV6pC3L36J6XC5pOAOpHRw@mail.gmail.com>
Subject: eDP support for RK3568
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_092144_624160_FD74A8CE 
X-CRM114-Status: UNSURE (   5.72  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpBcyBmYXIgYXMgSSBrbm93LCB0aGUgbWFpbmxpbmUga2VybmVsIGN1cnJlbnRseSBzdXBw
b3J0cyBlRFAgb24gdGhlClJLMzU4OCBhbmQgUkszNTc2LCBidXQgbm90IG9uIHRoZSBSSzM1Njgu
CgpIYXMgYW55b25lIGFkZGVkIGVEUCBzdXBwb3J0IGZvciB0aGUgUkszNTY4IHlldD8KClRoYW5r
cywKRGHjhI3jhKcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
