Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BAD3C4451B
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 11:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phRVPpxwZJHWzHe94Yu29iI2QIqVYaRfPDdq50LTo/Q=; b=SKNcqg4wHKH1Zi
	RlC/tHC2t1lsEo8nk3jHUlfF7xMo3DPSSGYvUvKC8zDiV36JmkuJkHR+rB5vREKxkkItl1Ly4bPlc
	Sxa3bpeTaW32K98p5/gimkNvaD5csaTgMADpZlUbFa7EKlNk/r+kqdkGUKYKyLQBmOy5ASUlXJo8g
	+k+6F5JpSLT19tyPqvBs+G6KhEAlJhGMHuKQosnS7kK8wfYvyTZiDaXR/tS/MkAnCyip0eJewy/lB
	dY+t7h02sy1jv+U2Ar+LchD/qod2V10WFD7G7xag8z4V66uked94hVR83l6TAxhWhUTUFdWpICf3m
	qZ14/wyE/NLKb7XoH0Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl2yH-000000042IR-11HE;
	Sat, 18 Jul 2026 11:12:41 +0000
Received: from mail-yx1-xb132.google.com ([2607:f8b0:4864:20::b132])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl2yE-000000042HA-36q1
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 11:12:39 +0000
Received: by mail-yx1-xb132.google.com with SMTP id 956f58d0204a3-664a5193741so1082408d50.1
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 04:12:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784373157; cv=none;
        d=google.com; s=arc-20260327;
        b=rwDNA5wu7dn6PrN/fb9tXosmP/mcCY/TDEni0DcUwdqCTRGcQrtQHAkYJ2SFr790WM
         p975BWksRVqW50pd7lGtR60Dez//5/BCDidosE7kYfw94GWh6Iiovml3uafPh3wfTf0T
         EmHDvgX450sAlDC4Zx0XQh3H5lp7Wa1mXMKnaDVWyX8f3FvlERM76vd2KF1JIylogzKv
         H/pXroRaGxpdfl5JsO71ZEFqCCrGKNZH0X0z3oR3VJEyMwIAm7ii3e50PF/UMTQzWrel
         ZKhUA6hIj8eBwk03xs2evPo/c5dSz9CxXDM3z11dyKjj7PeUxq0VAZhh3r5+JppAlPo1
         kEnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2jA614hcDkr1x/8k5i0HFdOVHmUkiD3T4/89ZLATA1s=;
        fh=fpUksYwYRSO4a5ABiGy2EaRmFplEH1r3VEZAURXHRgg=;
        b=AnL9nOy+3Tg1uTQDXOpkTl31N2LLc3hxFxjT84HuH0nxryzfBRqq3l+e8SNpWi06Bv
         QABNjsRFnluL0YcgLCH91y0kAe5unpvVZRrIJ3jD7aGnbxpka0rucKQ1avnZOVjShDsR
         8QIElTP21ljZxWCelEGFSj2ciR+ZW6hCvgh5Eplxqxq74pRw7XhSrVQlTLYcxVgL1Mk6
         e0whKTNMEd2iKyedK4Lag+95/Pkjyu/x9NOHcWqhbgjpPW1oZF+5cqNGMMkDQ1WaOVSD
         lZ+6Dwny18AsfphS6UPZW5T/BaRY96oDD8lMj9Eow6wv32GBUurq5k7sDiyi+EdyjH9C
         Tc5g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784373157; x=1784977957; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2jA614hcDkr1x/8k5i0HFdOVHmUkiD3T4/89ZLATA1s=;
        b=C42LVnWi8EFquOvmePh7arFM8FFwiA9/tTcPhsdKI/u1awfmFbjK3mKDzBzzqCoy0C
         ThgEeIdlQ9e4HEGdmB0NRQ7lnYFyBRwL7Fh2qeu79Iv4g/cgupCKW/sRqLos+Dr/1+U7
         FmKUAaim+Wxq80mKxlNqbcgCWFsb4xUIgTRavNTGn0Q32Hp18Au+k0HMzV5YzwT/Y16N
         mUXBjtiUSdraLoPxt6UmZy6bl+aDL5w27h9MgGmTHHDrcqqLe9JUcOf5NZ3SR2FUONMZ
         qVnpYkvTpROE3ncZz1Qb2APITkLTw2P304uCRlqWdtbPT5mp3z92yClt+MPneIeuJaHl
         lihA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784373157; x=1784977957;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2jA614hcDkr1x/8k5i0HFdOVHmUkiD3T4/89ZLATA1s=;
        b=gMhb8c5f3KWCmUzTmaYmXjAeZNyPBZIw/EELOkoqCui4ht1JnewTfI+zvc+mpb167G
         hKJyjHhfGOtwFeR+2nhrn3ejreK9tSIXwQBTGCs5gCurfLNrrVjt2oYCF28pvR+bDgDY
         smUFqN3hofX9AND3sl1X8YDnbzXTzjU47Bm4QuNCWZWTu5SIh3Yd5zv+ZdHw2pncRjQI
         DOns3wUB0ETN0bJ/3OpvZj+/YbTk+a4HiOx7ou55rQJfRthMIFhtUvzXXkgHDCvC49/A
         AXgtvMna8XpsZ20LarOEp9gVfH9bEfH5YaqQDOZLKKxY1JPMWgWE8ODkF1U6T7HOlwDD
         o+PA==
X-Forwarded-Encrypted: i=1; AHgh+Rr5m2Xe5jLP88TIKkcfpFDngFB2gyoY+Q/lqHHtg2gOumWX0uUzSkQ/c64NZsdT9DfLNyHXMaJ728jOyteqMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YykGxv0lSl78yad/fH//Nf9a2Kgszqkl4oSY/b2KlU5XEyqsGM6
	hnCFVhS1Rih3/IP0ZZSG1zldDg2b4wWP+hDlwncF1DRxbaWjcYN7Hq/q7wb43niabTiAeiXb9nK
	6K53gBwQQRy1pIV0FYqv8wPWQRWL0veXp9PN7850=
X-Gm-Gg: AfdE7cnjM8MXlZzQRUkSD5Umrm/vffBMqSXYAXLpSJAOo9QcjFXrMiIOLFELBNTbilx
	2HbOis3AuxhjnqLwKzpZTj/iBoVWrYny38qtMMFp9Xu/NbfRxaAG3/bMu3UoVGl7KzPUP3VaKkb
	lqwa8UUVOUy3x0p0owrfUOCCYxUIHAgMQ1oPyxgbr1u80DPTzHm9UQHPnm30tg36deYtQ30C4Yb
	Oey1pFUCdt7lPUIrhvqIX7Ur3oes9y4zWIEuv/nohTOBi6wKZWPtszexQzOKiNxuUgWdfJVuM/k
	ccJWgX+8BKXkI1cDoP0=
X-Received: by 2002:a05:690e:4009:b0:668:3d3e:17ce with SMTP id
 956f58d0204a3-6683d3e1caamr1668547d50.4.1784373157564; Sat, 18 Jul 2026
 04:12:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260718085728.6797-1-royalnet026@gmail.com> <20260718085728.6797-4-royalnet026@gmail.com>
In-Reply-To: <20260718085728.6797-4-royalnet026@gmail.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Sat, 18 Jul 2026 13:12:26 +0200
X-Gm-Features: AUfX_mwGRLq_cQ_8jKTIfqRv7vemDXFXO-Pu9-yMhP9fEm6AWXK5YDte3V2WYyo
Message-ID: <CAEWPSH7b=KaVhz_Vhyrbj4mM2KANYSEzXPPqNSj1bW0xPLLRGw@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] arm64: dts: rockchip: add #sound-dai-cells to the
 RK3588 HDMI receiver
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_041238_777997_9941930C 
X-CRM114-Status: GOOD (  17.98  )
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

QSB0ZXN0aW5nIG5vdGUgZm9yIGFueW9uZSB0cnlpbmcgdGhpcyBvdXQsIGZvdW5kIHdoaWxlIGV4
ZXJjaXNpbmcKdGhlIHNlcmllcyB0b2RheToKCmFmdGVyIChyZSljb25uZWN0aW5nIGEgc291cmNl
LCBhdWRpbyBjYXB0dXJlIGN1cnJlbnRseSByZXF1aXJlcyB0aGUKdmlkZW8gY2FwdHVyZSBwYXRo
IHRvIGhhdmUgYmVlbiBzdGFydGVkIG9uY2UgLS0gYSBjb2xkCmBhcmVjb3JkIC1EIGh3Oi4uLmAg
cmlnaHQgYWZ0ZXIgcGx1Zy1pbiBmYWlscyB3aXRoIEVJTyAodGhlIEkyUwppbnRlcmZhY2UgZ2V0
cyBubyBiaXQgY2xvY2spLCB3aGlsZSB0aGUgc2FtZSBjb21tYW5kIHN1Y2NlZWRzIGFmdGVyCm9u
ZSB2aWRlbyBTVFJFQU1PTi9TVFJFQU1PRkYgY3ljbGUsIGFuZCBrZWVwcyB3b3JraW5nIGZyb20g
dGhlbiBvbgp1bnRpbCB0aGUgc291cmNlIGlzIHJlLXBsdWdnZWQuCgpTZXR0aW5nIERWIHRpbWlu
Z3MgYWxvbmUgaXMgbm90IHN1ZmZpY2llbnQ7IGl0IGRvZXMgdGFrZSBhIHJlYWwKc3RyZWFtaW5n
IGN5Y2xlLiBTbyBmb3IgdGVzdGluZyBhdWRpbywgZWl0aGVyIHJ1biBhIHZpZGVvIHBpcGVsaW5l
CmZpcnN0IChlLmcuIHY0bDJzcmMgISBmYWtlc2luayBmb3IgYSBzZWNvbmQpIG9yIGNhcHR1cmUg
Ym90aCwgd2hpY2gKaXMgdGhlIG5vcm1hbCB1c2UgY2FzZSBhbnl3YXkuCgpJJ20gaW52ZXN0aWdh
dGluZyB3aGljaCBwYXJ0IG9mIHRoZSBzdHJlYW1pbmcgcGF0aCBvcGVucyB0aGUgYXVkaW8KcGFj
a2V0IGZsb3csIGFuZCB3aWxsIGVpdGhlciBmaXggaXQgaW4gdjQgKGlmIGl0IHR1cm5zIG91dCB0
byBiZSBhCm1pc3NpbmcgZW5hYmxlIGluIHRoZSBhdWRpbyBwYXRoKSBvciBzZW5kIGl0IGFzIGEg
Zm9sbG93LXVwIHdpdGggYQpwcm9wZXIgYW5hbHlzaXMuCgpJZ29yCgpPbiBTYXQsIEp1bCAxOCwg
MjAyNiBhdCAxMDo1N+KAr0FNIElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4g
d3JvdGU6Cj4KPiBUaGUgU3lub3BzeXMgSERNSSBSWCBjb250cm9sbGVyIGV4cG9zZXMgdHdvIGRp
Z2l0YWwgYXVkaW8gaW50ZXJmYWNlcywKPiBvbmUgZm9yIEkyUyAoMCkgYW5kIG9uZSBmb3IgUy9Q
RElGICgxKS4gQWRkIHRoZSAjc291bmQtZGFpLWNlbGxzCj4gcHJvcGVydHkgc28gYXVkaW8gY2Fy
ZHMgY2FuIHJlZmVyZW5jZSB0aGVtIGFzIGEgY29kZWMsIGFzIGRvY3VtZW50ZWQKPiBieSB0aGUg
c25wcyxkdy1oZG1pLXJ4IGJpbmRpbmcuCj4KPiBTaWduZWQtb2ZmLWJ5OiBJZ29yIFBhdW5vdmlj
IDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+Cj4gLS0tCj4gTmV3IGluIHYzLgo+Cj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kgfCAxICsKPiAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtZXh0cmEuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWV4dHJhLmR0c2kKPiBpbmRleCBhMjY0MDAxLi5mYTEwMGUzIDEwMDY0NAo+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV4dHJhLmR0c2kKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRyYS5kdHNpCj4gQEAgLTMz
OCw2ICszMzgsNyBAQAo+ICAgICAgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJheGkiLCAiYXBi
IiwgInJlZiIsICJiaXUiOwo+ICAgICAgICAgICAgICAgICByb2NrY2hpcCxncmYgPSA8JnN5c19n
cmY+Owo+ICAgICAgICAgICAgICAgICByb2NrY2hpcCx2bzEtZ3JmID0gPCZ2bzFfZ3JmPjsKPiAr
ICAgICAgICAgICAgICAgI3NvdW5kLWRhaS1jZWxscyA9IDwxPjsKPiAgICAgICAgICAgICAgICAg
c3RhdHVzID0gImRpc2FibGVkIjsKPiAgICAgICAgIH07Cj4KPiAtLQo+IDIuNTMuMAo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
