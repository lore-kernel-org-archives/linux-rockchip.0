Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ECA0CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5toSX3ZPmb5UQcYyTrWGI8Z7un5tmj+MK1fApm7J83c=; b=AQDTTBcmzYXbQt
	aT5AXD9xhvj1m0CcRTEK8vgY5eAYfL+y0GikSJ/ggP3+Bsaibax9hmQtGdhBmymP8r+vyMtr90iXo
	ymfgaDBuhwmMjMIVU2XkXQKcebfz9a5WjqGi5/EYx49U13tGfE6K7p0vusXttA1r18xwsiwj7D0W8
	EVpR3QQSgNjnwUaUrcU+IxkRiEHBEKEopkEOTbrxl+xakwLpa3DYQMxNyj2IvDUGbrp+mHelT6gxV
	eVI0c76WqsKZ5a5aXkUIoVrh9LOSPZD3LpVnqviKNcWmqf6eVWk2oAb2ZCAnvXvmH8H75o0zPbMUf
	M+3vQMyBuiMF9wFLxmVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAonk-0000000DLsD-2dc6;
	Mon, 20 Oct 2025 12:15:48 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRAlV-00000004hIU-0jYv
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Jun 2025 14:24:51 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-60707b740a6so6929086a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Jun 2025 07:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750083888; x=1750688688; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/rtdpN+PtdmBXOM2J7Yffvux0AIuegYz/kgF9E7CkE=;
        b=kfJcqJqsSuCxFcHrW2YMUHE+kVsV5UHSUQQdsEKKUn1fbX2KMaklheA2UN2lvkBCAo
         gC8SJZTdhUJjvaOhRwGGIJWQ1u8rqzqHqp5TmCdIU8QfI215JCjOMiE5Z/GnY9qi+nLU
         6MArUogWuPlovTXTbx/qqk6DA7hhvTJmzNvXdQIMrg/ZgN0QWH5E2MLaPma50SWCaGgh
         SMZF+aVvYzQej1OEtJtSLS5NQevuR2SyXRVi8Du0BKBCdp2whC9HTnQxbAVO58VHrlM1
         sM5ozYuETpd2jLUdmhp8azoKERe3PxU+v5JJVQyPErxdWi5uvk9EkgDLdZc8tgbq8K7e
         kEzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750083888; x=1750688688;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m/rtdpN+PtdmBXOM2J7Yffvux0AIuegYz/kgF9E7CkE=;
        b=I7f7M3YwopFDNEiXuOfU5Lc68UtV6+jpWj/to9YRYuuOsvWOiqmVbrQgV88fpMPKD+
         l7/7/T946dw1OhlgSzgC4HyWWUfcxF1HuNHrrTOSH28CvZJxM+UHi0VXoNApie1g0fW2
         FiG9LyVGIT/vjkQXIlOeg072UZP4Iag+fEec8w+Q7qeNDmCeNyzTw6Wb2WfBsuTfF+yH
         hAz1RyoAHHCdfxHh7ZUHLczVKjCSWwGqEDmI9l1rVcLVKxNPO3RC3zWeAfwgoeJRafzy
         1pe0nh8vwQvZkh4Oj/XN+092ix1By3OLyeuXMhFEPV7zs4N7xXzv4zpWzV60lzL/sWme
         ZqIg==
X-Forwarded-Encrypted: i=1; AJvYcCU0ZKlz3YbW0KGKX4HEU+azr79vFU+ejmkd1Mz0MgwRotIMr5WrmVefRn51pTO82t6v+Z5zIDzyZ/ukMhUEQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzeTQ+gHgR1lEFZ4QGziQ15agJO0n/y4zJfvoJ4q66uM4r9B7fD
	QRCWU+2jYxPjnhDV84u347cuav8zC3Wo652oZ4uIo4dBin3uKnbNWNXA
X-Gm-Gg: ASbGnctXCpEX/Xu7BifbFYZ5I0AyfXruExpU+fqXxY9M3IeC/DqjaScdZqxYy65zLJP
	8lZkY1LfXoxG61UafC00V3T1NCDzlngw6knnFHx2ILmvoehS/EiQuHEzFLw5Wci9xw70A3+MH2C
	97cIyCjFbr0AcgxSCSin2nMi0uVnvtxvh9WqNePhsk3errHEA+ZYfwqegSFBhxdB/c4t1aAAU8i
	9wxL0ROsODCEq/uWHZzQNHy6vhhzjmq51aPLZumwuEAry1KoKMW7NGedT1EsBf5JScZWQaWK75h
	1TAjpKQR+tM30OK3LsEpyxW6tsx2RqHlE+4yTL13FgZRKxcI+IS4X8VLNxwHntTKnHuMXlR07ff
	HLJzFOIDah/fesC8cOdKy
X-Google-Smtp-Source: AGHT+IHi+mEphMwBTTfWm5TcHoFehbnGfJTujXKENEZeK1S3btKdgvMbDZ392XHSKkqnftSxx+0Vng==
X-Received: by 2002:a05:6402:13d2:b0:607:20df:ff4c with SMTP id 4fb4d7f45d1cf-608d0863c2fmr8281398a12.11.1750083887416;
        Mon, 16 Jun 2025 07:24:47 -0700 (PDT)
Received: from smtpclient.apple ([89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-608b4ae508bsm6165683a12.80.2025.06.16.07.24.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Jun 2025 07:24:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: rk3576: what is situation with cec?
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20250615123922.661998-1-andyshrk@163.com>
Date: Mon, 16 Jun 2025 16:24:35 +0200
Message-Id: <A18E2910-A2C1-40F0-B282-1AB47BADCF50@gmail.com>
References: <20250615123922.661998-1-andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_072449_211953_DA6F4AD7 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:15:44 -0700
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
Cc: linux-rockchip@lists.infradead.org, zhangqing@rock-chips.com, Derek Foreman <derek.foreman@collabora.com>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW5keSwKSeKAmW0gY3VyaW91cyBvZiB5b3VycyBvcGluaW9uLi4uCgpJ4oCZbSBwbGF5aW5nIHdp
dGggY2VjIHN1cHBvcnQgb24gMzU3Ni4KQ29kZSBp4oCZbSB1c2luZyBpcyB3ZWxsIHdvcmtpbmcg
KGZvciBtZSkgMzU4OCBjZWMgaW1wbGVtZW50YXRpb24gWzFdCgpVbmZvcnR1bmF0ZWx5IGkgY2Fu
4oCZdCBnZXQgaXQgd29ya2luZyBvbiAzNTc2LgoKT24gMzU3NiBJ4oCZbSBnZXR0aW5nIHJpZ2h0
IHB1bHNlcyBvbiBjZWMgbGluZSBidXQgYWxsIGFyZSB3aXRoIH4xMC0xMiUgbG9uZ2VyIHRpbWlu
ZyAoY29tcGFyZWQgdG8gMzU4OCkuCmkuZS4gc3RhcnQgcHVsc2UgaXMgfjQuMW1zIGluc3RlYWQg
b2YgMy43bXMuIFRoaXMgY29uZnVzZXMgY2VjIHJlY2VpdmVyIHNvIGnigJltIGdldHRpbmcgYnVz
IE5BQ0sgYW5kIHdob2xlIGNvbW0gZmFpbHMuCkkgdGhpbmsgaXNzdWUgaXMgaW4gMzU3NiBjZWMg
Y2xvY2tpbmcuIAoKTXkgUTogCjEuIGlzIDM1NzYgY2VjIGRpZmZlcmVudCB0byAzNTg4IHNvIGl0
IG5lZWRzIGRlZGljYXRlZCBjbG9ja3Mgc2V0dXA/CjIuIG9yIG1heWJlIHRoZXJlIGlzIHNtYWxs
IGJ1Zy9vdmVybG9vayBpbiAzNTc2IGNsb2NrcyAtIHNvIGNlYyBpcCBnZXN0IHdyb25nIGNsb2Nr
IG9uIDM1NzY/CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5pbXl0aDIvYmxvYi9t
YXN0ZXIvc2NyaXB0L2tlcm5lbC9saW51eC02LjE1L2ZpbGVzLzEwNTQtZHJtLWJyaWRnZS1zeW5v
cHN5cy1hZGQtY2VjLXN1cHBvcnQucGF0Y2gKCmJ0dzogaSBrbm93IGNlYyBvbiAzNTc2LzM1ODgg
YXdhaXRzIGZvciBwcm9wZXIgY2VjIGZyYW1ld29yayBidXTigKYuaWYgaXNzdWUgaGVyZSBpcyAz
NTc2IGNsb2NraW5nIC0gaXQgbmVlZHMgdG8gYmUgc29sdmVkIGFueXdheT8KICAgCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
