Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4511C021A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 15:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sAQepXalClXnOpcb5YoZOchEieo1EmmQl6LiJdYlbQ=; b=NtolZkos49OLOt
	sVG5pbIvSbmT/qvYVyFOuY32BloDegdowkO5fDjMmq8RRwJ5ZuqU/kRRXJp+XFhhafRj5qSETuyJz
	4lcrOdQYm8JczTREH9YEKcDPjPT0MghqF+mJ7IeepE6na2NO3QT1/Mb75RvJZh5QWSWjTGowclGyJ
	pjNN++2y25KwL1jM/5gKiMwr3OY2UVvDRTw8CXBIYgSwwkW/kPqmPegPw+nbz5Wp4RH3wjiveU2hZ
	07hJWq4q1lBRSY0RSPjYsYy0C8LQWQM0mS1aViJCPpkWsV4Vyd3Vwqe2XjMyAhy95Ukt6pGFBHUv/
	VPzHhXkWaPjOYV4dUGJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tib17-0000000BVlB-3IEg;
	Thu, 13 Feb 2025 15:20:41 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tib15-0000000BVkm-1ktZ
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Feb 2025 15:20:40 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6f6ca1a8aa6so6401977b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Feb 2025 07:20:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739460038; x=1740064838; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rfpPomdaAuC/C/fVrS0p4u4D+n8uN16/rL49lRiJWnY=;
        b=n6Lrgrw4rTlGBgCZLl4oXzUZ57bnHdsG47Bi7xWfjQCbmSp5nBLnQTRHAAwxcg0BDs
         K4XOH146acCiqmLkOUnBS90aKAKynKSyzH/bDMOEbAqWeBFZrHMHGJhAX/E7TctNWxoe
         5Uf8goReMFVs57brYVQEuVk9tXF2zY+c9BuJ9I9DXukOJKj6Vt8RTTkspxkJrUbD5EQT
         wSv8t0jMPYdS6UGEI+fZzwyiP7EC2dUblQrL8hHt7vaRSMvLahe2OBeU8YyUIKy0+3Se
         /uCEovtwh+dYXxldXmpJDqnPwJyrZqsqmbJrEzIanN1WzMy+PC9blFWiDHN2uF1vc3Cw
         sCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739460038; x=1740064838;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rfpPomdaAuC/C/fVrS0p4u4D+n8uN16/rL49lRiJWnY=;
        b=W1+7wZPPEvStmktOpQWAxoH9c2NFkDnPIbcAPqYO/Tvqdyg6ENdLeu+TifDQavAt2A
         x0s7oqmXPrD224w16Hoh+w52tabA2QVFZstpOnUWlmjK4+LcWEzlR/a9WIGwvBMOHx4d
         tJ5VI2a2MVk5E3oohsz7lqAPOOpFl8yvvc0oJlX1Kbu4c3ut278VVIubaEkvlG+NQbL1
         gdl+iuIiQ7l//XVL8XU6yet0XIJdRCuo7/8zqbr7i5afKuo6kXEOpNhzsJUEnSgtU8WQ
         dKQ2ATG6/XTKW/gh+EoAHw0REzDTD98CJlZr5F0t3rr8usaUuIrPF/piSR1lSvz1DSh/
         S4xw==
X-Forwarded-Encrypted: i=1; AJvYcCVAX9VGgnC5uVPC39fXnIpazIf5QMXhihVIEk6Fx1MtvVvSyFHzhlUVDTKRACAlsmEY8G+Aez1ibJVMA/kCLw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwbTZKo70eiDC1CiUrNfycQXx83mAAvaCg0fB48w2nq+zESQn8g
	X6lOp4KslhPtAeR97WTieC6zOkv11O4YUMyJfwvgnjmglj0rM9DQnOzd8wqkax1hisT09M3xXWp
	UbPfX2f9x2RkKKlp9XTbhTefi55VHbQXOdW5GIg==
X-Gm-Gg: ASbGncsav5RY0VCSq0tqSAkbERzZv8vDP3Hj8E2p9qkI5s7KhhN8tGwld15KzwXbj2F
	UyGXyo0eSvufR3UPj+cCSsOL5nVwyvqXixL7XoAj3W+MW5wj4l9hyA6Wv02B26pLgNQWITUwpYQ
	==
X-Google-Smtp-Source: AGHT+IFl/TG61rvCBbheyo/94kyjI8M7amCo+Z6FRtUrkr7CyRBFmSwZjs8C3zZwm91mmD1mfp5rexOLBEr+jyGCvjE=
X-Received: by 2002:a05:6902:1206:b0:e57:f8cd:f0a4 with SMTP id
 3f1490d57ef6-e5d9f1793cemr7130963276.34.1739460037910; Thu, 13 Feb 2025
 07:20:37 -0800 (PST)
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKFq+pWXq75xEtfkeCkmkdZtfp9dAFej4M+6rO6EAUULf=w@mail.gmail.com> <yq14j0y25hd.fsf@ca-mkp.ca.oracle.com>
In-Reply-To: <yq14j0y25hd.fsf@ca-mkp.ca.oracle.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 13 Feb 2025 16:20:01 +0100
X-Gm-Features: AWEUYZklR9qSyrIhPSPo_ng6rtBVVDlndlqorR6YtDIMuUhis6JkRbA7309T0XU
Message-ID: <CAPDyKFqsiBaSV--a_SvJ1n0733XXjSoONztf0e=jsGTZhKxQJw@mail.gmail.com>
Subject: Re: [PATCH v7 0/7] Initial support for RK3576 UFS controller
To: Shawn Lin <shawn.lin@rock-chips.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>
Cc: "James E . J . Bottomley" <james.bottomley@hansenpartnership.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_072039_460256_33C13291 
X-CRM114-Status: UNSURE (   8.80  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 12 Feb 2025 at 22:56, Martin K. Petersen
<martin.petersen@oracle.com> wrote:
>
>
> Ulf,
>
> > If so, may I suggest that I pick patch2, patch3 and patch4 via my
> > pmdomain tree and share them via an immutable branch, so they can be
> > pulled into James/Martin's scsi tree?
>
> Sure, that's fine with me.

Okay, great! I have picked up the patches and pushed them to the below
immutable branch, which is based upon rc2.

git.kernel.org/pub/scm/linux/kernel/git/ulfh/linux-pm.git rockchip

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
