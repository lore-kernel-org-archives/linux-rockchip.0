Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 894A9E7716D
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 12:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFgk+Ap+Q0pE84PmriF0rCA+mvt1tnGwsSJl2ZuvlVc=; b=eLzDj22ZFPdBck
	Zjl0JW4zHxPqretDjdGYTRjm/cmB1pJbHxBy6zOR+v9nUELXpoOR0US+tXrN5MgkcvCbmwYAcSj5O
	p0gdZJ4wtkegb7EuzpJroxtBMQEsP0d7hy911EaJxHupiEcMz1vd5Tt9kXtIbUkW6cYcldD01z+cj
	gqwoe8wN/GmLvWLmhfJmOulu/LKmwvZ3EEI6YE5WSBn2o/x5ygaaLmJEKNSu0Fj++c6ausKExai3Q
	Go8BkF/i3mL4NleptapELV6bUXpEt5kCqeK99hH1u5gptbYnLZZRisSeu4ou0MuIG6S+iRNig0K4a
	YfoWwGm08AEBmrvqftUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJBLY-0000000G1ZA-1MuG;
	Thu, 05 Dec 2024 12:52:44 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJBKX-0000000G1QV-00Ja;
	Thu, 05 Dec 2024 12:51:42 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e396e33d47dso967211276.0;
        Thu, 05 Dec 2024 04:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733403099; x=1734007899; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jS4E65byXasH63nw7XWyV1kv5nRvT19nS2OJkpP32N8=;
        b=LUJBWFnDNEkfTYwLML2wuVkrgQcQY/3VWNSfS1mMk9vsf++ERE3I8LCdqQJGdvQiji
         0MGDVNoL5Tz5SxuisPU93ejnDANWGDzD2xJQOnVTfYZbHiYF2Q8RM/abbC7WEF9wjIpZ
         M4PdNrZz1Z9gYThCwKoyW3wAbDOKVPWwKkZ5YkFtRXgm31QHaT1C5SNFDPYRqwHht+eP
         tDhTg69nio40ohZ1zt7h5LOsqsE6DwKj+D8FcLinbaJIpRZO2rUqhsLO505wvOQch0G3
         qQpecWKwKl5bgYgmEeP8mSSvwT0nYu+MQPKuNg2Z9PwHWcCGsQWv3GjvOebQIfvi8aix
         USSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733403099; x=1734007899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jS4E65byXasH63nw7XWyV1kv5nRvT19nS2OJkpP32N8=;
        b=q2pg2Q4b7nGANYHWRjzoOmztaV7sZ5PmBtJPeSGTaeeTajXPpqMgL/DbAWuzoOIiw2
         zEpJkJaZECO5Zr3sI3u6FKOa5z5jaq6P/FY4vWVfHXlhVxQjpS1q2usvh0RgTshilUzh
         nhw9IX/+v1Psl6SLmujAJfRgxNPWWuGc+Cj4pLRS5sYv6XL2/u+i/fCzfrhLD8H2tnBO
         gAGBGCst5vGwD+XDQe6RRDxkbtQW4Kopthh9lbsNN/+U4m9xs8CIbxbTPwtnbyyud4c3
         aXcV+cTdB+18qiUxUMVn37ohVOzj597NobmUEQC45jKzxa1eKqTPMhXT4B+7AUd9hIlw
         XVsw==
X-Forwarded-Encrypted: i=1; AJvYcCU9YdhpDj0UgMqZkdLwVPGxAa0x/hAXc6BRJqlpmBy2YyJtoTFNNzJqjYt00n00ddLsr5u9Pof1JJRk58opmAzS@lists.infradead.org, AJvYcCXb5ehr8glScykcWqO8UYXcMe/1a0H6bkZ0n2Sf7HTZdW0JORPXriM/KZM9+sLFpZI+uvRDnes1v1FvKdHnS9M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/wi1qutiQAtWWwVrJt+MSNwxCwnBnSQne5omVa9+Ygv/j82dB
	vbzVIr7ZECNpdOgOOHN6jQUC3n+kqeIsbf8HP9XerGilaegPQsVQ2LfvS4qry0G2io909mECKtk
	7P4Q14sZgZA1qF0pWcFxOQE/EBtI=
X-Gm-Gg: ASbGncutO4t6DSGVeVZPtr5lnnKkzARrVTrNYNfUg5UT1Itp/na4v0ImIn19Smo804l
	V6ccJlVYOhyxMHikv8R/U2emSFAZy/w==
X-Google-Smtp-Source: AGHT+IHX0v+XaBJaQPFuk/qhOCAUGBnokLL70FRyDWpxKkVmlHChQDq7qhPmvE6TqRld9vHwDAhCRVKa0tsQqMwHWhg=
X-Received: by 2002:a05:6902:2407:b0:e39:976e:cdae with SMTP id
 3f1490d57ef6-e39d3c22c53mr10848927276.12.1733403099483; Thu, 05 Dec 2024
 04:51:39 -0800 (PST)
MIME-Version: 1.0
References: <20241202090408.201662-1-jakob.unterwurzacher@cherry.de>
 <63b3be80-cb6c-49e5-858f-70fd826140c5@cherry.de> <2578458.4XsnlVU6TS@diego> <CAMdYzYr9bULWou5gf43G-AywREWRCOhHmJ-fOQ1cEDWJSmGSdQ@mail.gmail.com>
In-Reply-To: <CAMdYzYr9bULWou5gf43G-AywREWRCOhHmJ-fOQ1cEDWJSmGSdQ@mail.gmail.com>
From: Jakob Unterwurzacher <jakobunt@gmail.com>
Date: Thu, 5 Dec 2024 13:51:28 +0100
Message-ID: <CAPv9Zmmz2W6aU16n1NYZvCrMcsXL8QK3d-mtfWy6d0vsTaNYQw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: increase gmac rx_delay to 0x11 on rk3399-puma
To: Peter Geis <pgwipeout@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sasha Levin <sashal@kernel.org>, Iskander Amara <iskander.amara@theobroma-systems.com>, 
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>, 
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_045141_039613_66BF0050 
X-CRM114-Status: GOOD (  19.73  )
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

T24gVGh1LCBEZWMgNSwgMjAyNCBhdCAyOjMz4oCvQU0gUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4gQ3ljbGluZyB0aHJvdWdoIHRoZSByeF9kZWxheSByYW5n
ZSBvbiB0d28gYm9hcmRzIHNob3dzIHRoYXQgaXMgYSBsYXJnZQo+ID4gPiA+ICJnb29kIiByZWdp
b24gZnJvbSAweDExIHRvIDB4MzUgKHNlZSBiZWxvdyBmb3IgZGV0YWlscykuCj4gPiA+ID4KPiA+
ID4KPiA+ID4gSXMgdGhpcyBtaXNzaW5nIGEgInRoZXJlIiBhZnRlciB0aGF0PyAidGhhdCB0aGVy
ZSBpcyBhIGxhcmdlIGdvb2QgcmVnaW9uIj8KPgo+IFRoYXQgbGFyZ2UgZ29vZCByZWdpb24gaXMg
YWN0dWFsbHkgYW4gZXllIHRoYXQgeW91IGFyZSBhbGlnbmluZyB0byB0aGUKPiBjbG9jayBzaWdu
YWwuIFRoZSBib2FyZCBpcyBvbiB0aGUgdGFpbCBlbmQgb2YgdGhlIGV5ZSB3aGVyZSBpdCBpcwo+
IGJhcmVseSB3b3JraW5nLiBUaGlzIHZhbHVlIGlzIHN1cHBvc2VkIHRvIGJlIHR1bmVkIHRvIGJl
IGluIHRoZSBtaWRkbGUKPiBvZiB0aGF0IGV5ZS4gWW91IG1heSB3YW50IHRvIHRlc3QgdGhlIG9s
ZCBib2FyZHMgYWdhaW5zdCB0aGUgbmV3Cj4gYm9hcmRzLCBiZWNhdXNlIGlmIHRoZSBvcmlnaW5h
bCBib2FyZCB3YXMgdHVuZWQgY29ycmVjdGx5IHNvbWV0aGluZwo+IG1heSBoYXZlIGNoYW5nZWQg
aW4gaGFyZHdhcmUgdGhhdCBjYXVzZWQgYSBzaWduaWZpY2FudCBzaGlmdCBpbiB0aGUKPiBleWUg
bG9jYXRpb24uIEV4YW1wbGVzIG9mIHRoaXMgd291bGQgYmUgY2hhbmdpbmcgdG8gYSBuZXcgcGh5
LAo+IGVuYWJsaW5nIHBoeSBkZWxheXMsIG9yIGNoYW5nZXMgaW4gdGhlIHRyYWNlIGxlbmd0aC4g
SWYgdGhpcyBpcyB0aGUKPiBjYXNlLCB5b3UnbGwgcHJvYmFibHkgd2FudCB0byBtYWtlIGEgbmV3
IHZhcmlhbnQgb2YgdGhlIGR0cyB0byBjb3Zlcgo+IHRoaXMuCgpUaGFua3MgZm9yIHRoZSBjb21t
ZW50LgoKTm90aGluZyBzaG91bGQgaGF2ZSBjaGFuZ2VkIG9uIHRoZSBib2FyZCwgYW5kIEkgZHVn
IG91dCBhIHJlYWxseSBvbGQKb25lIHRvIHZlcmlmeS4gSXQgYmVoYXZlcyB0aGUgc2FtZS4KMHgx
MCBzZWVtcyB0byBiZSB0aGUgbG93ZXIgZWRnZSBvZiB0aGluZ3Mgc3RpbGwgd29ya2luZy4KCkkg
d2lsbCBwdXQgcnhfZGVsYXkgaW4gdGhlIGNlbnRlciBvZiB0aGUgZXllIHdpdGggdGhlIHYzIHBh
dGNoLgoKSSBhbHNvIGNoZWNrZWQgdHhfZGVsYXksIGFuZCB3ZSBhbHJlYWR5IHNlZW0gdG8gYmUg
aW4gdGhlIG1pZGRsZSBvZgp0aGUgZXllLCBzbyBJIHdvbid0IHRvdWNoIGl0LgoKQmVzdCByZWdh
cmRzLApKYWtvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
