Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CBFED69100
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Nov 2024 11:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsUVVWLtKr41zozQEZUuOcXMn9HeN4PSKksOYd/TWsE=; b=MsO0VOfzfttDZT
	/hwcR7LLZb41U/fZSOAL3XjHPTD1Z2vDOzzESripwEmhZu9oJz1YIxWuRCsfs6Dvy6u0rDvSAGcSM
	8GSTz9c4ge9apmYhouNDncJ+NPRALyagLD2Z/VjbNTAp7xKqACe98w4w0xB3Syq3JInVhVkZ7m70/
	aWaTAns1nPCncP7FAwBr2zX945zq+WJCzx5cPsMtXi0AhoBzXp+8ZxZbOojR1jj1zGdd8I0ECw0ng
	cjM7yTudrfQw+Bw8+QsNnqA5xUbs1XZ8tbejlvYQqKp5UgUBAJTWNAE3bVZaS4EWgwjLOPue8KX+t
	8NKsScA5BhI59lmfTxJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGdAa-0000000FQF5-3cXH;
	Thu, 28 Nov 2024 11:58:52 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGdAY-0000000FQET-1uLY
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Nov 2024 11:58:51 +0000
Received: by mail-vs1-xe33.google.com with SMTP id ada2fe7eead31-4adde46ccf8so237698137.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Nov 2024 03:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732795128; x=1733399928; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=thmJxm3LbpxOmnTbPgHnHFkvb0Qe5NEu+nq09ws8ow4=;
        b=C9DvP+23aNrAJ06ovbniuQBPq1DTjSyHRArBRYkNwXgukkKdgmFfmW6DUTzmsVYzsg
         9ky+N8tGH2VmkBdGqA9SP7zZqyeYZWFI+y79v+p/kivo+PgYb/zbY4G02XzSXnZZPBGT
         /Yg/mH3dOkjSVoL1E4P24escwBSkojs7dltKzW+EYlkKMCUTxpebhRU9AxBCAcLQLo7x
         TP+EkdSVj2wo6wL5Oecnp96tSlfeZcb78SRjXqfc5e/WyhxL3UetL/Cr0ls8yZCp0C48
         cd5lDLeZrutclk9Yqc0oHqNeWzuchIKc2NhTC7NxO75otaGRj+IrK2QOCkLovT0dehqR
         /KkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732795128; x=1733399928;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=thmJxm3LbpxOmnTbPgHnHFkvb0Qe5NEu+nq09ws8ow4=;
        b=jg1ebelqzP9YUSWe8TgNTHxWqnMzAm5kE8JpstZtuHrD/O1Lf23CmDySYfLLM+E4Wq
         k2F9un35g2EBadnhrWAdvx3UR1M0ZbYaAmfA++vyLphmcS3MsKHc0+vrwersRKqqK+mF
         8SQBxV48xpDT0bjSJy6Gyf7ppQTEhDQ1J+8WjCNBWJWFpNMaOF8nRuFaJTNn9CeeZtcl
         U7tAWq3RV1UEuxDhShzXJVzYz+MYoQt79Pqmkh6IpNDuL+DQLUha/GuldyHBUBSNeCG7
         +p95W/pXX3Cbp63szAMzD/lvkm+8fJ8CnbZYzLRgiaELbYHg6Yw12QdBpt8720qZkxu3
         NtPg==
X-Forwarded-Encrypted: i=1; AJvYcCVFjwe5sj1RG2D+PypAUe4R2n302TsGw4+IRQnYGKfFVXusGJTIJZXTLCiIUrKdZfr6YFW4MkQwtWqEvYMDOg==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywk0aSKimICFpfYOzRqYyKegUES+J8xiQBz+095zBuau1FrgVGF
	qf8u+8zZ8EX8FCfvSA0SyEMC9jviClVIyZ01bHlRe656ZbxJ2a6lghMpoCbsRaP0RAxir1ZXSr6
	iTia1SEVTHEt1YMvmIRlmKKsWhwE=
X-Gm-Gg: ASbGnctSKBSlOJmBsFwUPqCfhkqDW8LXrE63OSJcx8R0WxdkdKoCgRZEUnuof8W7CWv
	xAkf4JdgZB50bIMd+w9P5rob9w5wt8bm4poO+VkU5e5h6W6xsOCYQWacLlPZWMvgu
X-Google-Smtp-Source: AGHT+IGjaZGV+Xcbgpdco0vufOvN8dzVlgh6sNvJ63b9BEm6HPt5yx45kBcgYD+xyfaWKpEXU1SCoB0b3NSQnNAptoU=
X-Received: by 2002:a05:6102:c09:b0:4af:38f1:5127 with SMTP id
 ada2fe7eead31-4af4491a0e8mr9471082137.22.1732795128320; Thu, 28 Nov 2024
 03:58:48 -0800 (PST)
MIME-Version: 1.0
References: <20241127015224.2361-1-naoki@radxa.com> <002469435A2D5C9E+b9a05cda-1ccf-46c9-8f4e-7a8534b1a875@radxa.com>
In-Reply-To: <002469435A2D5C9E+b9a05cda-1ccf-46c9-8f4e-7a8534b1a875@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 28 Nov 2024 15:58:36 +0400
Message-ID: <CABjd4YxAj09xWFzWW1d5XF7eU=M3KP+UcjyuRnt7JeabXt1Hew@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, 
	geert+renesas@glider.be, devicetree@vger.kernel.org, 
	sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, 
	jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_035850_489216_B91258A7 
X-CRM114-Status: GOOD (  11.28  )
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

T24gVGh1LCBOb3YgMjgsIDIwMjQgYXQgODowOeKAr0FNIEZVS0FVTUkgTmFva2kgPG5hb2tpQHJh
ZHhhLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEkgZm9yZ290IG9uZSB0aGluZy4uLgo+Cj4gT24g
MTEvMjcvMjQgMTA6NTIsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4gPiBvbiBST0NLIDVCLCB0aGVy
ZSBpcyBubyBQQ0llIHNsb3QsIGluc3RlYWQgdGhlcmUgaXMgYSBNLjIgc2xvdC4KPiA+IHJma2ls
bCBwaW4gaXMgbm90IGV4Y2x1c2l2ZSB0byBQQ0llIGRldmljZXMsIHRoZXJlIGlzIFNESU8gV2kt
RmkKPiA+IGRldmljZXMuCj4gPgo+ID4gcmVuYW1lIHJma2lsbCBsYWJlbCBmcm9tICJyZmtpbGwt
cGNpZS13bGFuIiB0byAicmZraWxsLW0yLXdsYW4iLCBpdAo+ID4gbWF0Y2hlcyB3aXRoIHJma2ls
bC1idC4KPiA+Cj4KPiBGaXhlczogODJkNDBiMTQxYTRjICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6
IGFkZCByZmtpbGwgbm9kZSBmb3IgTS4yIEtleQo+IEUgV2lGaSBvbiByb2NrLTViIikKCkluZGVl
ZCwgdGhpcyBtYWtlcyBzZW5zZSwgdGhhbmsgeW91LiBTaG91bGQgYSBzaW1pbGFyIGNoYW5nZSBi
ZQphcHBsaWVkIHRvIG90aGVyIGJvYXJkcyB0aGF0IGZvbGxvd2VkIHRoZSBSb2NrIDVCIGV4YW1w
bGUsIHN1Y2ggYXMKb3JhbmdlcGktNS1wbHVzPwoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
