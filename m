Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C1DC88E63
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 20:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cagtgARCI/LBK5OkD8R7F8T9s4oxNJKl8IL2dLk49/0=; b=CSLkK/Hm4s/IND
	AbuVREiBYr0pmwhLZa41/kqyGW8JRYLeoGib6r1UTaClSk8hRxX8FzY1hqTKfEIpRPdKO08uulveJ
	WhuS1PZ6oU2DnufTuT5lDtYLsDomYbpem93pbIlf5JjzokMkKOPvAO+38dDJqjATCfl9cRo/4THUx
	ZZ8bpjtOZmgQUYtAYenp4uZyHwtF8I12X+JZhoN9xBpS8w1PW2eAZU5emnMGlN/GzV5+3laJg7kpi
	DBMq0LRIlaTs/2bJshO+TIfBQBljNgPPlrbUhs+T6Qd8gZgEagmkjJJkOJSwN+p0/Y2W3SaT8FpJF
	i0t9C1mJjFJ4pPmo+2KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5qro-000000021cg-1deP;
	Sun, 13 Sep 2026 20:32:00 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5qrm-000000021bP-1V41
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 20:31:59 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-c1670dad7a8so473267966b.3
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 13:31:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789331516; cv=none;
        d=google.com; s=arc-20260327;
        b=ZMSKF9EY67jRKjNncDI53z73dOIegcO1KUqZVZv7bYQZ5upY7n2XYKBNCekVcFktrO
         BzyYx+pPjxRzfz69oOcxftMchuCs5ahT3e+UPLicqEvzHwf4wV9Gfb0KrJbCcjePmTRD
         ie4btPIbu2vLJWPly+YL8t7XKv+ORjMLZB8biqBQ6VjLp5PcVCQYQkCAUSf1STkqogv4
         cX9SiOuVJs2C7Jp5zDIbS2e3rzEDzztVmGndjtl7v02RCvaD3GaiFIOdoeTibMqAX1lN
         trD7asyFrLBlGbvaFb80jAMHCgw0pHrBpeF/2XrklzaK0h64rjW18N/lO5mT366Cg/Um
         p+/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YqPuY8bjxg2PMPBTTRCR7VVhfztLYnhGPDT7UUbH0mI=;
        fh=2p1Q+NyFX5V2/kqq0NuWFpTSyeNI1ZguWcOZihxHwtk=;
        b=H8SmlGt4++tp97TtIVJb+LqqzPa9ywRYOhyxnrBv9DpdTIwffRJsXr4xprh0CWqUNO
         W7MueueJsaGPT1r1ry1kW8shgVomXneQ+2CZ/H/+vP8VXfdVhVeBDa3Q6cLtpDMjWydt
         joPgAOwyNHSRDdeaO3u9qv3FwSwXoqyRtTG4S0UxdVMvn42+ohP32P65IQuWYYUwPQ3/
         y1prkk+a5fj1bmWyjy1Rqn4PEQveTGYcTZbF0ZBrTadBfNrjCS+C9jKgTuPKhQtdb6A9
         SqoY1Kr7ZzU0op1g2mgXO8NURukFTOvNyEgGfm17+rbfgBeMAqcOe6l1FHXaqhXXmVCn
         Tpdg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789331516; x=1789936316; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YqPuY8bjxg2PMPBTTRCR7VVhfztLYnhGPDT7UUbH0mI=;
        b=ik4vo+spq3uYEhWz4ls9Gp7mZIM70gBUYWRQfP6dvaDRyHYAjwlZWF7AECEEojkdJo
         5ANGXUES2M696t+7UlfYIZ7ASPoIxXVkZWZGrydqnauFMhlIrfwouZk9+DvrhMHGhFYQ
         Y3QmcJEYbyynFsWm2zxRiFveR4cRdnziXQyIi3diWk4W9Z+8x97pYZ5BI42wPS9mMiiE
         VDUwa9dNU/I4ejFlI1OMRdjsUw4+h/QgENMKSExfYXHebah8v9CN2jNfnUDBVpsvDWgx
         Kq7npd8Od1Ge+gZ4P/Hg/xMc7lGbstYPLopNOufA/LjuyVRrT5bu/mTZyv0+DmwSVtd7
         7HIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789331516; x=1789936316;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YqPuY8bjxg2PMPBTTRCR7VVhfztLYnhGPDT7UUbH0mI=;
        b=K8YMy3F6kZ824MSrS3jvVebwJkb2EDVv9556rYzlMBwsjWl8RK0xBV5c/NOg5d+EGB
         xXGPijzyOeL9dHnJiAhnlqdInK95Bss0f9+cnMGzh78jpSTbM+2nekcr6hD+w1vYZ6xq
         4e9YswxK0YPcEYfuX8+b1UNa0M26TZ7YZjBmozgoHUpooo5D/SFhxRQsRRV391XuqQUK
         42XzltCvUGVpQmODjXk23n0dXpo0pNimN+KTLqvmQur8thkyLqhwMcTawhDdqjuyemzF
         SF1UIGgcSg7De6/deax7r07lDR6aSQqWT7LaKC+tlfgOo7Wbi3hKcL1HdnQxyVDUYVxh
         BVFQ==
X-Forwarded-Encrypted: i=1; AKwUvBxl37KfnNZZXDBSbpDjcdoTQAAshPSz6uJegaolqJpmLBdKFCymzihYG7HMcAaCqLm379qxRva6mDeBYacIfg==@lists.infradead.org
X-Gm-Message-State: AFuF++l9+qEgcITTJuVrK8HNwAyJ9en3UGTzWxSQL90eOTGANxcqRifZ
	x7GcwKNRq64H2Vd1nXPvd8Bn5nwtWme4PonWtBp8iSLMZ9AKK64F66pPvLrlQAWgfV4ZLnnm4CZ
	gcT4tNeQeRZujdzjACe/YoMV+HK5nDw==
X-Gm-Gg: AYBFou16xdgtVIHVGeAWBd7IRQfMPLFkwBRgjNzqQZoff9KwpZ2TNUllDHg+hiwGe16
	jl6AzInAW+iin8+ibycAqFzfrRcO+rsrBRgo/9FIxs2Q89sZLyzQ73M7Bz6cGwxMROjtp2+wifl
	ly/WZ2CHUyoAfmRhQgwXAQXq2nIpDYD0K9i8GfU9B9JUDwNYZsbY8n/umftmrHmNbvMszuyfE3e
	XNiR1HIdojEOFjSmXoP4gm63czvwI58X5ZZY1xfMAFFiyr+q+U8VEhoLVldPE0NibT/BDzLBQRf
	PbngoQh/+BWXjdvdx1X2wLzK7S0GKO+zxhu5DsZDboK5x4YiuY/eiAq8HZw8E21dhEqtihqdjiM
	cao0arMmp70O3i4AV1svRMt2T6XuLdPianuKTBl70unzS7Ltzs3j8IHrCjo0Co3uVjw==
X-Received: by 2002:a17:906:c143:b0:c29:4204:8dbf with SMTP id
 a640c23a62f3a-c2966559aadmr741799066b.7.1789331515865; Sun, 13 Sep 2026
 13:31:55 -0700 (PDT)
MIME-Version: 1.0
References: <aqRM17TZ0-5pd6Y0@sirena.org.uk> <20260912190056.42192-1-mhun512@gmail.com>
 <aqaKPEFt7fQe8QQp@sirena.org.uk>
In-Reply-To: <aqaKPEFt7fQe8QQp@sirena.org.uk>
From: Myeonghun Pak <mhun512@gmail.com>
Date: Sun, 13 Sep 2026 16:31:43 -0400
X-Gm-Features: AcwNN1XzcLLgpV1RUYtG_pNLmmim_sFz6TTENWG2NHxxEf0dq49kcafrryEazGg
Message-ID: <CAGEsz8Gy5=4msSzPjvRAS88EEbZ0eRvpocu6iHQWv8-48J0dkA@mail.gmail.com>
Subject: Re: [PATCH v2] spi: rockchip-sfc: skip DMA cleanup in PIO mode
To: Mark Brown <broonie@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-spi@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Ijae Kim <ae878000@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_133158_414882_D95C12D8 
X-CRM114-Status: GOOD (  11.38  )
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

U29ycnkgYWJvdXQgdGhhdC4gSSdsbCBzZW5kIGZ1dHVyZSByZXZpc2lvbnMgYXMgbmV3IHRocmVh
ZHMuCgoKMjAyNuuFhCA57JuUIDEz7J28ICjsnbwpIOyYpOyghCA3OjM0LCBNYXJrIEJyb3duIDxi
cm9vbmllQGtlcm5lbC5vcmc+64uY7J20IOyekeyEsToKPgo+IE9uIFNhdCwgU2VwIDEyLCAyMDI2
IGF0IDAzOjAwOjU2UE0gLTA0MDAsIE15ZW9uZ2h1biBQYWsgd3JvdGU6Cj4gPiBXaXRoIHJvY2tj
aGlwLHNmYy1uby1kbWEsIHByb2JlIHNraXBzIGFsbG9jYXRpbmcgYW5kIG1hcHBpbmcgdGhlIHRy
YW5zZmVyCj4gPiBidWZmZXIuIEhvd2V2ZXIsIGNvbnRyb2xsZXIgcmVnaXN0cmF0aW9uIGZhaWx1
cmUgYW5kIGRyaXZlciByZW1vdmFsIHN0aWxsCj4gPiBjYWxsIGRtYV91bm1hcF9zaW5nbGUoKSBm
b3IgdGhhdCBub25leGlzdGVudCBtYXBwaW5nLgo+Cj4gUGxlYXNlIGRvbid0IHNlbmQgbmV3IHBh
dGNoZXMgaW4gcmVwbHkgdG8gb2xkIHBhdGNoZXMgb3Igc2VyaWVzZXMsIHRoaXMKPiBtYWtlcyBp
dCBoYXJkZXIgZm9yIGJvdGggcGVvcGxlIGFuZCB0b29scyB0byB1bmRlcnN0YW5kIHdoYXQgaXMg
Z29pbmcKPiBvbiAtIGl0IGNhbiBidXJ5IHRoaW5ncyBpbiBtYWlsYm94ZXMgYW5kIG1ha2UgaXQg
ZGlmZmljdWx0IHRvIGtlZXAgdHJhY2sKPiBvZiB3aGF0IGN1cnJlbnQgcGF0Y2hlcyBhcmUsIGJv
dGggZm9yIHRoZSBuZXcgcGF0Y2hlcyBhbmQgdGhlIG9sZCBvbmVzLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
