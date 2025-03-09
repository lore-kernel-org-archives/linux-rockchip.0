Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10BDDC28B28
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 10:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vj2SX8lEiehThVMp1MgbHzz5zcxnXrXk0f8ut9bKArQ=; b=blxUouy/rp++ig
	X1l+p8MBQjiqrfNkz/9FO61CFepoVsv4/gDEME3SoC2DsHKfHBmbo+h3iiipDj7KYsAwvNejFr/kN
	5Q2yQzw38czcmWmkPdTyosEfErnjBB+LQDriCFD+fjqNdbZiQ+QoVqRTDBb5Z3HpBRrFVe3euejgI
	ue4I23ZLvE2D7c/inF0TJfk5M0q9M0lWQ8s6UxjjDIinEq7uB3cj3ezTo8NWZ7MpIzF0QH6pibSQm
	ZG5DSbKOYw+hWTDJQTReJuZt2aglpRwY+VTNnL3bNUJ6BXvJyLNQofZKI/DbOtRPQA0z/0mJIicNO
	3T9eQKuo6f9B8FIr3mHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDqI-00000000MFl-0vom;
	Sun, 09 Mar 2025 10:25:10 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDjc-00000000LQ0-0fOG
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 10:18:17 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-e60b75f8723so2237927276.0
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 03:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741515495; x=1742120295; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=axZ+5e4ppBNtE/voflpOoIYftm6X1RtKy/F9SCoP6Ps=;
        b=U/j2WCiOUxkt2RGn9a99EiebV9TepVcOnN9MwVX1GJNjkzJUhldoyIyp6MaqNy+C1M
         Dc6JLl7pS/Z6IpScM+yXKeZX35RRYElre17vuVmo+/UEMmQTKE9yXDXA7ilD8v0+64fw
         QAQiuIDcvSV3eMARH/vnogVtdFNi865UHHmYXY3SyKyySFR9zxKqDlScZI84z0MAhKMG
         rj5+qxQSD9ZnYgcMZHpF5byhCjb8G0dBJ7rOqggg2Q4vGrMeehRtVqxSxaVrWVSdJyjk
         siERxuVXTZpv1o9snFi+NM5/T47kU7ZAJWvZ8u3dLA2HJmnTVSpRBelN2Ky9UO+mMMgd
         JEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741515495; x=1742120295;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=axZ+5e4ppBNtE/voflpOoIYftm6X1RtKy/F9SCoP6Ps=;
        b=W73r0t/FKIOWmvWu1I9vkyllg4Pf694idVmNHruoUAyiM4ehDWSVFaZgADrfzpotnT
         Jpk3mujMeIAgN4kIS0FP0BptZgnLvbalMAeRKG0IKJodWvfFgHRLFMz4DDuQI/lbrZPL
         2QXwy5UftrzZTC4K69UHwbO3J18lrqWlCCMSHT3jdrsMvVKsiJqOJvTGN9LlMlwzqsNj
         y/+Lhcny4uQxGT6wh0xwgeaKSNA2cScLd/ZpQ9XwjMxGrV9NutzKvJ/spVLTzNogR3wp
         463FpsxPXnwRZEyPviICwSi4QNtgQC3SaUnywq5D/0fhz8/Nw0KkbvPmND5x/2rwnBPT
         zcMg==
X-Forwarded-Encrypted: i=1; AJvYcCWmFcjzPVg98FRB+fjzf6k/jjCrKH0J6lKzygXdwmoBk7pA3ZKsuyX4dw77H+3GFw+VZ4cKRLVPXFol6PJcXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxXqK/O/6+8gcJlUdiPXx7g9YDsowiP4/NN9dlFV7qMD58rkDts
	WSsk+4YCLZAoFt2tTKEFiklynFHEkI4bnseCYQzUWItKvV0T2PfX3Gj2ON+CA77QldBu+ZDVYmw
	WC5VxleiMa7vJW9+uPSHmveW5a32cd4QR9F7fYw==
X-Gm-Gg: ASbGncuXMkkmQfDkMf6rRFRSv/VP2W90PmWaIdzepR0QOJV7Ks+jQxUQU5PJQX43qVz
	J5sgiKdJlwGij7Pcm4kvbD/lVV/eVJxWcBDTF1MzPPxLuZzGcxLPmgDYBU2tuORKsEiz9HbIumV
	jYSwMpYjKwURnhNxOE8gWN0JlL+Lmy/8uKSHQA/WIm
X-Google-Smtp-Source: AGHT+IHzYJUEBCseRpB1AtkBRhzVmaX6lTysQa7mEET1BOVVRq9VxSIkWUm8rz2mPA0ndjlMDQlVJNKo7thzq+TTMXg=
X-Received: by 2002:a05:6902:2307:b0:e5d:e04f:f2ba with SMTP id
 3f1490d57ef6-e635c1ea9e1mr11547764276.40.1741515495265; Sun, 09 Mar 2025
 03:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-12-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-12-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 12:18:04 +0200
X-Gm-Features: AQ5f1Jo4_HBXJ7xLHJUnhsvem1EBn8fTfXsqaT-YVMexvyivzGMAkeYh6r_Nz90
Message-ID: <CAA8EJppo29p+8a5VUbr6dwaE9ywgS+-VcuUH_sF+NdA0xGU1Zw@mail.gmail.com>
Subject: Re: [PATCH v5 12/12] phy: rockchip: samsung-hdptx: Add high color
 depth management
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031816_235508_7B31410B 
X-CRM114-Status: UNSURE (   8.58  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Add support for 8-bit, 10-bit, 12-bit and 16-bit color depth setup.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 23 ++++++++++++++++++++++-
>  1 file changed, 22 insertions(+), 1 deletion(-)
>

Reviewed-by: Dmitry Baryshkov <dmtiry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
