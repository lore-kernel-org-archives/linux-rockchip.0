Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3067DC282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 10:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzJil1R+kM1cbpQQcz0lCPX0K3qL6nJCyNT1A2q0NMk=; b=A66qLrFxhGP0Zb
	xiw/6MSvgAzx4SEfwrohpS5QxgmY4IYThvgKgLQaBvMsBzwvDVwmuMuAsLtkP2Is4RzydIjwLZ03t
	L2wa/IrmXnpKU2blmee3hYTwIS+gVeN0gaHaovvz4F8iqupUmD4OgxZgljrpYbZbqExpf1fe5ols0
	KbaTJlbpASpHzb6MhWs89mYODmza7bfufiVXANSNh2VCG4masqcZ6L/kkaGMcwQ8npKIExZsvkQud
	FCsyuLNLREMqKUu30gZGKMW5rqb/lfgS3YX2ZZ2swiK8ZEPzz/YneLskXMhf+DPFmQJeWwLBpLPQt
	NF968d2bXjlVDu3IYHPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDf2-00000000KtQ-1Gve;
	Sun, 09 Mar 2025 10:13:32 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDcV-00000000KY9-35uL
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 10:10:57 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-e60ad903382so2054648276.0
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 03:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741515054; x=1742119854; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4BClW3AD5pwAP7HlEQggy/3PgguRjaaiqTnG6w3UH/Q=;
        b=r5kVOj5nS1WtVD30efoWSherxLG3Lgtt6QZQWAE5On9dNFSycyVA94TJYFUG97FETm
         pp0BnQb9L/P270kG8s+LkYSaS2eotC8ffiVeAHR2uSVZH7GxxBndIH2S5nsEAwXUp71W
         b474CEQbfIo8Vecml19gKDX/LlADFgv8Q2Q1CApHGUoECiQLEPVYjih/08K3r5LJFm9M
         4tErYCV6AmlP7z9WVdg7NVS7PB9i0w2QnRVPcKwLwEc7Dv5kXhPvG7YIny2nuj19p5hG
         ZlX7bN7RYY8ESVZmjdp+wmt2Be7aMMrSceif06OTd4xEA2W57zeY+C/tTxYH3QoVcVXF
         f0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741515054; x=1742119854;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4BClW3AD5pwAP7HlEQggy/3PgguRjaaiqTnG6w3UH/Q=;
        b=m7h+YbCwzaUmBL70ilxR6A8PfjbhVNhJZaKNVlqyuyz7puGVbyy1Pqi7j7HbT4zCJr
         rpApPcHoGwok371hh/oVKA3eoGCkhu5e7K2Y2T2T2x1A+fPwK/8OhoD0CRXPDKYe/fBm
         5NWIwWCHvv3YtMNrKGXiJbUR+lM7Cn/MCgZNCwCoNl8yJ1rMfY6xDPUYM7SkIuJW52ip
         bHaLdntQXIiBrXlID7jrdZA4Z9y8xn7s/rJIW7wN8dWD86CUVoxYhM6ddEjXaUYaf5CK
         5SsfTy5Etj4scHssmKNiROApB85ybb58Zg4wSjB1VmWFc0jQ1LnWwSdI92rNi7lLMBJf
         QA5g==
X-Forwarded-Encrypted: i=1; AJvYcCX4Ggn6sEUGsZtIaC5NFgG1CHNrlFUIkT2itpwV//iIq/+D29Q/OOHEUGOZ6YGtd3OFY1+6IfS9rcr5jU8E7g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzMCaoBt9UIMGUZoIY/SRMvs+i1Qf5QeNRo4Ztg+y3K7Y5ts7q3
	6AOD7w8f4Cr3OtOr2Gu3907zr6f8gL4lIp1+J2Zsc0GTbtowBtAjGPp11Sr79LOHoQ97PLD8j6W
	ms8/0aeVjejcNRi59UXpZf/psOWpE1JsggxKORw==
X-Gm-Gg: ASbGncudQIikn9zohMf07Am3p5Q6lgTqUX7wN7rhcji6J2+dEp+yEAbcfB/4HJ+WF+K
	t5AbLuN/8PWd/hXVanVjwUeuA2PIA3HjmM0KCuEgvoqnDlQpIMzODGW2+blRErjpjxGJhHuNc8j
	OI4qkXxVE1/wM5B2ZSqJZBS7c4dHvOkNNZLuT58h5mCB46qofhjSU=
X-Google-Smtp-Source: AGHT+IELHQ0fTEF6TQsCVADH9+2FjqIz2dd2lZgnP8p9HlYkvFgSHseJRTK4oPdwl0BlLmUYZqUu+3ES+J82wsobBT0=
X-Received: by 2002:a05:6902:1081:b0:e63:5be5:81a3 with SMTP id
 3f1490d57ef6-e635c121fe2mr12595424276.1.1741515054548; Sun, 09 Mar 2025
 03:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
 <20250308-phy-sam-hdptx-bpc-v5-2-35087287f9d1@collabora.com>
 <CAA8EJpqYE1drM6=C0AwPZ-e5RkWqjMTpWQiwhA64qby1mmVL1Q@mail.gmail.com> <22142c86-c8b5-4427-9764-a7daa4a005b1@collabora.com>
In-Reply-To: <22142c86-c8b5-4427-9764-a7daa4a005b1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 12:10:43 +0200
X-Gm-Features: AQ5f1JraoRZHEAAKtM_6fInxqSPprmQzLJINm38dwVXdhnnYMeLTS5kKKnY-1Ok
Message-ID: <CAA8EJpqCUWH95Ew57K_HKmPGhf40G_2n09SWKTonvyUn2vE4oQ@mail.gmail.com>
Subject: Re: [PATCH v5 02/12] phy: hdmi: Add color depth configuration
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031055_767639_1FF2B8D9 
X-CRM114-Status: GOOD (  15.63  )
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

On Sun, 9 Mar 2025 at 12:10, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Hi Dmitry,
>
> On 3/9/25 11:16 AM, Dmitry Baryshkov wrote:
> > On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
> > <cristian.ciocaltea@collabora.com> wrote:
> >>
> >> Extend the HDMI configuration options to allow managing bits per color
> >> channel.  This is required by some PHY drivers such as
> >> rockchip-samsung-hdptx.
> >>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  include/linux/phy/phy-hdmi.h | 2 ++
> >>  1 file changed, 2 insertions(+)
> >>
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Just to confirm, are you passing TMDS char rate or pixel clock for
> > DeepColor (bpc > 8) modes?
>
> It's the TMDS char rate, but we still need the bpc info to program
> CMN_REG(0086) in PATCH 12.

Thanks for the confirmation.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
