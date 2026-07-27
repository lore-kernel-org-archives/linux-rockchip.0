Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6A26C53219
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 08:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4SAkH7dtyCV+Ld5C/czrEd3D4xjMMHWcXCCmfAibi8=; b=m7ZZBrvnTnmjIx
	qh0b7iZpmTj+FFdstY/GCYWzvjUbZkVMTINiQAS9cJbELVC2HGohAnZ8JZ7324fD5e1AyVaquoOaZ
	7rCrLPr6kMgqOgClBKsX6in5IBshPpAl1KpTZB6v/TTV+1kqCd5ojgiHuBVLeIL/RyWWo4DRYC5D0
	1kc6WLp1WVOjlmEK9YFN4BoKh9zwBMzNtbzD7BzBcVgvQLbuV5ztPYbXj3TS9iev+qMfgiSIp/vpl
	P8gZc5vP0SGWmxROgzSmuOLbe9DQCXbZuqbpukFhTZPy9MV2j8vCuBoiLCHn0O8amUnlZo4WmcIie
	DCxlsU55uVtFhfXu0QIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woGeF-00000002EOA-2Qcl;
	Mon, 27 Jul 2026 08:25:19 +0000
Received: from mail-yx1-xb12c.google.com ([2607:f8b0:4864:20::b12c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woGeC-00000002EN4-2iGw
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 08:25:18 +0000
Received: by mail-yx1-xb12c.google.com with SMTP id 956f58d0204a3-664f5750b02so245693d50.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 01:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785140715; cv=none;
        d=google.com; s=arc-20260327;
        b=RG0JaOmzzkVOMqIe52+EBktiNK6Ie8O/cxGKsqxtZgut9ni+FH9tyozpM4kpdDU/xN
         v21Dx/QraruCid6r2F7KHyXHyscpcxIvvkep+WhAazd9ILg7wyIyS42Emb+m0/OSmc1a
         Lx2KOO9j5HOMIPg2L1+oiDzYeE27f19fZad6IiACFjPtH6hsGEpQS2I8Q8vXKTYa3XQJ
         ZNwx6lri3fBujwXEP25Egmo51UcLteC6U8hWXD7sCw1WluGY+j+zYs/JaCAj9yObdGq7
         XUm8cEcM0K8vVOqzeEty3L9pSsqr7/8loRrZYelh+VqMSOKShcrasllvcKgQ5N7qAfSC
         P3dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KnuH9JNzZqkRfD81Q4WhVtoZdJkHzYHH48enGdGSTvg=;
        fh=KbchIcEJmO9GLUNLbkCMBpTPB1VS56N5grhEgdYInps=;
        b=Lv55ZePELJOXEGarhdoxEPxr5PypHUau257Yg+If68tcPBumCy2w8sleOwH5gcjjGZ
         W4AGvCiYQTe5QU0ohPJfltTUmaJ+WP9wkV9q5TFkpKkQB3p8YG4ZuUjrxV5exi22NR/I
         I323Zi5PJvF4ZSbHWkbXPtdellPehDEUMP1tGgCzxX8gUQZVG3s9XKbvnOtCaf7LdVcE
         sxDQJ0VruS0koQbbmmYpcIES4nZNPpvuKItStxZBAjI0C+EWAKPSwdzYBrdZdgSJ0X7X
         sRqIuf2uLYf+RSPQA9IcxwAgevFa1jGI22NH0wsuMXBXWJUYwn47jUnZ5Ayjxu1uWG2j
         TZuw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785140715; x=1785745515; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KnuH9JNzZqkRfD81Q4WhVtoZdJkHzYHH48enGdGSTvg=;
        b=GhD4idsvIBJKo11tdMlqa7qyzKFmu/kgj+nBuEkr0VMi4TUyWmmkzY3GDNK4mGyIzm
         6gxkQZQTfH2X8gor6oeQ/KVQdFMjA7nDVFB0IV3CsyTwYxacqoAW+tYIoIchCJc5ufU+
         exJRnGCUBIgyeW5AOw7Q/dbKz+eFbKGVjM98+wTezVR893sguWVfASsM8MC3FVFWkn2B
         u8OPjafH7B09KFcxtirJiFs310nZk7HKWcQze0bzZvMj2oieK9XtNZZsOZgQNri8eR3d
         aMAOEHwx4/Ad1dedAZtsECU1y1ixp/tzf3Kg137ZThBR8iUIxxATKZ9U5Mq9ZQibZD0W
         C49w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785140715; x=1785745515;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KnuH9JNzZqkRfD81Q4WhVtoZdJkHzYHH48enGdGSTvg=;
        b=U2HcqxB4Iq04tj8oWr5yoXmMw00Y8tpy+Ri/InZ1sSPTIcYgtwNxXVGFtkbfrwrh/o
         Ktd1n3scaf7SOM++4L6w16hqYY8fvAceJm7Xj2jbh2xBR+5KNTN7+gh3SZ/JWQQf0fjH
         hz+C0CYSMgZ7kAGnTQF5VAlF8dmA6OIUpamXl74mYN8jPoWgR65e8fv88yPRaUDUrN8a
         /Sv03nXBQ73hWGWLID32Q1iO3nLvWS7uvbG+A+sQYd4j1nCfuMVLQ2GOTB7OFXDUdUbK
         54I7SG7HUc2lTF6ArD5QXGS04dk9EUmVwaztLKYpeCHVA+LUqaeOv/rs/UaP0bHIUln/
         r/Iw==
X-Forwarded-Encrypted: i=1; AHgh+RoEV0cpRLL3RnXQsEQKe7+sEEAFPptg78Xhr2/+mxAkjyqZo3e3vNX6GO+/1S3UtPdcP+paZW+bxIvz/cApMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyV6+3u+/TOiaqrSgdZm2gQq6JiXzCpMGGJQ6FwE+PJ5otp5Wwl
	fRVqOwP7B6wHZ2uatTBj+0AghVBJH0PnLwaIiZQ7gj2AkF3zLtVUKz1DNdyi93OqetAbfnRbFwN
	buskhRekOGV1NwbzfyLYqLf0oK7z/PQY=
X-Gm-Gg: AR+sD11+ojv/OCM034j8MNf+DU1jG+XcX5rlmZcg3X9O6b7GEvdBWrAm7Yi1MRCnAle
	4ut20A2wehZSccnHQjFVJ0m5Bsj/QkazYYOzX7N3qRIjcwrszf9KSbf5XXXM/zC+AGuGxO6sqXO
	S6av4/0k/kkfb3cmN7I/maKd5gdr2P+V3+98W9sym7pjRumfQ7fR+RrZiPITV1yZfSbHHkRleZi
	ZdmMWKQyaQXmXcMc+04fyAiwTO0J18e48GORX0XJdeIRJuoXv9/IGuqv5V2hNuC86cxa8dy6IqZ
	DhsRM7BIvQrIHm4KEwZt
X-Received: by 2002:a05:690c:660c:b0:80c:80a2:9761 with SMTP id
 00721157ae682-81f69e5ced9mr23345447b3.6.1785140715181; Mon, 27 Jul 2026
 01:25:15 -0700 (PDT)
MIME-Version: 1.0
References: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com> <CAMhzubo-NJMro7+XbxD=MhSXiRp14chatDcn-=1Hsiak786uQw@mail.gmail.com>
In-Reply-To: <CAMhzubo-NJMro7+XbxD=MhSXiRp14chatDcn-=1Hsiak786uQw@mail.gmail.com>
From: Igor Paunovic <royalnet026@gmail.com>
Date: Mon, 27 Jul 2026 10:25:02 +0200
X-Gm-Features: AUfX_my4MA58ugAK6hzdfyussxxhX0Ow06GltjruBbp1b6Mur8Y-LGUFlM4WYQo
Message-ID: <CAEWPSH754+Wq7W4CVKNqjuMZ22q_S79K-Tin9SXYw1RCYQwLwg@mail.gmail.com>
Subject: Re: [PATCH 0/4] media: rkvdec: Add VP9 support for VDPU381 variant
To: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
Cc: Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>, Detlev Casanova <detlev.casanova@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_012516_727485_8CE1ED61 
X-CRM114-Status: GOOD (  22.29  )
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

T3JhbmdlIFBpIDUgUGx1cyBsZWcgb2YgdGhlIHRocmVlLWJvYXJkIHJ1biBpbiB0aGUgY292ZXIg
bGV0dGVyLCBhcyBhCnRhZyB5b3UgY2FuIHBpY2sgdXAuIDcuMCBiYXNlIGNhcnJ5aW5nIHRoaXMg
Y29kZSwgbm90IGEgYnVpbGQgb2YgdGhlCnNlcmllcyBhcyBwb3N0ZWQuCgpUZXN0ZWQtYnk6IEln
b3IgUGF1bm92aWMgcm95YWxuZXQwMjZAZ21haWwuY29tCgoKT24gTW9uLCBKdWwgMjcsIDIwMjYg
YXQgODo0NOKAr0FNIEZyYW5jZXNjbyBTYXZlcmlvIFBhdm9uZQo8cGF2b25lLmxhd3llckBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gUm9jayA1QisgbGVnIG9mIHRoZSB0aHJlZS1ib2FyZCBydW4gaW4g
dGhlIGNvdmVyIGxldHRlciwgYXMgYSB0YWcgeW91IGNhbgo+IHBpY2sgdXAuIDcuMSBiYXNlIGNh
cnJ5aW5nIHRoaXMgY29kZSwgbm90IGEgYnVpbGQgb2YgdGhlIHNlcmllcyBhcyBwb3N0ZWQuCj4K
PiBGcmFuY2VzY28gU2F2ZXJpbyBQYXZvbmUgPHBhdm9uZS5sYXd5ZXJAZ21haWwuY29tPgo+Cj4K
PiBJbCBnaW9ybm8gZG9tIDI2IGx1ZyAyMDI2IGFsbGUgb3JlIDIyOjI4IFZlbmthdGEgQXRjaHV0
YSBCaGVlbWVzd2FyYQo+IFNhcm1hIERhcmJoYSA8dmRhcmJoYTA0NzNAZ21haWwuY29tPiBoYSBz
Y3JpdHRvOgo+ID4KPiA+IEhpIEFsbCwKPiA+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMgdGhlIGlu
aXRpYWwgVlA5IHN1cHBvcnQgZm9yIFZEUFUzODEgcHJlc2VudCBpbiByazM1ODguCj4gPgo+ID4g
VkRQVTM4MSBzdXBwb3J0cyBWUDkgUHJvZmlsZSAwIGFuZCBQcm9maWxlIDIgdXAgdG8gNzY4MHg0
MzIwQDMwZnBzLgo+ID4KPiA+IFRlc3RlZCB3aXRoIGZsdXN0ZXIgKHN1aXRlIDogVlA5LVRFU1Qt
VkVDVE9SUywgZGVjb2RlcjogR1N0cmVhbWVyLVZQOS1WNEwyU0wtR3N0MS4wKS4KPiA+IFRoZSAy
MjQvMzA1IHNjb3JlIGhhcyBiZWVuIHJlcHJvZHVjZWQgaW5kZXBlbmRlbnRseSBvbiB0aHJlZSBS
SzM1ODggYm9hcmRzCj4gPiBhY3Jvc3MgdGhyZWUga2VybmVsIGJhc2VzOiBPcmFuZ2UgUGkgNSBQ
cm8gKFJLMzU4OFMsIDcuMi4wLXJjMyksCj4gPiBPcmFuZ2UgUGkgNSBQbHVzIChSSzM1ODgsIDcu
MCkgYW5kIFJhZHhhIFJvY2sgNUIrIChSSzM1ODgsIDcuMSkuCj4gPgo+ID4gTW9zdCBvZiB0aGUg
cmVtYWluaW5nIGZhaWx1cmVzIGZhbGwgaW50byBhIGZldyBrbm93biBjYXRlZ29yaWVzOgo+ID4K
PiA+IC0gQWxsIHZwOTAtMi0wMi1zaXplLSoud2VibSB2YXJpYW50cyB3aGVyZSBlaXRoZXIgZGlt
ZW5zaW9uIGlzCj4gPiAgIHNtYWxsZXIgdGhhbiA2NCBwaXhlbHMgZmFpbCBiZWNhdXNlIHRoZSBo
YXJkd2FyZSBkb2VzIG5vdCBzdXBwb3J0Cj4gPiAgIGZyYW1lcyBzbWFsbGVyIHRoYW4gNjR4NjQ6
Cj4gPiAgIHZwOTAtMi0wMi1zaXplLTA4eDA4LndlYm0sIHZwOTAtMi0wMi1zaXplLTA4eDEwLndl
Ym0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTA4eDE2LndlYm0sIHZwOTAtMi0wMi1zaXplLTA4eDE4
LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTA4eDMyLndlYm0sIHZwOTAtMi0wMi1zaXplLTA4
eDM0LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTA4eDY0LndlYm0sIHZwOTAtMi0wMi1zaXpl
LTA4eDY2LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTEweDA4LndlYm0sIHZwOTAtMi0wMi1z
aXplLTEweDEwLndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTEweDE2LndlYm0sIHZwOTAtMi0w
Mi1zaXplLTEweDE4LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTEweDMyLndlYm0sIHZwOTAt
Mi0wMi1zaXplLTEweDM0LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTEweDY0LndlYm0sIHZw
OTAtMi0wMi1zaXplLTEweDY2LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTE2eDA4LndlYm0s
IHZwOTAtMi0wMi1zaXplLTE2eDEwLndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTE2eDE2Lndl
Ym0sIHZwOTAtMi0wMi1zaXplLTE2eDE4LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTE2eDMy
LndlYm0sIHZwOTAtMi0wMi1zaXplLTE2eDM0LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTE2
eDY0LndlYm0sIHZwOTAtMi0wMi1zaXplLTE2eDY2LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXpl
LTE4eDA4LndlYm0sIHZwOTAtMi0wMi1zaXplLTE4eDEwLndlYm0sCj4gPiAgIHZwOTAtMi0wMi1z
aXplLTE4eDE4LndlYm0sIHZwOTAtMi0wMi1zaXplLTE4eDMyLndlYm0sCj4gPiAgIHZwOTAtMi0w
Mi1zaXplLTE4eDM0LndlYm0sIHZwOTAtMi0wMi1zaXplLTE4eDY0LndlYm0sCj4gPiAgIHZwOTAt
Mi0wMi1zaXplLTE4eDY2LndlYm0sIHZwOTAtMi0wMi1zaXplLTMyeDA4LndlYm0sCj4gPiAgIHZw
OTAtMi0wMi1zaXplLTMyeDEwLndlYm0sIHZwOTAtMi0wMi1zaXplLTMyeDE4LndlYm0sCj4gPiAg
IHZwOTAtMi0wMi1zaXplLTMyeDM0LndlYm0sIHZwOTAtMi0wMi1zaXplLTMyeDY2LndlYm0sCj4g
PiAgIHZwOTAtMi0wMi1zaXplLTM0eDA4LndlYm0sIHZwOTAtMi0wMi1zaXplLTM0eDEwLndlYm0s
Cj4gPiAgIHZwOTAtMi0wMi1zaXplLTM0eDE2LndlYm0sIHZwOTAtMi0wMi1zaXplLTM0eDM0Lndl
Ym0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTM0eDY0LndlYm0sIHZwOTAtMi0wMi1zaXplLTM0eDY2
LndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTY0eDA4LndlYm0sIHZwOTAtMi0wMi1zaXplLTY0
eDEwLndlYm0sCj4gPiAgIHZwOTAtMi0wMi1zaXplLTY2eDA4LndlYm0sIHZwOTAtMi0wMi1zaXpl
LTY2eDEwLndlYm0uCj4gPgo+ID4gLSB2cDkwLTItMDUtcmVzaXplLml2ZiwgdnA5MC0yLTE4LXJl
c2l6ZS5pdmYgYW5kIGFsbAo+ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXyoud2VibSB2YXJp
YW50cyBmYWlsLiBUaGVzZSBzdHJlYW1zIGNoYW5nZQo+ID4gICByZXNvbHV0aW9uIG1pZC1zdHJl
YW0gb24gYSBub24ta2V5ZnJhbWUsIGFuZCBhIHJlZmVyZW5jZSBmcmFtZQo+ID4gICBmcm9tIGJl
Zm9yZSB0aGUgcmVzaXplIGVuZHMgdXAgdW5hdmFpbGFibGUgYnkgdGhlIHRpbWUgaXQncwo+ID4g
ICBuZWVkZWQgYWdhaW4uIFRoaXMgaXMgYmVpbmcgYWN0aXZlbHkgbG9va2VkIGludG86Cj4gPiAg
IHZwOTAtMi0wNS1yZXNpemUuaXZmLCB2cDkwLTItMTgtcmVzaXplLml2ZiwKPiA+ICAgdnA5MC0y
LTIxLXJlc2l6ZV9pbnRlcl8xMjgweDcyMF81XzEtMi53ZWJtLAo+ID4gICB2cDkwLTItMjEtcmVz
aXplX2ludGVyXzEyODB4NzIwXzVfMy00LndlYm0sCj4gPiAgIHZwOTAtMi0yMS1yZXNpemVfaW50
ZXJfMTI4MHg3MjBfN18xLTIud2VibSwKPiA+ICAgdnA5MC0yLTIxLXJlc2l6ZV9pbnRlcl8xMjgw
eDcyMF83XzMtNC53ZWJtLAo+ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXzE5MjB4MTA4MF81
XzEtMi53ZWJtLAo+ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXzE5MjB4MTA4MF81XzMtNC53
ZWJtLAo+ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXzE5MjB4MTA4MF83XzEtMi53ZWJtLAo+
ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXzE5MjB4MTA4MF83XzMtNC53ZWJtLAo+ID4gICB2
cDkwLTItMjEtcmVzaXplX2ludGVyXzMyMHgxODBfNV8xLTIud2VibSwKPiA+ICAgdnA5MC0yLTIx
LXJlc2l6ZV9pbnRlcl8zMjB4MTgwXzVfMy00LndlYm0sCj4gPiAgIHZwOTAtMi0yMS1yZXNpemVf
aW50ZXJfMzIweDE4MF83XzEtMi53ZWJtLAo+ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXzMy
MHgxODBfN18zLTQud2VibSwKPiA+ICAgdnA5MC0yLTIxLXJlc2l6ZV9pbnRlcl8zMjB4MjQwXzVf
MS0yLndlYm0sCj4gPiAgIHZwOTAtMi0yMS1yZXNpemVfaW50ZXJfMzIweDI0MF81XzMtNC53ZWJt
LAo+ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXzMyMHgyNDBfN18xLTIud2VibSwKPiA+ICAg
dnA5MC0yLTIxLXJlc2l6ZV9pbnRlcl8zMjB4MjQwXzdfMy00LndlYm0sCj4gPiAgIHZwOTAtMi0y
MS1yZXNpemVfaW50ZXJfNjQweDM2MF81XzEtMi53ZWJtLAo+ID4gICB2cDkwLTItMjEtcmVzaXpl
X2ludGVyXzY0MHgzNjBfNV8zLTQud2VibSwKPiA+ICAgdnA5MC0yLTIxLXJlc2l6ZV9pbnRlcl82
NDB4MzYwXzdfMS0yLndlYm0sCj4gPiAgIHZwOTAtMi0yMS1yZXNpemVfaW50ZXJfNjQweDM2MF83
XzMtNC53ZWJtLAo+ID4gICB2cDkwLTItMjEtcmVzaXplX2ludGVyXzY0MHg0ODBfNV8xLTIud2Vi
bSwKPiA+ICAgdnA5MC0yLTIxLXJlc2l6ZV9pbnRlcl82NDB4NDgwXzVfMy00LndlYm0sCj4gPiAg
IHZwOTAtMi0yMS1yZXNpemVfaW50ZXJfNjQweDQ4MF83XzEtMi53ZWJtLAo+ID4gICB2cDkwLTIt
MjEtcmVzaXplX2ludGVyXzY0MHg0ODBfN18zLTQud2VibS4KPiA+Cj4gPiAtIHZwOTAtMi0wOS1h
cTIud2VibSwKPiA+ICAgdnA5MC0yLTA5LWxmX2RlbHRhcy53ZWJtLAo+ID4gICB2cDkwLTItMTUt
c2Vna2V5X2FkcHEud2VibSwKPiA+ICAgdnA5MC0yLTE5LXNraXAtMDEud2VibSwKPiA+ICAgdnA5
MC0yLTE5LXNraXAtMDIud2VibSwKPiA+ICAgdnA5MC0yLTE5LXNraXAud2VibSwgIHZwOTAtMi0y
Mi1zdmNfMTI4MHg3MjBfMy5pdmYsCj4gPiAgIGFyZSBzdGlsbCBmYWlsaW5nIGFuZCBub3QgeWV0
IHJvb3QtY2F1c2VkLgo+ID4KPiA+IC0gdnA5MS0yLTA0LXl1djQyMi53ZWJtCj4gPiAgIHZwOTEt
Mi0wNC15dXY0NDQud2VibQo+ID4gICBmYWlsIGJlY2F1c2UgdGhlIGhhcmR3YXJlIGRvZXMgbm90
IHN1cHBvcnQgdGhlIGZvcm1hdCB0aGVzZQo+ID4gICBzdHJlYW1zIHVzZSAoNDoyOjIvNDo0OjQp
LCBvbmx5IDQ6MjowLgo+ID4KPiA+IFRoZSBiYXNlIHZkcHUzODEgVlA5IGRyaXZlciBzdXBwb3J0
IHdhcyBpbnRyb2R1Y2VkIGJ5IG1lLiBQcm9maWxlIDIgc3VwcG9ydAo+ID4gd2FzIGFkZGVkIGJ5
IElnb3IgUGF1bm92aWMuIEZyYW5jZXNjbyBTYXZlcmlvIFBhdm9uZSBmaXhlZCBidWdzIGluCj4g
PiB0aGUgc2VnbWVudGF0aW9uIG1hcCBzaXplIGNhbGN1bGF0aW9uIGFuZCBpbiB0aGUgYWx0cmVm
IHZlcnRpY2FsCj4gPiBzY2FsZSBmYWN0b3IuIElnb3IgUGF1bm92aWMgYWxzbyBmaXhlZCBhIGRl
Y29kZWQtZnJhbWUgc3RyaWRlIGJ1ZywgYWxpZ25pbmcKPiA+IGJ5dGVzcGVybGluZSB0byA2NCBi
eXRlcyBpbiBya3ZkZWNfZmlsbF9kZWNvZGVkX3BpeGZtdCgpLgo+ID4KPiA+IC0tLQo+ID4gSWdv
ciBQYXVub3ZpYyAoMSk6Cj4gPiAgICAgICBtZWRpYTogcmt2ZGVjOiBhbGlnbiBieXRlc3Blcmxp
bmUgdG8gNjQgYnl0ZXMgaW4gcmt2ZGVjX2ZpbGxfZGVjb2RlZF9waXhmbXQoKQo+ID4KPiA+IFZl
bmthdGEgQXRjaHV0YSBCaGVlbWVzd2FyYSBTYXJtYSBEYXJiaGEgKDMpOgo+ID4gICAgICAgbWVk
aWE6IHJrdmRlYzogdnA5OiBDaGFuZ2luZyBnZXRfcmVmX2J1ZiBmdW5jdGlvbiBuYW1lIHRvIGdl
dF9yZWZfYnVmX3ZwOQo+ID4gICAgICAgbWVkaWE6IHJrdmRlYzogTW92ZSB2cDkgZnVuY3Rpb25z
IHRvIGNvbW1vbiBmaWxlCj4gPiAgICAgICBtZWRpYTogcmt2ZGVjOiBBZGQgVlA5IHN1cHBvcnQg
Zm9yIFZEUFUzODEgdmFyaWFudAo+ID4KPiA+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tj
aGlwL3JrdmRlYy9NYWtlZmlsZSAgICB8ICAgIDIgKwo+ID4gIC4uLi9wbGF0Zm9ybS9yb2NrY2hp
cC9ya3ZkZWMvcmt2ZGVjLXZkcHUzODEtcmVncy5oIHwgIDIzNCArKysrKwo+ID4gIC4uLi9wbGF0
Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLXZkcHUzODEtdnA5LmMgIHwgMTA2NyArKysrKysr
KysrKysrKysrKysrKwo+ID4gIC4uLi9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLXZw
OS1jb21tb24uYyAgIHwgICA2NSArKwo+ID4gIC4uLi9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMv
cmt2ZGVjLXZwOS1jb21tb24uaCAgIHwgICA5MiArKwo+ID4gIC4uLi9tZWRpYS9wbGF0Zm9ybS9y
b2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLXZwOS5jICAgIHwgIDEyMSArLS0KPiA+ICBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuYyAgICB8ICAgNzMgKy0KPiA+ICBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9ya3ZkZWMuaCAgICB8ICAgIDEg
Kwo+ID4gIDggZmlsZXMgY2hhbmdlZCwgMTUzNyBpbnNlcnRpb25zKCspLCAxMTggZGVsZXRpb25z
KC0pCj4gPiAtLS0KPiA+IGJhc2UtY29tbWl0OiAxMjI5ZTJlNTdhNWMyOTgwY2NkNDU3YjliNTNl
YTBlZWQ1YTIyYWIzCj4gPiBjaGFuZ2UtaWQ6IDIwMjYwNzI2LWI0LWFkZC1ya3ZkZWMyLXZwOS12
ZHB1MzgxLTNkMWJkOGZjYTRmNQo+ID4KPiA+IEJlc3QgcmVnYXJkcywKPiA+IC0tCj4gPiBWZW5r
YXRhIEF0Y2h1dGEgQmhlZW1lc3dhcmEgU2FybWEgRGFyYmhhIDx2ZGFyYmhhMDQ3M0BnbWFpbC5j
b20+Cj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
