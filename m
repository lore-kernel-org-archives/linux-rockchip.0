Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45582C05027
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Feb 2023 00:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GeXXfsag9FG+TnyTiGyM0RjDrtkhVODpt7TnoHo8zc=; b=spZWFBJfy2Ln+3
	iEJbo0kDWrikz+bVOfjzZKoaNYxQgNDNigHybIy/0Gd9EfSbeBEFMgztE/vQftQ18S8+4MfaIQu43
	12M0FNP9Uj5r6KmizKAU9NAaDxXWf8d37OCPBmn6xRwKp21gH+RZKkHNq3MYUIIWMAHFmJwZ7hMFr
	TGnwjmoCsqh1vgGr3Yn1e7XGz+raK71J1oP/WYl+Fd+gQLGc0eOgQpjtOoApoLeqZa5dbYLsV+OwZ
	Gk5xFl/1Mi9ZVL4KNNmoikLabSUJIW2bn03CXU1/bEIy0GBxPpFp78G+qi2cgyoz5er74x+p0z6bz
	BH+SlYHspvBON5b6wQQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTAkU-00G1Mq-8O; Sat, 18 Feb 2023 00:06:42 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTAkI-00G1Jk-5X
	for linux-rockchip@lists.infradead.org; Sat, 18 Feb 2023 00:06:31 +0000
Received: by mail-pg1-x530.google.com with SMTP id e1so1530582pgu.6
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Feb 2023 16:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvX+1aCGeXmThaAv0HPXava3Nq97NGfPprIlYrZXPc0=;
        b=oa01nWCg8WRSIAOF4SxvXx80cK5iWqHD909oZptALrrrH9SSm9GbPDBbTBPRNGt2Kr
         WE3imOrFURj/HP2Xqpd9IAeotlG92HflpVdn+xQk5+avZcJhxDmFf1S/i5QVUbUVEZ40
         eDVdSwml+asH+kpSNHckj1LeD4XGU1juqm2+NGO8ruuE81500lj2qbvTm3UJ1iW/h2hM
         vu/m0ZOKhUgZxvoB0SI3wXiZSUTJ3G8iPtuznDQMoLKm0UNkVuU/XQBIoJq4+jmlhyFE
         U/8pgizlMAJQgoz7nJoMpAG0RtEds84GQkGpWf5oG1XRWxoQsTsih0RyJqCYVznrRuYV
         6HQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvX+1aCGeXmThaAv0HPXava3Nq97NGfPprIlYrZXPc0=;
        b=hhclVOFfJWlm24aSUyDOjl1QOHvv9yAeHephXU1PgPWzdOF0d7QCpZ4nVVQXS7yhVA
         kHSfjj1TbS9fJWc2YO1GpK0t7rq+vIp+u3Izlhfs6T30axeqr704zLtmkdSxTr46CN1D
         M1Ma+fdzRAw8oXNQ+GdkzyvZcZkb2fF2ImWr6Zpghr2gKkU1gH+nvK3Qt8khAkZuY57B
         v3wl5eNNiXh+8NbY+eS5V4Y1UqMamGeiQgeX96LKrSaJdepVWwfYLVfuMa8/gjDZGwSl
         GH0P9+lQfBDRN7k5tXhdGkWY7TKzv+Ni7kPAHUzgAX5heX1nsy5+o9oRSxtUp20sk9Ce
         M6oA==
X-Gm-Message-State: AO0yUKW4DX2vhm6/VHKuCHci6LPuKsCRrzA0OSGvB9XQx8F+X8gRZWt+
	jiJn5EENlKgDXGRSZWFD/1VKXPRqhWkp19b4VGil0g==
X-Google-Smtp-Source: AK7set9WNLiMSIfMK/eaD1L/sZEjT4QbzX7DFSsiQya3t3NWvVFnzves2sJvzG6q4ThXNZJ4aMs5ZKv0ReEnOqvysR8=
X-Received: by 2002:a63:6e47:0:b0:4fb:b3d4:8649 with SMTP id
 j68-20020a636e47000000b004fbb3d48649mr355829pgc.7.1676678788412; Fri, 17 Feb
 2023 16:06:28 -0800 (PST)
MIME-Version: 1.0
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
 <20220825212842.7176-1-christian@kohlschutter.com> <CAGETcx__Ez8i9O2O30-Q1R00xOqBjkKMCwt37_AGAQjNvZqpdg@mail.gmail.com>
 <B6E001E2-9BCD-420A-B0F6-1495DE46955E@kohlschutter.com> <CAGETcx_OKA+MkExc98337kZYKsoJtV0ZdfYJE7Tk00CFvCt2bA@mail.gmail.com>
 <F6AC6A52-49BA-4F80-91A8-271E11CD17E4@kohlschutter.com>
In-Reply-To: <F6AC6A52-49BA-4F80-91A8-271E11CD17E4@kohlschutter.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 17 Feb 2023 16:05:52 -0800
Message-ID: <CAGETcx839=FSj-njD03bqaEFKPfhEY7DXnjQ5V1+s0G2vn86Eg@mail.gmail.com>
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
To: =?UTF-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Cc: Mark Brown <broonie@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, lgirdwood@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	m.reichl@fivetechno.de, robin.murphy@arm.com, vincent.legoll@gmail.com, 
	wens@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_160630_220267_2FF80BF0 
X-CRM114-Status: GOOD (  21.52  )
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

T24gRnJpLCBGZWIgMTcsIDIwMjMgYXQgNDowMSBQTSBDaHJpc3RpYW4gS29obHNjaMO8dHRlcgo8
Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+IHdyb3RlOgo+Cj4gT24gMTguIEZlYiAyMDIzLCBh
dCAwMDo0NiwgU2FyYXZhbmEgS2FubmFuIDxzYXJhdmFuYWtAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gT24gRnJpLCBGZWIgMTcsIDIwMjMgYXQgMzozMyBQTSBDaHJpc3RpYW4gS29obHNjaMO8
dHRlcgo+ID4gPGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9u
IDE4LiBGZWIgMjAyMywgYXQgMDA6MjIsIFNhcmF2YW5hIEthbm5hbiA8c2FyYXZhbmFrQGdvb2ds
ZS5jb20+IHdyb3RlOgo+ID4+Pgo+ID4+PiBPbiBUaHUsIEF1ZyAyNSwgMjAyMiBhdCAyOjI4IFBN
IENocmlzdGlhbiBLb2hsc2Now7x0dGVyCj4gPj4+IDxjaHJpc3RpYW5Aa29obHNjaHV0dGVyLmNv
bT4gd3JvdGU6Cj4gPj4+Pgo+ID4+Pj4gUHJldmlvdXNseSwgYW4gdW5yZXNvbHZlZCByZWd1bGF0
b3Igc3VwcGx5IHJlZmVyZW5jZSB1cG9uIGNhbGxpbmcKPiA+Pj4+IHJlZ3VsYXRvcl9yZWdpc3Rl
ciBvbiBhbiBhbHdheXMtb24gb3IgYm9vdC1vbiByZWd1bGF0b3IgY2F1c2VkCj4gPj4+PiBzZXRf
bWFjaGluZV9jb25zdHJhaW50cyB0byBiZSBjYWxsZWQgdHdpY2UuCj4gPj4+Pgo+ID4+Pj4gVGhp
cyBpbiB0dXJuIG1heSBpbml0aWFsaXplIHRoZSByZWd1bGF0b3IgdHdpY2UsIGxlYWRpbmcgdG8g
dm9sdGFnZQo+ID4+Pj4gZ2xpdGNoZXMgdGhhdCBhcmUgdGltaW5nLWRlcGVuZGVudC4gQSBzaW1w
bGUsIHVucmVsYXRlZCBjb25maWd1cmF0aW9uCj4gPj4+PiBjaGFuZ2UgbWF5IGJlIGVub3VnaCB0
byBoaWRlIHRoaXMgcHJvYmxlbSwgb25seSB0byBiZSBzdXJmYWNlZCBieQo+ID4+Pj4gY2hhbmNl
Lgo+ID4+Pgo+ID4+PiBJbiB5b3VyIGNhc2UsIGNhbiB5b3UgZWxhYm9yYXRlIHdoaWNoIHBhcnQg
b2YgdGhlIGNvbnN0cmFpbnRzL2luaXQKPiA+Pj4gdHdpY2UgY2F1c2VkIHRoZSBpc3N1ZT8KPiA+
Pj4KPiA+Pj4gSSdtIHRyeWluZyB0byBzaW1wbGlmeSBzb21lIG9mIHRoZSBzdXBwbHkgcmVzb2x2
aW5nIGNvZGUgYW5kIEknbQo+ID4+PiB0cnlpbmcgdG8gbm90IGJyZWFrIHlvdXIgdXNlIGNhc2Uu
Cj4gPj4+Cj4gPj4+IC1TYXJhdmFuYQo+ID4+Cj4gPj4gSGVyZSdzIGEgd3JpdGUtdXAgb2YgbXkg
dXNlIGNhc2UsIGFuZCBob3cgd2UgZ290IHRvIHRoZSBzb2x1dGlvbjoKPiA+PiBodHRwczovL2tv
aGxzY2h1ZXR0ZXIuZ2l0aHViLmlvL2Jsb2cvcG9zdHMvMjAyMi8xMC8yOC9saW51eC1uYW5vcGkt
cjRzLwo+ID4KPiA+IEkgZGlkIHJlYWQgdGhlIHdyaXRlIHVwIGJlZm9yZSBJIHNlbnQgbXkgcmVx
dWVzdC4gSSdtIGFza2luZyBmb3IKPiA+IHNwZWNpZmljcyBvbiB3aGljaCBmdW5jdGlvbnMgaW4g
dGhlIHNldF9tYWNoaW5lX2NvbnN0cmFpbnRzKCkgd2FzCj4gPiBjYXVzaW5nIHRoZSBpc3N1ZS4g
QW5kIGl0J3MgYWxzbyBhIGJpdCB1bmNsZWFyIHRvIG1lIGlmIHRoZSBpc3N1ZSB3YXMKPiA+IHdp
dGggaGF2aW5nIHN0dWZmIGNhbGxlZCB0d2ljZSBvbiB0aGUgYWx3YXktb24gcmVndWxhdG9yIG9y
IHRoZQo+ID4gc3VwcGx5Lgo+ID4KPiA+IC1TYXJhdmFuYQo+Cj4gSSdtIGFmcmFpZCBJIGNhbm5v
dCBnaXZlIGEgbW9yZSBkZXRhaWxlZCBhbnN3ZXIgdGhhbiB3aGF0J3MgaW4gdGhlIHdyaXRlIHVw
IGFuZCB0aGUgcHJldmlvdXMgZGlzY3Vzc2lvbiBvbiB0aGlzIG1haWxpbmcgbGlzdDsgSSB0aG91
Z2h0IGl0J3MgcHJldHR5IGRldGFpbGVkIGFscmVhZHkuCgpXZWxsLCBJIGRvIG15IGJlc3Qgbm90
IHRvIGJyZWFrIHlvdXIgdXNlIGNhc2Ugd2l0aCB3aGF0ZXZlciBpbmZvIHlvdQphcmUgd2lsbGlu
ZyB0byBwcm92aWRlLiBXZSdsbCBmaWd1cmUgaXQgb3V0IG9uZSB3YXkgb3IgYW5vdGhlciBJCnN1
cHBvc2UuCgo+IEhvd2V2ZXIsIGl0IHNob3VsZCBiZSByZWxhdGl2ZWx5IHN0cmFpZ2h0Zm9yd2Fy
ZCB0byByZXByb2R1Y2UgdGhlIGlzc3VlLgoKSWYgb25lIGhhcyB0aGUgaGFyZHdhcmUuIFdoaWNo
IEkgZG9uJ3QuCgotU2FyYXZhbmEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
