Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3215C021AA
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Feb 2025 11:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/7mUphdG6JKga+8tmHCcB5cGL2qpRWpsKkOZJZ1PwA=; b=VW1Apdx4AvAfYQ
	akf5OuHayQFCyNj4ZBMy+UzifSRDeS5m6e98yyBfqqmVdsZONm6hJHVDbvCi+lCA2TBBpSyQhL9pm
	cuBpUnlCrMs04VpdvbiiXBoZ0XCM1qzdgXySRgEOsjBA4Eloy3TrqJMMFks9L1Xf4NIMPI3n4kKsG
	kdmV/b9VGE7n+byY+L9bl2Y8F8RSTq5AlMlnxTedzy93HAwdrShGCuiavKrWRcFGjnhrk67RKgTbn
	svQtrU93b3Qsd1LIZ6NkM9ANPLWx5EF29FncoBbNo6f3Q761+q2Svw4UA4EWTAqO4zPWCvDJ7l+Id
	YIgrVN+4Bbg6ZReku8Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkijR-0000000CYH1-0JPf;
	Wed, 19 Feb 2025 11:59:13 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkihx-0000000CXq7-2GTS
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Feb 2025 11:57:42 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-e5dcc3b0c77so3468816276.0
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Feb 2025 03:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739966260; x=1740571060; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mKPuqkaO5/tQYVpdTMpg9OTc7P54WtoXIuwWQ6pX94g=;
        b=FCZajvwqorS5PzVMY/Wk+o2CtUss6I3V57/oAyhoLvjXtJfKmkZNV2UzJUaxvhvO+V
         MucYB7eRjuGkLrGU8xAcSX7namUmvAsMuMYdF4DMYytYbrqzuGRLY37aRj5hJmeY1x3Y
         k8TndvTiVIY+q9YqdimbalGz2XZ/6+vJ4koBb3p/vNXi9JImoEBpKjibpLw6BOInmlz/
         o2tqXz1vWLnTAAWSOXEJn7Nwk8BJCyTbedYRhUaH6AyKSqpFDdJRbnwiZUEmkg05L1bN
         MguLmAK1nx5E47J4JGGaHfx1oPvksKQXncmSf5mXYSIV0dRaWCPXbAfS8x411cyeeXr1
         eSQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739966260; x=1740571060;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mKPuqkaO5/tQYVpdTMpg9OTc7P54WtoXIuwWQ6pX94g=;
        b=OEpJtLR5QjFGb6qncfgt30ZQBWFU2MrAel8oK/d0u0i7HxIUuGKEfMunWHPY3nu93c
         W6FZ93rZyCrOAsoX80s3XQSzaja5oHekgYeE4OEkyBMA1Vb1dLwBB8k9v56t5+ljWM+l
         rTcXc3OQwWk1WHLQUE7mK2zfRVxVmA2NKUm3bbOe3F5iLQvWec/JyPvTVFzvle3gmsPX
         Khod6w73SM4MTxdMt2zA17Wsxj7RXxJkcYi5VJeqwLBxUgEoHqA57kF+u1OWr2c9Ty0l
         ohK9cGXJmmy/m86S1qeuGb/fi/pEnSld/h7Z2KlG/bvUw32umWDSqcDShTzDKUo/Bx1C
         UxTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQwXLzxOfH8S0ARGb+7gvKm6pHhDpn5h68FRy2/0gjBvfq9hpqSFncXJjtYrMdgpBnKiDG07Tycv/Eb6kmpQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUD6xrPYgH4D2gRFXCWySmsItt7encPxX9BaYGZCT4X9Ekk5vq
	fCU/LRkU6OGsZo+vOZYvkZvDfZg93HsVFpiuImbSqVOkpMO6IL0t9r7MS95OUVakoWrV8eF5TCW
	M4kU2/2EU7yuwvPrSXoo/5di94cNKoOuddVmS8Q==
X-Gm-Gg: ASbGncuLlBJhlOqhK0hZamIDERhdsi+IQPEQGc/zwR7n51A23DYaupWzhch3Ei7ZyTI
	KEjuqomulyqXsho1nQCIrSYXMwH6qdYyTEF0LPTE0pNw4zPlHV4MftXd26Za0325DojPWn/YjNQ
	==
X-Google-Smtp-Source: AGHT+IHmLjRjhz37Ix+o6XyPakdzY6Uu3F+3kxUa8H2huII1zroZajXD9MVDQwO7EqR3XOK/hrhvfu283vamhduicEA=
X-Received: by 2002:a05:6902:d49:b0:e5e:1062:bcf7 with SMTP id
 3f1490d57ef6-e5e1062c055mr980483276.13.1739966260274; Wed, 19 Feb 2025
 03:57:40 -0800 (PST)
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFq+pWXq75xEtfkeCkmkdZtfp9dAFej4M+6rO6EAUULf=w@mail.gmail.com>
 <yq14j0y25hd.fsf@ca-mkp.ca.oracle.com> <CAPDyKFqsiBaSV--a_SvJ1n0733XXjSoONztf0e=jsGTZhKxQJw@mail.gmail.com>
In-Reply-To: <CAPDyKFqsiBaSV--a_SvJ1n0733XXjSoONztf0e=jsGTZhKxQJw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 19 Feb 2025 12:57:04 +0100
X-Gm-Features: AWEUYZm5qq0kCFH5BGU-KOAykNEjhYZd727rd8VcRiDAXDF4w-LfbABoCwlPr4U
Message-ID: <CAPDyKFqMJRXRYymhijyWD-e=ScvEc_qbAmJBi--WsJd+zkQu6A@mail.gmail.com>
Subject: Re: [PATCH v7 0/7] Initial support for RK3576 UFS controller
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	"James E . J . Bottomley" <james.bottomley@hansenpartnership.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_035741_578919_5B974A5A 
X-CRM114-Status: GOOD (  13.59  )
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

On Thu, 13 Feb 2025 at 16:20, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Wed, 12 Feb 2025 at 22:56, Martin K. Petersen
> <martin.petersen@oracle.com> wrote:
> >
> >
> > Ulf,
> >
> > > If so, may I suggest that I pick patch2, patch3 and patch4 via my
> > > pmdomain tree and share them via an immutable branch, so they can be
> > > pulled into James/Martin's scsi tree?
> >
> > Sure, that's fine with me.
>
> Okay, great! I have picked up the patches and pushed them to the below
> immutable branch, which is based upon rc2.
>
> git.kernel.org/pub/scm/linux/kernel/git/ulfh/linux-pm.git rockchip

Hi Martin,

We got a report about an issue in the branch above a couple of days
ago. The problem has been fixed and I have just published it to the
branch above.

If you already pulled-in the branch to your tree, please pull again to
get the fix too.

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
