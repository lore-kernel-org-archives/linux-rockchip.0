Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36976C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 12:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fhhx+NWi3AQ4PozJ4j7hhc/0SapSrmer1/49MRuNbhY=; b=vh8HzH10DSOW8q
	yVZxNQsKS/W5HkfnYgXp0Sram3ZsCd0aNAX8ieqajmOJPZ6zMriCnwmEXskRgtFZO/ti4YKMFkJcT
	QGJfJ/e7YWbsiMaOIuATuIsj8Q6XQjFdd6yEIObm+ihpILfReh73fjbdpqq1ygm/i9/dhq7t+UWj+
	ixWwO0BQWYZ0kkg1N/bz28eGCyNbmTn1BxbInqd0CdqO11Pocf8EXiMp+yPaIbSigOSH930foccDx
	YooFKjSKcqQ5sut+fBYy0sb7l1Igfgq7TwBICAAe19PiRHX0Rq2w6SRfDb9dfvebQGQgjQIP1gAqE
	rRo4QCKaKcnUbCn5/rYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHNjO-009OVG-2r;
	Sun, 24 Dec 2023 12:37:22 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHNjK-009OUx-2z
	for Linux-rockchip@lists.infradead.org;
	Sun, 24 Dec 2023 12:37:22 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40d31116dbeso36957175e9.3
        for <Linux-rockchip@lists.infradead.org>; Sun, 24 Dec 2023 04:37:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703421433; x=1704026233; darn=lists.infradead.org;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iAb99EPJSczvnpvF75Xlws6mgVSlBquAe5zUnxcOfxA=;
        b=QNBn1TLYKdvYJYtjbVGN9AtZr1ooiju9M161tdCxc7fYJ9RpIrHwDVzhxvROvBdpM/
         s+26A4BQrasFtneQigdpqsjYgtLGhDxQ8+fYZeAM97w02UtZWRjSVnwnT5ZxmLl9GyFq
         3JRJyOtDSKiTkdcMO8LVkX01xrS4jeV/XmVHPwVlU0lsemNdJ2jZXH8+rt+K6MmNwlYv
         I3QoMf9djSDwmpRTsGRcorJYkfKOEHflj0PxpY5DIMWzcFF5BCy8gnccUjWtaDzo/2Zd
         XqQSUuurXSvTJ/1+pn8B6Y8RwvoVF+NYAzSWJlo3Xjp6zwlA2+KRDiLx9a35P3hVEXgY
         UVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703421433; x=1704026233;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iAb99EPJSczvnpvF75Xlws6mgVSlBquAe5zUnxcOfxA=;
        b=UoB1TSv+2Q2bs9PgFXZ9GasLk2bpIq2WJy9g8s8hkk/zZo1AmBAfZXhAO+UIFdP5e3
         l1O50u2fjGqbG7J77Cag9GpQ7wUxmlK/Ujpcpu6k+i1luBUOIrqrYo/zWYLavDexbBcU
         zASaNwOzkm6lu4hFT8nGK8yp+E1Yitp3UqtC+neRUj9oW8TIdU/d9u69bjAyHQtONNCc
         6GO48URkPc0bDE/CNisU1pA0hZv5oNm2eA39LO8DFxYRnF95OnMd7nNdiVExo7DoZN/S
         tSsZWdfnvPP3wxtUNEoIz5aKycmdJXkWKocRbopLNSZpDzWlrQWH1yjTfIvMolkso4gC
         bBTQ==
X-Gm-Message-State: AOJu0Yxy807VQI0Hf5Kwo97P5pCT5uuy5HDtMCvhTEeG3pP7lUYHgGRn
	/xPp5GvdiGnck08/Nl/CAK10vEXq2Oo=
X-Google-Smtp-Source: AGHT+IHyAIMvCeXEKoDgxhaxXcqO4iGE/pozVbhj5ljTMgYbKOC9ZfHjbgPj8fD0xzoXOjm07NmOJw==
X-Received: by 2002:a05:600c:1381:b0:40c:6c81:e6d with SMTP id u1-20020a05600c138100b0040c6c810e6dmr2208469wmf.6.1703421433536;
        Sun, 24 Dec 2023 04:37:13 -0800 (PST)
Received: from smtpclient.apple (84-10-101-169.static.chello.pl. [84.10.101.169])
        by smtp.gmail.com with ESMTPSA id n8-20020a195508000000b0050e7551dd6bsm411622lfe.14.2023.12.24.04.37.12
        for <Linux-rockchip@lists.infradead.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Dec 2023 04:37:13 -0800 (PST)
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.15\))
Subject: vop2: 3566 vs 3568: green screen on 3566; on 3568 all ok... 
Message-Id: <7408CE66-E110-4DB2-8B73-856E71E16754@gmail.com>
Date: Sun, 24 Dec 2023 13:37:11 +0100
To: Linux-rockchip@lists.infradead.org
X-Mailer: Apple Mail (2.3654.120.0.1.15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_043719_006407_05FA0143 
X-CRM114-Status: UNSURE (   4.20  )
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

SGkgKiAKCkkgaGF2ZSB3ZWxsIHdvcmtpbmcgdmlkZW8gZGVjb2RpbmcgKyByZW5kZXJpbmcgdG8g
ZHJtIHBsYW5lcyBvbiByazM1NjguIAoKT24gcmszNTY2IGhvd2V2ZXIgdmlkZW8gcGxheWJhY2sg
Z2l2ZXMgbXIgZ3JlZW4gc2NyZWVuLiAKTG9va2luZyBvbiA2LjYuOCB2b3AyIHNvdXJjZXMgaSBz
ZWUgZS5nLiByazM1Njhfdm9wX3dpbl9kYXRhW10gaXMgY29tbW9uIGZvciAzNTY2IGFuZCAzNTY4
LiAKCkkgcmVjYWxsIGhvd2V2ZXIgQW5keSBZYW4gKHJvY2tjaGlwKSBzYWlkOiAKCiJCdXQgdGFr
ZSBjYXJlIHRoYXQgdGhlIHZvcCBvbiByazM1NjYgaGFzIGEgc3BlY2lhbCBsaW1pdGF0aW9uOiB0
aGVyZSBhcmUgdGhyZWUgd2luZG93cyhDbHVzdGVyMS9Fc21hcnQxL1NtYXJ0MSkgdGhhdCBoYXZl
IGEgbWlycm9yIGxvY2ssIHRoYXQgbWVhbnMgdGhleSBjYW4ndCBiZSBwcm9ncmFtbWVkIGZyYW1l
YnVmZmVyIGFkZHJlc3MgaW5kZXBlbmRlbnRseSAsIHRoZXkgY2FuIG9ubHkgc2hhcmUgZnJhbWVi
dWZmZXIgYWRkcmVzcyB3aXRoIENsdXN0ZXIwL0VzbWFydDAvU21hcnQw4oCdLgoKSSBzdXNwZWN0
IG15IDM1NjYgZ3JlZW4gdmlkZW8gaXNzdWUgaXMgc29tZWhvdyByZXN1bHQgb2YgInRvbyIgY29t
bW9uIHZvcDIgY29kZSBmb3IgMzU2NiAmIDM1NjggdmFyaWFudHMuIAoKSXNuJ3QgdGhhdCAzNTY2
IHNob3VsZCBoYXZlIGRlZGljYXRlZCB2YXJpYW50IGNvZGUgdG8gZGVhbCB3aXRoIDM1NjYgbGlt
aXRhdGlvbnMgbWVudGlvbmVkIGJ5IEFuZHk/CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
