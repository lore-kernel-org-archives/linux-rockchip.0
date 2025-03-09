Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB3FFC28B28
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 10:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vw/FxGeuN/ajumtOzdt+OHYJ1z2+Vj7mx+gs0lmbjMs=; b=wu9CDJG0Hm20sV
	ff/dK3Fqe22uFsiZtyTtl4tXIpQrUZUYFTKAOuoep+pWiFvqBYAtIvpjR1zIElymRsZexSnTKhzvJ
	OW0bLaeQu/SRyN7pHslL7pEVh9rxnqeZe1nwOajrb4PVGH3CoD/2uF1FPeVydOluda93irtvlIVZO
	MEBxkHne/aI+Yo3HgudLniV9ZB2wPJdRu9jkUp1sAKtAQ6+37uRaL3ELj8eZQFEmV3xJqGENvJDlv
	znWFm7tByyOudSrMAeGnScA2hXbRUWgRNRm8tYmsh3veZthXCtCNnDRT0fJO94alG6STDNxCYO7K8
	V/VhOteczbTox8loq1JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDzI-00000000NIR-1biC;
	Sun, 09 Mar 2025 10:34:28 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDyU-00000000N7b-0CcC
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 10:33:39 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e549b0f8d57so2644042276.3
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 03:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741516417; x=1742121217; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wNpRGIZi3b7vxWPUvyY23xmfkUDKlM0nIxV07CpFzTA=;
        b=rgqNQdxG7eYpjV0sJoo9vKnw1DwmC28XhObudhMb/Z489YJ+Oh0SfPGS3awr536+P3
         vZcdBUigRU0u+2NTyOkv1+Hfm80WH7SvSxQrK0fSaQsOYtuK1LOxoHdMbapR/RLpPf3g
         XQXf/ZHdo2hHDZ2Bi8pxuNOr5czclg78UyNn3wswSsZHBTQsEaoU9Xg+4JpBGYCvPVXY
         1K10QmzExiWOdl9oQNoWjldBENz91arLxlIuR0ziwAIR5SAY6/JMHinMPtn2FbnonLDZ
         XHS092ma4LfBRznjLi9lJrDCC2UoLuJJr7BGaqyM2NJHzBQQ5vm+tx+xuNzfMM1cL12P
         ow5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741516417; x=1742121217;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wNpRGIZi3b7vxWPUvyY23xmfkUDKlM0nIxV07CpFzTA=;
        b=NtIR9xpHxRGvf1jM4qPw5mET1GSGfKA7yMldFiMEhD6HI+chXhzGI0W3KJNqFMfFiF
         QgLbCWBCZaGO9DfocduJVnX9VCOz6JG3wnfpG3mGWBMx18sfTG0/ARfl2Pa7yDrn5IAZ
         J9LOC74vOoVw78M8Jr6qWVjgY6ohjQJUC3UerXIgkloWQlCQTnL2LyvB95UvSs90OAcM
         zTEZO8IqPeLTd7yhkaaPUNoHV9TdBIn47HKSf1VYPov/rlMGzQM/RFfgalw5+8bhVMbg
         GAVONePU8oOx18nCXwYhYRm0BBm4htRV4xX9eZk5g7swfYBjAKJECaD4rRfPexsV2Nms
         q9Yw==
X-Forwarded-Encrypted: i=1; AJvYcCWuV7Aws2mozBchysfYvakXsOKAOgAGeTwFcjkaz2xlGedoM3culExadINChQDu5Jl5FrKU4pgSS0qjefZU6g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGB2XenlKW6dIm4mxDuI8BylU/NSca5ozK+rIg8+A+nCO/buRE
	OqlKNEmKQPWBkb14UfASCM4gfuanUCA6Ux0ijza2QkySnrZT4PhOmyGlnOVHAUJIPZOE6jZIp/n
	np5r/pI4BTa3jZGwMzwm/iktMHHPcpwxwgCZhKw==
X-Gm-Gg: ASbGnctQ+ewuAzKItrIiqq0GiNRotJvwm3Q+j0kPJro0JbMMWwEOoMqeCbT7aPvNaq4
	IckpUoHRtGs5eskMMdEAo5ifOHyep80JWCSKLk1TvmmTsU4eCkVpNACZBdc+cu7fR+bhDbq8kJ9
	b/Wgg7d4rT19D7Ji5fQPxiKqQ+evR/7MY9rd5v9v8eV8P6au4tT9w=
X-Google-Smtp-Source: AGHT+IGVt6euUeWJaHel2JO0R3PdrFmPyg42bYFogZr5LdUenoAcHAoi+gtckgcA2kBzPh3bWUnzK1DaGMhNqPsRL9w=
X-Received: by 2002:a05:6902:154d:b0:e5d:dd0a:7fdb with SMTP id
 3f1490d57ef6-e635c19566dmr13607641276.28.1741516417063; Sun, 09 Mar 2025
 03:33:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com>
 <20250308-phy-sam-hdptx-bpc-v5-11-35087287f9d1@collabora.com>
 <CAA8EJpqzZaRoQ5mDeKUHpNhYsegC=V6c2SQpKaQn4FYhozQn1A@mail.gmail.com> <884acd6e-4936-4b00-88ed-cbccc10efc9c@collabora.com>
In-Reply-To: <884acd6e-4936-4b00-88ed-cbccc10efc9c@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 12:33:26 +0200
X-Gm-Features: AQ5f1JpGOU7l-kSySgvwGTxj7XdS5KAe8kqPUkQFgXHpSlPZef1sDW4xG8Fp1l8
Message-ID: <CAA8EJpqDiK37uLid2ap0E=Sa+DU9vOmSf6WBUe4ZeVKj9mVODg@mail.gmail.com>
Subject: Re: [PATCH v5 11/12] phy: rockchip: samsung-hdptx: Optimize internal
 rate handling
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_033338_101030_5A2C976B 
X-CRM114-Status: GOOD (  19.64  )
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

On Sun, 9 Mar 2025 at 12:32, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> On 3/9/25 12:17 PM, Dmitry Baryshkov wrote:
> > On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
> > <cristian.ciocaltea@collabora.com> wrote:
> >>
> >> Drop the rate parameter from a bunch of internal helpers and, instead,
> >> make better use of the newly introduced ->hdmi_cfg.tmds_char_rate driver
> >> data.
> >>
> >> Additionally, rename the rather ambiguous ->rate member of struct
> >> rk_hdptx_phy to ->hw_rate and ensure rk_hdptx_ropll_tmds_cmn_config()
> >
> > Would it be better to name it tmds_char_rate?
>
> This is only used in rk_hdptx_phy_clk_recalc_rate() to provide the
> actual rate programmed in hardware, hence the "hw_rate" naming.

Ack

> Renaming it to tmds_char_rate might add some confusion with the similar
> one in ->hdmi_cfg, but I don't really have any strong preference here.
>
> >> updates it only after all the other operations have been successful.
> >
> > Please don't mix refactoring / renames and the actual code changes.
>
> Right, I should have moved that to a dedicated patch.  Will handle in
> the next revision.
>
> Thanks,
> Cristian



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
