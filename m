Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEF10C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 12:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGRUS+T3GIT7p71+Qo8BigRL0VH4/D5CAL6WN2NOgZw=; b=HeQRfYiJpCEFPX
	iBrQixxW7UJZs6SJQZnmikL/WU4ecm4On6+4f99X7BacCmGmiM/KiBHoAkPzbzzJGGmAvIuxX5GHz
	g2z+t5v/n2YV8GQHBp5JSVW2fKwkf1ClqFlruk603iENA2BIjc36DvIvGbeTWbp7ModoqZDnlguB9
	NmG7gB4by3Frpr1ETzRB5MpocT3j7fF/YnBTQ4eMMEyrYcK90lYW3nu1P3FVGsksgNH22eYkR095c
	mSby5aOV8g1xj/4tN0i343+48jcLcr1kxW9YJ36+QVSQt/oSxU/VoS6Q0DVng35da5D/OhGNfxbah
	jdHKd14tC7ek7QbRPaXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPUo-00D5RW-Rk; Mon, 18 Jul 2022 12:05:06 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPUl-00D5OY-FA
	for linux-rockchip@lists.infradead.org; Mon, 18 Jul 2022 12:05:05 +0000
Received: by mail-ed1-x52c.google.com with SMTP id y4so14944558edc.4
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Jul 2022 05:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=2m7X8qnGvOPuB/k/gxIxFRz8uurz7Jjf68vIvwEBn7Q=;
        b=Ke+92ZUe1d3U0vcqv2StxR5LSom8LxOe8Jjn5QPMp/ubNsOrsKZHd9aXw3ymNB9k8R
         /wJ4NvzBNWHuVL0q/DvHUheNzmZUhnUYUE4cPvKotRXEZ2+uHlLriyHYeJPa79Gt19rx
         6KumcLnruu+qEbdI/miGn7Ueq+caxxUw9Pwd+QKspxMiY/ZowI65OFxPTP8wxaujE3B2
         qmKpNoJ3f1OPNGnTgarHWRnm/HVgvhNVqImVGVnSH+NZ/TX4CoaJ/dDntrf51SJI0JfP
         +6EiQn5tx2+1mFNRn/zdNPgDlHfNZT3V/SaUtgMZhhlTox9YYb+PwKETFfMLWfRL4XmY
         NxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=2m7X8qnGvOPuB/k/gxIxFRz8uurz7Jjf68vIvwEBn7Q=;
        b=ykLDpVVnwEPdJ0jE+ik/T0Ko81RWeajczJZo3wGFv3OJG51Pn6qwRXweLO8rINwfv3
         1ChtQDUXzvv9r6CbGxYIf8t3pSxcuVwBd0a8ueAgmX1o8/Bxg7F7Sq58YXux7hKWL+f7
         1KopYrLzQUOpdwGanztXK7TjERN+NJsin0jJDOukedXU5aCAlJsVk5zG81sUmG4Ts/Vn
         g/0+aIXrUdJfs2fXh/JxLh0RlU8WS+42lFzk7rhQyC7NywtwqmveS+w5YIz9C9cBMw78
         d6Wljjn7HbbqrBZs62IIoQ9/JePiGn5boulhBEIxxzOmsBLFAqsSx47fUJXDQWVn77vO
         DPdQ==
X-Gm-Message-State: AJIora8ky7D7+/sEMLs6vwbFdtRlVnFawGryd84sYTOWMF8ZUJrcph4d
	UTRbSD7P43lRfqE+WFx8AALqg9zB6s9zzKBK
X-Google-Smtp-Source: AGRyM1vWVE2+l8m3UREufbTk+9CTepAs7pbOq24rEV1wo5MvPzLDey20EYw06ryipLk0tnq7niPiJg==
X-Received: by 2002:a05:6402:290a:b0:43a:444e:dca with SMTP id ee10-20020a056402290a00b0043a444e0dcamr36483364edb.355.1658145902239;
        Mon, 18 Jul 2022 05:05:02 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id mb1-20020a170906eb0100b0072aa38d768esm5430355ejb.64.2022.07.18.05.05.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 05:05:01 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v6] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
Date: Mon, 18 Jul 2022 14:05:01 +0200
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
 <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
 <BF7CC548-88C9-4889-8A41-8E99C31EF81C@kohlschutter.com>
 <daf3b61c-d886-98eb-0443-de233d742041@arm.com>
 <CDF716FC-F6CF-44A9-84D9-B48C46E6AC2C@kohlschutter.com>
 <3912A668-9F73-40FD-8993-5060F632238A@kohlschutter.com>
 <7E830C9F-BB5D-4EFC-B3F4-1C580E9326A3@kohlschutter.com>
 <E5A1A1E7-449F-4161-87B9-7A6CA0CAA42C@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
In-Reply-To: <E5A1A1E7-449F-4161-87B9-7A6CA0CAA42C@kohlschutter.com>
Message-Id: <C153DF3B-C5F7-42E5-8A86-D9193578C96A@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_050503_541722_68CA6584 
X-CRM114-Status: UNSURE (   7.30  )
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

PiBBbSAxOC4wNy4yMDIyIHVtIDE0OjA0IHNjaHJpZWIgQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIg
PGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tPjoKPiAKPiBtbWMvU0QtY2FyZCBpbml0aWFsaXph
dGlvbiBtYXkgZmFpbCBvbiBOYW5vUGkgUjRTIHdpdGgKPiAibW1jMTogcHJvYmxlbSByZWFkaW5n
IFNEIFN0YXR1cyByZWdpc3RlciIgLwo+ICJtbWMxOiBlcnJvciAtMTEwIHdoaWxzdCBpbml0aWFs
aXNpbmcgU0QgY2FyZCIKPiBlaXRoZXIgb24gY29sZCBib290IG9yIGFmdGVyIGEgcmVib290Lgou
Li4KV2Fsa2luZyBiYWNrIG9uIG15IGNsYWltIGluIHRoZSBjb21taXQgbWVzc2FnZSB0aGF0IG5v
IGZ1cnRoZXIgcGF0Y2hlcyBhcmUgbmVlZGVkIGZvciB0aGUgdS1ib290IGludGVncmF0aW9uIHRv
IHdvcmsuCk90aGVyIHRoYW4gdGhhdCwgdGhlIGFjdHVhbCBwYXRjaCBpcyB1bmNoYW5nZWQuCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
