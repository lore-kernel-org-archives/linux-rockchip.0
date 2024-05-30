Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8DD5C25B74
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 14:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Upc6kZMqz0vtN0wrHSnwh5g0LiZhSxp0oqB1VcK6ysM=; b=yO3fvPuTOkSLbY
	Jx0Y1ezNwkyr+zlxWGeJnv+F5Nj4b+LC6VK04/QhyQXVAzO511TH6GONVohtwy9ZqiAxidzcCirXH
	FEq4l9R2DrRK/u+2iHQUel8iFBfaUrOOgEPzuTpxJSqXBK0jKEpJIebFb9Achrifm5hMVujKYwxBM
	C2+VGgWqcjpXAURlEvqmKCkYrErG/PoLcrPok3xA2rGblpSFAkQQYriXpngsTasWWlYRnrw6aCane
	B8AdqWaxGK0qrNF9svCyt3aiiOQDojzCNwCuoJvHYakrzPHcQXDjen8MI0Or5+nsvum/iNDDiM1Hd
	v+H7TeGs5ACvSKKg747g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCgri-00000007Yfo-48TZ;
	Thu, 30 May 2024 14:34:50 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCgrf-00000007Yef-0ofE
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 14:34:49 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-52b83225088so223582e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 07:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717079681; x=1717684481; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nexbWWHw4HmMZ2rLkky2t/GA+e/X7pKJTR1LckTnZc4=;
        b=ElzmSkEjBTjVdOoDAkdtm0CGPtli7G5GCW8e1uzzUBCr/KjdBVKyH4Hrl3HJ3/cTGF
         sho+nEYHUXyYiOYf021LT+k0dRWwvEShavOoJjV0OYWrYbI3uoLR0xLKiIvnWYsF3Kpw
         p2uJUZ3i8kvXtYMqQXCkZqJClQsvOKqLZZdCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717079681; x=1717684481;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nexbWWHw4HmMZ2rLkky2t/GA+e/X7pKJTR1LckTnZc4=;
        b=G1o4P+EBP4pbclLwq9dzddHU6PTo4B4QAgbY+fbpsk+YPov/9hJIDow51wFehGJtY7
         fwHxnWMTns03rbIvkhttiMg474rfZY2TevYBWWXZk+W8aKT1/WRFyBK8PW4B1QSp08gP
         xgoLqU0Zhyt2L7Kr61YBxjZJVLX7f/1BiZVjH9erCQ9+EqDXSwlgTS30uQNZ0OZVc8xV
         paKF0dtSTFqAsfEDctlLf5MH9R/aYbDVOYfISSx4MjmflxX6Ty/+SjI47wsQ5uzkI6ii
         Lj4yJSsGovK8qcd/y304CDTbQD7WMOMPXgeHccdDxxq4iaevRRWW0FvCtE9oT4uy2D+F
         w21A==
X-Forwarded-Encrypted: i=1; AJvYcCWT8Wuwz+7E0o7bbXjPbDGxeowEsadpnkTbHlmrjQ4PNxu1gTArHuLkKrQfRJEsg2qiV2a+SiL9odaZFTDPEep5EVRHTZsRRePnJx9Ir2EMXUTW
X-Gm-Message-State: AOJu0Yx4h2qK/fMtBMIfXvkgeXKQ6rFd3TmvFr2GgUI0uCQcC5ZqTxrc
	VPk0keDdYPdZuESaW36E3Qj91F0AT6e0Qlk8hGWUEHKcPfG+xjNkRgdWvxFiPJYIxMkSOodY+PV
	6Cg==
X-Google-Smtp-Source: AGHT+IGJzePewaDMsZSNKHJYY/hr9Mkb6RAIKGNXZJVTgtIy62iFXNs1261P2nqcFJE+Eq0gFvfZyQ==
X-Received: by 2002:ac2:54a4:0:b0:529:b634:bed1 with SMTP id 2adb3069b0e04-52b7d48c4cfmr1469356e87.58.1717079681228;
        Thu, 30 May 2024 07:34:41 -0700 (PDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com. [209.85.208.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a676f4a329bsm3743766b.190.2024.05.30.07.34.39
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 07:34:40 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-57a1b122718so8110a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 07:34:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUqU8K/kO+VErX9oO2BvG+aOhsrtE532sHi1GMAx3JIv/gXZxe0AZ80WYOE/0He1/7vJrZwie5yuaw1bsw4dCEa7M6WB5orHMkUJaABDNzP+3Fq
X-Received: by 2002:aa7:c14a:0:b0:57a:2276:2a86 with SMTP id
 4fb4d7f45d1cf-57a22762bcfmr100726a12.4.1717079678834; Thu, 30 May 2024
 07:34:38 -0700 (PDT)
MIME-Version: 1.0
References: <20240529-edp-panel-drop-v2-0-fcfc457fc8dd@linaro.org> <20240529-edp-panel-drop-v2-3-fcfc457fc8dd@linaro.org>
In-Reply-To: <20240529-edp-panel-drop-v2-3-fcfc457fc8dd@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 May 2024 07:34:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZCeawkF+c8yhwMuR3_LF3Z0swT1L-_r9kRccaxJqUTg@mail.gmail.com>
Message-ID: <CAD=FV=VZCeawkF+c8yhwMuR3_LF3Z0swT1L-_r9kRccaxJqUTg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] drm/panel-edp: drop several legacy panels
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_073447_257877_5F076909 
X-CRM114-Status: GOOD (  13.41  )
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

SGksCgpPbiBUdWUsIE1heSAyOCwgMjAyNCBhdCA0OjUz4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8
ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFRoZSBwYW5lbC1lZHAgZHJp
dmVyIHN1cHBvcnRzIGxlZ2FjeSBjb21wYXRpYmxlIHN0cmluZ3MgZm9yIHNldmVyYWwgZURQCj4g
cGFuZWxzIHdoaWNoIHdlcmUgbmV2ZXIgdXNlZCBpbiBEVCBmaWxlcyBwcmVzZW50IGluIExpbnV4
IHRyZWUgYW5kIG1vc3QKPiBsaWtlbHkgaGF2ZSBuZXZlciBiZWVuIHVzZWQgd2l0aCB0aGUgdXBz
dHJlYW0ga2VybmVsLiBEcm9wIGNvbXBhdGlibGVzCj4gZm9yIHRoZXNlIHBhbmVscyBpbiBmYXZv
dXIgb2YgdXNpbmcgYSBnZW5lcmljICJlZHAtcGFuZWwiIGRldmljZSBvbiB0aGUKPiBBVVggYnVz
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBs
aW5hcm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMgfCAx
NzMgKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTY2IGRlbGV0aW9ucygtKQoKQWxsIG9mIHRoZXNlIGFyZSBm
aW5lIGFzIHBlciBteSByZXNlYXJjaCBbMV0uCgpSZXZpZXdlZC1ieTogRG91Z2xhcyBBbmRlcnNv
biA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
Q0FEPUZWPVh6MVZzRjhqRzBxLUxkaytwPU5ZLUNoSmtUazBpVzhmcTJiTz1vUkZ2WFJBQG1haWwu
Z21haWwuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
