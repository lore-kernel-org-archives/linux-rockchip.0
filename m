Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B9CC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 18:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aFkvza+kLta4hLJRr7wXUfAb084gMtLKC+zxU20D734=; b=cQY4ekdBTBJ+S47Dw/3nC+Anhf
	O1Hy6AxmQAbbbX3xBY7mcczrNwyekDDjW3Qe1L9X5IbWcwFxjkPOU4Q9LYzULSUNcepmL+wNChp1/
	hnbq/SPSz4ByCe36vzIBPAI7bDe+dqX3CfkX24YKxEdd84DLgkLs2enlqEiGETHLwF7MhTNJAjZip
	00gnNhthhA64svEUTQ7XR2dIG0IRRozG7tFhE5BVjvaQFtXLmj7YhpW5XhjLQ5TxCwpl07Yum4JbQ
	9gFDCK/5FalIJcAl9tOiaczrpBwH/bmJE5Dh/nsLAXlIsyfBSB5uQtV3mr7LLFw80CYasP2gw3/f7
	m4yr7Icw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myIHb-00Bz2g-IR; Fri, 17 Dec 2021 18:48:43 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHzY-00BqlF-PV
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 18:30:06 +0000
Received: by mail-lf1-x136.google.com with SMTP id g11so6466379lfu.2
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 10:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wxXVzxqOXHO0GTZOA2F1N2zm7EwxOGpKK5L0bY+lCw4=;
 b=pv5OwX8mx+aYyldb68pjQaQhirbixvjs0iMtR/nhjscND/EtX+K8O83urDWzSxv5AK
 sptuTexsonESZEeBXHb68tzX9vGtydkr7WeEZmkDZH9oa9Csyj0rHF1zZLi/VivQv37V
 bdkO8D+M/zSaaeOwKpVb1wHe3QPLRP9gOrTDC5tQDOaf4WQFmp74nLG0Aaccknb1K69C
 u8EBq1mVmRiKZvYC/9MmS97LQNhJ5rJKy9yurgBEW1MWYD6QSEqH3M9BMJXkGNjnSUkq
 +XVlZlVyKqN53EIRhe6KNgtHr0qYQ0iGwn4NDo/biilJjEPNYbuOl7fDOVQiLafD7QZy
 0yTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wxXVzxqOXHO0GTZOA2F1N2zm7EwxOGpKK5L0bY+lCw4=;
 b=lZseTavsGO0FjWm4OkxRliRuNkxSEAayyQLw1N1kVHnBMOAtYIvF2PupnbVchqBbM0
 DKAfzWo43qoj3Ph1gQmYxVuhY8xNrmpm3Q6I/dpfP8HBaEOqx0iEC2qbvV8kNW2RwHPQ
 Yg8lLkgTpdyt9bMu+mNOmMYEkN/cgu+sH/tvuV6yunXQVvNiZ5Xu/VJH8gkNHFeQWjJu
 5t3b++R0+E4eVvXu0nU2wixB4RkI+amrB4p68tG/mzu5ysAtZ7P+/90sqCaejRwslXKq
 Ln8Reybqhzs5RihaHz+MO9uOLYRYWi1mdQLXmysrnQxwykcLm96tf4pWCpKQFZ+1DsAT
 Q8pQ==
X-Gm-Message-State: AOAM532BwpUOHKQLG857Dt4/1/luMVe6kwCMTdhIbJ8yUGM0UbbpvxBe
 FPeHLSwUoz7lNfQuP2JWxQU=
X-Google-Smtp-Source: ABdhPJzbGU8crklOmLnrxvq1KCEJ4OuBOfBC3sKTdYT4Mhmq8ooiz0BWn/2Ley+qvOsLVy1ssS3+aA==
X-Received: by 2002:a05:6512:12c9:: with SMTP id
 p9mr3968091lfg.43.1639765802914; 
 Fri, 17 Dec 2021 10:30:02 -0800 (PST)
Received: from [192.168.2.145] (94-29-63-156.dynamic.spd-mgts.ru.
 [94.29.63.156])
 by smtp.googlemail.com with ESMTPSA id bq36sm1175931lfb.42.2021.12.17.10.30.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Dec 2021 10:30:02 -0800 (PST)
Subject: Re: [PATCH v2] mfd: rk808: add reboot support to rk808.c
To: Peter Geis <pgwipeout@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20211217145544.341617-1-pgwipeout@gmail.com>
 <2bebe0ae-27df-f75d-97d6-2e4d2dd032b0@gmail.com>
 <CAMdYzYq=2G1bvu9M_DR0vdQDtcvVBhQFRPTNKo1ySFrMZOk=jg@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <4d24cb08-0475-3a9d-1b73-24e465f34701@gmail.com>
Date: Fri, 17 Dec 2021 21:30:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYq=2G1bvu9M_DR0vdQDtcvVBhQFRPTNKo1ySFrMZOk=jg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_103004_877520_1AA9575F 
X-CRM114-Status: GOOD (  10.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

MTcuMTIuMjAyMSAyMToxNiwgUGV0ZXIgR2VpcyDQv9C40YjQtdGCOgo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIGJyZWFrOwo+Pj4gKyAgICAgICAgICAgICBkZWZhdWx0Ogo+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgIGRldl9pbmZvKCZjbGllbnQtPmRldiwgInBtaWMgY29udHJvbGxlZCBib2Fy
ZCByZXNldCBub3Qgc3VwcG9ydGVkXG4iKTsKCkknZCBjaGFuZ2UgdGhpcyBkZXZfaW5mbyB0byBk
ZXZfZGJnIHRvIG5vdCBjbHV0dGVyIEtNU0cuCgo+PiBJJ2Qgc2V0IHJldD0wIGV4cGxpY2l0bHkg
aGVyZS4gTGF0ZXIgb24gc29tZWJvZHkgbWF5IGNoYW5nZSB0aGUgY29kZSBhbmQKPj4gcmV0IHdv
bid0IGJlIHplcm8gYW55bW9yZSwgdGhpcyBpcyBub3QgYW4gdW5jb21tb24gdHJvdWJsZSBpbiBr
ZXJuZWwuCj4gSXQgdG9vayBtZSBhIG1vbWVudCB0byBzZWUgdGhlIGxvZ2ljIGhlcmUsIGJ1dCBJ
IHVuZGVyc3RhbmQgaXQgbm93Lgo+IAoKQ291bGQgYmUgZXZlbiBiZXR0ZXIgdG8gcGxhY2UgdGhl
IGVycm9yIG1lc3NhZ2Ugc2ltcGx5IHJpZ2h0IGFmdGVyIHRoZQpyZWdpc3Rlcl9yZXN0YXJ0X2hh
bmRsZXIoKS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
