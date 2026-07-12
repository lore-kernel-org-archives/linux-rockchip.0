Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D9F7C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 17:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPyUVdyWw7O7L/mabtv0jv7z4Ndmo/UNm5JgcWCzWGI=; b=ZDf0ZRyufQe9RK
	E3+840hAKwt7B/HXXVzqCUM21G4F6/Z5VgdX9T5Qd0u3kaxzdUPG2KXIlC8gsWmmiSYBLzQvqK5xV
	zKb6wiF9Si9F/VwwSOhOOXafNNYyQk4E91M1MIGo8dFFeTKM75m11PhIcTxU6fzQLOeQLrVBcc+/7
	ZG8DEaympmyoy0jCRe6Hi4B7FINLPzMYTnzVKTN+QiqLjT0vdTZaZOWtz5hC47yko+H1LPmU0SYGf
	fvl9tyur4GdTfMcLYRLeQgGJp6rNWQByXDTEVXV9Rp97ZFmBydiKSAYnYoc+5tYG4wbKOTYRsaEIz
	mbfhLau9H6CUgAYIShUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiySt-00000007egX-3YkB;
	Sun, 12 Jul 2026 17:59:43 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiySr-00000007efp-05ez
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Jul 2026 17:59:42 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-84867f07d63so2632889b3a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jul 2026 10:59:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783879180; cv=none;
        d=google.com; s=arc-20260327;
        b=XAYH7F8u+4Rs+pL6jdsm8KyAhhN9Kgu25oXger+Okr0rNuRMZecFmNxoyIRJQ22/vt
         msBYlAuPgCAL19dYu4wOfhGb2uzZnz0b9TrVDGGawLN2h7/lmWa3jLcEV5UszB6yJSv1
         dkz17Fx63mLshFz15/aGT+B6o8NIgg8oL0M5gRn3kSm1dSfUHsaS9KyAN5uTq7HcsOS5
         7A27Ej6CCs3B9r7XSf0eI+agJSMRMWLTRaVgjpsPWlAt6XLUJVnDzbB58tGbWArzXYES
         c8t/Yfk8tvnFNio906GRPW58oqUTgMToyMqp1Z4NQ4n+K/DZxo0HD5amzhXJ2JJlMta/
         M/PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0NoL6KL8oSMCqAbK70KGT1wmrl62Pu8TBmf12FJBq4s=;
        fh=Fjyj2sz/63ZHA9PXhCiZzp3BZXqq7T8TkEXbGoaia+s=;
        b=RQAWV5ZR8T9CqL6QAqu8zP8ZTB0c2zUlmfhViZRvMAeEwk3PdHeE3PI4rGIamlwnwK
         JErvFkE/2OfCNLGm+AXqLDHgxjVcxYrmvOhiqQVwBaz3IAojMqAQl9NNTC8kcJIJkWsI
         1wMJMY3F4D9H4CBW0emtibAhfP9UMOoZMUzINadWSTfQPzQYz4ekofGYws9CvT4Pqzd5
         9aUGJ/93bYMXCNgN71yaeb14d2kHB4F808QRuAfs+JmmdCPlqVf2eOXY2Xv8jd0rzD/0
         GVCbF37+bqLSPxvSTJKEVGU27lhae3ZXPYHLXRu7EyejuOZp98zoCJTYXfaBwxt1VVUM
         D6Bw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783879180; x=1784483980; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0NoL6KL8oSMCqAbK70KGT1wmrl62Pu8TBmf12FJBq4s=;
        b=rrM1NRTmPM+Hd6wp9O0tK2mZpXnJeYDtHVzI1OzHkXWLPa6FuqPHyHbCJSty7Y/WHr
         BiQzHGjVj96CwY0JWVETR64MT8dQG8WvHrzXx7UVfYa9bQaZXVyPJLUGSJ9Cjq0a24Xm
         cCmqcUnsjpD+iZADWps1SGItIspyXZf2f9w9w8Ab5k88v0lxH1qdYZ8rUh6AN/i17/wX
         xsQbB5Kt/BnedbdB82DT0h4cqQAwuXyb3qGm7RBkMz4HHkX7xuim1jE7h3oc7QD7N5pR
         Pr5h9WZHrPWqp/vltltrbe2rn7hrw63cSIIdZRuxF68AuAtDHCBoIEj1V2GYY17c8oeF
         crAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783879180; x=1784483980;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=0NoL6KL8oSMCqAbK70KGT1wmrl62Pu8TBmf12FJBq4s=;
        b=nitstzBd+O7ZLEEftFooba/F++fmr2YviIsgQcF9p1/I5DZmljJuGZL18kb8KXQFXg
         dlJXSlyLL9Wa4wna36FTEX2rRnKCF03lLj2KIF21O6RDHsTaH4tlrkkTamP6AoLOk7oz
         4laAQMx2H4YX2DHL0Upp9T7/xBYjTcguXmKaxIoZ1pd2CXbWritHevtJbIKcQsMdatyV
         8rEfLA2LVj5lIn5H+NA0JhcjWsvZGMkp3gayAanZlY3TgiinGGQ4e2voFwoLrRgft0e0
         7+VImN+IfnAeRIPj7VgafxfOF5diKKqwUWVpG2oVjHMpKY79iPvTDaijsFNVGqysMOC8
         7jrQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp+VWjW2+2jgmFtICrrcE14zApGbgLMubaXmc6ONJ+COrmGyk3zkSIgLbFOXjajlwOsCxwRl6LQ7hL6IuiAdQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMPuqggHDT4/VPaP+w4W2twfvnAJep/nl9xTVttJVbvvGQdCsS
	Bqsqv8W1KDyqYw06TirxMgq7PnwuxfGgsRFalOyDYQq6cZVqhR142FsKYpSWeZ+0+HK1NPoD4Az
	xL8T5f/EgDoYgaDjfJ7iFbZyH0D5C3gw=
X-Gm-Gg: AfdE7ckTTA0dU1aGK79fw0TwzIDfldUhFZ/tv5L2bFgnkQ0QP9KArfAqrzgJ3JCHQXz
	D647HsYf/2gB0xd6vDxWSsJrnWvtmjU9Rw2k9ozuRiFj9vFF6jrmA6AzTCN6bNkuiMxa03yO+8H
	v2H+k2hyb9eCm0Cg3FHgDE9L/5zbjPK1PzpRLOEXqZp3VtvOuG9j/oBQFZrN47BfnkmXbmJ4Jcf
	H+c/0p+Tmxjc26owssjV1dK2zWHiRreaxaRhX2b9Qh1KryIrwvzobpm8HGXXgD+bTUwx1I59auL
	iOOMrpCtJiFaNfCgOFy4ea9ZjdwzEcmbr/icFTjOeYYbs75oa8iS4oCc0yCU77l73VQITtbPk83
	hXyZEDdjbQB6+3ppQE/uZ
X-Received: by 2002:a05:6a00:4486:b0:848:804d:9c5c with SMTP id
 d2e1a72fcca58-848896dd3c0mr5554442b3a.38.1783879179743; Sun, 12 Jul 2026
 10:59:39 -0700 (PDT)
MIME-Version: 1.0
References: <20260711-nanopi-m6-v2-0-422675a65402@gmail.com>
 <20260711-nanopi-m6-v2-4-422675a65402@gmail.com> <84467f61-9902-4dea-abda-6e8cb31e0238@kwiboo.xyz>
In-Reply-To: <84467f61-9902-4dea-abda-6e8cb31e0238@kwiboo.xyz>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Sun, 12 Jul 2026 19:59:28 +0200
X-Gm-Features: AVVi8CdXhh6gKGuHTJ0a2hd15-RSpJMz5r5Gy7rN4XSVonKwOhD1LFSXZ8VR_Fc
Message-ID: <CAPSPb=t33bHfuEAMLWPM5=2fSyJXv5vjYD=_pSNRq6GcUz-X_w@mail.gmail.com>
Subject: Re: [PATCH v2 04/12] arm64: dts: rockchip: rk3588s-nanopi: add
 missing sdmmc cd pinctrl
To: Jonas Karlman <jonas@kwiboo.xyz>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	diederik@cknow-tech.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_105941_067748_D4C6C0D7 
X-CRM114-Status: GOOD (  12.33  )
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

Hi Jonas,

On Sat, 11 Jul 2026 at 01:18, Jonas Karlman <jonas@kwiboo.xyz> wrote:
>
> Hi Joachim,
>
> On 7/11/2026 12:11 AM, Joachim Eastwood via B4 Relay wrote:
> > From: Joachim Eastwood <joachim.eastwood@gmail.com>
> >
> > The cd (card detect) pin is used, but not reserved through pinctrl.
>
> Maybe this and some/most of the other DT changes that fixes some missing
> bits should put first in this series and with Fixes tags?

I can of course put them first in the series. So we have the option to do so.

But what is the policy regarding "fixes"?
I don't think they fix any critical issues, but they do make the DT
more correct.
So do we want to backport these to stable?

Maybe the following changes qualify:
arm64: dts: rockchip: rk3588s-nanopi: add missing pcie rst pinctrl
arm64: dts: rockchip: rk3588s-nanopi: remove pull up on rtc int pin
arm64: dts: rockchip: rk3588s-nanopi: add missing sdmmc cd pinctrl

But I don't any others should be considered fixes.


best regards,
Joachim Eastwood

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
